Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D27C43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 08:45:34 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8537.1783673126805001070
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 01:45:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=WDKqaRuq;
 spf=pass (domain: smile.fr, ip: 209.85.128.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-493ece78b0cso4928045e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 01:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1783673125; x=1784277925; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kM0X+CsBIWvJK06rwrHwgjx9BCAUbZ968tGpfSz1wR0=;
        b=WDKqaRuqAAXfnOOPPqwO++5oa6xJZ3k3Ip2JJHxW+lI7mGpaM5IRCYHOT8Y7ldnWcj
         vfj6a8qgjiBDa5Z2vIWEodT9GqUP820Ibm4HGV3ETR3B7e/+QbHDo2E7/1PpBLnwtT08
         97y3YrgL6qsH1Z6f3ZDjiVlrdRWZ1Ho3n7ULc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783673125; x=1784277925;
        h=in-reply-to:references:from:subject:to:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kM0X+CsBIWvJK06rwrHwgjx9BCAUbZ968tGpfSz1wR0=;
        b=TU+XDCi9Tt5HM4w/5S+E2hEfbsy4HjEVHAGsf7C+08+B0KFzVpMSEaxaQ4rZvg8ct2
         tfB239N9OxcKg8kJ2cJaE05IzVptQm1cVcpPuo1Jw+z/LMQ23XXRC2LWLOIBTURCz/e2
         +TexhrcFdtHpTbSxQ0DW4UZlgW7RX+jnhxNoAMaEr1vPp8SuhkpVIU2DGqXTef8ewDCy
         rXM7KhdJP06oX34k1KPDAlk+M4sxc9xu1s2BAKQB1a1RKLoVS53mM1W1dlDkLw9yQ+49
         T5MNiwpbNH/0LnxjC+xZKdxOGiPaqNeKqZypUBu+snEvCpa4XCmb8DFOX7BLcqMhoNGb
         u+QQ==
X-Gm-Message-State: AOJu0YxTOAj9rWt45NaddbEhi3LVyLzN0SXsRZY5xLs50aN5yQabbBzE
	7wh/WKSlUUXBr9e6RwH+I1tZ59otrHgW8KKEDmGKqDJbGTALuI1oegp5zZYo8qxCtuVMYFtXZ63
	cGrIJkik=
X-Gm-Gg: AfdE7ckv9wR//nLfmuwyTGVNQIof6xd95e2W3z09gf/qM9CCgLBK4QOWcngNSjg6c46
	ctqpBN/fGnU+IVr7kjHbCNt0DFqcZ5PqJCtSpNhlQRnvYwFrpAw7iN5XeOpqp6y7q4wUQ+7A97i
	WJAiHCL9UjX4M3s92FRm/CrryLkbFD8Z60hRD5HFOnxj0RSPzgGyI4tD3PabJgtQvf64Jt7jKra
	+YU6UgFM3axMmsA+l2+zuh3ak+WCV/EZn9QDuMlhHUEmJi1OYHzLZD6CZk5zm+8f98Ozutd6cQ6
	2rsM9oH7wSXLhb1sxo42nRQBBIIjrud1ylHGOGIDl6/SYCMV5Gb8WanK5Umsw5y4Ek6y6HbAKJG
	w42yK64wBbXn60vG5ADVrv9/Hft8j6oa7re2qhOoFox2Kboj3A+6wuZIroGkCZG442nfPY4FZHk
	YHuaq5Jpr5fPNSS8mANhGd++Eao7p1MpFO+Y8loD0Y8TJ28OuyMwYFKEM+nXngEJbdzLJqGCcq4
	WD6jw==
X-Received: by 2002:a05:600c:6211:b0:493:dcad:84da with SMTP id 5b1f17b1804b1-493e683c3b2mr97323745e9.1.1783673124743;
        Fri, 10 Jul 2026 01:45:24 -0700 (PDT)
Received: from localhost (2a01cb001331aa005f82d0ccbe50ecf8.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:5f82:d0cc:be50:ecf8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d843csm57226260f8f.14.2026.07.10.01.45.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 01:45:24 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jul 2026 10:45:24 +0200
Message-Id: <DJURCP56FOJD.V88LBYAABFID@smile.fr>
To: <yocto@lists.yoctoproject.org>, <jean-paul.saman@m2x.nl>
Subject: Re: [yocto] Howto solve pseudo abort issue? #bitbake #fakeroot
 #linux #raspberrypi #scarthgap
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <OJgj.1783672463587758202.vk0n@lists.yoctoproject.org>
In-Reply-To: <OJgj.1783672463587758202.vk0n@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 08:45:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66629

On Fri Jul 10, 2026 at 10:34 AM CEST, Jean-Paul Saman via lists.yoctoprojec=
t.org wrote:
> The problem:
>
> Our yocto build system suddenly started failing on =E2=80=98do_package=E2=
=80=99 due to a pseudo abort issue. Even packages that have not been change=
d recently. The same happened on my local development system.
>
> Searching in Yocto discussions or other sources did not provide a solutio=
n that works in our case. I tried the following solutions (NOTE: this packa=
ge was not changed when the problem started):
>
> 1. bitbake -c cleanall miniflex-generate-salt && bitbake miniflex-generat=
e-salt
> 2. bitbake -c cleansstate miniflex-generate-salt && bitbake miniflex-gene=
rate-salt
> 3. examine with bitbake -c devshell miniflex-generate-salt
> 4. set parallel jobs to '-j 1=E2=80=99 in conf/local.conf
> 5. remove build/tmp and rebuild entire distribution
>
> The logfile suggests there is a path mismatch.
>
> I have =C2=A02 questions basically:
>
> 1. What I do not understand is how this can happen, suddenly without a cl=
ear (at least for me) cause?
> 2. How to solve this situation?
>
> ---
[...]
> tar: ./usr/share/licenses/miniflex-generate-salt: Cannot mkdir: No such f=
ile or directory
> got *at() syscall for unknown directory, fd 4
> unknown base path for fd 4, path share
> couldn't allocate absolute path for 'share'.
> got *at() syscall for unknown directory, fd 4
> unknown base path for fd 4, path share
> couldn't allocate absolute path for 'share'.
> tar: ./usr/share: Cannot mkdir: Bad address
> tar: ./usr/share/licenses/miniflex-generate-salt/xxxxx-LICENSE: Cannot op=
en: No such file or directory
> tar: Exiting with failure status due to previous errors

Hello,

That looks like https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16143
I think you just need to upgrade OE-core/poky on a more recent
scarthgap. Specifically, you want pseudo >=3D 1.9.4.

For the explanation, Ubuntu based-distro recently got a tar upgrade that
add a new syscall that pseudo needs to handle. Some user worked around
that by changing their host tar version.

Does that helps?

>
> ERROR: Logfile of failure stored in: /home/jpsaman/Source/xxxxx/insight_t=
est3/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/miniflex-generate-=
salt/1.0/temp/log.do_package.21002
> ERROR: Task (/home/jpsaman/Source/xxxxx/insight_test3/sources/meta-xxxxx/=
recipes-applications/miniflex-generate-salt/miniflex-generate-salt.bb:do_pa=
ckage) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1789 tasks of which 1775 didn't need to be=
 rerun and 1 failed.
> NOTE: Build completion summary:
> NOTE: =C2=A0=C2=A0do_populate_sysroot: 0.0% sstate reuse(0 setscene, 1 sc=
ratch)
> NOTE: =C2=A0=C2=A0do_deploy_source_date_epoch: 0.0% sstate reuse(0 setsce=
ne, 1 scratch)
> NOTE: =C2=A0=C2=A0do_deploy_archives: 0.0% sstate reuse(0 setscene, 1 scr=
atch)
> NOTE: =C2=A0=C2=A0do_recipe_qa: 0.0% sstate reuse(0 setscene, 1 scratch)
> NOTE: =C2=A0=C2=A0do_package: 0.0% sstate reuse(0 setscene, 1 scratch)
> NOTE: =C2=A0=C2=A0do_populate_lic: 0.0% sstate reuse(0 setscene, 1 scratc=
h)
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 1 seconds
>
> Summary: 1 task failed:
> /home/jpsaman/Source/xxxxx/insight_test3/sources/meta-xxxxx/recipes-appli=
cations/miniflex-generate-salt/miniflex-generate-salt.bb:do_package
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
> =E2=80=94
> Kind regards,
> Jean-Paul Saman


--=20
Yoann Congal
Smile ECS


