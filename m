Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A25834C81103;
	Sat, 22 Jan 2011 04:09:55 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so2737563iwn.35
	for <multiple recipients>; Sat, 22 Jan 2011 02:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Xtu83YeHU9De/CrYIHsOFut7Fj8g59zpbJI3p+TSjZw=;
	b=WTVrLTtfTEeKdMkf+Elnq3J4Z69jPo639N2gUtIEmXr8ByyJ7yBk7IFn9O6BO89ru9
	kSV4UKt4c+WRgqBwn7vDX6l1rxkgZe18fvP/r7iNO7yk1TAMmoFdi7uppiiicoPvBJII
	cb0qA6Bdb1C5cUGWv8dijzEyUenShLX0C4cNg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=hA8+25siyktJFh911+Vm4Z52Ga73G6b5m7tcJBuHw2fYcscCTSsj2ktDCVAn/a239r
	a8xgzbzh9t8uaXTW2JwtzpliBvcSye0dEyFwBDLsYJK7BshH2rWqHHaoXxP2uz0fUhp7
	rUZjaWpurUZO0jHlzo3ft+xsRkeDPN6cMdXFg=
Received: by 10.42.217.196 with SMTP id hn4mr2080845icb.249.1295690995177;
	Sat, 22 Jan 2011 02:09:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Sat, 22 Jan 2011 02:09:34 -0800 (PST)
In-Reply-To: <4D39CEF5.2020006@intel.com>
References: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>
	<AANLkTinm1j+_J_7=dsjEx=rnsOhQH1vwfKZPzPsdP7++@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED898A@orsmsx504.amr.corp.intel.com>
	<AANLkTik0yFXOtDnXQaC2z7htnF0ak8g++GhzKLaL7RJ-@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950678BE2C@orsmsx504.amr.corp.intel.com>
	<AANLkTi=65w99wt1kxGLY4qEUApXdYBCg-Mj15z1cm4Ni@mail.gmail.com>
	<AANLkTiks-wWMBvFdYnDC7-PacX62ge0oOSXa7zYqZTw0@mail.gmail.com>
	<4D39CEF5.2020006@intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sat, 22 Jan 2011 08:09:34 -0200
Message-ID: <AANLkTinMHennAXugZC3Pes5jw=Hk0HA1L23o4sKf3P0Z@mail.gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: yocto@yoctoproject.org, "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Sat, 22 Jan 2011 10:09:55 -0000
Content-Type: multipart/alternative; boundary=20cf30549c69819a94049a6c9194

--20cf30549c69819a94049a6c9194
Content-Type: text/plain; charset=ISO-8859-1

It worked. :-D

Thanks Jessica and Scott.

Now I'm going to try to put arm920t support on qemu.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Fri, Jan 21, 2011 at 4:22 PM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 01/21/2011 01:48 AM, Diego Sueiro wrote:
>
>> Jessica,
>>
>> Here is the first output messages from poky-extract-sdk command:
>>
>>    Creating directory qemuarm
>>    Extracting rootfs tarball using pseudo...
>>    /home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr/bin/pseudo
>> -P
>>    /home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr tar -C
>>    "qemuarm" -xjf
>>    "poky-4.0-build/tmp/deploy/images/poky-image-sato-qemuarm.tar.bz2"
>>    pseudo: Couldn't open qemuarm/var/pseudo/pseudo.pid: No such file or
>>    directory
>>
>
> Thanks Diego for this information. You've uncovered a bug which I've just
> filed:
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=670
>
> ...and hope to have fixed by the end of today in Poky master (and queued
> for inclusion in the Laverne point-release coming up).
>
> As a workaround, you should be able to use a full pathname when specifying
> the installation directory to the poky-extract-sdk script. Relative paths
> are broken.
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf30549c69819a94049a6c9194
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

It worked. :-D<div><br></div><div>Thanks Jessica and Scott.</div><div><br><=
/div><div>Now I&#39;m going to try to put arm920t support on qemu.</div><di=
v><br></div><div><br clear=3D"all"><div>Regards,</div><div><br></div>--<br>

*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Fri, Jan 21, 2011 at 4:22 PM, Scott G=
arman <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.a.garman@intel.com">sco=
tt.a.garman@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x;">

<div class=3D"im">On 01/21/2011 01:48 AM, Diego Sueiro wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Jessica,<br>
<br>
Here is the first output messages from poky-extract-sdk command:<br>
<br>
 =A0 =A0Creating directory qemuarm<br>
 =A0 =A0Extracting rootfs tarball using pseudo...<br>
 =A0 =A0/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr/bin/pseu=
do -P<br>
 =A0 =A0/home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr tar -C<b=
r>
 =A0 =A0&quot;qemuarm&quot; -xjf<br>
 =A0 =A0&quot;poky-4.0-build/tmp/deploy/images/poky-image-sato-qemuarm.tar.=
bz2&quot;<br>
 =A0 =A0pseudo: Couldn&#39;t open qemuarm/var/pseudo/pseudo.pid: No such fi=
le or<br>
 =A0 =A0directory<br>
</blockquote>
<br></div>
Thanks Diego for this information. You&#39;ve uncovered a bug which I&#39;v=
e just filed:<br>
<br>
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D670" target=3D"_=
blank">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D670</a><br>
<br>
...and hope to have fixed by the end of today in Poky master (and queued fo=
r inclusion in the Laverne point-release coming up).<br>
<br>
As a workaround, you should be able to use a full pathname when specifying =
the installation directory to the poky-extract-sdk script. Relative paths a=
re broken.<br>
<br>
Scott<br><font color=3D"#888888">
<br>
-- <br>
Scott Garman<br>
Embedded Linux Distro Engineer - Yocto Project<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></blockquote></div><br></div>

--20cf30549c69819a94049a6c9194--
