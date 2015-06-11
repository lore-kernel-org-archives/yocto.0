Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13248E009F6; Thu, 11 Jun 2015 02:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Jun 2015 02:55:46 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0B87E009C2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 02:55:46 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Au8FAH3ldlXGmAcV/2dsb2JhbABcgkUhKiMxXga+CYIpHQEFhX0CgUhMAQEBAQEBgQALhCQBAQMSG14BFRVWJgEEGxqIDAGcPYUJrn4MAR+QGIJlDEEdgRYFkz6EQohehjCPSySDeG+BRoEBAQEB
X-IronPort-AV: E=Sophos;i="5.13,581,1427774400"; 
	d="scan'208,217";a="106141063"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	11 Jun 2015 05:54:37 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC04.global.avaya.com) ([135.64.58.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	11 Jun 2015 05:54:37 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC04.global.avaya.com ([135.64.58.14]) with mapi id
	14.03.0174.001; Thu, 11 Jun 2015 11:54:36 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Merging of two recipes
Thread-Index: AdCkLJwlry0zDBx8SVmXh/3OYBl0DQ==
Date: Thu, 11 Jun 2015 09:54:36 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A42B2EE@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: Merging of two recipes
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
X-List-Received-Date: Thu, 11 Jun 2015 09:55:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A42B2EEAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A42B2EEAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Currently I have two different recipes for similar type of package with a m=
inor differences. Below is the list

1.       One being packaged as tar.gz and don't have pre or post install ac=
tivity

2.       Other one being packaged as RPM and have a post install section in=
 it.
Below is the extract of the recipes

Test.bb

PACKAGES =3D "test-ch test-da test-de test-el \
            test-en test-enu test-es test-eso \
            test-fi test-fr test-frc test-hu \
            test-it test-jp test-ko test-nl \
            test-no test-pl test-pt test-ptb \
            test-ru test-sv test-trk test-zhh \
"
addtask convert after do_fetch before do_install

do_install_append() {
    for lang in ${LANGS}; do
        install -d ${D}/system/test/${lang}
        install -m 0644 ${WORKDIR}/adpcm/${lang}/* ${D}/system/test/${lang}
        install -m 0755 ${S}/../vmpro/Build_Scripts/vmpro500L-build/audio_c=
onverter.sh ${D}/system/test/${lang}
    done
}

#ch
FILES_test-ch   =3D "${S}/alaw/ch"
FILES_test-ch   +=3D "/system/test/ch"

pkg_postinst_test-ch(){
    echo "Post installation of test-ch"
    cd /system/test/ch/
    ./test.sh
}

# da
FILES_test-da   =3D "${S}/alaw/da"
FILES_test-da   +=3D "/system/test/da"

pkg_postinst_test-da(){
    echo "Post installation of test-da"
    cd /system/test/da/
    ./test.sh
}

. . .

Test1.bb

PACKAGES =3D "test-ch test-da test-de test-el \
            test-en test-enu test-es test-eso \
            test-fi test-fr test-frc test-hu \
            test-it test-jp test-ko test-nl \
            test-no test-pl test-pt test-ptb \
            test-ru test-sv test-trk test-zhh \
            "

addtask do_convert after do_fetch before do_install

do_install_append() {
    for lang in ${LANGS}; do
        install -d ${D}/system/test/${lang}
        install -m 0644 ${WORKDIR}/law/${lang}/* ${D}/system/test/${lang}
    done
}

#ch
FILES_test-ch   +=3D "/system/test/ch"

# da
FILES_test-da   +=3D "/system/test/da"

# de
FILES_test-de   +=3D "/system/test/de"


So I want to merge these both recipes to produce the same artificats as abo=
ve but using a single recipe. So any thoughts how to do it.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A42B2EEAZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:180315240;
	mso-list-type:hybrid;
	mso-list-template-ids:928798512 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently I have two different recipes for similar t=
ype of package with a minor differences. Below is the list<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>One being packaged as tar.gz and don&#8217;t have p=
re or post install activity<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Other one being packaged as RPM and have a post ins=
tall section in it.<o:p></o:p></p>
<p class=3D"MsoNormal">Below is the extract of the recipes<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Test.bb<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGES =3D &quot;test-ch test-da test-de test-el \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-en test-enu test-es test-eso \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-fi test-fr test-frc test-hu \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-it test-jp test-ko test-nl \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-no test-pl test-pt test-ptb \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-ru test-sv test-trk test-zhh \<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;<o:p></o:p></p>
<p class=3D"MsoNormal">addtask convert after do_fetch before do_install<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install_append() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; for lang in ${LANGS}; do<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
d ${D}/system/test/${lang}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
m 0644 ${WORKDIR}/adpcm/${lang}/* ${D}/system/test/${lang}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
m 0755 ${S}/../vmpro/Build_Scripts/vmpro500L-build/audio_converter.sh ${D}/=
system/test/${lang}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; done<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#ch<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-ch&nbsp;&nbsp; =3D &quot;${S}/alaw/ch&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-ch&nbsp;&nbsp; &#43;=3D &quot;/system/tes=
t/ch&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">pkg_postinst_test-ch(){<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; echo &quot;Post installation of t=
est-ch&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; cd /system/test/ch/<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ./test.sh<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># da<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-da&nbsp;&nbsp; =3D &quot;${S}/alaw/da&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-da &nbsp;&nbsp;&#43;=3D &quot;/system/tes=
t/da&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">pkg_postinst_test-da(){<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; echo &quot;Post installation of t=
est-da&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; cd /system/test/da/<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ./test.sh<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">. . .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Test1.bb<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGES =3D &quot;test-ch test-da test-de test-el \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-en test-enu test-es test-eso \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-fi test-fr test-frc test-hu \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-it test-jp test-ko test-nl \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; test-no test-pl test-pt test-ptb \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;test-ru test-sv test-trk test-zhh \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">addtask do_convert after do_fetch before do_install<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install_append() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; for lang in ${LANGS}; do<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
d ${D}/system/test/${lang}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
m 0644 ${WORKDIR}/law/${lang}/* ${D}/system/test/${lang}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; done<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#ch<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-ch&nbsp;&nbsp; &#43;=3D &quot;/system/tes=
t/ch&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># da<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-da&nbsp;&nbsp; &#43;=3D &quot;/system/tes=
t/da&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># de<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_test-de&nbsp;&nbsp; &#43;=3D &quot;/system/tes=
t/de&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I want to merge these both recipes to produce the=
 same artificats as above but using a single recipe. So any thoughts how to=
 do it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A42B2EEAZFFEXMB01globa_--
