Return-Path: <martin.beaudet@intelia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C061E0098A; Tue,  7 Apr 2015 15:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.77.80.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 551 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Apr 2015 15:39:17 PDT
Received: from smtp-out-1.satelmail.com (smtp-out-1.satelcom.qc.ca
	[208.77.80.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B66E6E00837
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 15:39:17 -0700 (PDT)
Received: from mta-1.satelcom.qc.ca (mta-1.satelcom.qc.ca [172.16.16.49])
	by smtp-out-1.satelmail.com (Postfix) with ESMTP id 12A8742CEE
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 18:30:06 -0400 (EDT)
Received: from assp-db2.satelcom.qc.ca (unknown [172.16.16.118])
	by mta-1.satelcom.qc.ca (Postfix) with ESMTPS id 1073F41FE3
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 18:30:06 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by assp-db2.satelcom.qc.ca (Postfix) with ESMTPS id 8DFB537BBC
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 18:31:21 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca ([172.16.16.54]
	helo=smtp-1.satelcom.qc.ca)
	by assp-db.satelcom.qc.ca with SMTP (2.4.3); 7 Apr 2015 18:31:21 -0400
Received: from remote.intelia.com (unknown [204.80.6.198])
	by smtp-1.satelcom.qc.ca (Postfix) with ESMTPS id 8689041E70
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 18:30:04 -0400 (EDT)
Received: from CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278]) by
	CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278%10]) with mapi;
	Tue, 7 Apr 2015 18:30:04 -0400
From: Martin Beaudet <martin.beaudet@intelia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 7 Apr 2015 18:30:03 -0400
Thread-Topic: Yocto Dizzy + Beaglebone + Qt5 (Internal compiler error)
Thread-Index: AdBxgSzPvY4tMFUVSduRMhQp99/z7A==
Message-ID: <muid.8539841e33.00FFF1D896D3FF4482179DF8C27DEFAFA329F13E11@CT-SERVEUR.ctaq.local>
Accept-Language: fr-FR, fr-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR, fr-CA
MIME-Version: 1.0
X-Assp-Version: 2.4.3(15059) on assp-db.satelcom.qc.ca
X-Assp-ID: assp-db.satelcom.qc.ca a119-45881-00111
X-Assp-Session: B3082684 (mail 1)
X-Assp-Envelope-From: martin.beaudet@intelia.com
X-Assp-Intended-For: yocto@yoctoproject.org
X-Assp-Server-TLS: yes
X-Mailman-Approved-At: Wed, 08 Apr 2015 09:51:03 -0700
Subject: Yocto Dizzy + Beaglebone + Qt5 (Internal compiler error)
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
X-List-Received-Date: Tue, 07 Apr 2015 22:39:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_00FFF1D896D3FF4482179DF8C27DEFAFA329F13E11CTSERVEURctaq_"

--_000_00FFF1D896D3FF4482179DF8C27DEFAFA329F13E11CTSERVEURctaq_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm building an image for the beaglebone. I would like to use (at least) th=
e version 5.4 of QT with elgfs platform.
Also the hardware accelerated support on Beaglebone Black.

Here is what I've done yet :
# SHELL COMMAND :
$ mkdir poky
$ git clone -b dizzy git://git.yoctoproject.org/poky
$ cd poky
$ git clone git://git.yoctoproject.org/meta-ti
$ git clone -b dizzy git://github.com/meta-qt5/meta-qt5.git
$ git clone -b dizzy git://git.openembedded.org/meta-openembedded
$ git clone -b daisy https://bitbucket.org/embarcados/meta-embarcados.git
$ source oe-init-build-env beaglebone
# FILE : poky/beaglebone/conf/local.conf
DISTRO_FEATURES_remove =3D "x11 wayland"
 # FILE : poky/beaglebone/conf/bblayers.conf
BBLAYERS ?=3D \
  ${TOPDIR}/../meta \
  ${TOPDIR}/../meta-yocto \
  ${TOPDIR}/../meta-openembedded/meta-oe \
  ${TOPDIR}/../meta-ti \
  ${TOPDIR}/../meta-qt5 \
  ${TOPDIR}/../meta-embarcados \
  ${TOPDIR}/../meta-embarcados/meta-bbb \
