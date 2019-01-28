Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E17E0E00BB7; Mon, 28 Jan 2019 10:33:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.53 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C34A7E00BB7
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 10:33:27 -0800 (PST)
Received: by mail-ed1-f53.google.com with SMTP id p6so13940359eds.0
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 10:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UD7EtlY/U4OHDxJ0HfpthdqBaGGBnFaYC9njhonpGzE=;
	b=vEjcZ++tfyua9A/2wNp8n+/EC6kGo6DvITSBdICqB6TqbbFvYl9z8oqCbIwpaSHaF0
	4eFqJwvymSww3/ISt6gMQbwW9kXSp3KsR/TjInMEtJm8tnro4LuwTcbw3Qiw5AsKSe51
	zfLC+SPFUBFNtrU+Bz67HN0Y8cegCs8nGo/J2AZW5/t2ROnSrgdbhowCS2IEcxRKJ2Z+
	HGfT+znGhvTW8l/BelQ9Co7iNM43DfJk40+nwm92kxd1SGxUUoOVKQ0ueCncI/ue/692
	8rmBcYVZPlgJbeYPhXI6S0pwKYulHUJm2w3TbrOGoldnIv9DIE0iCVOqFpKcp42dkePF
	6qMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UD7EtlY/U4OHDxJ0HfpthdqBaGGBnFaYC9njhonpGzE=;
	b=kvf22d9G9XC6A7N+mW3e73ewrIpISHC9Eu9PHVxWN1eTNRhzaEfks62W1XW7k7uBYa
	EdTqOs6HPWsBzIoz9CBNie1o5WCaawjB7G+EvSS1Sovu47i35SenR66jynvdDi+6T9SI
	czKZjTIX/8xI1+zCaott2tQhBNLmfaUEtLQZ9kWmCDJmJ0PzwqfLNn6jAMUue7o0+XMH
	rcZnFwU/oPidKj5awvUITXPchlLHh0AslMCQSnFaSVltB0q+DCX12Ts3tSfkOiBFG8jo
	RQmWJcquRpRnRqEOIHJA7V222mkFGaNkFIoBN1v2JdBRZbSpBPuv/krRpJxjMfd4bvF3
	Kj1w==
X-Gm-Message-State: AJcUukc+Rvp0yYkO+HHVvvmAHxK5q31dxTHEDvR/osU1G9IsyLNVSdXR
	+U673ITyUCODfnujFCyuHGmedaJwxcDkYfgVTMY=
X-Google-Smtp-Source: ALg8bN7JdX8sJBJ7KNtp7dGGCe8OABRZ4lX6jQxCZhvsPP35VyUtt1ny3Rb7mruZkGRfgyXchYBi0tkhN96EKTxUDdY=
X-Received: by 2002:a50:b36f:: with SMTP id r44mr22577809edd.284.1548700406788;
	Mon, 28 Jan 2019 10:33:26 -0800 (PST)
MIME-Version: 1.0
References: <000901d4b679$962481e0$c26d85a0$@comporium.net>
In-Reply-To: <000901d4b679$962481e0$c26d85a0$@comporium.net>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 28 Jan 2019 10:33:15 -0800
Message-ID: <CAFNP8Os5TsSy27zXXtN+MZHpJN+=O5XDgY3pw2yH-0EnknoM+g@mail.gmail.com>
To: Don Osmond <dosmond@comporium.net>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Richard A Griffiths <richard.a.griffiths@intel.com>
Subject: Re: Yocto Porject
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
X-List-Received-Date: Mon, 28 Jan 2019 18:33:29 -0000
Content-Type: multipart/alternative; boundary="0000000000009c36b0058088e989"

--0000000000009c36b0058088e989
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Don,

I can't really advise you on this as I am not a Yocto developer.  However,
I can forward this question to the yocto@yoctoproject.org mail group and,
in particular, to a resource that is looking closely at kernel stuff to
help improve that manual and get it more up-to-date.  That guy is named
Richard Griffiths of Intel.  You should be able to get some help with
this.  Sorry... I wish I was a crack YP developer :)

Thanks,
Scott

