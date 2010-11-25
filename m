Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E5474C810FF
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 20:29:01 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf1 with SMTP id 1so262026gyf.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 18:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:sender:received
	:in-reply-to:references:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=5zOIZl/JOWhFaZwUYB1OKHdOe0AAH42HrGVzHCWwrzY=;
	b=tAdTxGr5fFma8pshY8iH/Hfgl3ZnNnxDJpkiMVmHsz8LCUzywMW5eA4LlUHwLofSNS
	kQaFp85XedpbVQvwRnx3BaCNTRz8P9ol7IsgCX2itKqwyv09XYG/rffEXJbLojI2uHH/
	ISh/ZjqHddHRnirPxC5IP7FKqKbe7MTrDZo9I=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=AnvXX4ycz04PK9jFJ3/G3u8+OExIJzVIpnumjs9Du9LM/t5jzmhzkiA3GtyY1tBDue
	GPOoHPM6nVZRmC9LTN9CUpK6/MJSVEu+7Skj67hhn4c2aI2h5X3/sa2BFr/Ovmw/Kk1E
	1/mNwQeJslNLvSgnAZbBHrsIIGQ/e4Lt2SoGo=
MIME-Version: 1.0
Received: by 10.100.95.20 with SMTP id s20mr100279anb.251.1290652140470; Wed,
	24 Nov 2010 18:29:00 -0800 (PST)
Sender: sachindhiman123@gmail.com
Received: by 10.100.225.17 with HTTP; Wed, 24 Nov 2010 18:29:00 -0800 (PST)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9501CC4683@orsmsx504.amr.corp.intel.com>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>
	<AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>
	<B08D4353009C0E4FB5FE1A4D0041EBC4B20774@orsmsx001.amr.corp.intel.com>
	<AANLkTikP1bEu+QqHTEh9zYcO3K2ie5+dq_f3fq+=LK-H@mail.gmail.com>
	<AANLkTimvXuDRAtt0Zy5VMtDCUpCQhiHRXScVU8V=1S37@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501CC4683@orsmsx504.amr.corp.intel.com>
Date: Thu, 25 Nov 2010 07:59:00 +0530
X-Google-Sender-Auth: wI8UxHb7ZdwOd4GAinCjTpEzcG8
Message-ID: <AANLkTimFgi8eN3C7UzwL4kxpbVxR3_jRMKapb61k6BgQ@mail.gmail.com>
From: sachin kumar <sachinsomeone@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 25 Nov 2010 02:29:01 -0000
Content-Type: multipart/alternative; boundary=0016e64616165c80e90495d75ec6

--0016e64616165c80e90495d75ec6
Content-Type: text/plain; charset=ISO-8859-1

Hi

I did same but still same problem.

I have also copied Disk "yocto-image-minimal-qemuppc-0.9.rootfs.ext3" and
"Kernel Image : zImage-2.6.34-qemuppc-0.9.bin" in the /opt/poky directory


To run qemu i am using following commands


[sachin@sachinlinux poky]$ source environment-setup-ppc603e-poky-linux


[sachin@sachinlinux poky]$ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script


So i am not able to run poky-qemu command.

Please suggest what to do next.

Kind Regards
Sachin

