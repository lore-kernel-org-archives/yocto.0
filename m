Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1076EE00C94; Thu, 10 Jan 2019 01:57:15 -0800 (PST)
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
	*      [91.90.150.23 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3293E00C77
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 01:57:09 -0800 (PST)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id x0A9thQh019578
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 10:57:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : mime-version :
	content-type; s=pps; bh=Tg+n4q1f5Xq9mXzhFy6BB59PPMTx/6ENxigasPwasUc=;
	b=yyPiIwGji5Y8+NfQcjXFwG19C1NZTFHJvFxqQWuaZtMolYjYzOubYdeNr9tvd/p99OQd
	iy+PMC3n+Ltcix22kNgPbzFCVvwFFLDkLWAYenGmnSy71sBkozumeOTPSG7Hi3QbyK1T
	1EQ4N6qSifV17QZh2dP8kHmMOQG5TScU/TI7NQjxJR66y8mZPk0ZcVHHHTBxfikCqyNB
	/dHGp7FFmbZZa+JjlMknommAyvcTt/dDnM1MX2+8B/Z+iTAAlbxgQjIWAFZ0GtKA1qog
	6Ap1OaubqJ1W2Gx/gNRQuGMDxYJxRI+CuaO1iieXjvQ5s1wWOfgrzdVF1m/nIAGac9QW
	TA== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2023.ppsmtp.net with ESMTP id 2ptkhctbd6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 10:57:08 +0100
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id DE607884448
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 10:57:07 +0100 (CET)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: Jiaying Liang <jliang@xilinx.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: bitbake openamp-image-minimal fails to create image
Thread-Index: AdSmWDG603OeUfxeQYusuc4ZfFevdgACc8iwAA9BEDAABrMwsAB7TuiwAAJlgZA=
Date: Thu, 10 Jan 2019 09:57:06 +0000
Message-ID: <1855fa3943cd4ad69d41f6ffc5600597@ifm.com>
References: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
	<BYAPR02MB60055CFEFBCF3B367ABF4F05B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
	<6f9664b4422a45dea24977f17e529033@ifm.com>
	<BYAPR02MB600504E46CEFFFC61E3B38A3B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
	<BYAPR02MB48889FA66F57D5347889C661B0840@BYAPR02MB4888.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB48889FA66F57D5347889C661B0840@BYAPR02MB4888.namprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.147]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24350.005
X-TM-AS-Result: No-16.493300-5.000000-10
X-TMASE-MatchedRID: 8HTFlOrbAtGnykMun0J1whlckvO1m+Jc1KoSW5Ji1XtZqVsofx0oehlb
	y9sTjxSitEVswsXx/BvkzzkniObw59w6ZBw9OLRPaK+MsTwM+1l+S5m2/8VLmkYvSDWdWaRhuwh
	qyc+q/JBRgIF6+/n5rJ9U8MkeLkK4fUZxHkB4SzslcqT+ugT9EA4lH/4ULmGFRWPWH51O/r6O57
	e7SDv3mFsL5HBj8XzSjufvcQiGaTatx3S0fXol8XV7tdtvoibaB0I+iCUO4521FeFXyekgdENFJ
	C6C2PHmNGY7Cgrpy+5zdyf1FJX2z8M8uuVxUoOD/c0+LJTMrN1A8I/PJy4EUzkIJSQdQ27uJMJX
	DJjkqdQl6eA+5N2cxzC0BN08vDkf6KhkLBjPN7AYUxiUNTPCveHCwRwMNQUWQAC1c3lmEHC2DQN
	5h1Hbt/h2ZcJofSWjDIT4o38Lw+zz50g+jp9gnkhwlOfYeSqx1kqyrcMalqX1gF7PCEF9bqwdd1
	4j6nTyht62uSu+RtjwC+yY/IpROILS3/JFc6VRkRs1fAcYNHHxAJQLHjrob0Yx760ONDcWjbCTE
	HGuNi7xgEJSHl0g+UtOa+Yevc9i5WtJ4+HrVDnvVbHa5Rs8t0OvwxWboMrdu/zUE1SNSPmM0vGt
	zEpWJYyRWx0wlnUGf6WytOayZdvWV8MKb34RlVgowyUWHgGdh+w9Wz/xXDoR8rMICe0qkPMxs+u
	cp3ZM7gzcfk5O5gtiXQjTxUn166dwsJe6fN2LuIwLnB3Aqp34uJ1REX4MHbXvDHySC+eUhzNUKu
	2Ue5r+f0nlDYjAjtACeWZ6/YSZIg67HHizFeGeAiCmPx4NwMidYBYDjITp/7qwaZzjjp+jPxW4T
	OhT9gwWxr7XDKH8lscx3GmApoCsiBFDXP/Mwmyzh4zlkibIq/WvXvcC04Ut20vkjVbv8A==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--16.493300-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24350.005
