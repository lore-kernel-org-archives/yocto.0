Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 26FF3E0047F
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:12:48 -0800 (PST)
Received: by mail-vb0-f45.google.com with SMTP id p1so5152207vbi.18
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=O6/Zt59dwSGpL60ecXGeD7KVo8wOwS0QY+FRzjH+REs=;
	b=ZOJ1xeA1rnstd633IXcq+zeVHvTIBAEJgLXdsw+P2SxiAhEUusQsdtOgZ7eIj8tVm6
	XNS5ZPp2v0l4A/i8ycsq/tkibvaT2vHklTX8YYRkArA/E/RxgdjAduNlYNxz0lrIfrqH
	1aTOpWpgEeYarltvjo+CL6kQ/dsmP5dCFKzWw6VHdeKoQULmJHuM8fGIukC4MDWirFws
	l7NL9EMXeEdhkTIfSUvfSE1kF48bRjphpjnrj/H3v7IoEsq9UCywzwv3EZTiPIznwrYk
	EKhi2Z4yFZgwSZqa+D1ZXiKd2pAZtfuxqEWpqNAjQG0gZ9Kd7TvyyIok9nXL9Gsry/y+
	z9kA==
MIME-Version: 1.0
X-Received: by 10.52.34.170 with SMTP id a10mr24186074vdj.54.1361380367851;
	Wed, 20 Feb 2013 09:12:47 -0800 (PST)
Received: by 10.58.155.102 with HTTP; Wed, 20 Feb 2013 09:12:47 -0800 (PST)
In-Reply-To: <CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
	<CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
Date: Wed, 20 Feb 2013 18:12:47 +0100
Message-ID: <CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Updating uboot to v2013.01
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
X-List-Received-Date: Wed, 20 Feb 2013 17:12:49 -0000
Content-Type: multipart/alternative; boundary=20cf3078133c3ae0bc04d62b112d

--20cf3078133c3ae0bc04d62b112d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hey hans, this is what he meant,

In the machine config file add the following

PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or PREFERRED_VERSION_u-boot ?=3D
"v2013.01.01%"

By the way did you already complete the first part... There is also other
file called "u-boot-fw-utils_2012.04.01.bb" ... I think we should do the
same...

Hans bytheway,  are you also working on the same board or diffferent board
with same problem?






On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
> <rstreif@linuxfoundation.org> wrote:
> > Satya,
> >
> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot such as
> > u-boot_2012.04.01.bb. You can simply copy it and name it
> u-boot_2013.01.bb
> > and then modify SRCREV to the revision that corresponds to the tag
> 2013.01
> > or 2013.01.01 in git.denx.de:
> >
> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
> >
> > Do the same for u-boot-mkimage and include the u-boot version with your
> bsp.
> >
> > Rudi
> >
> >
> Hi Rudi, sorry to chime in , but I have a similar problem but do not
> really get the last thing you said.
> What do you mean by including the u-boot version in the bsp? Also is
> it a must to also copy the mkimage .bb or will the system find a
> suitable one automatically?
> The thing is that I only copied/edited the u-boot .bb but never the
> mkimage. Still my kernel successfully builds the kernel uImage!?
> Some magic that I have missed :)
>
> Hans
>
>
> > On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
> > <swaroop.damarla@gmail.com> wrote:
> >>
> >> Hi Guys,
> >>
> >> I need support for uboot on Tamonten board but the version on it is
> >> v2012.04 but I came to know that v2012.10 or v2013.01 supports the
> >> Tamontenboard through some guys here..
> >>
> >> It would be great if you can tell me how can I accomplish v2013.01 or
> >> v2012.10 into the build system and make it available so that I can
> compile
> >> the and get uImage
> >>
> >> (Tamonten board is a derivative of harmony board with some changes and
> has
> >> arm cortexa9 processor without neon extentions )
> >>
> >> I am kind of new to add new .bb files and help is really appreciated a=
s
> I
> >> am not able to figure out how to add
> >>
> >> Greetings & Regards,
> >> Swaroop
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> >
> >
> > --
> > --
> > Rudolf J. Streif
> > Director of Embedded Solutions
> > The Linux Foundation
> >
> > rudolf.streif@linux.com
> > Phone: +1.619.631.5383
> > Skype: rudolfstreif
> > PGP: RSA 2048/2048 D6E7D28B
> >
> > Linux Foundation Events Schedule:  events.linuxfoundation.org
> > Linux Foundation Training Schedule: training.linuxfoundation.org
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--20cf3078133c3ae0bc04d62b112d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey hans, this is what he meant,<div><br></div><div>In the=
 machine config file add the following=A0</div><div><br></div><div><div>PRE=
