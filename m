Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D54B3E00CAD; Mon,  7 Jan 2019 08:59:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [91.90.150.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2065.ppsmtp.net (s2065.ppsmtp.net [91.90.150.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 123C7E00C93
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 08:59:16 -0800 (PST)
Received: from pps.filterd (s2065.ppsmtp.net [127.0.0.1])
	by s2065.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id x07GtEMw014620
	for <yocto@yoctoproject.org>; Mon, 7 Jan 2019 17:59:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : mime-version :
	content-type; s=pps; bh=MNzhS26T91SYCki633asoocm5KCIvD8IEEY7SWsvjwM=;
	b=PxkjMdQ9H7XELJJc5FOjJRFBtTWyR6uaNZy9YMOvHRcTCkSGAcuaSBmqM8QSz7JRwyt5
	BFzeHKyKPK8tZrQHJr8jfmDHPeOBNF+y6jJT1SEGeusdJRnkbdu7KMwIdGDzF9BWGIZN
	aREHqQxZt3cUCe2TgiHASusWl40k//6XA/Ca5cp3zLUC941nu9pSZ4hwqFz507oGIC+B
	0At1nF0dW9Cd9HDP5ifZtHfekAW+p8vEHzrUkwz9665LTyClbNGx2C0wUxGt0DNaO5K4
	gbIGnlHunTH5wY6mppd+XQPj37Hn62h+c779r4vFREfz/hanYA4+m20PipgeSKMxZwIW
	mw== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2065.ppsmtp.net with ESMTP id 2pu5m5pvaq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 17:59:15 +0100
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id 222C7884446
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 17:59:15 +0100 (CET)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "manjukum@xilinx.com"
	<manjukum@xilinx.com>
Thread-Topic: bitbake openamp-image-minimal fails to create image
Thread-Index: AdSmWDG603OeUfxeQYusuc4ZfFevdgACc8iwAA9BEDA=
Date: Mon, 7 Jan 2019 16:59:11 +0000
Message-ID: <6f9664b4422a45dea24977f17e529033@ifm.com>
References: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
	<BYAPR02MB60055CFEFBCF3B367ABF4F05B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB60055CFEFBCF3B367ABF4F05B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.147]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24344.000
X-TM-AS-Result: No-18.059500-5.000000-10
X-TMASE-MatchedRID: Rp71wniPtoNJtzxaLxhtW3vBWikXzNqD8JzVOUQUG5xZQ1dCoB0lhywP
	u6ZqMz5LidB6ML8Ml/wFsNbZ6wJ5ZKtL0wBaA/G+fCwgB7jBwkZQCOsAlaxN72HZ+cd7VyKXjd4
	YOVwZNZTtLUbE8Wunaip5fAR+2EbbZoDIxWc9q0uvPooS+PUQchmyTBaqiJvcDYbe/PyX8gQGlU
	zktEFj94betrkrvkbYUZgBnchq91ZzgDEqoQageoeAntdoMxBaGSqdEmeD/nWUF3pnwM4NjdPew
	vh+a56ZBMB4GX/Gdj2YxGBIxxnJ50qkgzox/CQaiZXXNvjmJ4Zqv1Iw0mn8ZAZbeEWcL03Vuqlb
	+InUL+mF3yRdE1cLXmocgy/uSabXoayr11+eKrlmVHNo7XGknd9WrDP4LKdpGA7uwIZNHQ1cX89
	dDrF4+VehZ8JDMoGXa+5MR1psyWhqD9kNPFM9GDbN0t/c2qF2MrX+p1uNztAUtdRZTmEaIV2pa+
	aJMbyan9fPWsL/WDSjsy4IyYQvCIGSNZ+mjVM23/BiYwVwlIhC0kBgBzox7mtEzrC9eANp2s92s
	h0zjZvZfQx3B5aMuJJTzjwz+GzorhAB5C8gZ6pv/kcFnp29GDPYPmH3aiShN0cddcqHlEJ5RA29
	TjvO6LuwuIYnhcFSfyYDewMOrQDcVhfTSdJcuONd69vH9me2RRgndEtDQrJnnvG36HEvQq6NRuQ
	ItOAgkmZZOTFgS3F3SJ01ECQR6l8I4oUq5Vga
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--18.059500-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24344.000
X-TM-SNTS-SMTP: D0344E5E0ED2D68C46FA19D02D70F4A92FAC218F09354D1075006C2CEE13C2E92002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190107165915Z
X-Proofpoint-ID: SID=2pu5m5pvaq QID=2pu5m5pvaq-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-01-07_07:, , signatures=0
Subject: Re: bitbake openamp-image-minimal fails to create image
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
X-List-Received-Date: Mon, 07 Jan 2019 16:59:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6f9664b4422a45dea24977f17e529033ifmcom_"

--_000_6f9664b4422a45dea24977f17e529033ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I solved the problem by using meta-openamp(branch should be similar to xili=
nx version) layer in my yocto project and enabled "libmetal" and "open-amp"=
 packages in my image recipe. It compiled successfully.  I also add rpmsg-e=
cho-test,  rpmsg-mat-mul , and rpmsg-proxy-app packages in the image and it=
 successfully compiled. I am building Linux Application that uses RPMsg in =
user space.
Now the executable generated from echo-test or mat-mul are in my host linux=
 master (a53-core). I have also created an r5-application using XSDK.
What is the next step to have a communication between a53 and r5. How to us=
e the generated elf file for r5 processor.
Also I have enabled remoteproc, rpmsg, virtio  in kernel configuration.
But while using the command " $modprobe zynqmp_r5_remoteproc", I get the fo=
llowing error:

"modprobe: module zynqmp_r5_remoteproc not found in modules.dep"

How can I boot the r5 processor and where to store the elf file generated.
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
Sent: 07 January 2019 13:53
To: Pandey, Kamal <Kamal.Pandey@ifm.com>; yocto@yoctoproject.org
Subject: RE: bitbake openamp-image-minimal fails to create image

Hi Kamal,

Seems like the required kernel modules are missing causing the breakage.
Enable them using kernel menuconfig (bitbake virtual/kernel -c menuconfig) =
and then build the image

Thanks,
Manju

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Pandey, Kamal
Sent: Sunday, January 06, 2019 11:14 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] bitbake openamp-image-minimal fails to create image

Hello,
I used the meta-openamp layer for r5-a53 communication.
but when I simply ran $bitbake openamp-image-minimal, it gave me the follow=
ing error:

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Comman=
d '/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zy=
nqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/=
dnf -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_r=
ev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf=
 --setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tm=
p/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc=
/yum.repos.d --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/bu=
ild-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.=
0-r0/oe-rootfs-repo --installroot=3D/media/iepl/iepl1/work/yocto_build/buil=
d-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-=
r0/rootfs --setopt=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open=
-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/tem=
p --nogpgcheck install kernel-module-virtio-ring kernel-module-virtio-rpmsg=
-bus kernel-module-uio-pdrv-genirq kernel-module-virtio libopen-amp0 packag=
egroup-base-extended kernel-image-fitimage-4.14.79-yocto-standard run-posti=
nsts libmetal packagegroup-core-boot kernel-module-remoteproc' returned 1:
Added oe-repo repo from /media/iepl/iepl1/work/yocto_build/build-open-amp/t=
mp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/oe-rootfs=
-repo
Last metadata expiration check: 0:00:00 ago on Fri 04 Jan 2019 01:58:31 PM =
UTC.
No package kernel-module-virtio-ring available.
No package   available.
No package kernel-module-virtio available.
No package   available.
Error: Unable to find a match

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /media/iepl/iepl1/work/yocto_build/bui=
ld-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0=
-r0/temp/log.do_rootfs.7153
ERROR: Task (/home/iepl/work/yocto_build/poky/../meta-openamp/recipes-opena=
mp/images/openamp-image-minimal.bb:do_rootfs) failed with exit code '1'


Can someone provide me a solution to this problem.
Thanks

--_000_6f9664b4422a45dea24977f17e529033ifmcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Hi, <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">I solved the problem by using meta-openamp(branch should be similar to=
 xilinx version) layer in my yocto project and enabled &#8220;libmetal&#822=
