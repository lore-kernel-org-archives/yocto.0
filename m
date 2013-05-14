Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A285E014FD
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 05:19:59 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id m17so442460vca.17
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 05:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=UBJf4iRTeUvm7fapezQHW9NWzem5eycwIh3Q+v/FiXw=;
	b=DqiKrrgDewbI9uUNrCIsz6t74FAF7yO4gzezvsUBp1qE/QYbuwRxodsxLNWTCmwY4p
	ZEVQAwc23edQ2XyXXduKH5HyRq8PRMrzCVC6nn9v2FTQan1kGUB0Xhfo56Gp8U9jyytm
	md8qiXMwPT/XWPN4XW+OARJT3h5l8f41LxJQvaAUEP1eCXt0n10X/gPvcw+FuEm7/grR
	FhSOk65X0E688zm0uxEnU8l/lTt8araOsIUaxTIKKc+UZ9mxtIM9psw0PKL7d2stt+Aa
	xMpFlXJ4HpvaW4dA/NidkswuHOUVjJjYdQu002zzR48NDQRKmTOr+cAWG7rF9UcYr+JA
	XHcw==
MIME-Version: 1.0
X-Received: by 10.52.70.8 with SMTP id i8mr18004197vdu.126.1368533998141; Tue,
	14 May 2013 05:19:58 -0700 (PDT)
Received: by 10.52.116.194 with HTTP; Tue, 14 May 2013 05:19:58 -0700 (PDT)
In-Reply-To: <7913150.opP2ggRnDV@helios>
References: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
	<7913150.opP2ggRnDV@helios>
Date: Tue, 14 May 2013 14:19:58 +0200
Message-ID: <CAFMfyzJZ-wkapqHxYSW_Xvapa_V7-VOmKj5tJ806pYO4GD5L9g@mail.gmail.com>
From: Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailman-Approved-At: Tue, 14 May 2013 08:02:53 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lmsensors
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
X-List-Received-Date: Tue, 14 May 2013 12:19:59 -0000
Content-Type: multipart/alternative; boundary=20cf307d0528d3fbca04dcaca6ed

--20cf307d0528d3fbca04dcaca6ed
Content-Type: text/plain; charset=ISO-8859-1

Gentlemen, that actually worked...... Hurray.... Have a wonderful day guys
:-)


On Tue, May 14, 2013 at 12:44 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 14 May 2013 11:21:49 Satya Swaroop Damarla wrote:
> > It has been a month I have been fighting with installing the package
> > "lmsensors" and had no success till today.... I would really appreciate
> > much help....
> >
> > The background goes like this..
> >
> > *bitbake lmsensors * works perfectly but when I add the package into the
> > rootfs I get the following error
> >
> > * Package lmsensors-config is not available, but is referred to by
> another
> > package.*
> > *| This may mean that the package is missing, has been obsoleted, or*
> > *| is only available from another source*
> > *| *
> > *| Package lmsensors is not available, but is referred to by another
> > package.*
> > *| This may mean that the package is missing, has been obsoleted, or*
> > *| is only available from another source*
> > *| *
> > *| E: Package 'lmsensors-config' has no installation candidate*
> > *| E: Package 'lmsensors' has no installation candidate*
> > *| ERROR: Function failed: do_rootfs (see
> >
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-l
> > inux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.29976 for
> further
> > information)*
> > *ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/
> > core-image-skidata.bb, do_rootfs) failed with exit code '1'*
> > *NOTE: Tasks Summary: Attempted 5210 tasks of which 4529 didn't need to
> be
> > rerun and 1 failed.*
> > *No currently running tasks (5210 of 5211)*
> > *
> > *
> > *Summary: 1 task failed:*
> > *  /home/damarla/yocto/poky/meta/recipes-graphics/images/
> > core-image-skidata.bb, do_rootfs*
> > *Summary: There was 1 WARNING message shown.*
> > *Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.*
>
> Looking at the output of building the current lmsensors recipe in meta-oe
> master, the main "lmsensors" package is actually empty and thus is not
> produced; this is a bit annoying and should probably be fixed. However
> what I
> think you're supposed to do is instead install the components of lmsensors
> that you actually need. If you look at packages-split in the lmsensors work
> directory (or the lmsensors* packages in tmp/deploy/ipk) you'll see it
> produces the following, ignoring dbg/dev/doc/staticdev packages:
>
> lmsensors-fancontrol
> lmsensors-libsensors
> lmsensors-pwmconfig
> lmsensors-sensord
> lmsensors-sensors
> lmsensors-sensorsconfconvert
> lmsensors-sensorsdetect
>
> So I would suggest adding those of the above list that you need to your
> image
> instead of "lmsensors".
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--20cf307d0528d3fbca04dcaca6ed
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Gentlemen, that actually worked...... Hurray.... Have a wo=
nderful day guys :-)</div><div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Tue, May 14, 2013 at 12:44 PM, Paul Eggleton <span dir=3D"l=
tr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">=
paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 14 May 2013 11:=
21:49 Satya Swaroop Damarla wrote:<br>
&gt; It has been a month I have been fighting with installing the package<b=
r>
&gt; &quot;lmsensors&quot; and had no success till today.... I would really=
 appreciate<br>
