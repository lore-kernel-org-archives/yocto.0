Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED5DE00CFF; Tue, 26 Apr 2016 03:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E7FE00CE1
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 03:07:55 -0700 (PDT)
Received: from [194.100.86.92] (helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA256:256)
	(Exim 4.82) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1auzuL-0004XU-J1; Tue, 26 Apr 2016 13:07:53 +0300
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: "'Rudolf Streif'" <rudolf.streif@gmail.com>
References: <000f01d19dfa$51e59400$f5b0bc00$@gasera.fi>	<43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>
	<CAEKp-aY7dyXZSAvFD8tJCP-rQDhg08SF=srT0GscMGqMi1-h6Q@mail.gmail.com>
In-Reply-To: <CAEKp-aY7dyXZSAvFD8tJCP-rQDhg08SF=srT0GscMGqMi1-h6Q@mail.gmail.com>
Date: Tue, 26 Apr 2016 13:08:13 +0300
Message-ID: <01a101d19fa3$8b1ec430$a15c4c90$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKfduQ5y/9FnHd6hz5eaTmgxb3/qwJplE0OAvPXveWd1W0mUA==
Cc: yocto@yoctoproject.org
Subject: Re: Customize login prompt text in Yocto
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
X-List-Received-Date: Tue, 26 Apr 2016 10:07:57 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01A2_01D19FBC.B06CBF80"
Content-Language: fi

------=_NextPart_000_01A2_01D19FBC.B06CBF80
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

=20

What is the correct way to override poky.conf? I tried adding a new file =
custom-poky.conf into meta-yocto/conf/distro, including the poky.conf =
file and overriding e.g., DISTRO_VERSION. Is this the correct approach, =
or is some other changes required as well?

=20

Best regards,

Andreas Enbacka

=20

From: Rudolf Streif [mailto:rudolf.streif@gmail.com]=20
Sent: 25. huhtikuutata 2016 0:07
To: Peter Bergin <peter.bergin@tritech.se>
Cc: Andreas Enbacka <andreas.enbacka@gasera.fi>; yocto@yoctoproject.org
Subject: Re: [yocto] Customize login prompt text in Yocto

=20

the information shown is from the file /etc/issue. You can for example =
do post-processing on this file and change the information. You can add =
this to your image recipe.

update_issue() {
    echo "Your text" > ${IMAGE_ROOTFS}/etc/issue
}

ROOTFS_POSTPROCESS_COMMAND +=3D " update issue; "

=20

=20

The more "yoctonic" way of setting this is to modify the DISTRO_NAME =
variable, which is set in the distro configuration file e.g. poky.conf. =
If you are building your own distro it you may want to derive your own =
distro configuration file from the ones that Poky provides. There you =
can also set other variables such as DISTRO_VERSION, MAINTAINER, etc.

=20

Cheers,

Rudi


------=_NextPart_000_01A2_01D19FBC.B06CBF80
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Garamond;
	panose-1:2 2 4 4 3 3 1 1 8 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFI =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'>Hello,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'>What is the correct way to override poky.conf? I tried =
adding a new file custom-poky.conf into meta-yocto/conf/distro, =
including the poky.conf file and overriding e.g., DISTRO_VERSION. Is =
this the correct approach, or is some other changes required as =
well?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'>Andreas Enbacka<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-la=
nguage:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> Rudolf =
Streif [mailto:rudolf.streif@gmail.com] <br><b>Sent:</b> 25. =
huhtikuutata 2016 0:07<br><b>To:</b> Peter Bergin =
&lt;peter.bergin@tritech.se&gt;<br><b>Cc:</b> Andreas Enbacka =
&lt;andreas.enbacka@gasera.fi&gt;; =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] Customize login =
prompt text in Yocto<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><p class=3DMsoNormal>the =
information shown is from the file /etc/issue. You can for example do =
post-processing on this file and change the information. You can add =
this to your image recipe.<br><br>update_issue() {<br>&nbsp;&nbsp;&nbsp; =
echo &quot;Your text&quot; &gt; =
${IMAGE_ROOTFS}/etc/issue<br>}<br><br>ROOTFS_POSTPROCESS_COMMAND +=3D =
&quot; update issue; &quot;<o:p></o:p></p></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><span style=3D'font-family:"Garamond",serif'>The more =
&quot;yoctonic&quot; way of setting this is to modify the DISTRO_NAME =
variable, which is set in the distro configuration file e.g. poky.conf. =
If you are building your own distro it you may want to derive your own =
distro configuration file from the ones that Poky provides. There you =
can also set other variables such as DISTRO_VERSION, MAINTAINER, =
etc.</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-family:"Garamond",serif'>Cheers,</span><o:p></o:p></p></div=
><div><p class=3DMsoNormal><span =
style=3D'font-family:"Garamond",serif'>Rudi</span><o:p></o:p></p></div></=
div></div></div></div></body></html>

------=_NextPart_000_01A2_01D19FBC.B06CBF80--