FERRED_VERSION_u-boot ?=3D &quot;v2013.01%&quot; =A0or PREFERRED_VERSION_u-=
boot ?=3D &quot;v2013.01.01%&quot;</div>
</div><div><br></div><div style>By the way did you already complete the fir=
st part... There is also other file called &quot;<a href=3D"http://u-boot-f=
w-utils_2012.04.01.bb">u-boot-fw-utils_2012.04.01.bb</a>&quot; ... I think =
we should do the same...=A0</div>
<div style><br></div><div style>Hans bytheway, =A0are you also working on t=
he same board or diffferent board with same problem?</div><div><br></div><d=
iv><br></div><div><br></div><div><br></div></div><div class=3D"gmail_extra"=
>
<br><br><div class=3D"gmail_quote">On Wed, Feb 20, 2013 at 6:01 PM, Hans Be=
ck=E9rus <span dir=3D"ltr">&lt;<a href=3D"mailto:hans.beckerus@gmail.com" t=
arget=3D"_blank">hans.beckerus@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
<div class=3D"im">On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif<br>
&lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundation.=
org</a>&gt; wrote:<br>
&gt; Satya,<br>
&gt;<br>
&gt; Simply look at the u-boot recipes in meta/recipes-bsp/u-boot such as<b=
r>
&gt; <a href=3D"http://u-boot_2012.04.01.bb" target=3D"_blank">u-boot_2012.=
04.01.bb</a>. You can simply copy it and name it <a href=3D"http://u-boot_2=
013.01.bb" target=3D"_blank">u-boot_2013.01.bb</a><br>
&gt; and then modify SRCREV to the revision that corresponds to the tag 201=
3.01<br>
&gt; or 2013.01.01 in <a href=3D"http://git.denx.de" target=3D"_blank">git.=
denx.de</a>:<br>
&gt;<br>
&gt; for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d<br>
&gt; for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46<br>
&gt;<br>
&gt; Do the same for u-boot-mkimage and include the u-boot version with you=
r bsp.<br>
&gt;<br>
&gt; Rudi<br>
&gt;<br>
&gt;<br>
</div>Hi Rudi, sorry to chime in , but I have a similar problem but do not<=
br>
really get the last thing you said.<br>
What do you mean by including the u-boot version in the bsp? Also is<br>
it a must to also copy the mkimage .bb or will the system find a<br>
suitable one automatically?<br>
The thing is that I only copied/edited the u-boot .bb but never the<br>
mkimage. Still my kernel successfully builds the kernel uImage!?<br>
Some magic that I have missed :)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Hans<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla<br>
&gt; &lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroop.damarla@gmail=
.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Guys,<br>
&gt;&gt;<br>
&gt;&gt; I need support for uboot on Tamonten board but the version on it i=
s<br>
&gt;&gt; v2012.04 but I came to know that v2012.10 or v2013.01 supports the=
<br>
&gt;&gt; Tamontenboard through some guys here..<br>
&gt;&gt;<br>
&gt;&gt; It would be great if you can tell me how can I accomplish v2013.01=
 or<br>
&gt;&gt; v2012.10 into the build system and make it available so that I can=
 compile<br>
&gt;&gt; the and get uImage<br>
&gt;&gt;<br>
&gt;&gt; (Tamonten board is a derivative of harmony board with some changes=
 and has<br>
&gt;&gt; arm cortexa9 processor without neon extentions )<br>
&gt;&gt;<br>
&gt;&gt; I am kind of new to add new .bb files and help is really appreciat=
ed as I<br>
&gt;&gt; am not able to figure out how to add<br>
&gt;&gt;<br>
&gt;&gt; Greetings &amp; Regards,<br>
&gt;&gt; Swaroop<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; --<br>
&gt; Rudolf J. Streif<br>
&gt; Director of Embedded Solutions<br>
&gt; The Linux Foundation<br>
&gt;<br>
&gt; <a href=3D"mailto:rudolf.streif@linux.com">rudolf.streif@linux.com</a>=
<br>
&gt; Phone: <a href=3D"tel:%2B1.619.631.5383" value=3D"+16196315383">+1.619=
.631.5383</a><br>
&gt; Skype: rudolfstreif<br>
&gt; PGP: RSA 2048/2048 D6E7D28B<br>
&gt;<br>
&gt; Linux Foundation Events Schedule: =A0<a href=3D"http://events.linuxfou=
ndation.org" target=3D"_blank">events.linuxfoundation.org</a><br>
&gt; Linux Foundation Training Schedule: <a href=3D"http://training.linuxfo=
undation.org" target=3D"_blank">training.linuxfoundation.org</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div></blockquote></div><br></div>

--20cf3078133c3ae0bc04d62b112d--
