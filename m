Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B96E4C81065
	for <yocto@yoctoproject.org>; Fri, 21 Jan 2011 03:05:08 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so1597938iyb.35
	for <yocto@yoctoproject.org>; Fri, 21 Jan 2011 01:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4SkMkBrLYm2o1D/6VLQs5wlsfRlZ1q7RvSB1mUQkT18=;
	b=slDEcwQ5q1XXCIiy/6WS0GmOGqm2IEmIjxVzIdtkWghR+C2nk7GlElSbDzeE2DSja/
	K5rSBXWZVK8Rg/a0v3b4S+HocVWjiAym1AalnaqDA8VncPBt4R8c9kvpXUkYfsbnzjMy
	N75M5tRfjQXp7HamtQnHxfPERf+KofAGiqz5M=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=rokYWyiYZG+aQUKfrNBDc3F1clfLshbQuR5MQwwUZdVuBrMeb1iUBTTVyRuuiX2q5m
	AtCMJ3ai+lFinpVPLHGCZ3AnJwvt3SE1OWkQn8S1+qiFzbQ+jNDz0v3GfkES6RMabAa1
	uPvkGMd773m8m80sT4pzRnDZNy/AIVgCaR0vU=
Received: by 10.42.176.2 with SMTP id bc2mr380507icb.517.1295600707407; Fri,
	21 Jan 2011 01:05:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Fri, 21 Jan 2011 01:04:47 -0800 (PST)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950678BE2C@orsmsx504.amr.corp.intel.com>
References: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>
	<AANLkTinm1j+_J_7=dsjEx=rnsOhQH1vwfKZPzPsdP7++@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED898A@orsmsx504.amr.corp.intel.com>
	<AANLkTik0yFXOtDnXQaC2z7htnF0ak8g++GhzKLaL7RJ-@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950678BE2C@orsmsx504.amr.corp.intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 21 Jan 2011 07:04:47 -0200
Message-ID: <AANLkTi=65w99wt1kxGLY4qEUApXdYBCg-Mj15z1cm4Ni@mail.gmail.com>
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
X-List-Received-Date: Fri, 21 Jan 2011 09:05:08 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e887eef8d90049a578bae

--90e6ba6e887eef8d90049a578bae
Content-Type: text/plain; charset=ISO-8859-1

Jessica,


On Thu, Jan 20, 2011 at 11:36 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  Diego,
>
> The errors that you ran into are not normal.  So can you tell me more about
> your setup:
> 1. how did you get your poky build tree, git clone from the latest
> master or else way, when did you get it?
>

I'm using the poky build tree from
http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2


> 2. I'm assuming you run "bitbake meta-ide-support" and source the generated
> environment-setup-armv5te-poky-linux-gnueabi file
>

That's right.


> 3. I'd expect you get these error messages from poky-extract-sdk, right?
>

Yes. I invoked the poky-extract-sdk inside my destination directory.


> Thanks,
> Jessica
>
>  ------------------------------
> *From:* Diego Sueiro [mailto:diego.sueiro@gmail.com]
> *Sent:* Thursday, January 20, 2011 4:42 PM
>
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Eclipse Plugin Yocto Project Settings
>
> Jessica,
>
> Thanks for the explanations.
>
> After sourcing environment-setup-armv5te-poky-linux-gnueabi file I get lots
> of this message printed on the terminal:
>
> pseudo: Couldn't open .//var/pseudo/pseudo.pid: No such file or directory
> pseudo: can't create socket: pseudo.socket (Too many open files)
>
> And some messages like:
>
>  tar: ./usr/games/inertia: Cannot change ownership to uid 0, gid 0:
> Function not implemented
>  tar: ./usr/games/inertia: Cannot change mode to rwxr-xr-x: Function not
> implemented
>
>  Is it a normal behavior?
>
>
>
>  Rgds,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> On Thu, Jan 20, 2011 at 10:15 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:
>
>> environment-setup-targetarch-poky-linux
>
>
>  --
*dS
Diego Sueiro

/*long live rock 'n roll*/

--90e6ba6e887eef8d90049a578bae
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jessica,<div><br></div><div><br><div class=3D"gmail_quote">On Thu, Jan 20, =
2011 at 11:36 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:je=
ssica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex;">





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
</blockquote><div><br></div><div>I&#39;m using the poky build tree from=A0<=
span class=3D"Apple-style-span" style=3D"font-family: monospace; font-size:=
 medium; color: rgb(51, 51, 51); white-space: pre; "><a href=3D"http://www.=
yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2">http://www.yoctop=
roject.org/downloads/poky/poky-laverne-4.0.tar.bz2</a></span></div>

<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><d=
iv>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex;"><div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">2. I&#39;m assuming you run &quot;bitbake meta-ide-support&quo=
t; and source=20
the generated environment-setup-armv5te-poky-linux-gnueabi=20
file</font></span></div></div></blockquote><div><br></div><div>That&#39;s r=
ight.</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"><div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">3. I&#39;d expect you get these error messages from=20
poky-extract-sdk, right?</font></span></div></div></blockquote><div><br></d=
iv><div>Yes. I invoked the poky-extract-sdk inside my destination directory=
.=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Thanks,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Jessica</font></span></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font size=3D"2" face=3D"Tahoma"><div class=3D"im"><b>From:</b> Diego Sueir=
o=20
[mailto:<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.s=
ueiro@gmail.com</a>] <br></div><b>Sent:</b> Thursday, January 20, 2011 4:42=
=20
PM<div class=3D"im"><br><b>To:</b> Zhang, Jessica<br><b>Cc:</b>=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> Re: [yocto] Eclipse Plugin Yocto=20
Project Settings<br></div></font><br></div><div><div></div><div class=3D"h5=
">
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
</blockquote></div><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"><div>--</div><div>*dS<br>Diego Sueiro<br><br>/*long live r=
ock &#39;n roll*/<br></div></div>

--90e6ba6e887eef8d90049a578bae--
