Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F30E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 13:55:17 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id eh20so13947565obb.25
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 13:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Vd+T7WbQ/eF4/4uZ6Dk7+gaulkatvPCgGKXDATjDKYM=;
	b=fwFAYqKqJWY4MTFFkLPVAHtcDEioizPKnVwo4ACLGNYc9XwUJ6IrQvvKODC2zpkysS
	gUXPTa+Yp0gGyDK0Tn/VaZBJEHgupX+wSQDZbRbIq1wNkcjf4I8eLSQBO4B859sWotjd
	LzeOaMJDH9N9e0PuTnn/MMhydSDJSxKfm5nAfi8ZeQUNK71si9JCqByO779qlwApzHdp
	dyMrGkBgGFAeHKxXDrdMFyIy+gzh4QJchq9DlCXC45af3nh6zXVeHG2HXrS6FusNb71/
	6rtIlxfFCd5ZBqXDRE8cuYkLxtTORlNrvX1Srme8/k38pZ5eEab5q96/Xn+iziwlPmat
	Vaag==
MIME-Version: 1.0
X-Received: by 10.182.128.42 with SMTP id nl10mr32018818obb.41.1374699316793; 
	Wed, 24 Jul 2013 13:55:16 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Wed, 24 Jul 2013 13:55:16 -0700 (PDT)
In-Reply-To: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
Date: Wed, 24 Jul 2013 16:55:16 -0400
Message-ID: <CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchain (sourcery)
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
X-List-Received-Date: Wed, 24 Jul 2013 20:55:18 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cc9e73587604e24820a7

--e89a8ff1cc9e73587604e24820a7
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:

> Hi,
>
> is this officially supported by the Yocto project? I would not like to use
> Yocto for my own purposes if it is something unsupported, and I would need
> to put a significant investment into to it to make the releases buildable,
> et cetera.
>
> Many thanks,
> Laszlo
>
>
Check out the documentation but bitbake meta-toolchain or one of the
similar flavors should give you what you are looking for.

Regards,

Brian

--e89a8ff1cc9e73587604e24820a7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wr=
ote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">Hi,<div><br></div><div>is this officially supported by the=
 Yocto project? I would not like to use Yocto for my own purposes if it is =
something unsupported, and I would need to put a significant investment int=
o to it to make the releases buildable, et cetera.</div>

<div><br></div><div>Many thanks,</div><div>Laszlo</div></div>
<br></blockquote><div><br></div><div>Check out the documentation but bitbak=
e meta-toolchain or one of the similar flavors should give you what you are=
 looking for.</div><div><br></div><div>Regards,</div><div><br></div><div>
Brian=A0</div></div>

--e89a8ff1cc9e73587604e24820a7--