On Sun, Jan 27, 2019 at 11:50 AM Don Osmond <dosmond@comporium.net> wrote:

> Scott
>
> I have been reading your
> https://www.yoctoproject.org/docs/2.4/kernel-dev/kernel-dev.html and it
> has been very helpful.  I have a project where I am needing to get the
> ability to use iptables NAT which does not come in the core image from Di=
gi
> which also uses Yocto.  In my Ubuntu 16.04 LTS development VM, I am able =
to
> build the base image (bitbake dey-image-qt), menuconfig the kernel config
> (bitbake -c devshell virtual/kernel), compile the kernel (bitbake -C
> compile virtual/kernel).  The results are in the
> /workspace/ccimx6ulsbc/tmp/deploy/images/ccimx6ulsbc as see in list below=
:
>
>
>
> dosmond@ubuntu:/workspace/ccimx6ulsbc/tmp/deploy/images/ccimx6ulsbc$ ls
>
> boot.scr
>
> dey-image-qt-x11-ccimx6ulsbc-20190127164412.boot.ubifs
>
> dey-image-qt-x11-ccimx6ulsbc-20190127164412.recovery.ubifs
>
> dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.manifest
>
> dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.tar.bz2
>
> dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.ubifs
>
> dey-image-qt-x11-ccimx6ulsbc-20190127164412.testdata.json
>
> dey-image-qt-x11-ccimx6ulsbc.boot.ubifs
>
> dey-image-qt-x11-ccimx6ulsbc.manifest
>
> dey-image-qt-x11-ccimx6ulsbc.recovery.ubifs
>
> dey-image-qt-x11-ccimx6ulsbc.tar.bz2
>
> dey-image-qt-x11-ccimx6ulsbc.testdata.json
>
> dey-image-qt-x11-ccimx6ulsbc.ubifs
>
>
> dey-image-recovery-initramfs-ccimx6ulsbc-20190127161551.rootfs.cpio.gz.u-=
boot.tf
>
> dey-image-recovery-initramfs-ccimx6ulsbc-20190127161551.rootfs.manifest
>
> dey-image-recovery-initramfs-ccimx6ulsbc-20190127161551.testdata.json
>
> dey-image-recovery-initramfs-ccimx6ulsbc.cpio.gz.u-boot.tf
>
> dey-image-recovery-initramfs-ccimx6ulsbc.manifest
>
> dey-image-recovery-initramfs-ccimx6ulsbc.testdata.json
>
> imx6ul-ccimx6ulsbc.dtb
>
> imx6ul-ccimx6ulsbc-id135.dtb
>
> imx6ul-ccimx6ulsbc-id136.dtb
>
> imx6ul-ccimx6ulsbc-wb.dtb
>
> install_linux_fw_sd.scr
>
> modules--4.9-r0.5-ccimx6ulsbc-20190127182701.tgz
>
> modules-ccimx6ulsbc.tgz
>
> u-boot-ccimx6ulsbc1GB-2017.03-r0.imx
>
> u-boot-ccimx6ulsbc1GB.imx
>
> u-boot-ccimx6ulsbc-2017.03-r0.imx
>
> u-boot-ccimx6ulsbc.imx
>
> u-boot-ccimx6ulsbc.imx-ccimx6ulsbc
>
> u-boot-ccimx6ulsbc.imx-ccimx6ulsbc1GB
>
> u-boot.imx
>
> zImage
>
> zImage--4.9-r0.5-ccimx6ulsbc-20190127182701.bin
>
> zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-20190127182701.dtb
>
> zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id135-20190127182701.dtb
>
> zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id136-20190127182701.dtb
>
> zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-wb-20190127182701.dtb
>
> zImage-ccimx6ulsbc.bin
>
> zImage-imx6ul-ccimx6ulsbc.dtb
>
> zImage-imx6ul-ccimx6ulsbc-id135.dtb
>
> zImage-imx6ul-ccimx6ulsbc-id136.dtb
>
> zImage-imx6ul-ccimx6ulsbc-wb.dtb
>
>
>
> So, what I am having an issue with are the steps to get the latest kernel
> changes a part of the image?  I thought if I ran =E2=80=9Cbitbake dey-ima=
ge-qt=E2=80=9D
> again that it would.  I think I am missing something.  Anything you can
> share would be greatly appreciated.
>
> Thanks
>
> Don
>