X-TM-SNTS-SMTP: C7BB3D73F339A375219979E5AE36407FAD95DA904DE5F35DA5326EE670EE9E882002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190110095707Z
X-Proofpoint-ID: SID=2ptkhctbd6 QID=2ptkhctbd6-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-01-10_04:, , signatures=0
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
X-List-Received-Date: Thu, 10 Jan 2019 09:57:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1855fa3943cd4ad69d41f6ffc5600597ifmcom_"

--_000_1855fa3943cd4ad69d41f6ffc5600597ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi wendy,
Thanks for replying. I have already enabled remoteproc, rpmsg and virtio in=
 the kernel configuration.
I have also added
CORE_IMAGE_EXTRA_INSTALL +=3D " \
kernel-modules \
"
In my local.conf file.
I generated BOOT.bin file from bootgen.bif file after adding the rpu firmwa=
re:
[destination_cpu=3Dr5-0] <path to RPU firmware>
While booting the device I didn't see r5 code being booted.
Now I am trying Building Linux Applications Using OpenAMP RPMsg in Linux Us=
erspace
Using meta-openamp layer.
I found that there is a patch "Add Xilinx ZynqMP R5 remoteproc driver.patch=
"  to have a53 and r5 communication. Is this patch required for the purpose=
 of  openamp in userspace?
This patch was missing in meta-xilinx and I brought it to my custom layer, =
but it failed to apply giving the following error:

error: include/linux/firmware/xlnx-zynqmp.h: does not exist in index
| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in index
| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in index
| error: drivers/firmware/xilinx/zynqmp.c: does not exist in index
| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in index
| error: drivers/firmware/xilinx/zynqmp.c: does not exist in index
| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in index
| [ERROR]: Application of .kernel-meta//patches//./0276-Add-Xilinx-ZynqMP-R=
5-remoteproc-driver.patch failed.
|          Patch needs to be refreshed. Sample resolution script:
|              .git/rebase-apply/resolve_rejects
| ERROR: Could not apply patches for pdm3-rev-b-zynqmp.
| ERROR: Patch failures can be resolved in the linux source directory /medi=
a/iepl/iepl1/work/yocto_build/build_openamp/tmp/work-shared/pdm3-rev-b-zynq=
mp/kernel-source)
| WARNING: /media/iepl/iepl1/work/yocto_build/build_openamp/tmp/work/pdm3_r=
ev_b_zynqmp-pdm3-linux/linux-yocto/4.14.79+gitAUTOINC+f1d93b219b-r0/temp/ru=
n.do_patch.17384:1 exit 1 from 'exit 1'
| ERROR: Function failed: do_patch (log file is located at /media/iepl/iepl=
1/work/yocto_build/build_openamp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/linu=
x-yocto/4.14.79+gitAUTOINC+f1d93b219b-r0/temp/log.do_patch.17384)

Now the Xilinx document UG1186 never mentioned about this patch or driver. =
Also is this patch for the kernelspace implementation or userspace implemen=
tation.
And I am using tftp boot. I think that if r5 was able to boot it should sho=
w me while booting as I am serially connected to the device.
Please provide any pointers on this. Has anyone implemented this using meta=
-openamp layer and no petalinux.
Thanks
From: Jiaying Liang <jliang@xilinx.com>
Sent: 10 January 2019 11:14
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>; Pandey, Kamal <Kamal=
.Pandey@ifm.com>; yocto@yoctoproject.org; meta-xilinx@yoctoproject.org
Subject: RE: bitbake openamp-image-minimal fails to create image



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Manjukumar Harthikote=
 Matha
Sent: Monday, January 07, 2019 10:51 AM
To: Pandey, Kamal <Kamal.Pandey@ifm.com<mailto:Kamal.Pandey@ifm.com>>; yoct=
o@yoctoproject.org<mailto:yocto@yoctoproject.org>; meta-xilinx@yoctoproject=
.org<mailto:meta-xilinx@yoctoproject.org>
Subject: Re: [yocto] bitbake openamp-image-minimal fails to create image

+meta-xilinx mailing list

