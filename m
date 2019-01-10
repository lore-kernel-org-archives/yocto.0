Return-Path: <jliang@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABA3CE00CB0; Thu, 10 Jan 2019 14:59:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.77.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 41925 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Jan 2019 14:59:25 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr770043.outbound.protection.outlook.com [40.107.77.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBED2E00C4E
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 14:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=TmOJMlJQrIBHNe/xVRQnhKNfuFOJJ5R6YHKxQ3qQ5eE=;
	b=WsBOuy6A/vbQiGryr37w8z2Fd2ElBa2AV8XeaflEISms+hctdreU3sQ1C1rIZ+xMm+1psPFhZUz9ANMcDn3WqG+BcXJQIAlf8hryvDza+vl3YyXpEzLSq/XYYimUXu4ywJzvFLak+FfJI/WZOVljpt1MBINCYj/ZUcP8E7o8uZk=
Received: from BYAPR02MB4888.namprd02.prod.outlook.com (52.135.234.202) by
	BYAPR02MB5557.namprd02.prod.outlook.com (20.177.230.79) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1495.6; Thu, 10 Jan 2019 19:26:30 +0000
Received: from BYAPR02MB4888.namprd02.prod.outlook.com
	([fe80::5cb1:317e:a3ca:1399]) by
	BYAPR02MB4888.namprd02.prod.outlook.com
	([fe80::5cb1:317e:a3ca:1399%5]) with mapi id 15.20.1516.016;
	Thu, 10 Jan 2019 19:26:30 +0000
From: Jiaying Liang <jliang@xilinx.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: bitbake openamp-image-minimal fails to create image
Thread-Index: AdSmWDG603OeUfxeQYusuc4ZfFevdgACc8iwAA9BEDAABrMwsAB7TuiwAAJlgZAAGfqWEA==
Date: Thu, 10 Jan 2019 19:26:30 +0000
Message-ID: <BYAPR02MB4888169BF6F2986ECD884429B0840@BYAPR02MB4888.namprd02.prod.outlook.com>
References: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
	<BYAPR02MB60055CFEFBCF3B367ABF4F05B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
	<6f9664b4422a45dea24977f17e529033@ifm.com>
	<BYAPR02MB600504E46CEFFFC61E3B38A3B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
	<BYAPR02MB48889FA66F57D5347889C661B0840@BYAPR02MB4888.namprd02.prod.outlook.com>
	<1855fa3943cd4ad69d41f6ffc5600597@ifm.com>
In-Reply-To: <1855fa3943cd4ad69d41f6ffc5600597@ifm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jliang@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR02MB5557;
	6:EIe/vmYj22uMHw+jfgqDJnFckdsZgsfENtuwIkGcbRoYdeiCLgb+mregMc4GIa0XFAjUKv+382CFwb/ZgeqkNEdH+l6HIQfcrohscGPyRUGEbSEaX7QwsaRXucY61kSjJcut1HEnnBLzTBORFKg0pFt2eIZN3J6szYYjTEus1woviQ8KYES0fiG0Mge1lGK8oHTv1rHPpGSoFMPzL4wG4V+GDngAYMKM7vfgIqxj3XTM0MjbLUtdk41SFUjLD+v3XNPqT1JtfGarTXaemH0mRXVJ4rtBPK1iP80rHybbaXgcJIvWkFfBR6X/6i03xcBlTIWDzSF+jTKkGKBWJMTGJJmN859QJoGlbLfCT7g+XWmdSeWXL6Wsjj56WKdRAEPRxat2bZxyDD9HoWGlbqOKHQYlKs8u9+qX5TRBMc0oHulyJyTKy9WN9vhTpSrCxlJZ8BpwvmB1ALSOzW5qVuhocg==;
	5:wPv9cHABuwOnjzL0cKIn7CElYV+QfQcPrG74gK4mrLTOU4HP9s2J+GM9Mtt3NpEMzkOzANNXI9kR2U9F4h4pFW2qgN5og39LB+oUZnVtJMtCmT8bhRTjxERs1knlpBWL1TmvCB9jrNkiTWstCAX1FCCwAjuOtMEf2bGwUmUpr9yuAatXC+tX5plztNHeMBgLLx9K5PXXUC5+HV6fH1NA/A==;
	7:Tvdjt7dSGJYqcj5qO3bq+9w0iXiKXI9PVuC0K0tI8vApNsndGQXaPTC1KAnFguUOHvOxMPpLfeN12LSAtzY+sJv0OA06cpcrgtQTibZIyA+XbkymaOzd3qK66Bd+x1zRvmvn2dI332APumT6k2y+cQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 076ac355-deac-4fae-fb53-08d67731861b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB5557; 
x-ms-traffictypediagnostic: BYAPR02MB5557:
x-microsoft-antispam-prvs: <BYAPR02MB5557B3680157DD27086EFD6EB0840@BYAPR02MB5557.namprd02.prod.outlook.com>
x-forefront-prvs: 0913EA1D60
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(39860400002)(136003)(366004)(396003)(51444003)(189003)(199004)(81166006)(93886005)(476003)(11346002)(81156014)(8676002)(53546011)(76176011)(2501003)(6436002)(7696005)(6506007)(105586002)(14444005)(110136005)(71200400001)(71190400001)(229853002)(33656002)(55016002)(567974002)(8936002)(446003)(25786009)(2906002)(316002)(256004)(86362001)(106356001)(74316002)(99286004)(478600001)(6306002)(54896002)(236005)(9686003)(53946003)(97736004)(6246003)(5660300001)(3846002)(790700001)(6116002)(186003)(26005)(102836004)(486006)(14454004)(7736002)(66066001)(53936002)(68736007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5557;
	H:BYAPR02MB4888.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vKghxJi381nmhb1vpwBYBC82XGI3qYy1ni5fgrtVYp/6HAGAFkKFBQJXyQFgCAc3cnC9aucI/1pRgud2ugsDC1RfDwsvhYTzUZqm5D4IQb9eNmMOHZyKFqnEgulUUYhNqfFUzzzPglnb3xEUYVkRZxy2Rhlw6LG8J31WM2ULXFHiC9pnU3EYE/4lzkTKwrriw1NJf7nKHpda5tNX4+qsKdLf5ZbkeRUxNepOb9sfflJTLsXPG93Db4HyRAjStJGRxOROG642qAxd4kYOoM0pvu5Tt5kMNz5x6wU2MfHx7sifIC8C0AwURNTRQOEzAQP5
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 076ac355-deac-4fae-fb53-08d67731861b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2019 19:26:30.5024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5557
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
X-List-Received-Date: Thu, 10 Jan 2019 22:59:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR02MB4888169BF6F2986ECD884429B0840BYAPR02MB4888namp_"

--_000_BYAPR02MB4888169BF6F2986ECD884429B0840BYAPR02MB4888namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



From: Pandey, Kamal [mailto:Kamal.Pandey@ifm.com]
Sent: Thursday, January 10, 2019 1:57 AM
To: Jiaying Liang <jliang@xilinx.com>; yocto@yoctoproject.org
Subject: RE: bitbake openamp-image-minimal fails to create image

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
[Wendy] the r5 remoteproc driver is to load RPU firmware from linux, and fo=
r RPMsg in kernel space implementation. It is not required for userspace im=
plementation.
From your error message, it looks like you don't have : include/linux/firmw=
are/xlnx-zynqmp.h in your kernel.
Did you use linux kernel from github.com/xilinx?

And I am using tftp boot. I think that if r5 was able to boot it should sho=
w me while booting as I am serially connected to the device.
[Wendy] if you want to boot R5 from Linux, you will need to use r5 remotepr=
oc driver to do so. By default, Linux will not auto boot R5.

Best Regards,
Wendy

Please provide any pointers on this. Has anyone implemented this using meta=
-openamp layer and no petalinux.
Thanks
From: Jiaying Liang <jliang@xilinx.com<mailto:jliang@xilinx.com>>
Sent: 10 January 2019 11:14
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com<mailto:MANJUKUM@xilinx=
.com>>; Pandey, Kamal <Kamal.Pandey@ifm.com<mailto:Kamal.Pandey@ifm.com>>; =
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; meta-xilinx@yoctopro=
ject.org<mailto:meta-xilinx@yoctoproject.org>
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

*       If your linux kernel has enabled in your kernel .config

*       If you have "kernel-modules" added to your image

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

--_000_BYAPR02MB4888169BF6F2986ECD884429B0840BYAPR02MB4888namp_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
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
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle29
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle30
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
	text-indent:-.25in;
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
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Pandey, Kamal [mailto:Kamal.Pandey@ifm.=
com] <br>
<b>Sent:</b> Thursday, January 10, 2019 1:57 AM<br>
<b>To:</b> Jiaying Liang &lt;jliang@xilinx.com&gt;; yocto@yoctoproject.org<=
br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Hi wendy,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Thanks for replying. I have already enabled remoteproc,=
 rpmsg and virtio in the kernel configuration.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">I have also added
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot; \<o:p></o:p=
></span></i></p>
<p class=3D"MsoNormal" style=3D"margin-left:.25in;text-indent:.5in"><i><spa=
n lang=3D"EN-IN" style=3D"color:#1F497D;mso-fareast-language:EN-US">kernel-=
modules \<o:p></o:p></span></i></p>
<p class=3D"MsoNormal" style=3D"margin-left:.25in;text-indent:.5in"><i><spa=
n lang=3D"EN-IN" style=3D"color:#1F497D;mso-fareast-language:EN-US">&#8220;=
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">In my local.conf file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">I generated BOOT.bin file from bootgen.bif file after a=
dding the rpu firmware:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">[destination_cpu=3Dr5-0] &lt;path to RPU firmware&gt=
;</span></i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fareast-languag=
e:EN-US">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">While booting the device I didn&#8217;t see r5 code bei=
ng booted.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Now I am trying Building Linux Applications Using OpenA=
MP RPMsg in Linux Userspace<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Using meta-openamp layer.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">I found that there is a patch
<i>&#8220;Add Xilinx ZynqMP R5 remoteproc driver.patch&#8221;</i>&nbsp; to =
have a53 and r5 communication. Is this patch required for the purpose of&nb=
sp; openamp in userspace?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">This patch was missing in meta-xilinx and I brought it =
to my custom layer, but it failed to apply giving the following error:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">error: include/linux/firmware/xlnx-zynqmp.h: does no=
t exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does =
not exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does =
not exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| error: drivers/firmware/xilinx/zynqmp.c: does not =
exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does =
not exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| error: drivers/firmware/xilinx/zynqmp.c: does not =
exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| error: include/linux/firmware/xlnx-zynqmp.h: does =
not exist in index<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| [ERROR]: Application of .kernel-meta//patches//./0=
276-Add-Xilinx-ZynqMP-R5-remoteproc-driver.patch failed.<o:p></o:p></span><=
/i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Patch needs to be refreshed. Sample resolution script:<o:p></o:p></span=
></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; .git/rebase-apply/resolve_rejects<o:p></o:p></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| ERROR: Could not apply patches for pdm3-rev-b-zynq=
mp.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| ERROR: Patch failures can be resolved in the linux=
 source directory /media/iepl/iepl1/work/yocto_build/build_openamp/tmp/work=
-shared/pdm3-rev-b-zynqmp/kernel-source)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| WARNING: /media/iepl/iepl1/work/yocto_build/build_=
openamp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/linux-yocto/4.14.79&#43;gitAU=
TOINC&#43;f1d93b219b-r0/temp/run.do_patch.17384:1
 exit 1 from 'exit 1'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-f=
areast-language:EN-US">| ERROR: Function failed: do_patch (log file is loca=
ted at /media/iepl/iepl1/work/yocto_build/build_openamp/tmp/work/pdm3_rev_b=
_zynqmp-pdm3-linux/linux-yocto/4.14.79&#43;gitAUTOINC&#43;f1d93b219b-r0/tem=
p/log.do_patch.17384)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Now the Xilinx document UG1186 never mentioned about th=
is patch or driver. Also is this patch for the kernelspace implementation o=
r userspace implementation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US">[Wendy] the r5 remoteproc driver is to load RPU firmware from l=
inux, and for RPMsg in kernel space implementation. It is not required for =
userspace implementation.<o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US">From your error message, it looks like you don&#8217;t have
</span></i></b><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-language:EN-=
US">: include/linux/firmware/xlnx-zynqmp.h in your kernel.<o:p></o:p></span=
></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US">Did you use linux kernel from github.com/xilinx?</span></i></b>=
<b><i><span lang=3D"EN-IN" style=3D"mso-fareast-language:EN-US"><o:p></o:p>=
</span></i></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">And I am using tftp boot. I think that if r5 was able t=
o boot it should show me while booting as I am serially connected to the de=
vice.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US">[Wendy] if you want to boot R5 from Linux, you will need to use=
 r5 remoteproc driver to do so. By default, Linux will not auto boot R5.<o:=
