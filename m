Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF5B6ECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 08:15:40 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web08.3942.1663748135520936836
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 01:15:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SdvSzbLn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id n12so8507724wrx.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 01:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=6oe2dgdq7MV+CJEXohHdB1K8L2ARLGzh+xZYDI71aAA=;
        b=SdvSzbLncCvmJ1zdQU31X67xkjfc8+ETlS2oQTmwbDCTUEInDTpBSMD8zM2zJyuZ5/
         T6w3rn/20YHkNjhiNuggXguWRP1zLP5w6lB7m37lZTyC6yV0++cELoH+IrW0+kBdOH2n
         FUBeCFpmn8bYm8reWnG4WQQdSVLqyxGzCzo+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=6oe2dgdq7MV+CJEXohHdB1K8L2ARLGzh+xZYDI71aAA=;
        b=dUTLh+VrfpLUWv+MuWSlBTG/R2Ser/XHpJlxCOCPmkmfLzdmG9gc5Np9UFKI8pf4qA
         ld6TOSijmsEgNoTk3ZSMuwDIRkKfLGO1Vy65xEAcJNk3CxWtQs8tw99Os7zx9ZMoqVRN
         71+1Gzjs4fvpX8OR8ttisx8Y3hh+MXIpUvQT2R98GEGDY9ubvD+TUld4EJENdaY0//TV
         nYjJjGTM6MRUXNXD3kFhikndj8m/9W3loz1woB/zRG8VejEO/e0KMsurs97M/0wVvwDN
         bfRvuPQR7OZ1c0HoYaIMe1aAVkTAMqV8DQW21LYpi8SK6XSZb+FZB/zkNMX13eYFikkB
         ZJcw==
X-Gm-Message-State: ACrzQf1MzgGPHXGSu/f6nJ7+81Glclr8sPQx4ahLd2/iYZpAtjtLR/Zu
	kZYqzRr6KWoyQoJcqA7Kk57i/g==
X-Google-Smtp-Source: 
 AMsMyM4C900p39wXblK5z4Q/DsLQMewO9eminiesDgEmztcz3XoReaFyLW8HnyG6BrIfhgP7KAbcag==
X-Received: by 2002:adf:ed41:0:b0:225:3fde:46ea with SMTP id
 u1-20020adfed41000000b002253fde46eamr16200310wro.345.1663748133623;
        Wed, 21 Sep 2022 01:15:33 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b663:b06:b4c5:e314?
 ([2001:8b0:aba:5f3c:b663:b06:b4c5:e314])
        by smtp.gmail.com with ESMTPSA id
 h4-20020a05600c350400b003b491f99a25sm2216034wmq.22.2022.09.21.01.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 01:15:33 -0700 (PDT)
Message-ID: 
 <0589ee54d2979bb38725f5e987bf09a655c96133.camel@linuxfoundation.org>
Subject: Re: [yocto] Help and ideas wanted - error during do_package
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Bergin <peter@berginkonsult.se>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 21 Sep 2022 09:15:31 +0100
In-Reply-To: <9345a5a5-51af-263f-2c87-4f72dfd710e5@berginkonsult.se>
References: <f792c8b2-eb08-b444-3548-3280f06e4260@berginkonsult.se>
	 <86e08a18285feb8df0afbf1346503abb0c3b37e5.camel@linuxfoundation.org>
	 <9345a5a5-51af-263f-2c87-4f72dfd710e5@berginkonsult.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 08:15:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58112

On Wed, 2022-09-21 at 09:13 +0200, Peter Bergin wrote:
> Hi Richard,
>=20
> On 2022-09-21 00:11, Richard Purdie wrote:
> > On Tue, 2022-09-20 at 23:05 +0200, Peter Bergin wrote:
> > > Hi,
> > >=20
> > > I'm working on a recipe for libtraceevent
> > > (https://git.kernel.org/pub/scm/libs/libtrace/libtraceevent.git) that=
 is
> > > needed for newer trace-cmd. I'm confused about an error I get during
> > > do_package that I want some help with.
> > >=20
> > > File: '<snip>/sources/poky/meta/lib/oe/sstatesig.py', lineno: 587,
> > > function: process
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0583:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 else:
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0584:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 add_perm(stat.S_IXOTH, 'x')
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0585:
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0586:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 try:
> > >   =C2=A0*** 0587:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 update_hash(" %10s" %
> > > pwd.getpwuid(s.st_uid).pw_name)
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0588:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 update_hash(" %10s" %
> > > grp.getgrgid(s.st_gid).gr_name)
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0589:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 except KeyError as e:
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0590:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.warn("KeyError in %s" % path)
> > >   =C2=A0=C2=A0=C2=A0=C2=A0 0591:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 msg =3D ("KeyError: %s\nPath %s is
> > > owned by uid %d, gid %d, which doesn't match "
> > > Exception: Exception: KeyError: 'getpwuid(): uid not found: 1000'
> > > Path ./package/usr/lib/libtraceevent.a is owned by uid 1000, gid 1004=
,
> > > which doesn't match any user/group on target. This may be due to host
> > > contamination.
> > >=20
> > > ERROR: Logfile of failure stored in:
> > > <snip>/build/<machine>/tmp/work/cortexa53-crypto-poky-linux/libtracee=
vent/1.6.2-r0/temp/log.do_package.3574262
> > > ERROR: Task
> > > (<snip>/sources/meta-openembedded/meta-oe/recipes-kernel/trace-cmd/li=
btraceevent_1.6.2.bb:do_package)
> > > failed with exit code '1'
> > >=20
> > > What happens is that during do_package the directory ${WORKDIR}/packa=
ge
> > > is moved to ${WORKDIR}/sstate-build-package and the sstate is
> > > calculated. In that sequence in sstatesig.py the owner of the files a=
re
> > > checked and used in the hash calculations. By adding debug prints I h=
ave
> > > seen that in normal case the s.st_uid in the code above evaluates to =
0
> > > for the files and directories. When looking in the file system my use=
r
> > > (1000/1004) owns them but I guess PSEUDO is involved here to fake roo=
t?
> > > For some reason when checking the libraries build by libtraceevent in
> > > ./usr/lib/ the files reports to be owned by uid 1000 and the exection
> > > above is raised. It is valid for ./usr/lib/libtraceevent.a and also
> > > other files in the ./usr/lib directory. Before the files in ./usr/lib=
 is
> > > checked files from /usr/include has been checked for libtraceevent an=
d
> > > they have s.st_uid=3D0.
> > >=20
> > > I've spent some time trying to understand this. Give up now and try t=
his
> > > forum if I can get some ideas. I share the recipe below.
> > Have you tried putting a:
> >=20
> > chown root.root ${D}<files>
> >=20
> > into do_install and checking if you force the ownership, whether that
> > helps?
>=20
> It helped to add 'chown -R root.root ${D}${libdir}'. Thanks!
>=20
> But curios to understand why. Anyway when looking into ${D} after I=20
> added chown the files is owned by the build user. I guess this is some=
=20
> pseudo function to have additional permission somewhere? Is is easy to=
=20
> explain? And normally I have a feeling that I don't need this, why is=20
> this package special?

If you place a file into ${D} with something like cp, it doesn't have
specific ownership information set. Recipes which use cp to install
files usually have chown/chgrp calls to change the build user to root
or other appropriate ownership.

For this reason, most recipes use "install" which handles this behind
the scenes for many cases.

I'd guess the Makefile in this case uses cp rather than install.

Cheers,

Richard





