Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB437E0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:03:23 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1053651lag.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=KkQm+JSP0JPWthXPjmYYqzIJ8yGg7EsUnNhtFmECcgU=;
	b=z9/6uUbMp7J9dsqT1LMeQTeLQOlbDfaMlhYURBggC7oJx0nmgpWFqA2BXLdZxprLdl
	8CBoFPEnZeF0oJyKvP3yvaEwAAdqI9zheVoVZZoYx8uzuDALrYODFtbilg40n/aT1bla
	LNX5vZ3OSkMV2k4OAuhYvh52ODeXBqCebAlfW4dtzdWHJCK3Fzh+pbL/vNDpN8QH8bB1
	JemqOJRqUM0xPCi0F10+hWW8NlHauB1UxdEx7clomDJaxWKVv08ZMfSChhAe/ZqdD3Ks
	uG68JYTngwKRrHidsL8/+vYeiRsrrsPE1T7RlkROOErt/yu3aH5X16Z2VY00uOaiqg9y
	JY5A==
Received: by 10.152.102.137 with SMTP id fo9mr3373033lab.35.1344614602425;
	Fri, 10 Aug 2012 09:03:22 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Fri, 10 Aug 2012 09:03:02 -0700 (PDT)
In-Reply-To: <1D8CF354-3305-4BC7-9321-6CCCAC85D317@gmail.com>
References: <84E45B3C-7D63-4FC7-8819-C5D5D53CB710@gmail.com>
	<1D8CF354-3305-4BC7-9321-6CCCAC85D317@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 10 Aug 2012 09:03:02 -0700
X-Google-Sender-Auth: cFjEn5462MVAdWY-cV7QRLn3Xf8
Message-ID: <CABcZAN=_3RzVax9GLykVHqKadK8zzUegAsaK37AbZFZujv03pg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: external-sourcery-toolchain: ERROR: Function failed: do_install
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
X-List-Received-Date: Fri, 10 Aug 2012 16:03:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 10, 2012 at 8:59 AM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> I found the solution. I had to specify NO32LIBS =3D "0", since I'm buildi=
ng on
> an Ubuntu 12.04 64-bit machine.
>
> # Set the toolchain.
> TCMODE =3D "external-csl"
> EXTERNAL_TOOLCHAIN =3D "/tool/mentor/csl-2012.03.71"
> NO32LIBS =3D "0"
> CSL_TARGET_SYS_powerpc =3D "powerpc-mentor-linux-gnu"

Yeah, we should probably make the tcmode set that =E2=80=94 things get unha=
ppy
due to the LD_PRELOAD when it tries to run the 32 bit toolchain
binaries without a 32 bit libpseudo around.
--=20
Christopher Larson

