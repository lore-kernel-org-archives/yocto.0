Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E50FDE00429
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 23:36:46 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id u10so1241421lbi.2
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 23:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=g7eS475f/8w+Of7U91/ebffH20BGh0PUG/3w+5E/zyw=;
	b=BAku3gARZYMhOd01HhMaxZXWPyG1Dq+z1VT+tH5VuVZGkJcnJwGPWBXMreo6q5nRls
	1uhipuyCR5i9BO3OR7MVo6YbEr0wf+Z84myD2G0e9MTqs6tHP44WGBJESgVM0U5CGoGZ
	SBN28J+/lWNQqVCwUeyTCBc2r+9QVkXOGDwd9yXw8lqER42Slx6KiG07JCxlnbBUxjwv
	PgLnN+atpPzooniLoZ7kellaer3hUFV1UktXTnFIdZcmLz65OIr4cA0fHj55c/ozU8u8
	zP9YRt2L2/3VNkGtrdn/2J32cm8mDW1VgLBxuuNegOTwO1iPYOaNfTyM+qE/3admcSkI
	1GJQ==
MIME-Version: 1.0
X-Received: by 10.112.164.65 with SMTP id yo1mr3784611lbb.107.1367563005802;
	Thu, 02 May 2013 23:36:45 -0700 (PDT)
Received: by 10.114.1.46 with HTTP; Thu, 2 May 2013 23:36:45 -0700 (PDT)
In-Reply-To: <1370035.2iCAacKgHz@helios>
References: <5181AF9F.8040702@gmail.com>
	<1370035.2iCAacKgHz@helios>
Date: Fri, 3 May 2013 12:06:45 +0530
Message-ID: <CAE_REAsbEPTn_x6bwJgUe2sXci_KEwCJA+E4R9Lx6QFwO4-nDw@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bash specific syntax in bbclass files
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
X-List-Received-Date: Fri, 03 May 2013 06:36:47 -0000
Content-Type: multipart/alternative; boundary=001a11c3484c2b3e0904dbca9396

--001a11c3484c2b3e0904dbca9396
Content-Type: text/plain; charset=ISO-8859-1

I usually do following before starting Yocto on Ubuntu:
--
# dpkg-reconfigure dash
and select "NO" on the prompt
--

The above will at least make bash as default shell.

//Gaurang Shastri


On Thu, May 2, 2013 at 1:37 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Wednesday 01 May 2013 19:13:19 seth bollinger wrote:
> > I recently ran into a problem in
> > meta-raspberrypi/classes/sdcard_image-rpi.bbclass
> >
> > The following was run through my default debian dash shell (I thought I
> > switched a while back, but I must have reverted my VM image or
> > something...).
> >
> >    # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
> >    if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
> >    then
> >
> > The bash specific syntax ([[) failed in dash causing the "else" path to
> > be traversed instead of the correct "then" path.  The failure was silent
> > and resulted in a blind copy of a compressed rootfs to the sdcard
> > image.  Of course this didn't run.  :)
> >
> > 1.  Is there particular shell syntax that class files should stick too?
>
> No bashisms should be used, so the above should really be changed.
>
> > 2.  I couldn't find a wildcard string search in dash.  Can anyone
> > suggest a more shell agnostic way to do this?
>
> AFAIK grep or awk is the only way.
>
> > 3.  Is there a way to guarantee we're running in bash if we're using
> > bash specific syntax?
>
> Not that I'm aware of.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c3484c2b3e0904dbca9396
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I usually do following before starting Yoct=
o on Ubuntu:<br>--<br># dpkg-reconfigure dash <br></div>and select &quot;NO=
&quot; on the prompt<br>--<br><br></div>The above will at least make bash a=
s default shell.<br>
<br></div>//Gaurang Shastri<br></div><div class=3D"gmail_extra"><br><br><di=
v class=3D"gmail_quote">On Thu, May 2, 2013 at 1:37 PM, Paul Eggleton <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D=
"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 01 May 2013 1=
9:13:19 seth bollinger wrote:<br>
&gt; I recently ran into a problem in<br>
&gt; meta-raspberrypi/classes/sdcard_image-rpi.bbclass<br>
&gt;<br>
&gt; The following was run through my default debian dash shell (I thought =
I<br>
&gt; switched a while back, but I must have reverted my VM image or<br>
&gt; something...).<br>
&gt;<br>
&gt; =A0 =A0# If SDIMG_ROOTFS_TYPE is a .xz file use xzcat<br>
&gt; =A0 =A0if [[ &quot;$SDIMG_ROOTFS_TYPE&quot; =3D=3D *.xz ]]<br>
&gt; =A0 =A0then<br>
&gt;<br>
&gt; The bash specific syntax ([[) failed in dash causing the &quot;else&qu=
ot; path to<br>
&gt; be traversed instead of the correct &quot;then&quot; path. =A0The fail=
ure was silent<br>
&gt; and resulted in a blind copy of a compressed rootfs to the sdcard<br>
&gt; image. =A0Of course this didn&#39;t run. =A0:)<br>
&gt;<br>
&gt; 1. =A0Is there particular shell syntax that class files should stick t=
oo?<br>
<br>
</div>No bashisms should be used, so the above should really be changed.<br=
>
<div class=3D"im"><br>
&gt; 2. =A0I couldn&#39;t find a wildcard string search in dash. =A0Can any=
one<br>
&gt; suggest a more shell agnostic way to do this?<br>
<br>
</div>AFAIK grep or awk is the only way.<br>
<div class=3D"im"><br>
&gt; 3. =A0Is there a way to guarantee we&#39;re running in bash if we&#39;=
re using<br>
&gt; bash specific syntax?<br>
<br>
</div>Not that I&#39;m aware of.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">_____________________=
__________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a11c3484c2b3e0904dbca9396--
