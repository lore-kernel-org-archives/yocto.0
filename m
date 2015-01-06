Return-Path: <andre.marschalek@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82612E0082D; Tue,  6 Jan 2015 06:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andre.marschalek[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.116.16 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BLU004-OMC1S5.hotmail.com (blu004-omc1s5.hotmail.com
	[65.55.116.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC602E00344
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 06:33:47 -0800 (PST)
Received: from BLU406-EAS204 ([65.55.116.7]) by BLU004-OMC1S5.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Tue, 6 Jan 2015 06:33:46 -0800
X-TMN: [ya1msbqZNNvFfz62dCMtoMSjsWsYajZK]
X-Originating-Email: [andre.marschalek@outlook.com]
Message-ID: <BLU406-EAS2048C24D52F9E36403A1FAB8B590@phx.gbl>
From: Andre Marschalek <andre.marschalek@outlook.com>
To: "'Moore, Thomas \(FtWorth\)'" <Thomas.Moore2@ATK.COM>,
	<yocto@yoctoproject.org>
References: <BLU406-EAS388E30ADBB7B8ABF5E862C58B580@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9@UT40SVCWEM001.atk.com>
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9@UT40SVCWEM001.atk.com>
Date: Tue, 6 Jan 2015 15:33:34 +0100
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQABAgMEpM1h462i2UafeuILe2ozlqBRdTXg
X-OriginalArrivalTime: 06 Jan 2015 14:33:46.0497 (UTC)
	FILETIME=[C76AD710:01D029BD]
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
X-List-Received-Date: Tue, 06 Jan 2015 14:33:52 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0003_01D029C6.25E01410"
Content-Language: en-us

------=_NextPart_000_0003_01D029C6.25E01410
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Thomas,

 

what I need is to have one image per partition

 

for example if i need to have /opt on a different partition i would need 2
image files at the end

 

one containing the root partition but without /opt and one with the contents
of /opt (without /opt itself because this image will be mounted as /opt at
the end)

 

br

Andre

 

From: Moore, Thomas (FtWorth) [mailto:Thomas.Moore2@ATK.COM] 
Sent: Tuesday, January 6, 2015 1:01 AM
To: Andre Marschalek; yocto@yoctoproject.org
Subject: RE: [yocto] separate partition support

 

I'm actually experimenting with this today.

 

Per the Development Manual, my first attempt was to use wic. While I was
able to create an image with multiple partitions, there appears to be no way
to split up the rootfs image that is created amongst the multiple
partitions. Below is the wks file I created for my test:

 

part /boot --source bootimg-pcbios --ondisk sda --label boot --active
--align 1024

part / --source rootfs --ondisk sda --fstype=ext3 --label platform --align
1024

part /var --source rootfs --ondisk sda --fstype=ext3 --label data --align
1024

 

bootloader  --timeout=0  --append="rootwait rootfstype=ext3 video=vesafb
vga=0x318 console=tty0"

 

After running wic, I was able to examine the resulting image and there were
three partitions. However, the second and third partitions (/ and /var) both
contained the entire rootfs. In this case, I was hoping that wic would
realize that I only wanted the contents /var in the third partition and to
also not be included in the second partition.

 

While it may be possible to create a new plugin for wic to achieve my
desired result, I'm not sure if it would be possible for the instance of the
plugin creating the / partition to be aware of the other partitions and
their mount points to be able to exclude those folders from the / partition.
Does anyone have any thoughts on this?

 

Thanks,

 

Thomas Moore

 

From: yocto-bounces@yoctoproject.org <mailto:yocto-bounces@yoctoproject.org>
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Andre Marschalek
Sent: Monday, January 05, 2015 5:50 PM
To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> 
Subject: [yocto] separate partition support

 

hi,

 

splitting the root file filesystem into different partitions is a common
task and supported from every operating system during install and should be
also supported from yocto's build system

based on the current available documentation it seems impossible to
accomplish this task, the only available result is one full blown image
containing the root partition

 

currently the only idea i had is to run bitbake which will generate the root
image containing everything

create afterwards my own images with the desired size (also a new root image
because in this case IMAGE_ROOTFS_SIZE does not reflect the ending image
size)

mount every image and move the directories from the bitbake produced image
into this new images

and finally flash that images to my devices

 

what do you mean?

should this basic core functionality part of yocto's build process without
an overhead for everyone to create isolated solutions?

do you see a better workaround as to create new images and movements after
the build process?

 

thank you in advance

 

br

Andre


------=_NextPart_000_0003_01D029C6.25E01410
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Hi =
Thomas,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>what I need is to have =
one image per partition<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>for example if i need to =
have /opt on a different partition i would need 2 image files at the =
end<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>one containing the root =
partition but without /opt and one with the contents of /opt (without =
/opt itself because this image will be mounted as /opt at the =
end)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>br<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Andre<o:p></o:p></span></p><p =
class=3DMsoNormal><a name=3D"_MailEndCompose"><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></a></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Moore, Thomas (FtWorth) =
[mailto:Thomas.Moore2@ATK.COM] <br><b>Sent:</b> Tuesday, January 6, 2015 =
1:01 AM<br><b>To:</b> Andre Marschalek; =
yocto@yoctoproject.org<br><b>Subject:</b> RE: [yocto] separate partition =
support<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>I&#8217;m actually experimenting with this =
today.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Per the Development =
Manual, my first attempt was to use wic. While I was able to create an =
image with multiple partitions, there appears to be no way to split up =
the rootfs image that is created amongst the multiple partitions. Below =
is the wks file I created for my test:<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:.5in'><span style=3D'color:#1F497D'>part /boot =
--source bootimg-pcbios --ondisk sda --label boot --active --align =
1024<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:.5in'><span style=3D'color:#1F497D'>part / --source =
rootfs --ondisk sda --fstype=3Dext3 --label platform --align =
1024<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:.5in'><span style=3D'color:#1F497D'>part /var =
--source rootfs --ondisk sda --fstype=3Dext3 --label data --align =
1024<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:.5in'><span =
style=3D'color:#1F497D'>bootloader&nbsp; --timeout=3D0&nbsp; =
--append=3D&quot;rootwait rootfstype=3Dext3 video=3Dvesafb vga=3D0x318 =
console=3Dtty0&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>After running wic, I was =
able to examine the resulting image and there were three partitions. =
However, the second and third partitions (/ and /var) both contained the =
entire rootfs. In this case, I was hoping that wic would realize that I =
only wanted the contents /var in the third partition and to also not be =
included in the second partition.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>While it may be possible =
to create a new plugin for wic to achieve my desired result, I&#8217;m =
not sure if it would be possible for the instance of the plugin creating =
the / partition to be aware of the other partitions and their mount =
points to be able to exclude those folders from the / partition. Does =
anyone have any thoughts on this?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Thomas =
Moore</span></b><span =
style=3D'color:#1F497D'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma",sans-serif'>From:</span></=
b><span style=3D'font-size:10.0pt;font-family:"Tahoma",sans-serif'> <a =
href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a> [<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yocto=
project.org</a>] <b>On Behalf Of </b>Andre Marschalek<br><b>Sent:</b> =
Monday, January 05, 2015 5:50 PM<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> [yocto] separate partition =
support<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>splitting =
the root file filesystem into different partitions is a common task and =
supported from every operating system during install and should be also =
supported from yocto&#8217;s build system<o:p></o:p></p><p =
class=3DMsoNormal>based on the current available documentation it seems =
impossible to accomplish this task, the only available result is one =
full blown image containing the root partition<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>currently =
the only idea i had is to run bitbake which will generate the root image =
containing everything<o:p></o:p></p><p class=3DMsoNormal>create =
afterwards my own images with the desired size (also a new root image =
because in this case IMAGE_ROOTFS_SIZE does not reflect the ending image =
size)<o:p></o:p></p><p class=3DMsoNormal>mount every image and move the =
directories from the bitbake produced image into this new =
images<o:p></o:p></p><p class=3DMsoNormal>and finally flash that images =
to my devices<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>what do you mean?<o:p></o:p></p><p =
class=3DMsoNormal>should this basic core functionality part of =
yocto&#8217;s build process without an overhead for everyone to create =
isolated solutions?<o:p></o:p></p><p class=3DMsoNormal>do you see a =
better workaround as to create new images and movements after the build =
process?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>thank you in advance<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>br<o:p></o:p></p><p =
class=3DMsoNormal>Andre<o:p></o:p></p></div></body></html>

------=_NextPart_000_0003_01D029C6.25E01410--