On Wed, Nov 24, 2010 at 10:58 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  Hmm, somehow had the impression that your issue is relsoved, if not,
> sorry for the delay on getting back to you...
>
> under /opt/poky do...
>
>  1. source environment-setup-ppc603e-poky-linux
> 2. poky-qemu qemuppc absolute-path/zImage-2.6.34.qemuppc-0.9.bin
>  absolute-path/yocto-image-minimal-qemuppc-0.9.rootfs.ext3 ext3
>
> Please note I've added the absolute path to your 2 qemu files if they're
> not under the directory that you invoke poky-qemu.  This should fix your
> problem.
>
> Thanks,
> Jessica
>
>
>  ------------------------------
> *From:* sachindhiman123@gmail.com [mailto:sachindhiman123@gmail.com] *On
> Behalf Of *sachin kumar
> *Sent:* Wednesday, November 24, 2010 8:22 AM
>
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Problem in running poky-qemu
>
> Please help me i am still having same issue.
>
>
> On Fri, Nov 12, 2010 at 5:01 PM, sachin kumar <sachinsomeone@gmail.com>wrote:
>
>> Hi:
>>
>> i am sorry, again i am getting same message.
>>
>> Regards
>> Sachin
>>
>> On 11/12/10, Zhang, Jessica <jessica.zhang@intel.com> wrote:
>> > Hi Sachin,
>> >
>> > under /opt/poky, can you do the following in exact sequence:
>> > 1. source environment-setup-ppc603e-poky-linux
>> > 2. poky-qemy qemuppc zImage-2.6.34.qemuppc-0.9.bin
>> > yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>> >
>> > Thanks,
>> > Jessica
>> >
>> >   _____
>> >
>> > From: sachindhiman123@gmail.com [mailto:sachindhiman123@gmail.com] On
>> Behalf
>> > Of sachin kumar
>> > Sent: Thursday, November 11, 2010 8:19 AM
>> > To: Zhang, Jessica
>> > Cc: yocto@yoctoproject.org
>> > Subject: Re: [yocto] Problem in running poky-qemu
>> >
>> >
>> > Hello Jessica:
>> >
>> > Thanks for your swift response, as per your suggestions i have
>> downloaded
>> > yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto
>> website.
>> > I have installed the same.
>> > you can see now content of my /opt/poky folder as following
>> >
>> > [sachin@sachinlinux yocto_tools]$ ls /opt/poky/
>> > environment-setup-i586-poky-linux     site-config-i586-poky-linux
>> > sysroots                 version-ppc603e-poky-linux
>> > environment-setup-ppc603e-poky-linux  site-config-ppc603e-poky-linux
>> > version-i586-poky-linux
>> > [sachin@sachinlinux yocto_tools]$
>> >
>> > But despite that i am getting same message
>> >
>> > [sachin@sachinlinux yocto_tools]$ poky-qemu
>> zImage-2.6.34-qemuppc-0.9.bin
>> > yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>> > Set MACHINE to [qemuppc-0] based on kernel
>> [zImage-2.6.34-qemuppc-0.9.bin]
>> > In order for this script to dynamically infer paths
>> > to kernels or filesystem images, you either need
>> > bitbake in your PATH or to source poky-init-build-env
>> > before running this script
>> > [sachin@sachinlinux yocto_tools]$
>> >
>> >
>> > I do not which script this is referring.
>> > Please help me.
>> >
>> > Kind regards
>> >
>> > Sachin
>> >
>> >
>> >
>> >
>> >
>> > On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica <
>> jessica.zhang@intel.com>
>> > wrote:
>> >
>> >
>> > Hi Sachin,
>> >
>> > First of all, if you want to run ppc, the toolchain you need to download
>> is
>> > yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2.  After you install
>> it
>> > under /opt/poky, you should go under /opt/poky and source the
>> > environment-setup-ppc* and try start qemu again...
>> >
>> > Let us know if you still run into issues.
>> >
>> > Thanks,
>> > Jessica
>> >
>> >   _____
>> >
>> > From: yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org]
>> > On Behalf Of sachin kumar
>> > Sent: Wednesday, November 10, 2010 6:09 PM
>> > To: yocto@yoctoproject.org
>> > Subject: [yocto] Problem in running poky-qemu
>> >
>> >
>> > Dear All:
>> >
>> > I am new to qemu, so please excuse me, i am asking basic question.
>> >
>> > Actually i want to run linux image for ppc on qemu.
>> >
>> > My host machine is running Fedora13.
>> >
>> > For that i have downloaded following from yocto project website.
>> >
>> > Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>> > Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
>> > Toolchain: yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2
>> >
>> > Now toolchain was installed properly.
>> >
>> > Now when i am running poky-qemu from command line it is giving following
>> > message
>> >
>> ============================================================================
>> > =================
>> > [root@sachinlinux yocto_tools]# poky-qemu zImage-2.6.34-qemuppc-0.9.bin
>> > yocto-image-minimal-qemuppc-0.9.rootfs.ext3
>> > Set MACHINE to [qemuppc-0] based on kernel
>> [zImage-2.6.34-qemuppc-0.9.bin]
>> > In order for this script to dynamically infer paths
>> > to kernels or filesystem images, you either need
>> > bitbake in your PATH or to source poky-init-build-env
>> > before running this script
>> >
>> >
>> ============================================================================
>> > =================
>> > I am blank about this message, which script they are referring.
>> > Please help me for the same.
>> > This will be a great help for me as i am at critical phase of one of my
>> > project.
>> >
>> > Kind Regards
>> > Sachin
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>>
>
>

