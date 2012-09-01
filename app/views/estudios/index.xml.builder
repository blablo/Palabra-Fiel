# -*- coding: utf-8 -*-
xml.instruct!
xml.rss("version" => "2.0", "xmlns:itunes" => "http://www.itunes.com/dtds/podcast-1.0.dtd") do
  xml.channel do
    xml.title "Estudios de Palabra Fiel"
    xml.link "http://palabrafiel.com.mx/estudios"
    xml.description "Varios estudios de la Iglesia Bíblica Palabra Fiel"
    xml.language "es-mx"
    xml.itunes :author, "Palabra Fiel"
    xml.itunes :summery, "Los estudios de cada domingo de la Iglesa Bíblica Palabra Fiel de Guadalajara"
    xml.itunes :owner do
      xml.itunes :name, "Eduardo González"
      xml.itunes :email, "blablo@gmail.com"
    end

    xml.itunes :image, "http://palabrafiel.com.mx/images/palabra_fiel.png"

    xml.itunes :category,:text => "Religion &amp; Spirituality" do
      xml.itunes :category,:text => "Christianity"
    end


    for estudio in @estudios
      xml.item do
        xml.title estudio.album.blank? ? estudio.nombre : estudio.album + " - " + estudio.nombre
        xml.itunes :author, "Palabra Fiel"
        xml.itunes :summery, estudio.sintesis
        xml.itunes :image, "http://palabrafiel.com.mx/images/palabra_fiel.png"
        
        xml.enclosure :url => estudio.audio_url, :type => "audio/mpeg", :length => estudio.file_size

        xml.guid estudio.audio_url

        xml.pubDate estudio.fecha.strftime('%a, %d %b %Y %H:%M:%S %Z GMT')
        xml.itunes :keywords, "Gracia, Cristiano, Estudio"
        xml.link estudio_url(estudio)

        xml.description estudio.sintesis
      end
    end
  end
end
