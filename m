Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2BFB4C81065
	for <yocto@yoctoproject.org>; Fri, 21 Jan 2011 03:49:06 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1652800iwn.35
	for <yocto@yoctoproject.org>; Fri, 21 Jan 2011 01:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9ANlDvnpTypqY5Sho5rCLKTJlBMlC/p8tljvgv9jRDk=;
	b=mCr2EQp8jI4VxO6zmGwWhB0z6/mCPuQabsWYkSpsS7oqkCl1/A7EntNU+G2af94tJI
	okYt0cFGr2bYMbr6PJ1ydC8Om/E0A+6GlG13FqY2pA586N/isISiUkf7zYp0pPEtISG1
	Ul/C6ZmyfZklvv937QjPNIEiQ/e9UbEgA7kPY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=D0ek71yVUs/T9Y913Lxa9sRiGPWiq14J0M5DCUmp+Ux4Q7Vd/asuNeY4gxfJ/0rN7G
	7rVfJUF5vCCpkAtDqB0UUTu2rDA2LJeNVg5IBqRdCVXTL0iv5MLhVKjyQWQul9W2MQoU
	6M0poFc4jPQfc+eW2BzahN2KyojrE2iOLoQss=
Received: by 10.42.217.196 with SMTP id hn4mr466968icb.249.1295603346492; Fri,
	21 Jan 2011 01:49:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Fri, 21 Jan 2011 01:48:46 -0800 (PST)
In-Reply-To: <AANLkTi=65w99wt1kxGLY4qEUApXdYBCg-Mj15z1cm4Ni@mail.gmail.com>
References: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>
	<AANLkTinm1j+_J_7=dsjEx=rnsOhQH1vwfKZPzPsdP7++@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED898A@orsmsx504.amr.corp.intel.com>
	<AANLkTik0yFXOtDnXQaC2z7htnF0ak8g++GhzKLaL7RJ-@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950678BE2C@orsmsx504.amr.corp.intel.com>
	<AANLkTi=65w99wt1kxGLY4qEUApXdYBCg-Mj15z1cm4Ni@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 21 Jan 2011 07:48:46 -0200
Message-ID: <AANLkTiks-wWMBvFdYnDC7-PacX62ge0oOSXa7zYqZTw0@mail.gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin Yocto Project Settings
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
X-List-Received-Date: Fri, 21 Jan 2011 09:49:07 -0000
Content-Type: multipart/alternative; boundary=20cf30549c693ccc9f049a582979

--20cf30549c693ccc9f049a582979
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jessica,

Here is the first output messages from poky-extract-sdk command:

Creating directory qemuarm
Extracting rootfs tarball using pseudo...
/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr/bin/pseudo -P
/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr tar -C "qemuarm"
-xjf "poky-4.0-build/tmp/deploy/images/poky-image-sato-qemuarm.tar.bz2"
pseudo: Couldn't open qemuarm/var/pseudo/pseudo.pid: No such file or
directory
...


And the environment-setup-armv5te-poky-linux-gnueabi file:

