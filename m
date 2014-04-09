Return-Path: <erik.boto@pelagicore.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9EAE00B88
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 23:47:20 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id va2so2247038obc.0
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 23:47:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=KvpwbnVsUy7nEnR4xfk5yx51IhEYo5NJQb0lA0gM63k=;
	b=WfjlSU5CGBAKUaFh8PW1qce6Kz/1xF0ZNipPCh+SN48A1HeaJPrPlAw2ySZ7Pu2lVc
	+IHlmKRiZZgvoBBfAsWQr0NfPbecdP3c4hTWNIJeXBGo6x2uZRF/L6vMwJYQ7OiAhdpx
	1DzYuxl4cL4KIA5zK7T1ZHhuze/OWlj3cIN/ZwB46MhRKg7Qr5gegxi2cr7200THd+zH
	RiY2yVyPDJtGHvqA7VrNSfcFW2L0ol02Jka8VMTshpL03/2GEHStgoEDCpDD+aWYNWSH
	qfTSX0jw3GvP5hCk8EbxiYy/6piHOvjEP8a1xIIdjSZWJqKyDomowkCMLXTpJyvN2F8+
	s1Nw==
X-Gm-Message-State: ALoCoQm097QUvQXhWtbmnlKh82DAxOZN1TPWwow1VGcDsessbvQQdLpXvXRLTM80LMxwy4MJ1GWU
MIME-Version: 1.0
X-Received: by 10.182.105.1 with SMTP id gi1mr7297439obb.9.1397026039357; Tue,
	08 Apr 2014 23:47:19 -0700 (PDT)
Received: by 10.76.12.197 with HTTP; Tue, 8 Apr 2014 23:47:19 -0700 (PDT)
In-Reply-To: <de6b3cec81f445b99d03b5382d698195@DM2PR03MB399.namprd03.prod.outlook.com>
References: <de6b3cec81f445b99d03b5382d698195@DM2PR03MB399.namprd03.prod.outlook.com>
Date: Wed, 9 Apr 2014 08:47:19 +0200
Message-ID: <CA+AhUGw3Vsdoe1FfiUDyQ+vAXCjrttNaLpSvu1+vuQNaGwk7nw@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto support "git clone" for url with http prefix
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
X-List-Received-Date: Wed, 09 Apr 2014 06:47:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 9, 2014 at 8:21 AM, zhenhua.luo@freescale.com
<zhenhua.luo@freescale.com> wrote:
> I want to create recipe for a package which is managed by Gerrit, Gerrit =
only provides an anonymous HTTP url(http://aaaa:8181/bb) which can be clone=
d by "git clone http://aaaa:8181/bb" correctly.
>
> I set SRC_URI to "http://aaaa:8181/bb" in the bb file, following is the d=
etailed definition.
>        SRC_URI =3D "http://aaaa:8181/bb;protocol=3Dgit;branch=3Dmaster"
>
> When I try to build the package, following error appears.
>         ERROR: Function failed: URL: 'http://aaaa:8181/bb;protocol=3Dgit;=
branch=3Dmaster' has invalid parameters. Invalid protocol - if you wish to =
fetch from a git repository using http, you need to instead use the git:// =
prefix with protocol=3Dhttp
>
> May I know if Yocto can support "git clone" for url with http prefix?

Yes. All git SRC_URI start with git:// and then you can specify
protocol=3Dhttp. E.g.

SRC_URI =3D "git://aaaa:8181/bb;protocol=3Dhttp;branch=3Dmaster"

Cheers,
Erik

>
>
> Best Regards,
>
> Zhenhua
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Erik Bot=F6
Senior Software Engineer
Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)76 881 72 03
E-Mail: erik.boto@pelagicore.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

