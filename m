Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E967E007AF
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 06:37:28 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id x18so311522lbi.20
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 06:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=A67/L+DXjrlUetsgnHwPX7LI1wwnui9POYsH5yImRHo=;
	b=Y+0SXGxfyrgtOqczwGlsoPQISrKQ40xG5c8fjDoyYprRoos5fKKQG9ffcASm2UyzfE
	0wliMJg6HV9SdwdqoS6jpZZ5X39WJGfQE/jhBkxF4C8DLOxh1FthZOMtaI8n7dIenZnC
	jgoMTA5rN9Q2uEa49uGOk5Js+eG0UYKKoOhwAUzgPO8goslcPUdmBcSPaAVknYDj39st
	vVv5vNJvdpPdTMzLIOmJDj56VuwmpUbqkCBxbKyKeM61hzRvNeVR8JL7AkVXNmOyr6lW
	cXlCFrp0rfss8A8OFDngra0vHTKXJlmQHQ2UAPppe2lixqJ8UlCdugqS20zzWYUxJEs6
	u+3Q==
X-Received: by 10.112.148.104 with SMTP id tr8mr968363lbb.42.1386340647395;
	Fri, 06 Dec 2013 06:37:27 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.176.201 with HTTP; Fri, 6 Dec 2013 06:37:07 -0800 (PST)
In-Reply-To: <CALaXJ9=ON4Ekrqt3OixGOvpKhcrVpaNMP3OwCvssvmHQFwUTUg@mail.gmail.com>
References: <CALaXJ9=ON4Ekrqt3OixGOvpKhcrVpaNMP3OwCvssvmHQFwUTUg@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 6 Dec 2013 07:37:07 -0700
X-Google-Sender-Auth: yjR7VpAJsSHLvP4ioK817P6BMXM
Message-ID: <CABcZANkNgZQJ0OvORuGuV4_6oGys4Qv4artTsVMfR34WxRc3ZA@mail.gmail.com>
To: Kumita Bruce <bruce.kumita@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: The difference of & and | in LICENSE definition
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
X-List-Received-Date: Fri, 06 Dec 2013 14:37:33 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8300d3675104ecde958c

--047d7b3a8300d3675104ecde958c
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 6, 2013 at 7:23 AM, Kumita Bruce <bruce.kumita@gmail.com> wrote:

> I don't know whether this is the right place to ask the question. Hope to
> get some help from here.
>
> I see below two types definition of LICENSE in Yocto recipe:
> LICENSE = "license-1 & license-2"
> LICENSE = "license-1 | license-2"
>
> Can somebody help to give some explanation for the difference of those two
> formats? And how to determinate which format should be used for a package.
>

& is AND.
| is OR.

Some software can be licensed under this OR that license, others have
components which are under a variety of different licenses (AND).
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--047d7b3a8300d3675104ecde958c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Fri, Dec 6, 2013 at 7:23 AM,=
 Kumita Bruce <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.kumita@gmail.co=
m" target=3D"_blank">bruce.kumita@gmail.com</a>&gt;</span> wrote:<br><div c=
lass=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"gmail_default" style=3D"font-f=
amily:courier new,monospace">I don&#39;t know whether this is the right pla=
ce to ask the question. Hope to get some help from here. <br>


</div><div class=3D"gmail_default" style=3D"font-family:courier new,monospa=
ce"><br></div><div class=3D"gmail_default" style=3D"font-family:courier new=
,monospace">I see below two types definition of LICENSE in Yocto recipe: <b=
r>
LICENSE =3D &quot;license-1 &amp; license-2&quot;<br>LICENSE =3D &quot;lice=
nse-1 | license-2&quot;<br></div><div class=3D"gmail_default" style=3D"font=
-family:courier new,monospace"><br></div><div class=3D"gmail_default" style=
=3D"font-family:courier new,monospace">


Can somebody help to give some explanation for the difference of those two =
formats? And how to determinate which format should be used for a package.=
=C2=A0 <br></div></blockquote></div><br>&amp; is AND.</div><div class=3D"gm=
ail_extra">

| is OR.<br><br>Some software can be licensed under this OR that license, o=
thers have components which are under a variety of different licenses (AND)=
.<br>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - B=
itBake, OpenEmbedded, OpenZaurus<br>

Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--047d7b3a8300d3675104ecde958c--