export
PATH=3D/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr/bin/armv5=
te-poky-linux-gnueabi:/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-p=
oky-linux-gnueabi/usr/bin/crossscripts:/home/dev/yocto/poky-4.0-build/tmp/s=
ysroots/i686-linux/usr/sbin:/home/dev/yocto/poky-4.0-build/tmp/sysroots/i68=
6-linux/usr/bin:/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/sbin=
:/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux//bin:/home/dev/yoct=
o/poky-laverne-4.0/scripts/..//bitbake//bin/:/home/dev/yocto/poky-laverne-4=
.0/scripts/..//scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/s=
bin:/bin:/usr/games:/home/dev/yocto/poky-laverne-4.0/scripts
export
PKG_CONFIG_SYSROOT_DIR=3D/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5t=
e-poky-linux-gnueabi
export
PKG_CONFIG_PATH=3D/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-poky-=
linux-gnueabi/usr/lib/pkgconfig:/home/dev/yocto/poky-4.0-build/tmp/sysroots=
/armv5te-poky-linux-gnueabi/usr/share/pkgconfig
export CONFIG_SITE=3D"/home/dev/yocto/poky-laverne-4.0/meta/site/endian-lit=
tle
/home/dev/yocto/poky-laverne-4.0/meta/site/common-glibc
/home/dev/yocto/poky-laverne-4.0/meta/site/arm-common
/home/dev/yocto/poky-laverne-4.0/meta/site/arm-linux
/home/dev/yocto/poky-laverne-4.0/meta/site/common
/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/=
share/arm-poky-linux-gnueabi_config_site.d/zlib_config
/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/=
share/arm-poky-linux-gnueabi_config_site.d/eglibc_config
"
export CC=3Darm-poky-linux-gnueabi-gcc
export CXX=3Darm-poky-linux-gnueabi-g++
export GDB=3Darm-poky-linux-gnueabi-gdb
export TARGET_PREFIX=3Darm-poky-linux-gnueabi-
export CONFIGURE_FLAGS=3D"--target=3Darm-poky-linux-gnueabi
--host=3Darm-poky-linux-gnueabi --build=3Di686-linux"
export CFLAGS=3D"-march=3Darmv5te -mtune=3Darm926ej-s"
export CXXFLAGS=3D"-march=3Darmv5te -mtune=3Darm926ej-s"
export
POKY_NATIVE_SYSROOT=3D"/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-lin=
ux"
export
POKY_TARGET_SYSROOT=3D"/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-=
poky-linux-gnueabi"





--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Fri, Jan 21, 2011 at 7:04 AM, Diego Sueiro <diego.sueiro@gmail.com>wrote=
:

> Jessica,
>
>
> On Thu, Jan 20, 2011 at 11:36 PM, Zhang, Jessica <jessica.zhang@intel.com=
>wrote:
>
>>  Diego,
>>
>> The errors that you ran into are not normal.  So can you tell me more
>> about your setup:
>> 1. how did you get your poky build tree, git clone from the latest
>> master or else way, when did you get it?
>>
>
> I'm using the poky build tree from
> http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
>
>
>> 2. I'm assuming you run "bitbake meta-ide-support" and source the
>> generated environment-setup-armv5te-poky-linux-gnueabi file
>>
>
> That's right.
>
>
>>  3. I'd expect you get these error messages from poky-extract-sdk, right=
?
>>
>
> Yes. I invoked the poky-extract-sdk inside my destination directory.
>
>
>> Thanks,
>> Jessica
>>
>>  ------------------------------
>> *From:* Diego Sueiro [mailto:diego.sueiro@gmail.com]
>> *Sent:* Thursday, January 20, 2011 4:42 PM
>>
>> *To:* Zhang, Jessica
>> *Cc:* yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Eclipse Plugin Yocto Project Settings
>>
>> Jessica,
>>
>> Thanks for the explanations.
>>
>> After sourcing environment-setup-armv5te-poky-linux-gnueabi file I get
>> lots of this message printed on the terminal:
>>
>> pseudo: Couldn't open .//var/pseudo/pseudo.pid: No such file or director=
y
>> pseudo: can't create socket: pseudo.socket (Too many open files)
>>
>> And some messages like:
>>
>>  tar: ./usr/games/inertia: Cannot change ownership to uid 0, gid 0:
>> Function not implemented
>>  tar: ./usr/games/inertia: Cannot change mode to rwxr-xr-x: Function not
>> implemented
>>
>>  Is it a normal behavior?
>>
>>
>>
>>  Rgds,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> /*long live rock 'n roll*/
>>
>>
>> On Thu, Jan 20, 2011 at 10:15 PM, Zhang, Jessica <jessica.zhang@intel.co=
m
>> > wrote:
>>
>>> environment-setup-targetarch-poky-linux
>>
>>
>>  --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>

--20cf30549c693ccc9f049a582979
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jessica,<div><br></div><div>Here is the first output messages from=A0poky-e=
xtract-sdk command:</div><div><br></div><blockquote class=3D"webkit-indent-=
blockquote" style=3D"margin: 0 0 0 40px; border: none; padding: 0px;"><div>=
<div>

Creating directory qemuarm</div></div><div><div>Extracting rootfs tarball u=
sing pseudo...</div></div><div><div>/home/dev/yocto/poky-4.0-build/tmp/sysr=
oots/i686-linux/usr/bin/pseudo -P /home/dev/yocto/poky-4.0-build/tmp/sysroo=
ts/i686-linux/usr tar -C &quot;qemuarm&quot; -xjf &quot;poky-4.0-build/tmp/=
deploy/images/poky-image-sato-qemuarm.tar.bz2&quot;</div>

