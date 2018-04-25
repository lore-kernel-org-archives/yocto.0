Return-Path: <vpalacio@intemotechnologies.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13E0AE009CA; Wed, 25 Apr 2018 08:31:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.116.26.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from relayout04-q01.dominioabsoluto.net
	(relayout04-q01.dominioabsoluto.net [217.116.26.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 466ADE005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 08:31:39 -0700 (PDT)
Received: from relayout04-redir.dominioabsoluto.net
	(relayout04-redir.dominioabsoluto.net [217.116.26.101])
	by relayout04.dominioabsoluto.net (Postfix) with ESMTP id
	40WPLf0d3rz9yTR
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 17:31:38 +0200 (CEST)
Received: from [192.168.1.31] (58.red-217-125-30.staticip.rima-tde.net
	[217.125.30.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: vpalacio.intemotechnologies.com)
	by relayout04-dsp.dominioabsoluto.net (Postfix) with ESMTPSA id
	40WPLd44Q3z9yTL
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 17:31:37 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Victor Palacio <vpalacio@intemotechnologies.com>
Message-ID: <5cf02644-e2c6-0353-b751-029e797de711@intemotechnologies.com>
Date: Wed, 25 Apr 2018 17:31:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
X-CTCH-Score: 0.000
X-CTCH-ScoreCust: 0.000
X-PostalOut-Country: IP: 217.125.30.58 | Country: ES
X-PostalOut-Information: AntiSPAM and AntiVIRUS on relayout04
X-PostalOut-MsgID: 40WPLd44Q3z9yTL.A9F12
X-PostalOut-SpamCheck: no es spam, Unknown
X-PostalOut-From: vpalacio@intemotechnologies.com
X-PostalOut-Watermark: 1525275097.88965@We3hSfRV3OY63UPw779Y3A
Subject: Error core-image-minimal-1.0-r0 do_rootfs (RPMTAG_CONFLICTVERSION)
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
X-List-Received-Date: Wed, 25 Apr 2018 15:31:42 -0000
Content-Type: multipart/alternative;
	boundary="------------2E2D6007F4808156E8D4829F"
Content-Language: en-US

--------------2E2D6007F4808156E8D4829F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

After compiling core-image-minimal, bitbake cannot create root filesystem.

...........

ERROR: core-image-minimal-1.0-r0 do_rootfs: Index creation command 
'/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/bin/createrepo 
--dbpath 
/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/work/imx6ulevk-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rpmdb/imx6ulevk 
--update -q 
/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/work/imx6ulevk-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rpms/imx6ulevk' 
failed with return code 1:
Previous repo file missing: 
/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/work/imx6ulevk-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rpms/imx6ulevk/repodata/primary.xml.gz
==> warning: tag 266 type(0x8) != implicit type(0x0)
==> warning: tag 267 type(0x7) != implicit type(0x0)
Traceback (most recent call last):
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py", 
line 720, in <module>
     main(sys.argv[1:])
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py", 
line 643, in main
     mdgen.doPkgMetadata(directory)
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py", 
line 169, in doPkgMetadata
     self.writeMetadataDocs(files, directory)
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py", 
line 255, in writeMetadataDocs
     nodes = self._getNodes(file, directory, current)
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py", 
line 226, in _getNodes
     basenode = dumpMetadata.generateXML(self.basedoc, self.baseroot, 
self.formatns, mdobj, self.cmds['sumtype'])
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/dumpMetadata.py", 
line 690, in generateXML
     (rpmObj.conflictsList(), 'conflicts'),
   File 
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/dumpMetadata.py", 
line 580, in conflictsList
     ver = self._correctVersion(self.hdr[rpm.RPMTAG_CONFLICTVERSION])
AttributeError: 'module' object has no attribute 'RPMTAG_CONFLICTVERSION'
..........

As the error trace ends at a problem with 'RPMTAG_CONFLICTVERSION', I've 
switched from package_rpm to package_ipk in local.conf.

Works fine after switching package_ipk.

Somebody knows what is happening?

Regards,


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


--------------2E2D6007F4808156E8D4829F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,</p>
    <p>After compiling core-image-minimal, bitbake cannot create root
      filesystem.</p>
    <p>...........<br>
    </p>
    <p>ERROR: core-image-minimal-1.0-r0 do_rootfs: Index creation
      command
'/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/bin/createrepo
      --dbpath
/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/work/imx6ulevk-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rpmdb/imx6ulevk
      --update -q
/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/work/imx6ulevk-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rpms/imx6ulevk'
      failed with return code 1:<br>
      Previous repo file missing:
/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/work/imx6ulevk-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rpms/imx6ulevk/repodata/primary.xml.gz<br>
      ==&gt; warning: tag 266 type(0x8) != implicit type(0x0)<br>
      ==&gt; warning: tag 267 type(0x7) != implicit type(0x0)<br>
      Traceback (most recent call last):<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py",
      line 720, in &lt;module&gt;<br>
          main(sys.argv[1:])<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py",
      line 643, in main<br>
          mdgen.doPkgMetadata(directory)<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py",
      line 169, in doPkgMetadata<br>
          self.writeMetadataDocs(files, directory)<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py",
      line 255, in writeMetadataDocs<br>
          nodes = self._getNodes(file, directory, current)<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/genpkgmetadata.py",
      line 226, in _getNodes<br>
          basenode = dumpMetadata.generateXML(self.basedoc,
      self.baseroot, self.formatns, mdobj, self.cmds['sumtype'])<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/dumpMetadata.py",
      line 690, in generateXML<br>
          (rpmObj.conflictsList(), 'conflicts'),<br>
        File
"/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/share/createrepo/dumpMetadata.py",
      line 580, in conflictsList<br>
          ver =
      self._correctVersion(self.hdr[rpm.RPMTAG_CONFLICTVERSION])<br>
      AttributeError: 'module' object has no attribute
      'RPMTAG_CONFLICTVERSION'<br>
      ..........</p>
    <p>As the error trace ends at a problem with
      'RPMTAG_CONFLICTVERSION', I've switched from package_rpm to
      package_ipk in local.conf.</p>
    <p>Works fine after switching package_ipk.</p>
    <p>Somebody knows what is happening?<br>
    </p>
    <p>Regards,</p>
    <p><br>
    </p>
    <div class="moz-signature">-- <br>
      <title></title>
      <link rel="important stylesheet"
        href="chrome://messagebody/skin/messageBody.css">
      <br>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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

--------------2E2D6007F4808156E8D4829F--