--0000000000009c36b0058088e989
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Don, <br></div><div><br></div><div>I can&#39;t rea=
lly advise you on this as I am not a Yocto developer.=C2=A0 However, I can =
forward this question to the <a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank">yocto@yoctoproject.org</a> mail group and, in particular, to =
a resource that is looking closely at kernel stuff to help improve that man=
ual and get it more up-to-date.=C2=A0 That guy is named Richard Griffiths o=
f Intel.=C2=A0 You should be able to get some help with this.=C2=A0 Sorry..=
. I wish I was a crack YP developer :)</div><div><br></div><div>Thanks, <br=
></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail-m_9093549047279111731gmail_attr">On Sun, Jan 27, 2019 =
at 11:50 AM Don Osmond &lt;<a href=3D"mailto:dosmond@comporium.net" target=
=3D"_blank">dosmond@comporium.net</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_=
9093549047279111731gmail-m_-1483096401079258470WordSection1"><p class=3D"Ms=
oNormal">Scott<u></u><u></u></p><p class=3D"MsoNormal">I have been reading =
your <a href=3D"https://www.yoctoproject.org/docs/2.4/kernel-dev/kernel-dev=
.html" target=3D"_blank">https://www.yoctoproject.org/docs/2.4/kernel-dev/k=
ernel-dev.html</a> and it has been very helpful.=C2=A0 I have a project whe=
re I am needing to get the ability to use iptables NAT which does not come =
in the core image from Digi which also uses Yocto.=C2=A0 In my Ubuntu 16.04=
 LTS development VM, I am able to build the base image (bitbake dey-image-q=
t), menuconfig the kernel config (bitbake -c devshell virtual/kernel), comp=
ile the kernel (bitbake -C compile virtual/kernel).=C2=A0 The results are i=
n the /workspace/ccimx6ulsbc/tmp/deploy/images/ccimx6ulsbc as see in list b=
elow:<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p cl=
ass=3D"MsoNormal">dosmond@ubuntu:/workspace/ccimx6ulsbc/tmp/deploy/images/c=
cimx6ulsbc$ ls<u></u><u></u></p><p class=3D"MsoNormal">boot.scr<u></u><u></=
u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc-20190127164412.bo=
ot.ubifs<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6uls=
bc-20190127164412.recovery.ubifs<u></u><u></u></p><p class=3D"MsoNormal">de=
y-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.manifest<u></u><u></u></p>=
<p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc-20190127164412.rootfs.t=
ar.bz2<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc=
-20190127164412.rootfs.ubifs<u></u><u></u></p><p class=3D"MsoNormal">dey-im=
age-qt-x11-ccimx6ulsbc-20190127164412.testdata.json<u></u><u></u></p><p cla=
ss=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.boot.ubifs<u></u><u></u></p><=
p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.manifest<u></u><u></u></=
p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.recovery.ubifs<u></u>=
<u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.tar.bz2<u></=
u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.testdata.j=
son<u></u><u></u></p><p class=3D"MsoNormal">dey-image-qt-x11-ccimx6ulsbc.ub=
ifs<u></u><u></u></p><p class=3D"MsoNormal"><a href=3D"http://dey-image-rec=
overy-initramfs-ccimx6ulsbc-20190127161551.rootfs.cpio.gz.u-boot.tf" target=
=3D"_blank">dey-image-recovery-initramfs-ccimx6ulsbc-20190127161551.rootfs.=
cpio.gz.u-boot.tf</a><u></u><u></u></p><p class=3D"MsoNormal">dey-image-rec=
overy-initramfs-ccimx6ulsbc-20190127161551.rootfs.manifest<u></u><u></u></p=
><p class=3D"MsoNormal">dey-image-recovery-initramfs-ccimx6ulsbc-2019012716=
1551.testdata.json<u></u><u></u></p><p class=3D"MsoNormal"><a href=3D"http:=
//dey-image-recovery-initramfs-ccimx6ulsbc.cpio.gz.u-boot.tf" target=3D"_bl=
ank">dey-image-recovery-initramfs-ccimx6ulsbc.cpio.gz.u-boot.tf</a><u></u><=
u></u></p><p class=3D"MsoNormal">dey-image-recovery-initramfs-ccimx6ulsbc.m=
anifest<u></u><u></u></p><p class=3D"MsoNormal">dey-image-recovery-initramf=
s-ccimx6ulsbc.testdata.json<u></u><u></u></p><p class=3D"MsoNormal">imx6ul-=
ccimx6ulsbc.dtb<u></u><u></u></p><p class=3D"MsoNormal">imx6ul-ccimx6ulsbc-=
id135.dtb<u></u><u></u></p><p class=3D"MsoNormal">imx6ul-ccimx6ulsbc-id136.=
dtb<u></u><u></u></p><p class=3D"MsoNormal">imx6ul-ccimx6ulsbc-wb.dtb<u></u=
><u></u></p><p class=3D"MsoNormal">install_linux_fw_sd.scr<u></u><u></u></p=
><p class=3D"MsoNormal">modules--4.9-r0.5-ccimx6ulsbc-20190127182701.tgz<u>=
</u><u></u></p><p class=3D"MsoNormal">modules-ccimx6ulsbc.tgz<u></u><u></u>=
</p><p class=3D"MsoNormal">u-boot-ccimx6ulsbc1GB-2017.03-r0.imx<u></u><u></=
u></p><p class=3D"MsoNormal">u-boot-ccimx6ulsbc1GB.imx<u></u><u></u></p><p =
class=3D"MsoNormal">u-boot-ccimx6ulsbc-2017.03-r0.imx<u></u><u></u></p><p c=
lass=3D"MsoNormal">u-boot-ccimx6ulsbc.imx<u></u><u></u></p><p class=3D"MsoN=
ormal">u-boot-ccimx6ulsbc.imx-ccimx6ulsbc<u></u><u></u></p><p class=3D"MsoN=
ormal">u-boot-ccimx6ulsbc.imx-ccimx6ulsbc1GB<u></u><u></u></p><p class=3D"M=
soNormal">u-boot.imx<u></u><u></u></p><p class=3D"MsoNormal">zImage<u></u><=
u></u></p><p class=3D"MsoNormal">zImage--4.9-r0.5-ccimx6ulsbc-2019012718270=
1.bin<u></u><u></u></p><p class=3D"MsoNormal">zImage--4.9-r0.5-imx6ul-ccimx=
6ulsbc-20190127182701.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage--4=
.9-r0.5-imx6ul-ccimx6ulsbc-id135-20190127182701.dtb<u></u><u></u></p><p cla=
ss=3D"MsoNormal">zImage--4.9-r0.5-imx6ul-ccimx6ulsbc-id136-20190127182701.d=
tb<u></u><u></u></p><p class=3D"MsoNormal">zImage--4.9-r0.5-imx6ul-ccimx6ul=
sbc-wb-20190127182701.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-cc=
imx6ulsbc.bin<u></u><u></u></p><p class=3D"MsoNormal">zImage-imx6ul-ccimx6u=
lsbc.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-imx6ul-ccimx6ulsbc-=
id135.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-imx6ul-ccimx6ulsbc=
-id136.dtb<u></u><u></u></p><p class=3D"MsoNormal">zImage-imx6ul-ccimx6ulsb=
c-wb.dtb<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p=
 class=3D"MsoNormal">So, what I am having an issue with are the steps to ge=
t the latest kernel changes a part of the image?=C2=A0 I thought if I ran =
=E2=80=9Cbitbake dey-image-qt=E2=80=9D again that it would.=C2=A0 I think I=
 am missing something.=C2=A0 Anything you can share would be greatly apprec=
iated.<u></u><u></u></p><p class=3D"MsoNormal">Thanks<u></u><u></u></p><p c=
lass=3D"MsoNormal">Don<u></u><u></u></p></div></div></blockquote></div>

--0000000000009c36b0058088e989--