</div><div><div>pseudo: Couldn&#39;t open qemuarm/var/pseudo/pseudo.pid: No=
 such file or directory</div></div><div>...</div></blockquote><div><div><br=
></div><div>And the environment-setup-armv5te-poky-linux-gnueabi file:</div=
>

<div><br></div></div><blockquote class=3D"webkit-indent-blockquote" style=
=3D"margin: 0 0 0 40px; border: none; padding: 0px;"><div><div><div>export =
PATH=3D/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr/bin/armv5=
te-poky-linux-gnueabi:/home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-p=
oky-linux-gnueabi/usr/bin/crossscripts:/home/dev/yocto/poky-4.0-build/tmp/s=
ysroots/i686-linux/usr/sbin:/home/dev/yocto/poky-4.0-build/tmp/sysroots/i68=
6-linux/usr/bin:/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/sbin=
:/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux//bin:/home/dev/yoct=
o/poky-laverne-4.0/scripts/..//bitbake//bin/:/home/dev/yocto/poky-laverne-4=
.0/scripts/..//scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/s=
bin:/bin:/usr/games:/home/dev/yocto/poky-laverne-4.0/scripts</div>

</div></div><div><div><div>export PKG_CONFIG_SYSROOT_DIR=3D/home/dev/yocto/=
poky-4.0-build/tmp/sysroots/armv5te-poky-linux-gnueabi</div></div></div><di=
v><div><div>export PKG_CONFIG_PATH=3D/home/dev/yocto/poky-4.0-build/tmp/sys=
roots/armv5te-poky-linux-gnueabi/usr/lib/pkgconfig:/home/dev/yocto/poky-4.0=
-build/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/pkgconfig</div>

</div></div><div><div><div>export CONFIG_SITE=3D&quot;/home/dev/yocto/poky-=
laverne-4.0/meta/site/endian-little /home/dev/yocto/poky-laverne-4.0/meta/s=
ite/common-glibc /home/dev/yocto/poky-laverne-4.0/meta/site/arm-common /hom=
e/dev/yocto/poky-laverne-4.0/meta/site/arm-linux /home/dev/yocto/poky-laver=
ne-4.0/meta/site/common /home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te=
-poky-linux-gnueabi/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_con=
fig /home/dev/yocto/poky-4.0-build/tmp/sysroots/armv5te-poky-linux-gnueabi/=
usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config &quot;</div>

</div></div><div><div><div>export CC=3Darm-poky-linux-gnueabi-gcc</div></di=
v></div><div><div><div>export CXX=3Darm-poky-linux-gnueabi-g++</div></div><=
/div><div><div><div>export GDB=3Darm-poky-linux-gnueabi-gdb</div></div></di=
v>

<div><div><div>export TARGET_PREFIX=3Darm-poky-linux-gnueabi-</div></div></=
div><div><div><div>export CONFIGURE_FLAGS=3D&quot;--target=3Darm-poky-linux=
-gnueabi --host=3Darm-poky-linux-gnueabi --build=3Di686-linux&quot;</div></=
div></div>

<div><div><div>export CFLAGS=3D&quot;-march=3Darmv5te -mtune=3Darm926ej-s&q=
uot;</div></div></div><div><div><div>export CXXFLAGS=3D&quot;-march=3Darmv5=
te -mtune=3Darm926ej-s&quot;</div></div></div><div><div><div>export POKY_NA=
TIVE_SYSROOT=3D&quot;/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux=
&quot;</div>

</div></div><div><div><div>export POKY_TARGET_SYSROOT=3D&quot;/home/dev/yoc=
to/poky-4.0-build/tmp/sysroots/armv5te-poky-linux-gnueabi&quot;</div></div>=
</div></blockquote><div><div><br></div><div><br></div><div><br></div><div>

<br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<b=
r>
<br><br><div class=3D"gmail_quote">On Fri, Jan 21, 2011 at 7:04 AM, Diego S=
ueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com">diego=
.sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

