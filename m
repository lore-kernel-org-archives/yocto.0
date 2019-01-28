Return-Path: <richard.a.griffiths@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CCCDE00CE2; Mon, 28 Jan 2019 14:07:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NUMERIC_HTTP_ADDR, RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E126FE00CDF
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 14:07:03 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jan 2019 14:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,534,1539673200"; 
	d="scan'208,217";a="314315774"
Received: from ragriffi-mobl.jf.intel.com ([10.54.74.73])
	by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2019 14:07:02 -0800
Message-ID: <1548713220.31553.31.camel@linux.intel.com>
From: Richard A Griffiths <richard.a.griffiths@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>, Don Osmond <dosmond@comporium.net>
Date: Mon, 28 Jan 2019 14:07:00 -0800
In-Reply-To: <CAFNP8Os5TsSy27zXXtN+MZHpJN+=O5XDgY3pw2yH-0EnknoM+g@mail.gmail.com>
References: <000901d4b679$962481e0$c26d85a0$@comporium.net>
	<CAFNP8Os5TsSy27zXXtN+MZHpJN+=O5XDgY3pw2yH-0EnknoM+g@mail.gmail.com>
Organization: Yocto Project
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto Porject
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Richard.A.Griffiths@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Jan 2019 22:07:05 -0000
Content-Type: multipart/alternative; boundary="=-LysvL2Vyu/KwdCKbJNSS"

--=-LysvL2Vyu/KwdCKbJNSS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2019-01-28 at 10:33 -0800, Scott Rifenbark wrote:
> Hi Don, 
> 
> I can't really advise you on this as I am not a Yocto developer. 
> However, I can forward this question to the yocto@yoctoproject.org
> mail group and, in particular, to a resource that is looking closely
> at kernel stuff to help improve that manual and get it more up-to-
> date.  That guy is named Richard Griffiths of Intel.  You should be
> able to get some help with this.  Sorry... I wish I was a crack YP
> developer :)
> 
> Thanks, 
> Scott
> 
> On Sun, Jan 27, 2019 at 11:50 AM Don Osmond <dosmond@comporium.net>
> wrote:
> > Scott
> > I have been reading your https://www.yoctoproject.org/docs/2.4/kern
> > el-dev/kernel-dev.html and it has been very helpful.  I have a
> > project where I am needing to get the ability to use iptables NAT
> > which does not come in the core image from Digi which also uses
> > Yocto.  In my Ubuntu 16.04 LTS development VM, I am able to build
> > the base image (bitbake dey-image-qt), menuconfig the kernel config
> > (bitbake -c devshell virtual/kernel), compile the kernel (bitbake
> > -C compile virtual/kernel).  The results are in the
> > /workspace/ccimx6ulsbc/tmp/deploy/images/ccimx6ulsbc as see in list
> > below:
> >  
> > dosmond@ubuntu:/workspace/ccimx6ulsbc/tmp/deploy/images/ccimx6ulsbc
> > $ ls
> > boot.scr
> > dey-image-qt-x11-ccimx6ulsbc-20190127164412.boot.ubifs
> > dey-image-qt-x11-ccimx6ulsbc-20190127164412.recovery.ubifs
> > dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.manifest
> > dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.tar.bz2
> > dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.ubifs
> > dey-image-qt-x11-ccimx6ulsbc-20190127164412.testdata.json
> > dey-image-qt-x11-ccimx6ulsbc.boot.ubifs
> > dey-image-qt-x11-ccimx6ulsbc.manifest
> > dey-image-qt-x11-ccimx6ulsbc.recovery.ubifs
> > dey-image-qt-x11-ccimx6ulsbc.tar.bz2
> > dey-image-qt-x11-ccimx6ulsbc.testdata.json
> > dey-image-qt-x11-ccimx6ulsbc.ubifs
> > dey-image-recovery-initramfs-ccimx6ulsbc-
> > 20190127161551.rootfs.cpio.gz.u-boot.tf
> > dey-image-recovery-initramfs-ccimx6ulsbc-
> > 20190127161551.rootfs.manifest
> > dey-image-recovery-initramfs-ccimx6ulsbc-
> > 20190127161551.testdata.json
> > dey-image-recovery-initramfs-ccimx6ulsbc.cpio.gz.u-boot.tf
> > dey-image-recovery-initramfs-ccimx6ulsbc.manifest
> > dey-image-recovery-initramfs-ccimx6ulsbc.testdata.json
> > imx6ul-ccimx6ulsbc.dtb
> > imx6ul-ccimx6ulsbc-id135.dtb
> > imx6ul-ccimx6ulsbc-id136.dtb
> > imx6ul-ccimx6ulsbc-wb.dtb
> > install_linux_fw_sd.scr
> > modules--4.9-r0.5-ccimx6ulsbc-20190127182701.tgz
> > modules-ccimx6ulsbc.tgz
> > u-boot-ccimx6ulsbc1GB-2017.03-r0.imx
> > u-boot-ccimx6ulsbc1GB.imx
> > u-boot-ccimx6ulsbc-2017.03-r0.imx
> > u-boot-ccimx6ulsbc.imx
> > u-boot-ccimx6ulsbc.imx-ccimx6ulsbc
> > u-boot-ccimx6ulsbc.imx-ccimx6ulsbc1GB
> > u-boot.imx
> > zImage
> > zImage--4.9-r0.5-ccimx6ulsbc-20190127182701.bin
> > zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-20190127182701.dtb
> > zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id135-20190127182701.dtb
> > zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id136-20190127182701.dtb
> > zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-wb-20190127182701.dtb
> > zImage-ccimx6ulsbc.bin
> > zImage-imx6ul-ccimx6ulsbc.dtb
> > zImage-imx6ul-ccimx6ulsbc-id135.dtb
> > zImage-imx6ul-ccimx6ulsbc-id136.dtb
> > zImage-imx6ul-ccimx6ulsbc-wb.dtb
> >  
> > So, what I am having an issue with are the steps to get the latest
> > kernel changes a part of the image?  I thought if I ran “bitbake
> > dey-image-qt” again that it would.  I think I am missing
> > something.  Anything you can share would be greatly appreciated.
> > Thanks
> > Don
> > 
Hi Don,
Are you asking how do you save changes to your kernel configuration so
they become part of the kernel recipe? If so, the 
2.2.3 Changing The Configuration section of the Kernel Dev manual gives
an example.
If that is not what you're asking, please clarify and I will do my best
to help.
Regards,
Richard