1; and &#8220;open-amp&#8221; packages in my image recipe. It
 compiled successfully. &nbsp;I also add rpmsg-echo-test, &nbsp;rpmsg-mat-m=
ul , and rpmsg-proxy-app packages in the image and it successfully compiled=
. I am building Linux Application that uses RPMsg in user space.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Now the executable generated from echo-test or mat-mul are in my host =
linux master (a53-core). I have also created an r5-application using XSDK.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">What is the next step to have a communication between a53 and r5. How =
to use the generated elf file for r5 processor.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Also I have enabled remoteproc, rpmsg, virtio&nbsp; in kernel configur=
ation.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">But while using the command &#8220;
<i>$modprobe zynqmp_r5_remoteproc</i>&#8221;, I get the following error:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">&#8220;<i>modprobe: module zynqmp_r5_remoteproc not found in modules.d=
ep</i>&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">How can I boot the r5 processor and where to store the elf file genera=
ted.
<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Manjukumar Harthikote Matha &lt;MANJUKUM@xilinx.com&gt;
<br>
<b>Sent:</b> 07 January 2019 13:53<br>
<b>To:</b> Pandey, Kamal &lt;Kamal.Pandey@ifm.com&gt;; yocto@yoctoproject.o=
rg<br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Hi Kama=
l,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Seems l=
ike the required kernel modules are missing causing the breakage.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Enable =
them using kernel menuconfig (bitbake virtual/kernel &#8211;c menuconfig) a=
nd then build the image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Thanks,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Manju<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:yocto-bounces@yoctoproject.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Pandey, Kamal<br>
<b>Sent:</b> Sunday, January 06, 2019 11:14 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] bitbake openamp-image-minimal fails to create image=
<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:#24292E;background:white">I used the&nbsp;<st=
rong><span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif">meta-opena=
mp</span></strong>&nbsp;layer for&nbsp;<strong><span style=3D"font-family:&=
quot;Segoe UI&quot;,sans-serif">r5-a53
 communication</span></strong>.</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#24292E"><br>