Jessica,<div><br></div><div><br><div class=3D"gmail_quote"><div class=3D"im=
">On Thu, Jan 20, 2011 at 11:36 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@in=
tel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">




<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Diego,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">The errors that you ran into are not normal.=A0 So can you=20
tell me more about your setup:</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">1. how did you get your poky build tree, git clone from the=20
latest master=A0or else way, when did you get it?</font></span></div></div>=
</blockquote><div><br></div></div><div>I&#39;m using the poky build tree fr=
om=A0<span style=3D"font-family:monospace;font-size:medium;color:rgb(51, 51=
, 51);white-space:pre-wrap"><a href=3D"http://www.yoctoproject.org/download=
s/poky/poky-laverne-4.0.tar.bz2" target=3D"_blank">http://www.yoctoproject.=
org/downloads/poky/poky-laverne-4.0.tar.bz2</a></span></div>

<div class=3D"im">
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">2. I&#39;m assuming you run &quot;bitbake meta-ide-support&quo=
t; and source=20
the generated environment-setup-armv5te-poky-linux-gnueabi=20
file</font></span></div></div></blockquote><div><br></div></div><div>That&#=
39;s right.</div><div class=3D"im"><div>=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">3. I&#39;d expect you get these error messages from=20
poky-extract-sdk, right?</font></span></div></div></blockquote><div><br></d=
iv></div><div>Yes. I invoked the poky-extract-sdk inside my destination dir=
ectory.=A0</div><div><div></div><div class=3D"h5"><div><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">


<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Thanks,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Jessica</font></span></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font size=3D"2" face=3D"Tahoma"><div><b>From:</b> Diego Sueiro=20
[mailto:<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.s=
ueiro@gmail.com</a>] <br></div><b>Sent:</b> Thursday, January 20, 2011 4:42=
=20
PM<div><br><b>To:</b> Zhang, Jessica<br><b>Cc:</b>=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> Re: [yocto] Eclipse Plugin Yocto=20
Project Settings<br></div></font><br></div><div><div></div><div>
<div></div>Jessica,
<div><br></div>
<div>Thanks for the explanations.</div>
<div><br></div>
<div>After sourcing=A0environment-setup-armv5te-poky-linux-gnueabi file I g=
et=20
lots of this message printed on the terminal:</div>
<blockquote style=3D"border-bottom:medium none;border-left:medium none;padd=
ing-bottom:0px;margin:0px 0px 0px 40px;padding-left:0px;padding-right:0px;b=
order-top:medium none;border-right:medium none;padding-top:0px">
  <div>pseudo: Couldn&#39;t open .//var/pseudo/pseudo.pid: No such file or=
=20
  directory</div>
  <div>pseudo: can&#39;t create socket: pseudo.socket (Too many open=20
files)</div></blockquote>And some messages like:
<blockquote style=3D"border-bottom:medium none;border-left:medium none;padd=
ing-bottom:0px;margin:0px 0px 0px 40px;padding-left:0px;padding-right:0px;b=
order-top:medium none;border-right:medium none;padding-top:0px">
  <div>
  <div>tar: ./usr/games/inertia: Cannot change ownership to uid 0, gid 0:=
=20
  Function not implemented</div></div>
  <div>
  <div>tar: ./usr/games/inertia: Cannot change mode to rwxr-xr-x: Function =
not=20
  implemented</div></div>
  <div><br></div></blockquote>
<div>
<div>Is it a normal behavior?</div>
<div><br></div>
<div><br></div>
<div><br></div>
<div>
<div>Rgds,</div>
<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n=20
roll*/<br><br><br>
<div class=3D"gmail_quote">On Thu, Jan 20, 2011 at 10:15 PM, Zhang, Jessica=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D=
"_blank">jessica.zhang@intel.com</a>&gt;</span>=20
wrote:<br>
<blockquote style=3D"border-left:#ccc 1px solid;margin:0px 0px 0px 0.8ex;pa=
dding-left:1ex" class=3D"gmail_quote"><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">environment-setup-targetarch-poky-linux</font></blockquote></d=
iv><br>


</div></div></div></div></div>
</blockquote></div></div></div><div><div></div><div class=3D"h5"><div>--</d=
iv><div>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div>=
</div></div></div>
</blockquote></div><br></div>

--20cf30549c693ccc9f049a582979--
