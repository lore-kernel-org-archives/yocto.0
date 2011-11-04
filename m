Return-Path: <kergoth@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E11A5E00307
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 09:26:05 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg34 with SMTP id 34so3613681wyg.35
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2011 09:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=HZbgQcDNt5n+I4OBtyghlzq+YlEmw8nM9ysihFsDAYs=;
	b=D7qPC6obb6zs5GmBY8D84VXb9ydgSp/Vx0waMtTuXEEK1tW6Aoy8ownqLBZzJgY+2u
	Z1ejQRpFDiXhyKY4CMskV2ARvW7ockei7MDyAspuy/P6jFGuorHcJ9KnMZx8ZMQGt9P7
	n7aogqvopxkRmxCjARXD/RgF5vkoW1Cl7htTU=
Received: by 10.216.15.14 with SMTP id e14mr1165349wee.21.1320423054200; Fri,
	04 Nov 2011 09:10:54 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.28.138 with HTTP; Fri, 4 Nov 2011 09:10:33 -0700 (PDT)
In-Reply-To: <4EB40CEC.4030106@linux.intel.com>
References: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
	<4EB40CEC.4030106@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 4 Nov 2011 09:10:33 -0700
X-Google-Sender-Auth: 8wdcFtFs4z6QEyI9Ru-IM1vs7R8
Message-ID: <CABcZAN=OJNi+4DB+gEo8y9hBPhoWTMdjBfC+ugsih05Nj4LiLQ@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Fri, 04 Nov 2011 16:26:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 4, 2011 at 9:03 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 04/11/11 08:57, Robert P. J. Day wrote:
>>
>> =C2=A0 stumbled over this so i did a more thorough search:
>>
>> $ grep -w PARALLEL_MAKE $(find . -name *.bb)
>> ./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE =3D ""
>> ./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE =3D ""
>> ./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE =3D ""
>> ./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE =3D ""
>> ./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE =3D ""
>> ./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=3D""
>> ./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE =3D ""
>> ./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE =
=3D ""
>> ./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE =3D ""
>> ... more snipped ...
>>
>> =C2=A0 why are individual recipes setting PARALLEL_MAKE to the empty
>> string? =C2=A0it's a *build* option, why would it have any relevance to
>> individual .bb files?
>
> Because that individual BB file has problems being run with parallel
> make (make -j).

To clarify/elaborate a bit: the build system of the project that the
recipe is building doesn't support make -j (generally, this means
they're missing rules for dependencies, it's implicit, rather than
explicit). It's best to get these fixed upstream, where possible, but
we often just disable it to get it to work so we can move on. Feel
free to report these issues as bugs to the upstream projects, if
you're feeling motivated :)
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

