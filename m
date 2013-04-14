Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15D8FE0146B
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 19:51:55 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id r16so1699665ead.20
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 19:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=fxGKp8y81wTw3iaUBgcgnuGr9hI6m3/q+T7xrbA+D00=;
	b=DkpAEuloG/BSEOZCfMVEi8zc4k9gKndyH6Wf3xpnJpHI5ymJkLv+7go5XpJGU2Sjfc
	ooD1ltkMminuo+HDZyPT0QbBUQXekTVkyVzR4F3Le/UVOSL39Du9bVvbymuPED/7dP00
	4q0D2wepENH/1pjgiB/jdOIy3bwDncgUD29MU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=fxGKp8y81wTw3iaUBgcgnuGr9hI6m3/q+T7xrbA+D00=;
	b=WDs1eSKkkyqv/sinIG/ZRtqtbjMXmaa00yEiUddO/Ltj7+7Zy1agsomg6jKpQLL1Fz
	j6Q5+IgZb7OdM0ltyVfG6wBfxT9RdpeE24VP8CQ0e3Go61CkBpXFwTqwgBGqczx8NjUL
	IJ5qQo/AmiGS0mTGrygRLHhsq9l95gTMcdd4I59ZO4Tul/+0C0eOGVncdSj8R3VPwbHf
	ZsXLYbthE4+l+iKAlV9nDCuC2cM1CVxKV5T9lTiSCHTOFTZKP8CF+ed225/0lM5srOJT
	YUMahEg7ep1hoDvKRh4YcneR3hm3croge2gQc+1fO2XRGt3R8bjC0tdyXU8gNFEHuf2z
	oiJw==
MIME-Version: 1.0
X-Received: by 10.15.102.3 with SMTP id bq3mr45535363eeb.42.1365907914597;
	Sat, 13 Apr 2013 19:51:54 -0700 (PDT)
Received: by 10.223.198.193 with HTTP; Sat, 13 Apr 2013 19:51:54 -0700 (PDT)
Received: by 10.223.198.193 with HTTP; Sat, 13 Apr 2013 19:51:54 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304131641370.4170@oneiric>
References: <alpine.DEB.2.02.1304131641370.4170@oneiric>
Date: Sat, 13 Apr 2013 19:51:54 -0700
Message-ID: <CA+gsK-opLDSfNF-oXFG22XMjW7Q6+PJq1PUFe3MACO+UAjfQqA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQkLXu6mjwLgZJcBFIYJ7cqJnGvlnckpwQGIWmUbHHjIWuo/Rc+rczU0yOw70PxPepKwMDiY
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: potentially confusing explanation of "defconfig" in kernel dev manual
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
X-List-Received-Date: Sun, 14 Apr 2013 02:51:56 -0000
Content-Type: multipart/alternative; boundary=089e01634f700bd50e04da4938d2

--089e01634f700bd50e04da4938d2
Content-Type: text/plain; charset=ISO-8859-1

That's how I interpret it:

Wholesale = defconfig
Incremental = configuration fragments

Following kernel practices my defconfig files always have a working
configuration and then I use configuration fragments to make adjustments.

But of course you can have an incomplete configuration in defconfig and
make it complete with configuration fragments.

:rjs
 On Apr 13, 2013 1:46 PM, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>   here:
>
>
> http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration
>
> one reads:
>
> "If you have a complete Linux kernel .config file you want to use,
> copy it to the ${FILES} directory within your layer and name it
> "defconfig"."
>
>   that pretty clearly suggests that the "defconfig" file *must*
> represent a *complete* .config file. but just above that, you read:
>
> "You can make wholesale or incremental changes to the Linux kernel
> .config file by including a defconfig or by specifying configuration
> fragments in the SRC_URI."
>
>   so it's confusing -- must defconfig represent a complete .config
> file, or can it represent a fragment?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01634f700bd50e04da4938d2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">That&#39;s how I interpret it:</p>
<p dir=3D"ltr">Wholesale =3D defconfig<br>
Incremental =3D configuration fragments</p>
<p dir=3D"ltr">Following kernel practices my defconfig files always have a =
working configuration and then I use configuration fragments to make adjust=
ments.</p>
<p dir=3D"ltr">But of course you can have an incomplete configuration in de=
fconfig and make it complete with configuration fragments. <br></p>
<p dir=3D"ltr">:rjs<br>
</p>
<div class=3D"gmail_quote">On Apr 13, 2013 1:46 PM, &quot;Robert P. J. Day&=
quot; &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a=
>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
=A0 here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.ht=
ml#changing-the-configuration" target=3D"_blank">http://www.yoctoproject.or=
g/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration</a><br>

<br>
one reads:<br>
<br>
&quot;If you have a complete Linux kernel .config file you want to use,<br>
copy it to the ${FILES} directory within your layer and name it<br>
&quot;defconfig&quot;.&quot;<br>
<br>
=A0 that pretty clearly suggests that the &quot;defconfig&quot; file *must*=
<br>
represent a *complete* .config file. but just above that, you read:<br>
<br>
&quot;You can make wholesale or incremental changes to the Linux kernel<br>
.config file by including a defconfig or by specifying configuration<br>
fragments in the SRC_URI.&quot;<br>
<br>
=A0 so it&#39;s confusing -- must defconfig represent a complete .config<br=
>
file, or can it represent a fragment?<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--089e01634f700bd50e04da4938d2--