--0016e64616165c80e90495d75ec6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi <br><br>I did same but still same problem.<br><br>I have also copied Dis=
k &quot;yocto-image-minimal-qemuppc-0.9.rootfs.ext3&quot; and &quot;Kernel =
Image : zImage-2.6.34-qemuppc-0.9.bin&quot; in the /opt/poky directory<br>
<br><br>To run qemu i am using following commands<br><br><br>[sachin@sachin=
linux poky]$ source environment-setup-ppc603e-poky-linux<br><br><br>[sachin=
@sachinlinux poky]$ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin yocto-i=
mage-minimal-qemuppc-0.9.rootfs.ext3 <br>
In order for this script to dynamically infer paths<br>to kernels or filesy=
stem images, you either need<br>bitbake in your PATH or to source poky-init=
-build-env<br>before running this script<br><br><br>So i am not able to run=
 poky-qemu command.<br>
<br>Please suggest what to do next.<br><br>Kind Regards<br>Sachin<br><br><d=
iv class=3D"gmail_quote">On Wed, Nov 24, 2010 at 10:58 PM, Zhang, Jessica <=
span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com">jessica.zha=
ng@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">



<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">Hmm, somehow had the impression that your issue is relsoved,=
=20
if not, sorry for the delay on getting back to you...</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2">under /opt/poky do...</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" face=3D"Arial=
" size=3D"2"><font color=3D"#000000" face=3D"Times New Roman" size=3D"3"><d=
iv class=3D"im">=A01.=20
source environment-setup-ppc603e-poky-linux<br></div>2. poky-qemu qemuppc=
=20
absolute-path/zImage-2.6.34.qemuppc-0.9.bin<br>=A0absolute-path/yocto-image=
-minimal-qemuppc-0.9.rootfs.ext3=20
ext3</font></font></span></div>
<div><span><font color=3D"#0000ff" face=3D"Arial" size=3D"2"><font color=3D=
"#000000" face=3D"Times New Roman" size=3D"3"></font></font></span>=A0</div=
>
<div><span><font color=3D"#0000ff" face=3D"Arial" size=3D"2"><font color=3D=
"#000000" face=3D"Times New Roman" size=3D"3">Please note I&#39;ve added th=
e absolute=20
path to your 2 qemu files if they&#39;re not under the directory that you i=
nvoke=20
poky-qemu.=A0 This should fix your problem.</font></font></span></div>
<div><span><font color=3D"#0000ff" face=3D"Arial" size=3D"2"><font color=3D=
"#000000" face=3D"Times New Roman" size=3D"3"></font></font></span>=A0</div=
>
<div><span><font color=3D"#0000ff" face=3D"Arial" size=3D"2"><font color=3D=
"#000000" face=3D"Times New Roman" size=3D"3">Thanks,</font></font></span><=
/div>
<div><span><font color=3D"#0000ff" face=3D"Arial" size=3D"2"><font color=3D=
"#000000" face=3D"Times New Roman" size=3D"3">Jessica</font></font></span><=
/div>
<div dir=3D"ltr" align=3D"left"><br></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font face=3D"Tahoma" size=3D"2"><div class=3D"im"><b>From:</b> <a href=3D"=
mailto:sachindhiman123@gmail.com" target=3D"_blank">sachindhiman123@gmail.c=
om</a>=20
[mailto:<a href=3D"mailto:sachindhiman123@gmail.com" target=3D"_blank">sach=
indhiman123@gmail.com</a>] <b>On Behalf Of </b>sachin=20
kumar<br></div><b>Sent:</b> Wednesday, November 24, 2010 8:22 AM<div><div><=
/div><div class=3D"h5"><br><b>To:</b> Zhang,=20
Jessica<br><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto]=20
Problem in running poky-qemu<br></div></div></font><br></div><div><div></di=
v><div class=3D"h5">
<div></div>Please help me i am still having same issue.<br><br><br>
<div class=3D"gmail_quote">On Fri, Nov 12, 2010 at 5:01 PM, sachin kumar <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:sachinsomeone@gmail.com" target=3D"_b=
lank">sachinsomeone@gmail.com</a>&gt;</span>=20
wrote:<br>
<blockquote style=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt=
 0pt 0pt 0.8ex; padding-left: 1ex;" class=3D"gmail_quote">Hi:<br><br>i am s=
