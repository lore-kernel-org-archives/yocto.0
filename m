Return-Path: <andreas2025@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5F8FE0071C
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 05:34:27 -0800 (PST)
Received: by mail-wi0-f181.google.com with SMTP id hq4so3988851wib.14
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 05:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=gEq9GaFhvtdjoqUW35Cu7XKq22TMWxP9fhYWec0XzS0=;
	b=aRCgvLsN3bvW73X50scMPAgsymWcs+0hHXAyrXm25LTq62wf42zFWcn56f4svahyMF
	7RDJ0e+X06ih4XY4VhmKLBkXHKuKQOCdgp6Dj8+p7VG5O5Hjc/xNubG9tGI8FHZy9KCY
	a58J6f+tFBNJMc/YO9gVnWbA4Dqz+bZMTgKibZYz4uDyAkzftiL990DlA6/JYAuPd8sf
	1KBIg+zmLNDOnJQqvTJmVPC3DNNALycK046KaGizr3TfVF7KBy3/c0WXp0ht6X789/Nw
	CFe7DqqiF9KLeFHNDH0yFYosbMt8R1ohhPckBLbprseRW6Z8qjXoyBpsraNxIRAHbRel
	gDVQ==
MIME-Version: 1.0
X-Received: by 10.180.105.199 with SMTP id go7mr9577272wib.53.1385386465712;
	Mon, 25 Nov 2013 05:34:25 -0800 (PST)
Received: by 10.216.15.4 with HTTP; Mon, 25 Nov 2013 05:34:25 -0800 (PST)
In-Reply-To: <CAAVaN8zkRU-dfasC-Dbyr2Y1+RoYmx6CAn1h1Ox5m=y2=xCPEw@mail.gmail.com>
References: <CAAVaN8zkRU-dfasC-Dbyr2Y1+RoYmx6CAn1h1Ox5m=y2=xCPEw@mail.gmail.com>
Date: Mon, 25 Nov 2013 13:34:25 +0000
Message-ID: <CAAVaN8xoGRLF9Qj3tnNo9zi3GCx8L_Z7za2EbVu66g7YfJYeGg@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: How to integrate QT Embedded toolchain in the final SDK.sh image
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
X-List-Received-Date: Mon, 25 Nov 2013 13:34:30 -0000
Content-Type: multipart/alternative; boundary=f46d041825922a614d04ec006c1d

--f46d041825922a614d04ec006c1d
Content-Type: text/plain; charset=ISO-8859-1

Using Dylan 9.0.1


On Mon, Nov 25, 2013 at 1:29 PM, Andy Ng <andreas2025@gmail.com> wrote:

> Hi
>
> I try to produce some SDK that the environment has QT embedded support
> plus Boost.
>
> As far as I know the command to produce sdk is
>
> bitbake foo-image  -c populate_sdk
>
> Despite the fact that the "foo-image" builds the QT, Boost, and the
> application, the -c populate_sdk command  does not put QT environment and
> its environment variables to the environment file of the SDK! Is this a bug?
>
> How do you produce the combined SDK?
>
> The bitbake meta-toolchin-qte, it produces an SDK with just the toolchain,
> and the QT libs.
>
> How do I produce a rich super-set of QT SDK and  the Image SDK?
>
> Best regards,
> Andreas
>

--f46d041825922a614d04ec006c1d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Using Dylan 9.0.1<br></div><div class=3D"gmail_extra"><br>=
<br><div class=3D"gmail_quote">On Mon, Nov 25, 2013 at 1:29 PM, Andy Ng <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:andreas2025@gmail.com" target=3D"_blan=
k">andreas2025@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hi<br><=
br></div>I try to produce some SDK that the environment has QT embedded sup=
port plus Boost. <br>
<br></div>As far as I know the command to produce sdk is<br><br></div>bitba=
ke foo-image=A0 -c populate_sdk<br>
<br></div><div>Despite the fact that the &quot;foo-image&quot; builds the Q=
T, Boost, and the application, the -c populate_sdk command=A0 does not put =
QT environment and its environment variables to the environment file of the=
 SDK! Is this a bug?<br>

<br></div><div>How do you produce the combined SDK?<br><br></div><div>The b=
itbake meta-toolchin-qte, it produces an SDK with just the toolchain, and t=
he QT libs.<br><br></div><div>How do I produce a rich super-set of QT SDK a=
nd=A0 the Image SDK?<br>

<br></div><div>Best regards,<br>Andreas<br></div></div>
</blockquote></div><br></div>

--f46d041825922a614d04ec006c1d--