p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US"><o:p>&nbsp;</o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US">Best Regards,<o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"mso-fareast-lang=
uage:EN-US">Wendy<o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Please provide any pointers on this. Has anyone impleme=
nted this using meta-openamp layer and no petalinux.</span><span lang=3D"EN=
-IN" style=3D"mso-fareast-language:EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D;mso-fare=
ast-language:EN-US">Thanks<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Jiaying Liang &lt;<a href=3D"mailto:jli=
ang@xilinx.com">jliang@xilinx.com</a>&gt;
<br>
<b>Sent:</b> 10 January 2019 11:14<br>
<b>To:</b> Manjukumar Harthikote Matha &lt;<a href=3D"mailto:MANJUKUM@xilin=
x.com">MANJUKUM@xilinx.com</a>&gt;; Pandey, Kamal &lt;<a href=3D"mailto:Kam=
al.Pandey@ifm.com">Kamal.Pandey@ifm.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>; <a hr=
ef=3D"mailto:meta-xilinx@yoctoproject.org">
meta-xilinx@yoctoproject.org</a><br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">
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
mage<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#43;meta-xilinx maili=
ng list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Pandey, Kamal [<a href=3D"mailto:Kamal.=
Pandey@ifm.com">mailto:Kamal.Pandey@ifm.com</a>]
<br>
<b>Sent:</b> Monday, January 07, 2019 8:59 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a>; Manjukumar Harthikote Matha &lt;<a href=3D"mailto:MANJUKUM@xilinx.com=
">MANJUKUM@xilinx.com</a>&gt;<br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Hi, <o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">I solve=
d the problem by using meta-openamp(branch should be similar to xilinx vers=
ion) layer in my yocto project and enabled &#8220;libmetal&#8221; and &#822=
0;open-amp&#8221; packages in my image recipe. It compiled successfully.
 &nbsp;I also add rpmsg-echo-test, &nbsp;rpmsg-mat-mul , and rpmsg-proxy-ap=
p packages in the image and it successfully compiled. I am building Linux A=
pplication that uses RPMsg in user space.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Now the=
 executable generated from echo-test or mat-mul are in my host linux master=
 (a53-core). I have also created an r5-application using XSDK.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">What is=
 the next step to have a communication between a53 and r5. How to use the g=
enerated elf file for r5 processor.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Also I =
have enabled remoteproc, rpmsg, virtio&nbsp; in kernel configuration.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">But whi=
le using the command &#8220;
<i>$modprobe zynqmp_r5_remoteproc</i>&#8221;, I get the following error:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">&#8220;=
<i>modprobe: module zynqmp_r5_remoteproc not found in modules.dep</i>&#8221=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D">[=
Wendy] It doesn&#8217;t look like the zynqmp_r5_remoteproc driver is compil=
ed or maybe it is compiled but not add into the system.</span></i></b><b><i=
><span lang=3D"EN-IN"><o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D"><=
o:p>&nbsp;</o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D">P=
lease check the following:<o:p></o:p></span></i></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:Symb=
ol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"fo=
nt:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>If your linux kernel has enabled in your kernel .config<o:p></o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:Symb=
ol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"fo=
nt:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>If you have &#8220;kernel-modules&#8221; added to your image<o:p></o:p></s=
pan></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo2">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>E.g.:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo2">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo2">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>&nbsp;&nbsp;&nbsp;&nbsp;kernel-modules \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo2">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>&#8220;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Best Re=
gards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D">W=
endy</span></i></b><span lang=3D"EN-IN" style=3D"color:#1F497D"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">How can=
 I boot the r5 processor and where to store the elf file generated.