# SHELL COMMAND :
$ bitbake qt5-image-demo
Now I'm getting a compiler error :
/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueab=
i/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp:=
 In function 'bool loadPO(Translator&, QIODevice&, ConversionData&)':
/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueab=
i/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp:=
717:1: internal compiler error: in add_stores, at var-tracking.c:6000
}
^
Please submit a full bug report,
with preprocessed source if appropriate.
See <http://gcc.gnu.org/bugs.html> for instructions.
Makefile:934: recipe for target '.obj/po.o' failed
make[3]: *** [.obj/po.o] Error 1
make[3]: Leaving directory '/home/test/poky/beaglebone/tmp/work/cortexa8t2h=
f-vfp-neon-poky-linux-gnueabi/qttools/5.3.2-r0/build/src/linguist/lupdate'
Makefile:66: recipe for target 'sub-lupdate-make_first' failed
make[2]: *** [sub-lupdate-make_first] Error 2
make[2]: *** Waiting for unfinished jobs....
compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-li=
nux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shar=
ed/po.cpp
compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-li=
nux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shar=
ed/ts.cpp
compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-li=
nux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shar=
ed/ts.cpp
/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueab=
i/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp:=
 In function 'bool loadPO(Translator&, QIODevice&, ConversionData&)':
/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueab=
i/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp:=
717:1: internal compiler error: in add_stores, at var-tracking.c:6000
}
^
Please submit a full bug report,
with preprocessed source if appropriate.
See <http://gcc.gnu.org/bugs.html> for instructions.
Makefile:1022: recipe for target '.obj/po.o' failed
make[3]: *** [.obj/po.o] Error 1
make[3]: *** Waiting for unfinished jobs....
compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-li=
nux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shar=
ed/ts.cpp
/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueab=
i/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp:=
 In function 'bool loadPO(Translator&, QIODevice&, ConversionData&)':
/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueab=
i/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp:=
717:1: internal compiler error: in add_stores, at var-tracking.c:6000
}
^


I read about similar error here (https://bugs.launchpad.net/gcc-linaro/+bug=
/1312931) but they seem to indicate that this error has been fixed in new r=
elease of GCC and they are talking about 4.8 so I supposed it has been fixe=
d in 4.9 ?

I hope somebody can point me out the problem because I'm out of idea.

Best regards,
Martin



