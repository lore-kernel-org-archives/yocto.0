Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBBA3E00CF4; Wed,  3 Jul 2019 08:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F339E00C37
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 08:23:08 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id g18so3070171qkl.3
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 08:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=i8r43wkWEIc8BFLAkPnaU+sKD02XWO2K3zj19oo0Qrg=;
	b=E6dmnpmE43rVBI/AAmdovXUGAzuxFzgKfx0pbGm5Xt7ChcMpQH3IYs5z92s322tNWF
	iYJ5tVjJqm7uOYaI20vGRr4AlI7ovoJ93bQ/X2MFAMNblwoWdubpm1DKnw2FK7PGSXt2
	sI7X6BQgXN21lFFpVzm8qhHecQqbsUqbjAjhU79bhUznw3xkZn4OBniV3Ca44LZkbK59
	o5tnv6zE9M7qeL+QcfqYFA3vL9wso1vxa0LeFdKpnJ25tiAcfiiGx6vfIsecMr6yew4K
	dPV1kotgTjqJGUOU9+u/rEiV6rOYQJ8G6kcexnFbsyKPynzTIoYY2W4uQvB4cRJ+Ditg
	XBKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=i8r43wkWEIc8BFLAkPnaU+sKD02XWO2K3zj19oo0Qrg=;
	b=sUI8SEsG2m69HO3xMbzUd9Qma+bwabR2sRXbHrjvmDjILHcQg3W5BuALfJRz1l9cBy
	ktqvOlgWrjVPM1zv3UGgAp6cEXys/Mt3zWLV5KPaB01Xyu6f5gPJSg5qodgveQrlmRw1
	nu8cp8SqpzTPJ05ZDqk35huT7Sqz2VzOZ96eba/vAz0nXNucsIWWqgvDOsr6h5zRdWbH
	GDysXkrzL6v+M8/izQ++Otplz2RXSp+5Fkb6qgMwWdJS0qfNFSeqgWB2DVjYXQv4V0yo
	ZLWNXihZBRsaR7LfilbBHwYaeCfiyTKKb/apd2M7hgYlGA5Lz9Lh/l9/FKDtU63SDbT2
	mBfA==
X-Gm-Message-State: APjAAAXXFBP3g+J0pXmw/b5y0If0QxZywo90I4qzJg6yrGehxrbLyKT1
	qsrQb/iOqyW3oxsKfafjWY0BrHKLgRuydnmjJ0g=
X-Google-Smtp-Source: APXvYqyGWb+cOzP1BDH8vVULEAPhWWdH+8BY23WeUQKRfIRwLvNF0RNXyBAVa0IhGOV92UMU6xE7ToW8dWNLe4ksb/M=
X-Received: by 2002:a37:795:: with SMTP id 143mr31564686qkh.140.1562167387821; 
	Wed, 03 Jul 2019 08:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
In-Reply-To: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 3 Jul 2019 17:22:56 +0200
Message-ID: <CAGAf8LzqieWdWhVDEahqkDMUBNByxoobNKqzsBV=KyZBQ0OXnA@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Wed, 03 Jul 2019 15:23:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please, try to check trijicon.com firewall: which services are
available, which are not.

Please, read the following:
https://serverfault.com/questions/309052/check-if-port-is-open-or-closed-on=
-a-linux-server

And also the following:
https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers

Please, explore and learn about CLI nmap (very powerful) command.

Hope this helps,
Zoran
_______


On Tue, Jul 2, 2019 at 2:53 PM Chad Gong <cgong@trijicon.com> wrote:
>
> Hi,
>
>
>
> I am new to Yocto project and try to build my first yocto project by foll=
owing instructions on https://www.yoctoproject.org/docs/current/brief-yocto=
projectqs/brief-yoctoprojectqs.html. I checked out branch yocto-2.5.3, and =
tried to build targets, such as core-image-minimal, meta-toolchain, but alw=
ays get some fetch errors or checksum errors, such as:
>
>
>
> ERROR: libmpc-native-1.1.0-r0 do_fetch: Checksum failure fetching https:/=
/ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz
>
> WARNING: quilt-native-0.65-r0 do_fetch: Failed to fetch URL http://downlo=
ad.savannah.gnu.org/releases/quilt/quilt-0.65.tar.gz, attempting MIRRORS if=
 available
>
> WARNING: m4-native-1.4.18-r0 do_fetch: Failed to fetch URL http://ftp.gnu=
.org/gnu/m4/m4-1.4.18.tar.gz, attempting MIRRORS if available
>
>
>
> I am running Ubuntu 18.04 virtual box on Windows 7.
>
>
>
> Chad Gong
>
> Electrical Engineer
>
>
>
> Trijicon, Inc.
>
>  | P.O. Box 930059
>
> Wixom, Michigan 48393 US
>
> cgong@trijicon.com |
>
>
>
> ________________________________
> This electronic message contains information that may be confidential, pr=
ivileged, proprietary, or subject to the export control laws of the United =
States, including the Arms Export Control Act (22 U.S.C. 2571 et seq.), the=
 International Traffic in Arms Regulations  (22 C.F.R. Part 120 et seq.), a=
nd/or the Export Administration Regulations (15 C.F.R. Part 730 et seq.).  =
This information is intended for the use of the addressee only, and if you =
are not the intended recipient, any disclosure, copying, distribution, prin=
ting, or any other use of, the contents of this message is prohibited.  Any=
 transfer, retransfer, or disclosure of this data to a Foreign Person witho=
ut United States Government authorization is also prohibited.  If you have =
received this message in error, please notify the sender and destroy the or=
iginal message.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