From: Pandey, Kamal [mailto:Kamal.Pandey@ifm.com]
Sent: Monday, January 07, 2019 8:59 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; Manjukumar Harth=
ikote Matha <MANJUKUM@xilinx.com<mailto:MANJUKUM@xilinx.com>>
Subject: RE: bitbake openamp-image-minimal fails to create image

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
[Wendy] It doesn't look like the zynqmp_r5_remoteproc driver is compiled or=
 maybe it is compiled but not add into the system.

Please check the following:

*         If your linux kernel has enabled in your kernel .config

*         If you have "kernel-modules" added to your image

o   E.g.:

o   CORE_IMAGE_EXTRA_INSTALL +=3D " \

o       kernel-modules \

o   "
Best Regards,
Wendy
How can I boot the r5 processor and where to store the elf file generated.
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com<mailto:MANJUKUM@xili=
nx.com>>
Sent: 07 January 2019 13:53
To: Pandey, Kamal <Kamal.Pandey@ifm.com<mailto:Kamal.Pandey@ifm.com>>; yoct=
o@yoctoproject.org<mailto:yocto@yoctoproject.org>
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

--_000_1855fa3943cd4ad69d41f6ffc5600597ifmcom_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle28
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:184441862;
	mso-list-type:hybrid;
	mso-list-template-ids:-1541343798 -1440726346 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:SimSun;
	mso-bidi-font-family:"Times New Roman";
	mso-ansi-font-weight:bold;
	mso-ansi-font-style:italic;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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
-US">Hi wendy,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Thanks for replying. I have already enabled remoteproc, rpmsg and virt=
io in the kernel configuration.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">I have also added
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot; \<o:p></o:p></span></i></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:18.0pt;text-indent:36.0pt"><i><=
span style=3D"color:#1F497D;mso-fareast-language:EN-US">kernel-modules \<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal" style=3D"margin-left:18.0pt;text-indent:36.0pt"><i><=
span style=3D"color:#1F497D;mso-fareast-language:EN-US">&#8220;<o:p></o:p><=
/span></i></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">In my local.conf file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">I generated BOOT.bin file from bootgen.bif file after adding the rpu f=
irmware:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">[destination_cpu=3Dr5-0] &lt;path to RPU firmware&gt;</span></i><sp=
an style=3D"color:#1F497D;mso-fareast-language:EN-US">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">While booting the device I didn&#8217;t see r5 code being booted.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Now I am trying Building Linux Applications Using OpenAMP RPMsg in Lin=
ux Userspace<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Using meta-openamp layer.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">I found that there is a patch
<i>&#8220;Add Xilinx ZynqMP R5 remoteproc driver.patch&#8221;</i>&nbsp; to =
have a53 and r5 communication. Is this patch required for the purpose of&nb=
sp; openamp in userspace?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">This patch was missing in meta-xilinx and I brought it to my custom la=
yer, but it failed to apply giving the following error:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">error: include/linux/firmware/xlnx-zynqmp.h: does not exist in inde=
x<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in in=
dex<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in in=
dex<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| error: drivers/firmware/xilinx/zynqmp.c: does not exist in index<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in in=
dex<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| error: drivers/firmware/xilinx/zynqmp.c: does not exist in index<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does not exist in in=
dex<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| [ERROR]: Application of .kernel-meta//patches//./0276-Add-Xilinx-=
ZynqMP-R5-remoteproc-driver.patch failed.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patch needs=
 to be refreshed. Sample resolution script:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; .git/rebase-apply/resolve_rejects<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| ERROR: Could not apply patches for pdm3-rev-b-zynqmp.<o:p></o:p><=
/span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| ERROR: Patch failures can be resolved in the linux source directo=
ry /media/iepl/iepl1/work/yocto_build/build_openamp/tmp/work-shared/pdm3-re=
v-b-zynqmp/kernel-source)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| WARNING: /media/iepl/iepl1/work/yocto_build/build_openamp/tmp/wor=
k/pdm3_rev_b_zynqmp-pdm3-linux/linux-yocto/4.14.79&#43;gitAUTOINC&#43;f1d93=
b219b-r0/temp/run.do_patch.17384:1 exit 1 from
 'exit 1'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#1F497D;mso-fareast-language=