--_000_00FFF1D896D3FF4482179DF8C27DEFAFA329F13E11CTSERVEURctaq_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.co0
	{mso-style-name:co0;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.kw2
	{mso-style-name:kw2;}
span.re5
	{mso-style-name:re5;}
span.sy0
	{mso-style-name:sy0;}
span.kw3
	{mso-style-name:kw3;}
span.st0
	{mso-style-name:st0;}
span.co1
	{mso-style-name:co1;}
span.sc0
	{mso-style-name:sc0;
	font-family:"Courier New";
	color:black;}
span.sc641
	{mso-style-name:sc641;
	font-family:"Courier New";
	color:black;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1284576406;
	mso-list-template-ids:-940439784;}
@list l0:level1
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	margin-left:108.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	margin-left:144.0pt;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	margin-left:180.0pt;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	margin-left:216.0pt;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	margin-left:252.0pt;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	margin-left:288.0pt;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	margin-left:324.0pt;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:360.0pt;
	mso-level-number-position:left;
	margin-left:360.0pt;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:396.0pt;
	mso-level-number-position:left;
	margin-left:396.0pt;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR-CA link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p></=
p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span lang=
=3DEN-US>I&#8217;m building an image for the beaglebone. I would like to us=
e (<i>at least</i>) the version 5.4 of QT with elgfs platform. <o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>Also the hardware acceler=
ated support on Beaglebone Black.<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Here is what I&#8217;ve done yet :<o:p></o:p></span></p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
margin-left:35.4pt;line-height:15.75pt;background:white;vertical-align:top'=
><i><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:=
#666666;mso-fareast-language:FR-CA'># SHELL COMMAND :</span></i><span lang=
=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fare=
ast-language:FR-CA'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:35.4pt;line-hei=
ght:15.75pt;background:white;vertical-align:top'><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:F=
R-CA'>$&nbsp;</span><b><span lang=3DEN-US style=3D'font-size:9.0pt;font-fam=
ily:Consolas;color:#C20CB9;mso-fareast-language:FR-CA'>mkdir</span></b><spa=
n lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;ms=
o-fareast-language:FR-CA'>&nbsp;poky<br>$&nbsp;</span><b><span lang=3DEN-US=
 style=3D'font-size:9.0pt;font-family:Consolas;color:#C20CB9;mso-fareast-la=
nguage:FR-CA'>git clone</span></b><span lang=3DEN-US style=3D'font-size:9.0=
pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'>&nbsp;</spa=
n><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:#6=
60033;mso-fareast-language:FR-CA'>-b</span><span lang=3DEN-US style=3D'font=
-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'>&n=
bsp;dizzy git:<b>//</b>git.yoctoproject.org<b>/</b>poky<br>$&nbsp;</span><b=
><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:#7A=
0874;mso-fareast-language:FR-CA'>cd</span></b><span lang=3DEN-US style=3D'f=
ont-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'=
>&nbsp;poky<br>$&nbsp;</span><b><span lang=3DEN-US style=3D'font-size:9.0pt=
;font-family:Consolas;color:#C20CB9;mso-fareast-language:FR-CA'>git clone</=
span></b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;c=
olor:black;mso-fareast-language:FR-CA'>&nbsp;git:<b>//</b>git.yoctoproject.=
org<b>/</b>meta-ti<br>$&nbsp;</span><b><span lang=3DEN-US style=3D'font-siz=
e:9.0pt;font-family:Consolas;color:#C20CB9;mso-fareast-language:FR-CA'>git =
clone</span></b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Con=
solas;color:black;mso-fareast-language:FR-CA'>&nbsp;</span><span lang=3DEN-=
US style=3D'font-size:9.0pt;font-family:Consolas;color:#660033;mso-fareast-=
language:FR-CA'>-b</span><span lang=3DEN-US style=3D'font-size:9.0pt;font-f=
amily:Consolas;color:black;mso-fareast-language:FR-CA'>&nbsp;dizzy git:<b>/=
/</b>github.com<b>/</b>meta-qt5<b>/</b>meta-qt5.git<br>$&nbsp;</span><b><sp=
an lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:#C20CB9=
;mso-fareast-language:FR-CA'>git clone</span></b><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:F=
R-CA'>&nbsp;</span><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:=
Consolas;color:#660033;mso-fareast-language:FR-CA'>-b</span><span lang=3DEN=
-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-l=
anguage:FR-CA'>&nbsp;dizzy git:<b>//</b>git.openembedded.org<b>/</b>meta-op=
enembedded<br>$&nbsp;</span><b><span lang=3DEN-US style=3D'font-size:9.0pt;=
font-family:Consolas;color:#C20CB9;mso-fareast-language:FR-CA'>git clone</s=
pan></b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;co=
lor:black;mso-fareast-language:FR-CA'>&nbsp;</span><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:Consolas;color:#660033;mso-fareast-language=
:FR-CA'>-b</span><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Co=
nsolas;color:black;mso-fareast-language:FR-CA'>&nbsp;daisy <a href=3D"https=
://bitbucket.org/embarcados/meta-embarcados.git">https:<b>//</b>bitbucket.o=
rg<b>/</b>embarcados<b>/</b>meta-embarcados.git</a></span><span lang=3DEN-U=
S style=3D'font-size:9.0pt;font-family:Consolas;mso-fareast-language:FR-CA'=
><br><span style=3D'color:black'>$&nbsp;</span><b><span style=3D'color:#7A0=
874'>source</span></b><span style=3D'color:black'>&nbsp;oe-init-build-env b=
eaglebone<o:p></o:p></span></span></p><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:35.4pt;line-height:=
15.75pt;background:white;vertical-align:top'><i><span lang=3DEN-US style=3D=
'font-size:9.0pt;font-family:Consolas;color:#666666;mso-fareast-language:FR=
-CA'># FILE : poky/beaglebone/conf/local.conf<br></span></i><span lang=3DEN=
-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-l=
anguage:FR-CA'>DISTRO_FEATURES_remove =3D&nbsp;</span><span lang=3DEN-US st=
yle=3D'font-size:9.0pt;font-family:Consolas;color:red;mso-fareast-language:=
FR-CA'>&quot;x11 wayland&quot;</span><span lang=3DEN-US style=3D'font-size:=
9.0pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'><o:p></o=
:p></span></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto;margin-left:35.4pt;line-height:15.75pt;background:white=
;vertical-align:top'><span lang=3DEN-US style=3D'font-size:9.0pt;font-famil=
y:Consolas;color:black;mso-fareast-language:FR-CA'>&nbsp;</span><i><span la=
ng=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:#666666;mso-=
fareast-language:FR-CA'># FILE : poky/beaglebone/conf/bblayers.conf<br></sp=
an></i><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;col=
or:black;mso-fareast-language:FR-CA'>BBLAYERS ?=3D \<br>&nbsp;&nbsp;</span>=
<span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:maro=
on;mso-fareast-language:FR-CA'>${TOPDIR}</span><b><span lang=3DEN-US style=
=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:F=
R-CA'>/</span></b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:C=
onsolas;color:black;mso-fareast-language:FR-CA'>..<b>/</b>meta \<br>&nbsp;&=
nbsp;</span><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consola=
s;color:maroon;mso-fareast-language:FR-CA'>${TOPDIR}</span><b><span lang=3D=
EN-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast=
-language:FR-CA'>/</span></b><span lang=3DEN-US style=3D'font-size:9.0pt;fo=
nt-family:Consolas;color:black;mso-fareast-language:FR-CA'>..<b>/</b>meta-y=
octo \<br>&nbsp;&nbsp;</span><span lang=3DEN-US style=3D'font-size:9.0pt;fo=
nt-family:Consolas;color:maroon;mso-fareast-language:FR-CA'>${TOPDIR}</span=
><b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:=
black;mso-fareast-language:FR-CA'>/</span></b><span lang=3DEN-US style=3D'f=
ont-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'=
>..<b>/</b>meta-openembedded<b>/</b>meta-oe \<br>&nbsp;&nbsp;</span><span l=
ang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:maroon;mso-=
fareast-language:FR-CA'>${TOPDIR}</span><b><span lang=3DEN-US style=3D'font=
-size:9.0pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'>/<=
/span></b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;=
color:black;mso-fareast-language:FR-CA'>..<b>/</b>meta-ti \<br>&nbsp;&nbsp;=
</span><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;col=
or:maroon;mso-fareast-language:FR-CA'>${TOPDIR}</span><b><span lang=3DEN-US=
 style=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-lang=
uage:FR-CA'>/</span></b><span lang=3DEN-US style=3D'font-size:9.0pt;font-fa=
mily:Consolas;color:black;mso-fareast-language:FR-CA'>..<b>/</b>meta-qt5 \<=
br>&nbsp;&nbsp;</span><span lang=3DEN-US style=3D'font-size:9.0pt;font-fami=
ly:Consolas;color:maroon;mso-fareast-language:FR-CA'>${TOPDIR}</span><b><sp=
an lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;m=
so-fareast-language:FR-CA'>/</span></b><span lang=3DEN-US style=3D'font-siz=
e:9.0pt;font-family:Consolas;color:black;mso-fareast-language:FR-CA'>..<b>/=
</b>meta-embarcados \<br>&nbsp;&nbsp;</span><span lang=3DEN-US style=3D'fon=
t-size:9.0pt;font-family:Consolas;color:maroon;mso-fareast-language:FR-CA'>=
${TOPDIR}</span><b><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:=
Consolas;color:black;mso-fareast-language:FR-CA'>/</span></b><span lang=3DE=
N-US style=3D'font-size:9.0pt;font-family:Consolas;color:black;mso-fareast-=
language:FR-CA'>..<b>/</b>meta-embarcados<b>/</b>meta-bbb \<o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto;margin-left:35.4pt;line-height:15.75pt;background:white;vertica=
l-align:top'><i><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Con=
solas;color:#666666;mso-fareast-language:FR-CA'># SHELL COMMAND :<br></span=
></i><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:Consolas;color=
:black;mso-fareast-language:FR-CA'>$ bitbake qt5-image-demo<o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto;line-height:15.75pt;background:white;vertical-align:top'><span =
lang=3DEN-US>Now I&#8217;m getting a compiler error : <o:p></o:p></span></p=
><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:black=
;mso-fareast-language:FR-CA'>/home/test/poky/beaglebone/tmp/work/cortexa8t2=
hf-vfp-neon-poky-linux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.=
2/src/linguist/shared/po.cpp: In function 'bool loadPO(Translator&amp;, QIO=
Device&amp;, ConversionData&amp;)':<o:p></o:p></span></p><p class=3DMsoNorm=
al style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fareast-lang=
uage:FR-CA'>/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-=
linux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/sh=
ared/po.cpp:717:1: internal compiler error: in add_stores, at var-tracking.=
c:6000<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-left:35.4p=
t;background:white'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Courier New";color:black;mso-fareast-language:FR-CA'> }<o:p></o:p></span=
></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:b=
lack;mso-fareast-language:FR-CA'> ^<o:p></o:p></span></p><p class=3DMsoNorm=
al style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fareast-lang=
uage:FR-CA'>Please submit a full bug report,<o:p></o:p></span></p><p class=
=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fare=
ast-language:FR-CA'>with preprocessed source if appropriate.<o:p></o:p></sp=
an></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color=
:black;mso-fareast-language:FR-CA'>See &lt;<u>http://gcc.gnu.org/bugs.html<=
/u>&gt; for instructions.<o:p></o:p></span></p><p class=3DMsoNormal style=
=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Courier New";color:black;mso-fareast-language:FR-CA=
'>Makefile:934: recipe for target '.obj/po.o' failed<o:p></o:p></span></p><=
p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:black;m=
so-fareast-language:FR-CA'>make[3]: *** [.obj/po.o] Error 1<o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:=
black;mso-fareast-language:FR-CA'>make[3]: Leaving directory '/home/test/po=
ky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/qttools/5.3=
.2-r0/build/src/linguist/lupdate'<o:p></o:p></span></p><p class=3DMsoNormal=
 style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Courier New";color:black;mso-fareast-language=
