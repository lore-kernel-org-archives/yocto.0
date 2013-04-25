Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1479AE0054B
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 08:25:08 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id x43so2673026wey.25
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 08:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=wWAHf6MhaEbVaw5ShBwfF6hnlrjp89xAy8MExC6pa4M=;
	b=012V4Frcg220mxyhEWwjI367MGJNDIF/4fVpThEbubfz2RTPMBODU6k3sSoyADLRdF
	IZnnX3aYHo/nlDoA8zg906Fnf1T5TC7v6tIGksHs9wmDe7GSkpxa5y4JqWYnBxLIijSX
	0Nq8a8C15szVYhBgNaO/SLxwmKBWOsxEe+pTW3MXxeJJjxRurl2LveyLAoW00MlLCR2e
	YyPtfysEeQFP9pEAr/1wOyyFZhR2eEDwm0mwoKUNZ3ZCtmuP3DST4c9jChSrFl3rIjeZ
	ErCdGGwkngphXz9YmKf4O2kWiFwxMJoU4YHWXs8908cSKdp3z8nkKoAg5E8ohnbsm4m4
	U/GQ==
X-Received: by 10.194.219.162 with SMTP id pp2mr76633620wjc.27.1366903507343; 
	Thu, 25 Apr 2013 08:25:07 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 10.194.37.233 with HTTP; Thu, 25 Apr 2013 08:24:47 -0700 (PDT)
In-Reply-To: <20130425142741.GH5538@jama.dyndns-home.com>
References: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
	<20130425142741.GH5538@jama.dyndns-home.com>
From: Jon Szymaniak <jon.szymaniak+gpg@gmail.com>
Date: Thu, 25 Apr 2013 11:24:47 -0400
X-Google-Sender-Auth: L5SrqogGZjj4G18jDTd5k2q72Uc
Message-ID: <CANge7vW1GpgFfHYL9RHL8KBAKd=Sw_Vp3VbdROGrydDZWSsm+A@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>, ross.burton@intel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Thu, 25 Apr 2013 15:25:09 -0000
Content-Type: multipart/alternative; boundary=001a11c1b9a8ff626204db3105bb

--001a11c1b9a8ff626204db3105bb
Content-Type: text/plain; charset=ISO-8859-1

Ross and Martin -- thanks for your quick responses.

I failed to mention that I wanted both the ${PV} and ${PR} for packages, so
unfortunately the *-pkgs.txt files won't suffice.

Is there a particular reason why these files don't contain this
information? I haven't looked into where these are generated, but would
including ${PV} and ${PR} in these be a welcome patch?

Looking at the buildhistory wiki page [1], I see this certainly provides
what I need, and a whole lot more.

[1] https://wiki.yoctoproject.org/wiki/Buildhistory

Thanks again,
Jon



On Thu, Apr 25, 2013 at 10:27 AM, Martin Jansa <martin.jansa@gmail.com>wrote:

> On Thu, Apr 25, 2013 at 10:10:31AM -0400, Jon Szymaniak wrote:
> > Hi all,
> >
> > I generally like to keep a little manifest file with my rootfs images,
> > containing a list of installed packages and their associated versions.
>  On
> > images where I keep package data around, I usually generate this via
> 'opkg
> > list'.
> >
> > In my current situation, I have a small read-only image where I can't
> > afford to ship pkg data, and wanted to gather this info on the host side
> of
> > things.  I assume this information is tracked somewhere in the poky build
> > directory, but I'm having some trouble finding it.
> >
> > Could someone kindly point me towards this information or the
> documentation
> > section(s) that I may have overlooked.
>
> buildhistory is what you're looking for
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>



-- 
--
Jon Szymaniak <jon.szymaniak+gpg@gmail.com>

OpenPGP Key Hosted at the following keyservers:
http://keyserver.ubuntu.com/
http://pgp.mit.edu/

--001a11c1b9a8ff626204db3105bb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Ross and Martin -- thanks for your quick respons=
es.<br><br></div>I failed to mention that I wanted both the ${PV} and ${PR}=
 for packages, so unfortunately the *-pkgs.txt files won&#39;t suffice. <br=
>

<br>Is there a particular reason why these files don&#39;t contain this inf=
ormation? I haven&#39;t looked into where these are generated, but would in=
cluding ${PV} and ${PR} in these be a welcome patch?<br><br>Looking at the =
buildhistory wiki page [1], I see this certainly provides what I need, and =
a whole lot more.<br>

<br>[1] <a href=3D"https://wiki.yoctoproject.org/wiki/Buildhistory">https:/=
/wiki.yoctoproject.org/wiki/Buildhistory</a><br><br></div>Thanks again,<br>=
Jon<br><div><br></div></div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">

On Thu, Apr 25, 2013 at 10:27 AM, Martin Jansa <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">On Thu, Apr 25, 2013 at 10:10:31AM =
-0400, Jon Szymaniak wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I generally like to keep a little manifest file with my rootfs images,=
<br>
&gt; containing a list of installed packages and their associated versions.=
 =A0On<br>
&gt; images where I keep package data around, I usually generate this via &=
#39;opkg<br>
&gt; list&#39;.<br>
&gt;<br>
&gt; In my current situation, I have a small read-only image where I can&#3=
9;t<br>
&gt; afford to ship pkg data, and wanted to gather this info on the host si=
de of<br>
&gt; things. =A0I assume this information is tracked somewhere in the poky =
build<br>
&gt; directory, but I&#39;m having some trouble finding it.<br>
&gt;<br>
&gt; Could someone kindly point me towards this information or the document=
ation<br>
&gt; section(s) that I may have overlooked.<br>
<br>
</div></div>buildhistory is what you&#39;re looking for<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=
=3D"ltr"><div><div><font face=3D"courier new,monospace">--<br></font></div>=
<font face=3D"courier new,monospace">Jon Szymaniak &lt;<a href=3D"mailto:jo=
n.szymaniak%2Bgpg@gmail.com" target=3D"_blank">jon.szymaniak+gpg@gmail.com<=
/a>&gt;<br>

</font></div><font face=3D"courier new,monospace"><br>OpenPGP Key Hosted at=
 the following keyservers:<br><a href=3D"http://keyserver.ubuntu.com/" targ=
et=3D"_blank">http://keyserver.ubuntu.com/</a> <br><a href=3D"http://pgp.mi=
t.edu/" target=3D"_blank">http://pgp.mit.edu/</a> <br>

</font></div>
</div>

--001a11c1b9a8ff626204db3105bb--