--=-LysvL2Vyu/KwdCKbJNSS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body><div>On Mon, 2019-01-28 at 10:33 -0800, Scott Rifenb=
ark wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr"><div>Hi Don, <br=
></div><div><br></div><div>I can't really advise you on this as I am not a =
Yocto developer.&nbsp; However, I can forward this question to the <a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a> mail group and, in particular, to a resource that is looking closely a=
t kernel stuff to help improve that manual and get it more up-to-date.&nbsp=
; That guy is named Richard Griffiths of Intel.&nbsp; You should be able to=
 get some help with this.&nbsp; Sorry... I wish I was a crack YP developer =
:)</div><div><br></div><div>Thanks, <br></div><div>Scott<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail-m_9093549047279=
111731gmail_attr">On Sun, Jan 27, 2019 at 11:50 AM Don Osmond &lt;<a href=
=3D"mailto:dosmond@comporium.net" target=3D"_blank">dosmond@comporium.net</=
a>&gt; wrote:<br></div><blockquote type=3D"cite"><div lang=3D"EN-US"><div c=
lass=3D"gmail-m_9093549047279111731gmail-m_-1483096401079258470WordSection1=
"><p class=3D"MsoNormal">Scott<u></u><u></u></p><p class=3D"MsoNormal">I ha=
ve been reading your <a href=3D"https://www.yoctoproject.org/docs/2.4/kerne=
l-dev/kernel-dev.html" target=3D"_blank">https://www.yoctoproject.org/docs/=
2.4/kernel-dev/kernel-dev.html</a> and it has been very helpful.&nbsp; I ha=
ve a project where I am needing to get the ability to use iptables NAT whic=
h does not come in the core image from Digi which also uses Yocto.&nbsp; In=
 my Ubuntu 16.04 LTS development VM, I am able to build the base image (bit=
bake dey-image-qt), menuconfig the kernel config (bitbake -c devshell virtu=
al/kernel), compile the kernel (bitbake -C compile virtual/kernel).&nbsp; T=
he results are in the /workspace/ccimx6ulsbc/tmp/deploy/images/ccimx6ulsbc =
as see in list below:<u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;=
<u></u></p><p class=3D"MsoNormal">dosmond@ubuntu:/workspace/ccimx6ulsbc/tmp=
/deploy/images/ccimx6ulsbc$ ls<u></u><u></u></p><p class=3D"MsoNormal">boot=
.scr<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc-2=
0190127164412.boot.ubifs<u></u><u></u></p><p class=3D"MsoNormal">dey-image-=
qt-x11-ccimx6ulsbc-20190127164412.recovery.ubifs<u></u><u></u></p><p class=
=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.manifest<=
u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc-201901=
27164412.rootfs.tar.bz2<u></u><u></u></p><p class=3D"MsoNormal">dey-image-q=
t-x11-ccimx6ulsbc-20190127164412.rootfs.ubifs<u></u><u></u></p><p class=3D"=
MsoNormal">dey-image-qt-x11-ccimx6ulsbc-20190127164412.testdata.json<u></u>=
<u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.boot.ubifs<u=
></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.manifes=
t<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.reco=
very.ubifs<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6u=
lsbc.tar.bz2<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx=
6ulsbc.testdata.json<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x=
11-ccimx6ulsbc.ubifs<u></u><u></u></p><p class=3D"MsoNormal"><a href=3D"htt=
p://dey-image-recovery-initramfs-ccimx6ulsbc-20190127161551.rootfs.cpio.gz.=
u-boot.tf" target=3D"_blank">dey-image-recovery-initramfs-ccimx6ulsbc-20190=
127161551.rootfs.cpio.gz.u-boot.tf</a><u></u><u></u></p><p class=3D"MsoNorm=
al">dey-image-recovery-initramfs-ccimx6ulsbc-20190127161551.rootfs.manifest=
<u></u><u></u></p><p class=3D"MsoNormal">dey-image-recovery-initramfs-ccimx=
6ulsbc-20190127161551.testdata.json<u></u><u></u></p><p class=3D"MsoNormal"=
><a href=3D"http://dey-image-recovery-initramfs-ccimx6ulsbc.cpio.gz.u-boot.=
tf" target=3D"_blank">dey-image-recovery-initramfs-ccimx6ulsbc.cpio.gz.u-bo=
ot.tf</a><u></u><u></u></p><p class=3D"MsoNormal">dey-image-recovery-initra=
mfs-ccimx6ulsbc.manifest<u></u><u></u></p><p class=3D"MsoNormal">dey-image-=
recovery-initramfs-ccimx6ulsbc.testdata.json<u></u><u></u></p><p class=3D"M=
soNormal">imx6ul-ccimx6ulsbc.dtb<u></u><u></u></p><p class=3D"MsoNormal">im=
x6ul-ccimx6ulsbc-id135.dtb<u></u><u></u></p><p class=3D"MsoNormal">imx6ul-c=
cimx6ulsbc-id136.dtb<u></u><u></u></p><p class=3D"MsoNormal">imx6ul-ccimx6u=
lsbc-wb.dtb<u></u><u></u></p><p class=3D"MsoNormal">install_linux_fw_sd.scr=
<u></u><u></u></p><p class=3D"MsoNormal">modules--4.9-r0.5-ccimx6ulsbc-2019=
0127182701.tgz<u></u><u></u></p><p class=3D"MsoNormal">modules-ccimx6ulsbc.=
tgz<u></u><u></u></p><p class=3D"MsoNormal">u-boot-ccimx6ulsbc1GB-2017.03-r=
0.imx<u></u><u></u></p><p class=3D"MsoNormal">u-boot-ccimx6ulsbc1GB.imx<u><=
/u><u></u></p><p class=3D"MsoNormal">u-boot-ccimx6ulsbc-2017.03-r0.imx<u></=
u><u></u></p><p class=3D"MsoNormal">u-boot-ccimx6ulsbc.imx<u></u><u></u></p=
><p class=3D"MsoNormal">u-boot-ccimx6ulsbc.imx-ccimx6ulsbc<u></u><u></u></p=
><p class=3D"MsoNormal">u-boot-ccimx6ulsbc.imx-ccimx6ulsbc1GB<u></u><u></u>=
</p><p class=3D"MsoNormal">u-boot.imx<u></u><u></u></p><p class=3D"MsoNorma=
l">zImage<u></u><u></u></p><p class=3D"MsoNormal">zImage--4.9-r0.5-ccimx6ul=
sbc-20190127182701.bin<u></u><u></u></p><p class=3D"MsoNormal">zImage--4.9-=
r0.5-imx6ul-ccimx6ulsbc-20190127182701.dtb<u></u><u></u></p><p class=3D"Mso=
Normal">zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id135-20190127182701.dtb<u></u>=
<u></u></p><p class=3D"MsoNormal">zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id136=
-20190127182701.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage--4.9-r0.=
5-imx6ul-ccimx6ulsbc-wb-20190127182701.dtb<u></u><u></u></p><p class=3D"Mso=
Normal">zImage-ccimx6ulsbc.bin<u></u><u></u></p><p class=3D"MsoNormal">zIma=
ge-imx6ul-ccimx6ulsbc.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-im=
x6ul-ccimx6ulsbc-id135.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-i=
mx6ul-ccimx6ulsbc-id136.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-=
imx6ul-ccimx6ulsbc-wb.dtb<u></u><u></u></p><p class=3D"MsoNormal"><u></u>&n=
bsp;<u></u></p><p class=3D"MsoNormal">So, what I am having an issue with ar=
e the steps to get the latest kernel changes a part of the image?&nbsp; I t=
hought if I ran =E2=80=9Cbitbake dey-image-qt=E2=80=9D again that it would.=
&nbsp; I think I am missing something.&nbsp; Anything you can share would b=
e greatly appreciated.<u></u><u></u></p><p class=3D"MsoNormal">Thanks<u></u=
><u></u></p><p class=3D"MsoNormal">Don<u></u><u></u></p></div></div><br></b=
lockquote></div>
</blockquote><div>Hi Don,</div><div>Are you asking how do you save changes =
to your kernel configuration so they become part of the kernel recipe? If s=
o, the&nbsp;</div><div>2.2.3 Changing The Configuration section of the Kern=
el Dev manual gives an example.</div><div>If that is not what you're asking=
, please clarify and I will do my best to help.</div><div><br></div><div>Re=
gards,</div><div>Richard</div><div><br></div></body></html>

--=-LysvL2Vyu/KwdCKbJNSS--