:FR-CA'>Makefile:66: recipe for target 'sub-lupdate-make_first' failed<o:p>=
</o:p></span></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;backgroun=
d:white'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier =
New";color:black;mso-fareast-language:FR-CA'>make[2]: *** [sub-lupdate-make=
_first] Error 2<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-l=
eft:35.4pt;background:white'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Courier New";color:black;mso-fareast-language:FR-CA'>make[2]: *=
** Waiting for unfinished jobs....<o:p></o:p></span></p><p class=3DMsoNorma=
l style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Courier New";color:black;mso-fareast-languag=
e:FR-CA'>compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neo=
n-poky-linux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/ling=
uist/shared/po.cpp<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margi=
n-left:35.4pt;background:white'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Courier New";color:black;mso-fareast-language:FR-CA'>compili=
ng /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnu=
eabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/ts.c=
pp<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;ba=
ckground:white'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"C=
ourier New";color:black;mso-fareast-language:FR-CA'>compiling /home/test/po=
ky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/qttools/5.3=
.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/ts.cpp<o:p></o:p></s=
pan></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";colo=
r:black;mso-fareast-language:FR-CA'>/home/test/poky/beaglebone/tmp/work/cor=
texa8t2hf-vfp-neon-poky-linux-gnueabi/qttools/5.3.2-r0/qttools-opensource-s=
rc-5.3.2/src/linguist/shared/po.cpp: In function 'bool loadPO(Translator&am=
p;, QIODevice&amp;, ConversionData&amp;)':<o:p></o:p></span></p><p class=3D=
MsoNormal style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fareast=
-language:FR-CA'>/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-=
poky-linux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/lingui=
st/shared/po.cpp:717:1: internal compiler error: in add_stores, at var-trac=
king.c:6000<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-left:=
35.4pt;background:white'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Courier New";color:black;mso-fareast-language:FR-CA'> }<o:p></o:p><=
/span></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";co=
lor:black;mso-fareast-language:FR-CA'> ^<o:p></o:p></span></p><p class=3DMs=
oNormal style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fareast-l=
anguage:FR-CA'>Please submit a full bug report,<o:p></o:p></span></p><p cla=
ss=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fa=
reast-language:FR-CA'>with preprocessed source if appropriate.<o:p></o:p></=
span></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";col=
or:black;mso-fareast-language:FR-CA'>See &lt;<u>http://gcc.gnu.org/bugs.htm=
l</u>&gt; for instructions.<o:p></o:p></span></p><p class=3DMsoNormal style=
=3D'margin-left:35.4pt;background:white'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Courier New";color:black;mso-fareast-language:FR-CA=
'>Makefile:1022: recipe for target '.obj/po.o' failed<o:p></o:p></span></p>=
<p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color:black;=
mso-fareast-language:FR-CA'>make[3]: *** [.obj/po.o] Error 1<o:p></o:p></sp=
an></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";color=
:black;mso-fareast-language:FR-CA'>make[3]: *** Waiting for unfinished jobs=
....<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;=
background:white'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Courier New";color:black;mso-fareast-language:FR-CA'>compiling /home/test/=
poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/qttools/5=
.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/ts.cpp<o:p></o:p><=
/span></p><p class=3DMsoNormal style=3D'margin-left:35.4pt;background:white=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";co=
lor:black;mso-fareast-language:FR-CA'>/home/test/poky/beaglebone/tmp/work/c=
ortexa8t2hf-vfp-neon-poky-linux-gnueabi/qttools/5.3.2-r0/qttools-opensource=
-src-5.3.2/src/linguist/shared/po.cpp: In function 'bool loadPO(Translator&=
amp;, QIODevice&amp;, ConversionData&amp;)':<o:p></o:p></span></p><p class=
=3DMsoNormal style=3D'margin-left:35.4pt;background:white'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fare=
ast-language:FR-CA'>/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-ne=
on-poky-linux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/lin=
guist/shared/po.cpp:717:1: internal compiler error: in add_stores, at var-t=
racking.c:6000<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-le=
ft:35.4pt;background:white'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Courier New";color:black;mso-fareast-language:FR-CA'> </span><sp=
an style=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-fare=
ast-language:FR-CA'>}<o:p></o:p></span></p><p class=3DMsoNormal style=3D'ma=
rgin-left:35.4pt;background:white'><span style=3D'font-size:10.0pt;font-fam=
ily:"Courier New";color:black;mso-fareast-language:FR-CA'> ^<o:p></o:p></sp=
an></p><p class=3DMsoNormal style=3D'background:white'><span style=3D'font-=
size:10.0pt;font-family:"Courier New";color:black;mso-fareast-language:FR-C=
A'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'margin-left:35=
.4pt;background:white'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Courier New";color:black;mso-fareast-language:FR-CA'><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal style=3D'background:white'><span lang=3DEN=
-US>I read about similar error here (<a href=3D"https://bugs.launchpad.net/=
gcc-linaro/+bug/1312931">https://bugs.launchpad.net/gcc-linaro/+bug/1312931=
</a>) but they seem to indicate that this error has been fixed in new relea=
se of GCC and they are talking about 4.8 so I supposed it has been fixed in=
 4.9 ?<o:p></o:p></span></p><p class=3DMsoNormal style=3D'background:white'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";col=
or:black;mso-fareast-language:FR-CA'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal style=3D'background:white'><span lang=3DEN-US>I hope somebody =
can point me out the problem because I&#8217;m out of idea.<o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'background:white'><span lang=3DEN-US><o=
:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'background:white'><=
span lang=3DEN-US>Best regards,<o:p></o:p></span></p><p class=3DMsoNormal s=
tyle=3D'background:white'><span lang=3DEN-US>Martin</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Courier New";color:black;mso-farea=
st-language:FR-CA'><o:p></o:p></span></p><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:35.4pt;line-heig=
ht:15.75pt;background:white;vertical-align:top'><span lang=3DEN-US style=3D=
'font-size:8.0pt;font-family:"Courier New";color:black;mso-fareast-language=
:FR-CA'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_00FFF1D896D3FF4482179DF8C27DEFAFA329F13E11CTSERVEURctaq_--