:EN-US">| ERROR: Function failed: do_patch (log file is located at /media/i=
epl/iepl1/work/yocto_build/build_openamp/tmp/work/pdm3_rev_b_zynqmp-pdm3-li=
nux/linux-yocto/4.14.79&#43;gitAUTOINC&#43;f1d93b219b-r0/temp/log.do_patch.=
17384)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Now the Xilinx document UG1186 never mentioned about this patch or dri=
ver. Also is this patch for the kernelspace implementation or userspace imp=
lementation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">And I am using tftp boot. I think that if r5 was able to boot it shoul=
d show me while booting as I am serially connected to the device.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Please provide any pointers on this. Has anyone implemented this using=
 meta-openamp layer and no petalinux.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Thanks<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Jiaying Liang &lt;jliang@xilinx.com&gt;
<br>
<b>Sent:</b> 10 January 2019 11:14<br>
<b>To:</b> Manjukumar Harthikote Matha &lt;MANJUKUM@xilinx.com&gt;; Pandey,=
 Kamal &lt;Kamal.Pandey@ifm.com&gt;; yocto@yoctoproject.org; meta-xilinx@yo=
ctoproject.org<br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:yocto-bounces@yoctoproject.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Manjukumar Harthikote Matha<br>
<b>Sent:</b> Monday, January 07, 2019 10:51 AM<br>
<b>To:</b> Pandey, Kamal &lt;<a href=3D"mailto:Kamal.Pandey@ifm.com">Kamal.=
Pandey@ifm.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>; <a hr=
ef=3D"mailto:meta-xilinx@yoctoproject.org">
meta-xilinx@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] bitbake openamp-image-minimal fails to create i=
mage<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&#43;me=
ta-xilinx mailing list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Pandey, Kamal [<a href=3D"mailto:Kamal.Pandey@ifm.com">mailto:K=
amal.Pandey@ifm.com</a>]
<br>
<b>Sent:</b> Monday, January 07, 2019 8:59 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a>; Manjukumar Harthikote Matha &lt;<a href=3D"mailto:MANJUKUM@xilinx.com=
">MANJUKUM@xilinx.com</a>&gt;<br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi, <o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I solved the problem b=
y using meta-openamp(branch should be similar to xilinx version) layer in m=
y yocto project and enabled &#8220;libmetal&#8221; and &#8220;open-amp&#822=
1; packages in my image recipe. It compiled successfully. &nbsp;I
 also add rpmsg-echo-test, &nbsp;rpmsg-mat-mul , and rpmsg-proxy-app packag=
es in the image and it successfully compiled. I am building Linux Applicati=
on that uses RPMsg in user space.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Now the executable gen=
erated from echo-test or mat-mul are in my host linux master (a53-core). I =
have also created an r5-application using XSDK.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">What is the next step =
to have a communication between a53 and r5. How to use the generated elf fi=
le for r5 processor.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Also I have enabled re=
moteproc, rpmsg, virtio&nbsp; in kernel configuration.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">But while using the co=
mmand &#8220; <i>
$modprobe zynqmp_r5_remoteproc</i>&#8221;, I get the following error:<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#8220;<i>modprobe: mo=
dule zynqmp_r5_remoteproc not found in modules.dep</i>&#8221;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D">[Wendy] It doesn=
&#8217;t look like the zynqmp_r5_remoteproc driver is compiled or maybe it =
is compiled but not add into the system.<o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p=
></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D">Please check the=
 following:<o:p></o:p></span></i></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol;color:#1F49=
7D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">If your linux =
kernel has enabled in your kernel .config<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo2"><![if !supportLists]><span style=3D"font-family:Symbol;color:#1F49=
7D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">If you have &#=
8220;kernel-modules&#8221; added to your image<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo2">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;;col=
or:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">E.g.:<o:p></o:=
p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo2">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;;col=
or:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">CORE_IMAGE_EXT=
RA_INSTALL &#43;=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo2">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;;col=
or:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">&nbsp;&nbsp;&n=
bsp;&nbsp;kernel-modules \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo2">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;;col=
or:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">&#8220;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Best Regards,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D">Wendy</span></i>=
</b><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">How can I boot the r5 =
processor and where to store the elf file generated.
<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Manjukumar Harthikote Matha &lt;<a href=3D"mailto:MANJUKUM@xili=
nx.com">MANJUKUM@xilinx.com</a>&gt;
<br>
<b>Sent:</b> 07 January 2019 13:53<br>
<b>To:</b> Pandey, Kamal &lt;<a href=3D"mailto:Kamal.Pandey@ifm.com">Kamal.=
Pandey@ifm.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
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
</div>
</div>
</body>
</html>

--_000_1855fa3943cd4ad69d41f6ffc5600597ifmcom_--
