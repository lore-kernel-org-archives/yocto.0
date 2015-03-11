Return-Path: <erik.boto@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1245CE00777; Wed, 11 Mar 2015 01:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A54EE00754
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 01:34:31 -0700 (PDT)
Received: by qgfh3 with SMTP id h3so8231928qgf.2
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 01:34:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=nr0YB5jbLhCaT2Zf5jnIK1R4pz5OE0GZQtRfHJASsSs=;
	b=ArBr7u5cuw8IEVyNG3IXKDkkJZXfVqTT9b1uhO2X8apmM88+170+UFFFofcv8bmjOo
	9RDTbNUAo4UvQ838qybHMB47ghIJaDBziAlr7A7rNQc6xDmI0MwX+M2wUnU6cv5SNb8h
	wquZeI+dFg6Yt+qmPdlQ+SHAurhDG6Fhz5LvIP4a1zS4BnjYCwsU5uc6sICPNQ69gKbM
	LK/3gSqseHcVLcTET+xMvxGzR1VAJRMjoLNspXO4ItPcrUpL4QJacxHvLU6pHwVYRqB1
	fPksJ/wAAyeNKXfltjiFbbGakTYTqdFoxT2P29jtZdPBNxNO8ckToXKvRdt9qz5U9/nJ
	I3vQ==
X-Gm-Message-State: ALoCoQk/0xufPWTZFEWMhITpDwid5daVBIVqiPQqVawQ0sKjXscudEor4cZViilv2wV3aSddjyk1
MIME-Version: 1.0
X-Received: by 10.140.217.200 with SMTP id n191mr46418737qhb.29.1426062871034; 
	Wed, 11 Mar 2015 01:34:31 -0700 (PDT)
Received: by 10.96.184.133 with HTTP; Wed, 11 Mar 2015 01:34:30 -0700 (PDT)
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A806904248@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A806904248@G2W2533.americas.hpqcorp.net>
Date: Wed, 11 Mar 2015 09:34:30 +0100
Message-ID: <CA+AhUGxB1n2=gOkQ7Xdg+0i2V1c_eS-=G46QCnNzLy0kok8iQA@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@pelagicore.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building local sources
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
X-List-Received-Date: Wed, 11 Mar 2015 08:34:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I think you should set S to whatever directory that contains your
source, it has a default to ${WORKDIR}/${PN}-${PV} if I remember
correctly.

So S =3D "${WORKDIR}/${PN}"  should work if the recipe is named the same
as the subdir in git, otherwise just set it explicitly using e.g.  S =3D
"${WORKDIR}/module_a"

Side note: Your example uses an underscore, which means that a and b
would be interpreted as versions, which is probably not intended. See
http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-recipe-=
storing-and-naming-the-recipe

Cheers,
Erik

On Mon, Mar 9, 2015 at 4:37 PM, Koehler, Yannick (HP Networking)
<yannick.koehler@hp.com> wrote:
> Hi,
>
>  I need some help regarding this since I cannot find out how to achieve t=
his.  I have a git repo with a lot of code splitted in module, such as:
>
>         /.git
>         /module_a
>         /module_b
>
>  Etc...
>
>   I want to compile those modules using a bitbake recipe within yocto so =
I created the following tree structure:
>
>         /.git
>         /module_a
>         /module_b
>         /poky
>                 /meta-modules
>                         /recipes-<category>
>                                 /module_a
>                                         module_a.bb
>                         /recipes-<category>
>                                 /module_b
>                                         module_b.bb
>
>   So far so good, but now I am having issue with unpack/compile step, my =
modules are make-based (not autotools and not CMake).  So I used EXTRA_OEMA=
KE to get them to use the proper target toolchain.  Problem lies with the S=
RC_URI, my files from module_a gets copied into $WORKDIR and not into $S, a=
s such the compile step failed.  I understand that SRC_URI is not really th=
e proper usage in such situation, appears to be meant to retrieve external =
packages and some files here and there, mostly patches.  Even thought all m=
y modules are within a git repo, I do not want to extract the full repo for=
 each modules either.
>
>   I am now looking into writing my own unpack function to move my code un=
der S manually, but I was wondering if yocto had something to support this =
model and I simply missed it or if writing a custom unpack is the appropria=
te solution (likely I'll have to create a class so that all my modules use =
the same unpack behavior).
>
> Yannick Koehler
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Erik Bot=C3=B6
M.Sc.E.E.
SENIOR SOFTWARE ENGINEER

Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)768 817 203
E-Mail: erik.boto@pelagicore.com

PELAGICORE Experience Change