<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Manjukumar Harthikote Matha &lt;<a href=
=3D"mailto:MANJUKUM@xilinx.com">MANJUKUM@xilinx.com</a>&gt;
<br>
<b>Sent:</b> 07 January 2019 13:53<br>
<b>To:</b> Pandey, Kamal &lt;<a href=3D"mailto:Kamal.Pandey@ifm.com">Kamal.=
Pandey@ifm.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Kamal,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Seems like the require=
d kernel modules are missing causing the breakage.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Enable them using kern=
el menuconfig (bitbake virtual/kernel &#8211;c menuconfig) and then build t=
he image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Manju<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Pandey, Kamal<br>
<b>Sent:</b> Sunday, January 06, 2019 11:14 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] bitbake openamp-image-minimal fails to create image=
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#24292E;background:white">I us=
ed the&nbsp;<strong><span style=3D"font-family:&quot;Segoe UI&quot;,sans-se=
rif">meta-openamp</span></strong>&nbsp;layer for&nbsp;<strong><span style=
=3D"font-family:&quot;Segoe UI&quot;,sans-serif">r5-a53
 communication</span></strong>.</span><span lang=3D"EN-IN" style=3D"font-si=
ze:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E"><br>
<span style=3D"background:white">but when I simply ran</span></span><code><=
span lang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;color:#24=
292E">&nbsp;$bitbake openamp-image-minimal</span></code><span lang=3D"EN-IN=
" style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;col=
or:#24292E;background:white">,
 it gave me the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#24292E;background:white"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Cou=