&gt; much help....<br>
&gt;<br>
&gt; The background goes like this..<br>
&gt;<br>
</div>&gt; *bitbake lmsensors * works perfectly but when I add the package =
into the<br>
<div class=3D"im">&gt; rootfs I get the following error<br>
&gt;<br>
</div>&gt; * Package lmsensors-config is not available, but is referred to =
by another<br>
&gt; package.*<br>
&gt; *| This may mean that the package is missing, has been obsoleted, or*<=
br>
&gt; *| is only available from another source*<br>
&gt; *| *<br>
&gt; *| Package lmsensors is not available, but is referred to by another<b=
r>
&gt; package.*<br>
&gt; *| This may mean that the package is missing, has been obsoleted, or*<=
br>
&gt; *| is only available from another source*<br>
&gt; *| *<br>
&gt; *| E: Package &#39;lmsensors-config&#39; has no installation candidate=
*<br>
&gt; *| E: Package &#39;lmsensors&#39; has no installation candidate*<br>
&gt; *| ERROR: Function failed: do_rootfs (see<br>
&gt; /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-=
poky-l<br>
&gt; inux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.29976 for fu=
rther<br>
&gt; information)*<br>
&gt; *ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/=
<br>
&gt; <a href=3D"http://core-image-skidata.bb" target=3D"_blank">core-image-=
skidata.bb</a>, do_rootfs) failed with exit code &#39;1&#39;*<br>
&gt; *NOTE: Tasks Summary: Attempted 5210 tasks of which 4529 didn&#39;t ne=
ed to be<br>
&gt; rerun and 1 failed.*<br>
&gt; *No currently running tasks (5210 of 5211)*<br>
&gt; *<br>
&gt; *<br>
&gt; *Summary: 1 task failed:*<br>
&gt; * =A0/home/damarla/yocto/poky/meta/recipes-graphics/images/<br>
&gt; <a href=3D"http://core-image-skidata.bb" target=3D"_blank">core-image-=
skidata.bb</a>, do_rootfs*<br>
&gt; *Summary: There was 1 WARNING message shown.*<br>
&gt; *Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.*<br>
<br>
Looking at the output of building the current lmsensors recipe in meta-oe<b=
r>
master, the main &quot;lmsensors&quot; package is actually empty and thus i=
s not<br>
produced; this is a bit annoying and should probably be fixed. However what=
 I<br>
think you&#39;re supposed to do is instead install the components of lmsens=
ors<br>
that you actually need. If you look at packages-split in the lmsensors work=
<br>
directory (or the lmsensors* packages in tmp/deploy/ipk) you&#39;ll see it<=
br>
produces the following, ignoring dbg/dev/doc/staticdev packages:<br>
<br>
lmsensors-fancontrol<br>
lmsensors-libsensors<br>
lmsensors-pwmconfig<br>
lmsensors-sensord<br>
lmsensors-sensors<br>
lmsensors-sensorsconfconvert<br>
lmsensors-sensorsdetect<br>
<br>
So I would suggest adding those of the above list that you need to your ima=
ge<br>
instead of &quot;lmsensors&quot;.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--20cf307d0528d3fbca04dcaca6ed--