orry, again i am getting same=20
  message.<br><br>Regards<br><font color=3D"#888888">Sachin<br></font>
  <div>
  <div></div>
  <div><br>On 11/12/10, Zhang, Jessica &lt;<a href=3D"mailto:jessica.zhang@=
intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;=20
  wrote:<br>&gt; Hi Sachin,<br>&gt;<br>&gt; under /opt/poky, can you do the=
=20
  following in exact sequence:<br>&gt; 1. source=20
  environment-setup-ppc603e-poky-linux<br>&gt; 2. poky-qemy qemuppc=20
  zImage-2.6.34.qemuppc-0.9.bin<br>&gt;=20
  yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>&gt;<br>&gt; Thanks,<br>&g=
t;=20
  Jessica<br>&gt;<br>&gt; =A0 _____<br>&gt;<br>&gt; From: <a href=3D"mailto=
:sachindhiman123@gmail.com" target=3D"_blank">sachindhiman123@gmail.com</a>=
=20
  [mailto:<a href=3D"mailto:sachindhiman123@gmail.com" target=3D"_blank">sa=
chindhiman123@gmail.com</a>] On=20
  Behalf<br>&gt; Of sachin kumar<br>&gt; Sent: Thursday, November 11, 2010 =
8:19=20
  AM<br>&gt; To: Zhang, Jessica<br>&gt; Cc: <a href=3D"mailto:yocto@yoctopr=
oject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>&gt;=20
  Subject: Re: [yocto] Problem in running poky-qemu<br>&gt;<br>&gt;<br>&gt;=
=20
  Hello Jessica:<br>&gt;<br>&gt; Thanks for your swift response, as per you=
r=20
  suggestions i have downloaded<br>&gt;=20
  yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2 file from yocto=20
  website.<br>&gt; I have installed the same.<br>&gt; you can see now conte=
nt of=20
  my /opt/poky folder as following<br>&gt;<br>&gt; [sachin@sachinlinux=20
  yocto_tools]$ ls /opt/poky/<br>&gt; environment-setup-i586-poky-linux =A0=
=20
  =A0 site-config-i586-poky-linux<br>&gt; sysroots =A0 =A0 =A0=20
  =A0 =A0 =A0 =A0 =A0 version-ppc603e-poky-linux<br>&gt;=20
  environment-setup-ppc603e-poky-linux=20
  =A0site-config-ppc603e-poky-linux<br>&gt; version-i586-poky-linux<br>&gt;=
=20
  [sachin@sachinlinux yocto_tools]$<br>&gt;<br>&gt; But despite that i am=
=20
  getting same message<br>&gt;<br>&gt; [sachin@sachinlinux yocto_tools]$=20
  poky-qemu zImage-2.6.34-qemuppc-0.9.bin<br>&gt;=20
  yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>&gt; Set MACHINE to [qemup=
pc-0]=20
  based on kernel [zImage-2.6.34-qemuppc-0.9.bin]<br>&gt; In order for this=
