Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FF02E00753; Mon,  5 Jan 2015 16:01:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE23E003E3
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 16:01:25 -0800 (PST)
Received: from unknown (HELO UT40SVCWEC0001.atk.com) ([146.168.70.142])
	by mx-mn.atk.com with ESMTP; 05 Jan 2015 17:54:49 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.43]) by
	UT40SVCWEC0001.atk.com ([146.168.70.142]) with mapi id 14.03.0174.001;
	Mon, 5 Jan 2015 17:01:18 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: Andre Marschalek <andre.marschalek@outlook.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] separate partition support
Thread-Index: AdApP8G+rsewRxeURAur5KbHU7yLogAAu8Lg
Date: Tue, 6 Jan 2015 00:01:17 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9@UT40SVCWEM001.atk.com>
References: <BLU406-EAS388E30ADBB7B8ABF5E862C58B580@phx.gbl>
In-Reply-To: <BLU406-EAS388E30ADBB7B8ABF5E862C58B580@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: Re: separate partition support
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
X-List-Received-Date: Tue, 06 Jan 2015 00:01:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9UT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9UT40SVCWEM001at_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm actually experimenting with this today.

Per the Development Manual, my first attempt was to use wic. While I was ab=
le to create an image with multiple partitions, there appears to be no way =
to split up the rootfs image that is created amongst the multiple partition=
s. Below is the wks file I created for my test:

part /boot --source bootimg-pcbios --ondisk sda --label boot --active --ali=
gn 1024
part / --source rootfs --ondisk sda --fstype=3Dext3 --label platform --alig=
n 1024
part /var --source rootfs --ondisk sda --fstype=3Dext3 --label data --align=
 1024

bootloader  --timeout=3D0  --append=3D"rootwait rootfstype=3Dext3 video=3Dv=
esafb vga=3D0x318 console=3Dtty0"

After running wic, I was able to examine the resulting image and there were=
 three partitions. However, the second and third partitions (/ and /var) bo=
th contained the entire rootfs. In this case, I was hoping that wic would r=
ealize that I only wanted the contents /var in the third partition and to a=
lso not be included in the second partition.

While it may be possible to create a new plugin for wic to achieve my desir=
ed result, I'm not sure if it would be possible for the instance of the plu=
gin creating the / partition to be aware of the other partitions and their =
mount points to be able to exclude those folders from the / partition. Does=
 anyone have any thoughts on this?

Thanks,

Thomas Moore

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Andre Marschalek
Sent: Monday, January 05, 2015 5:50 PM
To: yocto@yoctoproject.org
Subject: [yocto] separate partition support

hi,

splitting the root file filesystem into different partitions is a common ta=
sk and supported from every operating system during install and should be a=
lso supported from yocto's build system
based on the current available documentation it seems impossible to accompl=
ish this task, the only available result is one full blown image containing=
 the root partition

currently the only idea i had is to run bitbake which will generate the roo=
t image containing everything
create afterwards my own images with the desired size (also a new root imag=
e because in this case IMAGE_ROOTFS_SIZE does not reflect the ending image =
size)
mount every image and move the directories from the bitbake produced image =
into this new images
and finally flash that images to my devices

what do you mean?
should this basic core functionality part of yocto's build process without =
an overhead for everyone to create isolated solutions?
do you see a better workaround as to create new images and movements after =
the build process?

thank you in advance

br
Andre

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9UT40SVCWEM001at_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I&#8217;m actually exp=
erimenting with this today.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Per the Development Ma=
nual, my first attempt was to use wic. While I was able to create an image =
with multiple partitions, there appears to be no way to split up the rootfs=
 image that is created amongst the multiple
 partitions. Below is the wks file I created for my test:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">part /boot --source bootimg-pcbios --ondisk sda --label boot --active =
--align 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">part / --source rootfs --ondisk sda --fstype=3Dext3 --label platform -=
-align 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">part /var --source rootfs --ondisk sda --fstype=3Dext3 --label data --=
align 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">bootloader&nbsp; --timeout=3D0&nbsp; --append=3D&quot;rootwait rootfst=
ype=3Dext3 video=3Dvesafb vga=3D0x318 console=3Dtty0&quot;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">After running wic, I w=
as able to examine the resulting image and there were three partitions. How=
ever, the second and third partitions (/ and /var) both contained the entir=
e rootfs. In this case, I was hoping
 that wic would realize that I only wanted the contents /var in the third p=
artition and to also not be included in the second partition.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">While it may be possib=
le to create a new plugin for wic to achieve my desired result, I&#8217;m n=
ot sure if it would be possible for the instance of the plugin creating the=
 / partition to be aware of the other partitions
 and their mount points to be able to exclude those folders from the / part=
ition. Does anyone have any thoughts on this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">Thomas Moore</span>=
</b><span style=3D"color:#1F497D"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Andre Marschalek<br>
<b>Sent:</b> Monday, January 05, 2015 5:50 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] separate partition support<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">splitting the root file filesystem into different pa=
rtitions is a common task and supported from every operating system during =
install and should be also supported from yocto&#8217;s build system<o:p></=
o:p></p>
<p class=3D"MsoNormal">based on the current available documentation it seem=
s impossible to accomplish this task, the only available result is one full=
 blown image containing the root partition<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">currently the only idea i had is to run bitbake whic=
h will generate the root image containing everything<o:p></o:p></p>
<p class=3D"MsoNormal">create afterwards my own images with the desired siz=
e (also a new root image because in this case IMAGE_ROOTFS_SIZE does not re=
flect the ending image size)<o:p></o:p></p>
<p class=3D"MsoNormal">mount every image and move the directories from the =
bitbake produced image into this new images<o:p></o:p></p>
<p class=3D"MsoNormal">and finally flash that images to my devices<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">what do you mean?<o:p></o:p></p>
<p class=3D"MsoNormal">should this basic core functionality part of yocto&#=
8217;s build process without an overhead for everyone to create isolated so=
lutions?<o:p></o:p></p>
<p class=3D"MsoNormal">do you see a better workaround as to create new imag=
es and movements after the build process?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">thank you in advance<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">br<o:p></o:p></p>
<p class=3D"MsoNormal">Andre<o:p></o:p></p>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9UT40SVCWEM001at_--
