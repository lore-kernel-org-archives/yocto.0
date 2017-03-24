Return-Path: <szuin@kiversal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CD68E00A0A; Fri, 24 Mar 2017 04:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Mar 2017 04:12:31 PDT
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4006E009B9
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 04:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1490353044; 
	s=zoho; d=kiversal.com; i=szuin@kiversal.com;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	l=15174; bh=3ulpzikTxBeChpGMNparyJB8ofFdvbeKHZwJattGkbI=;
	b=aEVaZBryfNtB6xWQCX3gm1ivfxudSgXTK5OugzKaLwJhD2bq07MZ9aTKrRii4fci
	xwccSeGirQgH2mdm/wCQMs99hexEm5gHLpn0MxLvX2l8y8vJhA9lUW6af/9/hdcGBdo
	UxIXeyL1xmLXlQpsPKqBzWs7vkiTOyoyUBXxBmeM=
Received: from [192.168.1.118] (213.151.116.202 [213.151.116.202]) by
	mx.zohomail.com with SMTPS id 1490353044165318.87862788256484;
	Fri, 24 Mar 2017 03:57:24 -0700 (PDT)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Stefano_Zu=c3=adn?= <szuin@kiversal.com>
Message-ID: <4ef15c52-0e08-05da-ef3b-2772c6999bae@kiversal.com>
Date: Fri, 24 Mar 2017 11:57:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
X-Zoho-Virus-Status: 1
X-ZohoMailClient: External
Subject: PHP5 Recipe
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
X-List-Received-Date: Fri, 24 Mar 2017 11:12:33 -0000
X-Groupsio-MsgNum: 35210
Content-Type: multipart/alternative;
	boundary="------------321EEFB1E82FED96B8945BF7"

--------------321EEFB1E82FED96B8945BF7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Good Morning,

I am trying to use php in a simple poky kernel in a core-image-minimal 
image. But I have some problems to get it working. I have also tried 
using core-image-full-cmdline image having the same result explained 
after this.

When I cook the recipe everything is OK. I can find inside the 
/build/tmp/work/armv5e-poky-linux-gnueabi/php/5.6.23-r0/image/ directory 
all the necessary files to have php running. but unfortunately, when I 
run the emulator with my image I can't find all these files. Just in 
/usr/lib/php5/php/ are Structures and XML directories. I have also added 
in my conf/local.conf file IMAGE_INSTALL_append=" php".

It is necessary to add another recipe in order to use php?? Is there 
something that Im missing?
-- 
------------------------------------------------------------------------

*Stefano Zuin Castillo*
Ingeniero de Software
email: szuin@kiversal.com <mailto:szuin@kiversal.com>
Tel: +34 93 551 14 94

	

	

*DEVIMETRIX, S.L.*
C/ Llacuna 162, módulo 118
08018 Barcelona (SPAIN)
www.kiversal.com <http://www.kiversal.com/>



Este correo electrónico y sus documentos adjuntos contienen información privilegiada, personal y estrictamente confidencial, y está prohibida la copia, reenvío o utilización de la información.
Si usted no es la persona destinataria del presente mensaje, no está autorizada a leerlo, retenerlo o difundirlo.

This e-mail and its attachments are privileged, confidential and contain private information, and any sending, using or copy of its information is prohibited.
Any person other than its intended recipient is not authorised to read, retain or distribute this information.


--------------321EEFB1E82FED96B8945BF7
Content-Type: multipart/related;
 boundary="------------C9AB2CE20DD719AA37CFB2AA"

--------------C9AB2CE20DD719AA37CFB2AA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Good Morning,<br>
    <br>
    I am trying to use php in a simple poky kernel in a
    core-image-minimal image. But I have some problems to get it
    working. I have also tried using core-image-full-cmdline image
    having the same result explained after this. <br>
    <br>
    When I cook the recipe everything is OK. I can find inside the
    /build/tmp/work/armv5e-poky-linux-gnueabi/php/5.6.23-r0/image/
    directory all the necessary files to have php running. but
    unfortunately, when I run the emulator with my image I can't find
    all these files. Just in /usr/lib/php5/php/ are Structures and XML
    directories. I have also added in my conf/local.conf file
    IMAGE_INSTALL_append=" php".<br>
    <br>
    It is necessary to add another recipe in order to use php?? Is there
    something that Im missing?
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title></title>
      <meta name="generator" content="LibreOffice 5.1.4.2 (Linux)">
      <meta name="created" content="00:00:00">
      <meta name="changed" content="2016-12-15T19:00:09.272021878">
      <style type="text/css">
		a:link { color: #0000ff }
	</style>
      <hr>
      <table style="page-break-before: always" width="552"
        cellpadding="0" cellspacing="0">
        <colgroup><col width="200"> <col width="200"> <col width="200">
        </colgroup><tbody>
          <tr valign="top">
            <td style="border: none; padding: 0cm" height="79"
              width="200">
              <p style="margin-bottom: 0cm"><font face="verdana,
                  sans-serif"><font style="font-size: 10pt" size="1"><b>Stefano
                      Zuin Castillo</b></font></font><br>
                <font face="verdana, sans-serif"><font style="font-size:
                    9pt" size="1"> Ingeniero de Software <br>
                    email: <a href="mailto:szuin@kiversal.com">szuin@kiversal.com</a>
                    <br>
                    Tel: +34 93 551 14 94 <br>
                  </font></font></p>
            </td>
            <td style="border: none; padding: 0cm" width="200">
              <p align="center"><img
                  src="cid:part2.792804B9.A0058B4F@kiversal.com"
                  name="Imagen 4" align="bottom" border="0" height="65"
                  hspace="1" width="112"> </p>
            </td>
            <td style="border: none; padding: 0cm" width="200">
              <p style="margin-bottom: 0cm"><font face="verdana,
                  sans-serif"><font style="font-size: 9pt" size="2"><b>DEVIMETRIX,
                      S.L.</b></font></font><br>
                <font face="verdana, sans-serif"><font style="font-size:
                    9pt" size="2"> C/ Llacuna 162, módulo 118</font></font><br>
                <font face="verdana, sans-serif"><font style="font-size:
                    9pt" size="2">08018 Barcelona (SPAIN)</font></font><br>
                <a href="http://www.kiversal.com/"><font face="verdana,
                    sans-serif"><font style="font-size: 9pt" size="2">www.kiversal.com</font></font></a></p>
            </td>
          </tr>
        </tbody>
      </table>
      <p style="margin-bottom: 0cm"><br>
      </p>
    </div>
  </body>
</html>
<br><hr><font size="1" face="verdana">Este correo electrónico y sus documentos adjuntos contienen información privilegiada, personal y estrictamente confidencial, y está prohibida la copia, reenvío o utilización de la información.<br>Si usted no es la persona destinataria del presente mensaje, no está autorizada a leerlo, retenerlo o difundirlo.<br><br>This e-mail and its attachments are privileged, confidential and contain private information, and any sending, using or copy of its information is prohibited.<br>Any person other than its intended recipient is not authorised to read, retain or distribute this information.<br></font><hr><br>

--------------C9AB2CE20DD719AA37CFB2AA
Content-Type: image/jpeg;
 name="Imagen 4"
Content-Transfer-Encoding: base64
Content-ID: <part2.792804B9.A0058B4F@kiversal.com>
Content-Disposition: inline;
 filename="Imagen 4"

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
7YQQQQQhBBBBCf/Z

--------------C9AB2CE20DD719AA37CFB2AA--

--------------321EEFB1E82FED96B8945BF7--
