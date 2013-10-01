Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0738CE01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 10:35:59 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id kq14so7724765pab.40
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 10:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=vQ+4T5J77X73JHQuHAdtVzms4cPEhh/vb/Lc5+Dd4M0=;
	b=kwG3CFRFVl5ehMvrAMRsYrGIGYh7ti4naS4PPiIZP8dKuJEoPkyXqw8LvuAiOuX29X
	/IyGzKUQLnC+iRm30HwmwHG5pFbTmmnrN8lK+LPuCY1rg5KaDQU7LbbCTd7TVnHQ6xVO
	Pdi02MdfDJm1Ob+dF3ijuHkqhja9iGAIVNDzi8EIRCO5CRUKWPurle3zu5C3/tK/pbz9
	n0fSbZe0x+JQCP1RUCz9K6CJiDjmC53CbncA9fsssz8GZvol+GLhbeTWE68LSb6B/ydK
	NBYVOZTAzpq4jYN/NT4uIL0cWF30jarZkupWlB6UerQiQKMNcDFA4QBFJ2RwdQegDRjp
	sR5g==
X-Received: by 10.66.66.234 with SMTP id i10mr4205328pat.176.1380648958729;
	Tue, 01 Oct 2013 10:35:58 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	gh2sm7973321pbc.40.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 10:35:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFyqS9qRodbORexXqZNQESh+iiXyhs9Zi+pHBOLdxiipR0_aAQ@mail.gmail.com>
Date: Tue, 1 Oct 2013 10:35:56 -0700
Message-Id: <DFDCC371-D349-41A8-BE06-CDD2F7996BDF@gmail.com>
References: <CAFyqS9qRodbORexXqZNQESh+iiXyhs9Zi+pHBOLdxiipR0_aAQ@mail.gmail.com>
To: =?iso-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem finding -lgcc when using SDK toolchain
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
X-List-Received-Date: Tue, 01 Oct 2013 17:36:00 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Oct 1, 2013, at 6:16 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:

> Hello. We have stumbled into a problem when using ld directly instead
> of going through the gcc frontend.
> A simple operation like this fails:
>=20
>> ${CC} -c hello_world.c
>> ${LD} hello_world.o -lgcc
> arm-poky-linux-gnueabi-ld: cannot find -lgcc
>=20
> And yes, I know -lgcc is not required in this case to compile this
> one, but this is only a simple reproducer.
> The real issue was discovered when trying to build U-Boot from the =
SDK.
>=20
> To resolve this problem we are forced to provide
> -L<sysroot>/usr/lib/arm-poky-linux-gnueabi/4.7.2 to LDFLAGS.
> But that should not be needed, should it? Anyone else bumped into this
> problem? Are there any "real" solutions.
> I am starting to think it has to do with the hardcoded installation
> path in the binaries maybe?

I doubt that infact we try hard to keep it relocatable. The problem is =
you are interpreting
--sysroot option to do more than what its supposed to do. when linking =
it only affects INPUT,  GROUP
and SEARCH_DIR linker script variables and if you look at the linker =
script path to libgcc is not
specified in SEARCH_DIR, thats where gcc driver comes handy in figuring =
out where the right libgcc is installed
and sometimes when you have complex multilib environments thats very =
handy. linker does not know
anything about libgcc its just another library for it.

however you could do  something like

${CC} -print-libgcc-file-name or ${CC} -print-file-name=3Dlibgcc.a

to get to the library

and specify that in your linker cmdline

-Khem=

