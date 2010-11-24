Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD5704C803A5
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 10:10:20 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf1 with SMTP id 1so999585gyf.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 08:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=/vBayOO2fq8wtkg+jAlAieXqP9C1q1pQjegf/quEw/8=;
	b=ewFPWcMp9htxwB/Zro3BSTiGt3rIOkHvKqq/KEYJMvGTqQn+G4l5RStGjKvic1fbj5
	YTzpHbD3JH00mrT/hpFtOUrBN2CSEdkDDlgBdEUGxpkQlatfbl6z6Nu9gapQF6B9b9Oa
	15dOmP6f/2nUieMnP1j2LOIMwsauowco6JlV0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=jKhcXN5v3gV4/Wgj7Elo3BRQ4KB6uWpZTs5yR+o6K0WxShEc56HwKbFU1VYVe6P8A7
	VHHfchSxBaxt4bE63zb+nmfH484vaLljblVYagkU6AmT+tKulcuMulhSsvocPiHv3I1k
	/Cw/1sdYlw1x9UyWzYDfW38KD4FQY1w3A4Rf0=
MIME-Version: 1.0
Received: by 10.100.254.4 with SMTP id b4mr2753473ani.217.1290615019356; Wed,
	24 Nov 2010 08:10:19 -0800 (PST)
Received: by 10.100.225.17 with HTTP; Wed, 24 Nov 2010 08:10:19 -0800 (PST)
In-Reply-To: <AANLkTikP1bEu+QqHTEh9zYcO3K2ie5+dq_f3fq+=LK-H@mail.gmail.com>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>
	<AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20774@orsmsx001.amr.corp.intel.com>
	<AANLkTikP1bEu+QqHTEh9zYcO3K2ie5+dq_f3fq+=LK-H@mail.gmail.com>
Date: Wed, 24 Nov 2010 21:40:19 +0530
Message-ID: <AANLkTimMGanB263DVpqFb8wgw+xgTk6gYzv=LpTShnoO@mail.gmail.com>
From: sachin dhiman <sachindhiman123@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 29 Nov 2010 13:40:28 -0600
Subject: Re: Problem in running poky-qemu
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Nov 2010 16:10:21 -0000
Content-Type: multipart/alternative; boundary=0016e68defa0c544140495ceb97e

--0016e68defa0c544140495ceb97e
Content-Type: text/plain; charset=ISO-8859-1

Dear All:

Please help me, as i am still having same issue.


Kind Regards
Sachin

On Fri, Nov 12, 2010 at 5:01 PM, sachin kumar <sachinsomeone@gmail.com>wrote:

> Hi:
>
> i am sorry, again i am getting same message.
>
> Regards
> Sachin
>
> On 11/12/10, Zhang, Jessica <jessica.zhang@intel.com> wrote:
> > Hi Sachin,
> >
> > under /opt/poky, can you do the following in exact sequence:
> > 1. source environment-setup-ppc603e-poky-linux
> > 2. poky-qemy qemuppc zImage-2.6.34.qemuppc-0.9.bin
> > yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> >
> > Thanks,
> > Jessica
> >
> >   _____
> >
> > From: sachindhiman123@gmail.com [mailto:sachindhiman123@gmail.com] On
> Behalf
> > Of sachin kumar
> > Sent: Thursday, November 11, 2010 8:19 AM
> > To: Zhang, Jessica
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Problem in running poky-qemu
> >
> >
> > Hello Jessica:
> >
> > Thanks for your swift response, as per your suggestions i have downloaded
> > yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto
> website.
> > I have installed the same.
> > you can see now content of my /opt/poky folder as following
> >
> > [sachin@sachinlinux yocto_tools]$ ls /opt/poky/
> > environment-setup-i586-poky-linux     site-config-i586-poky-linux
> > sysroots                 version-ppc603e-poky-linux
> > environment-setup-ppc603e-poky-linux  site-config-ppc603e-poky-linux
> > version-i586-poky-linux
> > [sachin@sachinlinux yocto_tools]$
> >
> > But despite that i am getting same message
> >
> > [sachin@sachinlinux yocto_tools]$ poky-qemu
> zImage-2.6.34-qemuppc-0.9.bin
> > yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> > Set MACHINE to [qemuppc-0] based on kernel
> [zImage-2.6.34-qemuppc-0.9.bin]
> > In order for this script to dynamically infer paths
> > to kernels or filesystem images, you either need
> > bitbake in your PATH or to source poky-init-build-env
> > before running this script
> > [sachin@sachinlinux yocto_tools]$
> >
> >
> > I do not which script this is referring.
> > Please help me.
> >
> > Kind regards
> >
> > Sachin
> >
> >
> >
> >
> >
> > On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica <jessica.zhang@intel.com
> >
> > wrote:
> >
> >
> > Hi Sachin,
> >
> > First of all, if you want to run ppc, the toolchain you need to download
> is
> > yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.  After you install
> it
> > under /opt/poky, you should go under /opt/poky and source the
> > environment-setup-ppc* and try start qemu again...
> >
> > Let us know if you still run into issues.
> >
> > Thanks,
> > Jessica
> >
> >   _____
> >
> > From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org]
> > On Behalf Of sachin kumar
> > Sent: Wednesday, November 10, 2010 6:09 PM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] Problem in running poky-qemu
> >
> >
> > Dear All:
> >
> > I am new to qemu, so please excuse me, i am asking basic question.
> >
> > Actually i want to run linux image for ppc on qemu.
> >
> > My host machine is running Fedora13.
> >
> > For that i have downloaded following from yocto project website.
> >
> > Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> > Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
> > Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2
> >
> > Now toolchain was installed properly.
> >
> > Now when i am running poky-qemu from command line it is giving following
> > message
> >
> ============================================================================
> > =================
> > [root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
> > yocto-image-minimal-qemuppc-0.9.rootfs.ext3
> > Set MACHINE to [qemuppc-0] based on kernel
> [zImage-2.6.34-qemuppc-0.9.bin]
> > In order for this script to dynamically infer paths
> > to kernels or filesystem images, you either need
> > bitbake in your PATH or to source poky-init-build-env
> > before running this script
> >
> >
> ============================================================================
> > =================
> > I am blank about this message, which script they are referring.
> > Please help me for the same.
> > This will be a great help for me as i am at critical phase of one of my
> > project.
> >
> > Kind Regards
> > Sachin
> >
> >
> >
> >
> >
> >
> >
> >
>

--0016e68defa0c544140495ceb97e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Dear All:<br><br>Please help me, as i am still having same issue.<br><br><b=
r>Kind Regards<br>Sachin <br><br><div class=3D"gmail_quote">On Fri, Nov 12,=
 2010 at 5:01 PM, sachin kumar <span dir=3D"ltr">&lt;<a href=3D"mailto:sach=
insomeone@gmail.com">sachinsomeone@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Hi:<br>
<br>
i am sorry, again i am getting same message.<br>
<br>
Regards<br>
<font color=3D"#888888">Sachin<br>
</font><div><div></div><div class=3D"h5"><br>
On 11/12/10, Zhang, Jessica &lt;<a href=3D"mailto:jessica.zhang@intel.com">=
jessica.zhang@intel.com</a>&gt; wrote:<br>
&gt; Hi Sachin,<br>
&gt;<br>
&gt; under /opt/poky, can you do the following in exact sequence:<br>
&gt; 1. source environment-setup-ppc603e-poky-linux<br>
&gt; 2. poky-qemy qemuppc zImage-2.6.34.qemuppc-0.9.bin<br>
&gt; yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Jessica<br>
&gt;<br>
&gt; =A0 _____<br>
&gt;<br>
&gt; From: <a href=3D"mailto:sachindhiman123@gmail.com">sachindhiman123@gma=
il.com</a> [mailto:<a href=3D"mailto:sachindhiman123@gmail.com">sachindhima=
n123@gmail.com</a>] On Behalf<br>
&gt; Of sachin kumar<br>
&gt; Sent: Thursday, November 11, 2010 8:19 AM<br>
&gt; To: Zhang, Jessica<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: Re: [yocto] Problem in running poky-qemu<br>
&gt;<br>
&gt;<br>
&gt; Hello Jessica:<br>
&gt;<br>
&gt; Thanks for your swift response, as per your suggestions i have downloa=
ded<br>
&gt; yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto we=
bsite.<br>
&gt; I have installed the same.<br>
&gt; you can see now content of my /opt/poky folder as following<br>
&gt;<br>
&gt; [sachin@sachinlinux yocto_tools]$ ls /opt/poky/<br>
&gt; environment-setup-i586-poky-linux =A0 =A0 site-config-i586-poky-linux<=
br>
&gt; sysroots =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 version-ppc603e-poky-linux<br=
>
&gt; environment-setup-ppc603e-poky-linux =A0site-config-ppc603e-poky-linux=
<br>
&gt; version-i586-poky-linux<br>
&gt; [sachin@sachinlinux yocto_tools]$<br>
&gt;<br>
&gt; But despite that i am getting same message<br>
&gt;<br>
&gt; [sachin@sachinlinux yocto_tools]$ poky-qemu zImage-2.6.34-qemuppc-0.9.=
bin<br>
&gt; yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>
&gt; Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.=
bin]<br>
&gt; In order for this script to dynamically infer paths<br>
&gt; to kernels or filesystem images, you either need<br>
&gt; bitbake in your PATH or to source poky-init-build-env<br>
&gt; before running this script<br>
&gt; [sachin@sachinlinux yocto_tools]$<br>
&gt;<br>
&gt;<br>
&gt; I do not which script this is referring.<br>
&gt; Please help me.<br>
&gt;<br>
&gt; Kind regards<br>
&gt;<br>
&gt; Sachin<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica &lt;<a href=3D"mailto:=
jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; Hi Sachin,<br>
&gt;<br>
&gt; First of all, if you want to run ppc, the toolchain you need to downlo=
ad is<br>
&gt; yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2. =A0After you inst=
all it<br>
&gt; under /opt/poky, you should go under /opt/poky and source the<br>
&gt; environment-setup-ppc* and try start qemu again...<br>
&gt;<br>
&gt; Let us know if you still run into issues.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Jessica<br>
&gt;<br>
&gt; =A0 _____<br>
&gt;<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg">yocto-bounces@yoctoproject.org</a>]<br>
&gt; On Behalf Of sachin kumar<br>
&gt; Sent: Wednesday, November 10, 2010 6:09 PM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: [yocto] Problem in running poky-qemu<br>
&gt;<br>
&gt;<br>
&gt; Dear All:<br>
&gt;<br>
&gt; I am new to qemu, so please excuse me, i am asking basic question.<br>
&gt;<br>
&gt; Actually i want to run linux image for ppc on qemu.<br>
&gt;<br>
&gt; My host machine is running Fedora13.<br>
&gt;<br>
&gt; For that i have downloaded following from yocto project website.<br>
&gt;<br>
&gt; Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>
&gt; Kernel Image : zImage-2.6.34-qemuppc-0.9.bin<br>
&gt; Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2<br>
&gt;<br>
&gt; Now toolchain was installed properly.<br>
&gt;<br>
&gt; Now when i am running poky-qemu from command line it is giving followi=
ng<br>
&gt; message<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; [root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bi=
n<br>
&gt; yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>
&gt; Set MACHINE to [qemuppc-0] based on kernel [zImage-2.6.34-qemuppc-0.9.=
bin]<br>
&gt; In order for this script to dynamically infer paths<br>
&gt; to kernels or filesystem images, you either need<br>
&gt; bitbake in your PATH or to source poky-init-build-env<br>
&gt; before running this script<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; I am blank about this message, which script they are referring.<br>
&gt; Please help me for the same.<br>
&gt; This will be a great help for me as i am at critical phase of one of m=
y<br>
&gt; project.<br>
&gt;<br>
&gt; Kind Regards<br>
&gt; Sachin<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br>

--0016e68defa0c544140495ceb97e--