=20
  script to dynamically infer paths<br>&gt; to kernels or filesystem images=
, you=20
  either need<br>&gt; bitbake in your PATH or to source=20
  poky-init-build-env<br>&gt; before running this script<br>&gt;=20
  [sachin@sachinlinux yocto_tools]$<br>&gt;<br>&gt;<br>&gt; I do not which=
=20
  script this is referring.<br>&gt; Please help me.<br>&gt;<br>&gt; Kind=20
  regards<br>&gt;<br>&gt; Sachin<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br=
>&gt;=20
  On Thu, Nov 11, 2010 at 7:59 AM, Zhang, Jessica &lt;<a href=3D"mailto:jes=
sica.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;<br>=
&gt;=20
  wrote:<br>&gt;<br>&gt;<br>&gt; Hi Sachin,<br>&gt;<br>&gt; First of all, i=
f you=20
  want to run ppc, the toolchain you need to download is<br>&gt;=20
  yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2. =A0After you install=
=20
  it<br>&gt; under /opt/poky, you should go under /opt/poky and source=20
  the<br>&gt; environment-setup-ppc* and try start qemu again...<br>&gt;<br=
>&gt;=20
  Let us know if you still run into issues.<br>&gt;<br>&gt; Thanks,<br>&gt;=
=20
  Jessica<br>&gt;<br>&gt; =A0 _____<br>&gt;<br>&gt; From: <a href=3D"mailto=
:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproje=
ct.org</a>=20
  [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blan=
k">yocto-bounces@yoctoproject.org</a>]<br>&gt;=20
  On Behalf Of sachin kumar<br>&gt; Sent: Wednesday, November 10, 2010 6:09=
=20
  PM<br>&gt; To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>&gt;=20
  Subject: [yocto] Problem in running poky-qemu<br>&gt;<br>&gt;<br>&gt; Dea=
r=20
  All:<br>&gt;<br>&gt; I am new to qemu, so please excuse me, i am asking b=
asic=20
  question.<br>&gt;<br>&gt; Actually i want to run linux image for ppc on=
=20
  qemu.<br>&gt;<br>&gt; My host machine is running Fedora13.<br>&gt;<br>&gt=
; For=20
  that i have downloaded following from yocto project website.<br>&gt;<br>&=
gt;=20
  Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>&gt; Kernel Im=
age :=20
  zImage-2.6.34-qemuppc-0.9.bin<br>&gt; Toolchain:=20
  yocto-eglibc-i586-i586-toolchain-sdk-0.9.tar.bz2<br>&gt;<br>&gt; Now tool=
chain=20
  was installed properly.<br>&gt;<br>&gt; Now when i am running poky-qemu f=
rom=20
  command line it is giving following<br>&gt; message<br>&gt;=20
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&gt;=20
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&gt; [root@sachinl=
inux yocto_tools]# poky-qemu=20
  zImage-2.6.34-qemuppc-0.9.bin<br>&gt;=20
  yocto-image-minimal-qemuppc-0.9.rootfs.ext3<br>&gt; Set MACHINE to [qemup=
pc-0]=20
  based on kernel [zImage-2.6.34-qemuppc-0.9.bin]<br>&gt; In order for this=
=20
  script to dynamically infer paths<br>&gt; to kernels or filesystem images=
, you=20
  either need<br>&gt; bitbake in your PATH or to source=20
  poky-init-build-env<br>&gt; before running this script<br>&gt;<br>&gt;=20
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&gt;=20
  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&gt; I am blank ab=
out this message, which script they are=20
  referring.<br>&gt; Please help me for the same.<br>&gt; This will be a gr=
eat=20
  help for me as i am at critical phase of one of my<br>&gt;=20
  project.<br>&gt;<br>&gt; Kind Regards<br>&gt;=20
  Sachin<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br=
></div></div></blockquote></div><br></div></div></div>
</blockquote></div><br>

--0016e64616165c80e90495d75ec6--