ld not invoke dnf. Command '/media/iepl/iepl1/work/yocto_build/build-open-a=
mp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recip=
e-sysroot-native/usr/bin/dnf
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
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">Added oe-repo repo from /media/iepl/iepl1/work/yoc=
to_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image=
-minimal/1.0-r0/oe-rootfs-repo<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">Last metadata expiration check: 0:00:00 ago on Fri=
 04 Jan 2019 01:58:31 PM UTC.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package kernel-module-virtio-ring available.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package
</span><span lang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;c=
olor:#1F497D;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span l=
ang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;b=
order:none windowtext 1.0pt;padding:0in">&nbsp;available.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package kernel-module-virtio available.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package
</span><span lang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;c=
olor:#1F497D;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span l=
ang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;b=
order:none windowtext 1.0pt;padding:0in">&nbsp;available.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">Error: Unable to find a match<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Fun=
ction failed: do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: Logfile of failure stored in: /media/iepl/i=
epl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/=
openamp-image-minimal/1.0-r0/temp/log.do_rootfs.7153<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: Task (/home/iepl/work/yocto_build/poky/../m=
eta-openamp/recipes-openamp/images/openamp-image-minimal.bb:do_rootfs)
 failed with exit code '1'</span><span lang=3D"EN-IN" style=3D"font-size:9.=
0pt;font-family:Consolas;color:#24292E"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin-top:0in"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;=
font-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E">Can someone prov=
ide me a solution to this problem.<br>
Thanks<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR02MB4888169BF6F2986ECD884429B0840BYAPR02MB4888namp_--