<span style=3D"background:white">but when I simply ran</span></span><code><=
span style=3D"font-size:9.0pt;font-family:Consolas;color:#24292E">&nbsp;$bi=
tbake openamp-image-minimal</span></code><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E;background:white">,
 it gave me the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:#24292E;background:white"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Could not invoke d=
nf. Command '/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm=
3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recipe-sysroot-nativ=
e/usr/bin/dnf
 -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_=
b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf --=
setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/w=
ork/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/yu=
m.repos.d
 --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/build-open-amp=
/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/oe-root=
fs-repo --installroot=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/t=
mp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs
 --setopt=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/=
work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/temp --nogpg=
check install kernel-module-virtio-ring kernel-module-virtio-rpmsg-bus kern=
el-module-uio-pdrv-genirq kernel-module-virtio
 libopen-amp0 packagegroup-base-extended kernel-image-fitimage-4.14.79-yoct=
o-standard run-postinsts libmetal packagegroup-core-boot kernel-module-remo=
teproc' returned 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">Added oe-repo repo from /media/iepl/iepl1/work/yocto_build/build-=
open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0=
/oe-rootfs-repo<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">Last metadata expiration check: 0:00:00 ago on Fri 04 Jan 2019 01=
:58:31 PM UTC.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">No package kernel-module-virtio-ring available.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">No package
</span><span style=3D"font-size:9.0pt;font-family:Consolas;color:#1F497D;bo=
rder:none windowtext 1.0pt;padding:0cm">&nbsp;</span><span style=3D"font-si=
ze:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pa=
dding:0cm">&nbsp;available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">No package kernel-module-virtio available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">No package
</span><span style=3D"font-size:9.0pt;font-family:Consolas;color:#1F497D;bo=
rder:none windowtext 1.0pt;padding:0cm">&nbsp;</span><span style=3D"font-si=
ze:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pa=
dding:0cm">&nbsp;available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">Error: Unable to find a match<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Function failed: d=
o_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">ERROR: Logfile of failure stored in: /media/iepl/iepl1/work/yocto=
_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-m=
inimal/1.0-r0/temp/log.do_rootfs.7153<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm">ERROR: Task (/home/iepl/work/yocto_build/poky/../meta-openamp/rec=
ipes-openamp/images/openamp-image-minimal.bb:do_rootfs)
 failed with exit code '1'</span><span style=3D"font-size:9.0pt;font-family=
:Consolas;color:#24292E"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin-top:0cm"><span style=3D"font-size:10.5pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:#24292E">Can someone provide me a soluti=
on to this problem.<br>
Thanks<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_6f9664b4422a45dea24977f17e529033ifmcom_--
