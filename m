Return-Path: <vpalacio@intemotechnologies.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31DFEE00C9C; Wed, 18 Apr 2018 08:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.116.26.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from relayout01-q02.dominioabsoluto.net
	(relayout01-q02.dominioabsoluto.net [217.116.26.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51C4AE009C9
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 08:30:07 -0700 (PDT)
Received: from relayout01-redir.dominioabsoluto.net
	(relayout01-redir.dominioabsoluto.net [217.116.26.69])
	by relayout01.dominioabsoluto.net (Postfix) with ESMTP id
	40R5f44Xrjz3wtn; Wed, 18 Apr 2018 17:30:04 +0200 (CEST)
Received: from [192.168.1.135] (158.137.79.188.dynamic.jazztel.es
	[188.79.137.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: vpalacio.intemotechnologies.com)
	by relayout01-dsp.dominioabsoluto.net (Postfix) with ESMTPSA id
	40R5f41HVqz1xrk; Wed, 18 Apr 2018 17:30:04 +0200 (CEST)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
References: <a3c2c1bf378440259497841cd4807320@sakuraus.com>
From: Victor Palacio <vpalacio@intemotechnologies.com>
Message-ID: <e3ed56ac-9af5-7278-b46d-a4743d1adf8b@intemotechnologies.com>
Date: Wed, 18 Apr 2018 17:30:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <a3c2c1bf378440259497841cd4807320@sakuraus.com>
X-CTCH-Score: 0.000
X-CTCH-ScoreCust: 0.000
X-PostalOut-Country: IP: 188.79.137.158 | Country: ES
X-PostalOut-Information: AntiSPAM and AntiVIRUS on relayout01
X-PostalOut-MsgID: 40R5f41HVqz1xrk.AE050
X-PostalOut-SpamCheck: no es spam, Unknown
X-PostalOut-From: vpalacio@intemotechnologies.com
X-PostalOut-Watermark: 1524670204.54122@fXv/L/7Cie4t7cqiVljQ8A
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Connecting to mysql/mariadb
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Apr 2018 15:30:17 -0000
Content-Type: multipart/alternative;
	boundary="------------2FA86BA92618213F90B308E8"
Content-Language: en-US

--------------2FA86BA92618213F90B308E8
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Greg,


There are no leads to follow in logs? How about using netstat to check 
if port is really open?

Can you connect locally from a mysql client running in the device 
instead of using it externally?


BTW, verify that the skip-networking paramater is commented in your 
my.cnf file. Maybe networking is disabled by default.


Regards,



El 17/04/18 a las 18:50, Greg Wilson-Lindberg escribió:
>
> I've got a Yocto system that I'm working on that has mysql/mariadb 
> configured but I can't connect to it with MySQL Workbench from another 
> machine. mariadb is running, the network connection is live, but when 
> I try to connect using MySQL Workbench I get an immediate "connection 
> refused" response. I've tried user root, & mysql, same response. I'm 
> using the default configuration from Yocto, so maybe I'm missing 
> something that I should be configuring.
>
>
> If anybody here has any experience with this I would appreciate any 
> enlightenment you can give me.
>
>
> Thanks in advance,
>
> Greg Wilson-Lindberg
>
>
>
>

-- 

Victor M. Palacio Tárrega

vpalacio@intemotechnologies.com <mailto:icarra@intemotechnologies.com>

**

*Intemo Technologies****- Idetech Europe, S.L.*

Mov.: (+34)  670 03 66 08

Tel:     (+34) 93 336 16 51

C/ Montserrat Roig, nº 23, Pol. Ind. Pedrosa

08908 Hospitalet de Llobregat

BARCELONA (SPAIN)

| SmartCards |RFID |NFC |Biometría |

Este correo electrónico puede contener información reservada 
y/o confidencial, destinada exclusivamente para el uso del destinatario. 
Si Vd no es el destinatario o la persona encargada de distribuirlo, no 
está autorizado a copiar o entregar esta comunicación a ninguna otra 
persona. Si ha recibido este correo electrónico por error, le rogamos 
nos lo notifique inmediatamente por  teléfono o por el mismo medio. Gracias.

Privilege/Confidential Information may be contained in this e-mail and 
is intended only for use of the addressee. If you are not  the 
addressee, or the person responsible for delivering it to the person 
addressed, you may not copy or deliver this to anyone else. If you 
receive this e-mail by mistake, please notify us immediately by 
telephone or e-mail. Thank you.


--------------2FA86BA92618213F90B308E8
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Greg,</p>
    <p><br>
    </p>
    <p>There are no leads to follow in logs? How about using netstat to
      check if port is really open? <br>
    </p>
    <p>Can you connect locally from a mysql client running in the device
      instead of using it externally?</p>
    <p><br>
    </p>
    <p>BTW, verify that the skip-networking paramater is commented in
      your my.cnf file. Maybe networking is disabled by default.<br>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">El 17/04/18 a las 18:50, Greg
      Wilson-Lindberg escribió:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a3c2c1bf378440259497841cd4807320@sakuraus.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif;">
        <p>I've got a Yocto system that I'm working on that has
          mysql/mariadb configured but I can't connect to it with MySQL
          Workbench from another machine. mariadb is running, the
          network connection is live, but when I try to connect using
          MySQL Workbench I get an immediate "connection refused"
          response. I've tried user root, &amp; mysql, same response.
          I'm using the default configuration from Yocto, so maybe I'm
          missing something that I should be configuring.</p>
        <p><br>
        </p>
        <p>If anybody here has any experience with this I would
          appreciate any enlightenment you can give me.</p>
        <p><br>
        </p>
        <p>Thanks in advance,</p>
        <p>Greg Wilson-Lindberg</p>
        <p><br>
        </p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <title></title>
      <link rel="important stylesheet"
        href="chrome://messagebody/skin/messageBody.css">
      <br>
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Texto de globo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.TextodegloboCar
	{mso-style-name:"Texto de globo Car";
	mso-style-priority:99;
	mso-style-link:"Texto de globo";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="CA"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="CA"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#1F497D;mso-fareast-language:ES"
            lang="FR">Victor M. Palacio Tárrega</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:gray;mso-fareast-language:ES"><a
              href="mailto:icarra@intemotechnologies.com"><span
                style="color:gray" lang="FR">vpalacio@intemotechnologies.com</span></a></span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><b><span
              style="font-size:10.0pt;color:#99CC00;mso-fareast-language:ES"
              lang="EN-US"> </span></b><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><b><span
              style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES"
              lang="EN-US">Intemo Technologies</span></b><b><span
              style="font-size:10.0pt;color:#99CC00;mso-fareast-language:ES"
              lang="EN-US"> </span></b><b><span
              style="font-size:10.0pt;color:#262626;mso-fareast-language:ES"
              lang="EN-US">- Idetech Europe, S.L.</span></b><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES"
            lang="EN-US">Mov.: (+34)  670 03 66 08</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES"
            lang="EN-US">Tel:     (+34) 93 336 16 51</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES"
            lang="EN-US">C/ Montserrat Roig, nº 23, Pol. Ind. </span><span
style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">Pedrosa</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">08908
            Hospitalet de Llobregat </span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">BARCELONA
            (SPAIN)</span><span style="mso-fareast-language:ES"
            lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|
          </span><span
            style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES">SmartCards
          </span><span
            style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|</span><span
style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES"> RFID </span><span
style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|</span><span
style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES"> NFC </span><span
style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|</span><span
style="font-size:10.0pt;color:#0D0D0D;mso-fareast-language:ES">
            Biometría </span><span
            style="font-size:10.0pt;color:#BDD63D;mso-fareast-language:ES">|     
          </span><span
            style="font-size:10.0pt;color:#7F7F7F;mso-fareast-language:ES">    
            <!--<img border=0 width=50 height=37 id="Imagen_x0020_2" src="mailbox-message://nobody@local%20folders/Inbox#62206599?header=saveas&part=1.2&filename=image001.png" alt="cid:image003.png@01CDBD94.9106BDC0">-->
          </span><span style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#595959;mso-fareast-language:ES"> </span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES">Este
            correo electrónico puede contener información reservada
            y/o confidencial, destinada exclusivamente para el uso del
            destinatario. Si Vd no es el destinatario o la persona
            encargada de distribuirlo, no está autorizado a copiar o
            entregar esta comunicación a ninguna otra persona. Si ha
            recibido este correo electrónico por error, le rogamos nos
            lo notifique inmediatamente por  teléfono o por el mismo
            medio. </span><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES"
            lang="EN-US">Gracias.</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES"
            lang="EN-US"> </span><span style="mso-fareast-language:ES"
            lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES"
            lang="EN-US">Privilege/Confidential Information may be
            contained in this e-mail and is intended only for use of the
            addressee. If you are not  the addressee, or the person
            responsible for delivering it to the person addressed, you
            may not copy or deliver this to anyone else. If you receive
            this e-mail by mistake, please notify us immediately by
            telephone or e-mail. </span><span
            style="font-size:8.5pt;color:#595959;mso-fareast-language:ES">Thank
            you.</span><span style="mso-fareast-language:ES"
            lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="CA"><o:p> </o:p></span></p>
      </div>
    </div>
  </body>
</html>

--------------2FA86BA92618213F90B308E8--
