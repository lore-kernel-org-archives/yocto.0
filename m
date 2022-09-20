Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EAAC54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 22:11:27 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.3330.1663711878754019111
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 15:11:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gPThTtqa;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id b5so6855548wrr.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 15:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=m2ADW0sSLo45cqV0kz9uerqEWkf1YLSpAc00+oP2i3E=;
        b=gPThTtqaVUnk9j6tZC4iK8CENonJoQwZu3rI82cr9ekuQVGv8Y5TwDFZb5wYK4x53l
         xYL1Vjjqd5iS47K2W/L+IxhbKO142071E6DN2Aydo7idD4vQgqMWx3H9wFGyDcoGYyT8
         ofthCnfUJA4vQfhPy9ULP1+Q3jg+j/j+CnD0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=m2ADW0sSLo45cqV0kz9uerqEWkf1YLSpAc00+oP2i3E=;
        b=NAPu7u5o5XKbDDdkD1bSkZbcsfKe/VVymNEiB+waXibIPEgZ4573Jwy24tvuOQeNuw
         rTckeIHCYi676onaXIoaTB6COgN0Bd7PIn00XrOho5anl+WOZqXTocvhM8Mtx/kkTvgA
         9m61rpVziREUOgC3HJ3+YK4vt8kkMkHHrYweSMWfzauZGwVwREN8H6Okk6Bjlta4wEWg
         hnDk//b7QpbGnMqO3TETmq82sFPpV2ZE5SD/xPjBwEm/oXBCu1IX4i1BTx0VDKWYKGYL
         7DfczdWXYqfjQN0wnu4KwLVMNcR3Wpb0JGdUnpJEPWFWgV9EH1KhIBHUB5drGIcVGylB
         7qww==
X-Gm-Message-State: ACrzQf2Xxm4Hc3j9kXU7gGi4Ma7lwLHzdZVaM2GpyUg/n5ZuGRD1v6OB
	ENQtQbK5Gy5tyNS3ktAKtqulbg==
X-Google-Smtp-Source: 
 AMsMyM6n2MSIo7gqyFOC2Lgw4bL8olSjLzUe3+cOguohjhRoFTcZD5wl0by1OJQY2sQuw0XbV6PAEw==
X-Received: by 2002:a05:6000:1acf:b0:22b:ed0:71b1 with SMTP id
 i15-20020a0560001acf00b0022b0ed071b1mr4639728wry.51.1663711877121;
        Tue, 20 Sep 2022 15:11:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b663:b06:b4c5:e314?
 ([2001:8b0:aba:5f3c:b663:b06:b4c5:e314])
        by smtp.gmail.com with ESMTPSA id
 t15-20020a05600c198f00b003a2e92edeccsm919406wmq.46.2022.09.20.15.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 15:11:16 -0700 (PDT)
Message-ID: 
 <86e08a18285feb8df0afbf1346503abb0c3b37e5.camel@linuxfoundation.org>
Subject: Re: [yocto] Help and ideas wanted - error during do_package
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Bergin <peter@berginkonsult.se>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 20 Sep 2022 23:11:15 +0100
In-Reply-To: <f792c8b2-eb08-b444-3548-3280f06e4260@berginkonsult.se>
References: <f792c8b2-eb08-b444-3548-3280f06e4260@berginkonsult.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 22:11:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58106

On Tue, 2022-09-20 at 23:05 +0200, Peter Bergin wrote:
> Hi,
>=20
> I'm working on a recipe for libtraceevent=20
> (https://git.kernel.org/pub/scm/libs/libtrace/libtraceevent.git) that is=
=20
> needed for newer trace-cmd. I'm confused about an error I get during=20
> do_package that I want some help with.
>=20
> File: '<snip>/sources/poky/meta/lib/oe/sstatesig.py', lineno: 587,=20
> function: process
>  =C2=A0=C2=A0=C2=A0=C2=A0 0583:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 el=
se:
>  =C2=A0=C2=A0=C2=A0=C2=A0 0584:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 add_perm(stat.S_IXOTH, 'x')
>  =C2=A0=C2=A0=C2=A0=C2=A0 0585:
>  =C2=A0=C2=A0=C2=A0=C2=A0 0586:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tr=
y:
>  =C2=A0*** 0587:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 update_hash(" %10s" %=20
> pwd.getpwuid(s.st_uid).pw_name)
>  =C2=A0=C2=A0=C2=A0=C2=A0 0588:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 update_hash(" %10s" %=20
> grp.getgrgid(s.st_gid).gr_name)
>  =C2=A0=C2=A0=C2=A0=C2=A0 0589:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ex=
cept KeyError as e:
>  =C2=A0=C2=A0=C2=A0=C2=A0 0590:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bb.warn("KeyError in %s" % path)
>  =C2=A0=C2=A0=C2=A0=C2=A0 0591:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 msg =3D ("KeyError: %s\nPath %s is=20
> owned by uid %d, gid %d, which doesn't match "
> Exception: Exception: KeyError: 'getpwuid(): uid not found: 1000'
> Path ./package/usr/lib/libtraceevent.a is owned by uid 1000, gid 1004,=
=20
> which doesn't match any user/group on target. This may be due to host=20
> contamination.
>=20
> ERROR: Logfile of failure stored in:=20
> <snip>/build/<machine>/tmp/work/cortexa53-crypto-poky-linux/libtraceevent=
/1.6.2-r0/temp/log.do_package.3574262
> ERROR: Task=20
> (<snip>/sources/meta-openembedded/meta-oe/recipes-kernel/trace-cmd/libtra=
ceevent_1.6.2.bb:do_package)=20
> failed with exit code '1'
>=20
> What happens is that during do_package the directory ${WORKDIR}/package=
=20
> is moved to ${WORKDIR}/sstate-build-package and the sstate is=20
> calculated. In that sequence in sstatesig.py the owner of the files are=
=20
> checked and used in the hash calculations. By adding debug prints I have=
=20
> seen that in normal case the s.st_uid in the code above evaluates to 0=
=20
> for the files and directories. When looking in the file system my user=
=20
> (1000/1004) owns them but I guess PSEUDO is involved here to fake root?=
=20
> For some reason when checking the libraries build by libtraceevent in=20
> ./usr/lib/ the files reports to be owned by uid 1000 and the exection=20
> above is raised. It is valid for ./usr/lib/libtraceevent.a and also=20
> other files in the ./usr/lib directory. Before the files in ./usr/lib is=
=20
> checked files from /usr/include has been checked for libtraceevent and=
=20
> they have s.st_uid=3D0.
>=20
> I've spent some time trying to understand this. Give up now and try this=
=20
> forum if I can get some ideas. I share the recipe below.

Have you tried putting a:

chown root.root ${D}<files>

into do_install and checking if you force the ownership, whether that
helps?

Cheers,

Richard


