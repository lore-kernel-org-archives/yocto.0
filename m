Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75E3AE00566; Tue, 14 Aug 2018 23:47:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com
	[209.85.161.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 612C0E003D7
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 23:47:27 -0700 (PDT)
Received: by mail-yw1-f47.google.com with SMTP id v197-v6so179970ywg.3
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 23:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=YhqoRaIJu20ITox1A8ZiJvHEaLm2u1Mg5XYy0P4AoNo=;
	b=KTL9OVVr1XsH70NCmKGyoh/3SWU9wUcrUFP0ljKYoC0R0qEmHKBxID1mSslOxokinZ
	MHJdQgkbB/SRb+gjN8QM0vpOaOQ8SIP41TXCCvkNU0luQVgHwI5IkQPdjLglk2d07Z6A
	f+rKC8nnogQmnRYjueaI5eBvpOJCaNZry9yymL5zaeJ7gOOq+xt9pb4Xpo1yuIv3iftv
	WTd4V7zXZoUsDC6VVF/6uKH2vqGN3aRApmpWIwpyhgPNConV64H104k6hNrOnlPk5Zro
	LrXbTLiyNjx+NPRoOGhCiYUA4Z0wWeFnFh7MBY4AVM77HDkoLovnhrI/RdKGhM4PH8nT
	rycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=YhqoRaIJu20ITox1A8ZiJvHEaLm2u1Mg5XYy0P4AoNo=;
	b=j9UBObgee+qyRknMbk8CxdCZNxi5uAinfrJyLO/tMLHomUBbRDblYrzhPg+J71bIDt
	s/VxImRWI4q4ZurI/so95kMhuQ82Kx61eXNI4/zxNyw2Kp3igl4ZxAtiG5EKJh8PBb7J
	R8ho623pilsL8Ql4iazVE5JojI1E2U3IVBLlGGxttq6Joh4YTVffiy/BIa8qK2g1kmlE
	zZ8ywA3Pwu5rNaXs0/GkDjP+z6oAoCylXZf7410nEDNuhxS6PnmRLD+WNtaQ8zV+P8Lc
	eoJTX+gOZwRYdAywl6fHh6okQxjpmh+u3gge7Y/YIJ+FzuGFa+wqv7N5rSTvUTGRKZmX
	scDw==
X-Gm-Message-State: AOUpUlFPMj9w2iogSVVgMzip0D8eOaS6THW1BiI4G1qZc+220jUGTgqa
	owKlbuf6o/O0Mf0jrRDF1trXS0UapFo=
X-Google-Smtp-Source: AA+uWPyOHS/t6/yKc4MQ0yIIJV2+0J7YlOcFHbW1SPQm4GnzJqVmUEsaZ6oRQydRIYP5OoKCKFKFsg==
X-Received: by 2002:a25:4744:: with SMTP id u65-v6mr2522883yba.9.1534315646460;
	Tue, 14 Aug 2018 23:47:26 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	v185-v6sm9808094ywc.94.2018.08.14.23.47.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Aug 2018 23:47:25 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 15 Aug 2018 02:47:24 -0400
Message-Id: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 06:47:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

There seems to be a problem with the core-image-minimal bitbake for =
raspberrypi3-64 target at head of sumo in all repos.  I wonder if it=E2=80=
=99s also a problem for the raspberrypi3 target.

No kernel modules appear in the .manifest, and no kernel modules are put =
into the sdimg.  It=E2=80=99s hard to believe it=E2=80=99s true, but =
that=E2=80=99s what I'm seeing.

The problem does NOT occur for the rpi-hwup-image bitbake, which is =
actually deprecated in poky 2.5/sumo.

Before you retire the rpi-hwup-image bitbake target, will you please =
make sure that the kernel modules from the core-image-minimal build make =
it into the .manifest and therefore into the sdimg?

Please let me know where to log this issue, so I can send you the =
.manifest diffs, some ls command output showing the large size =
difference between the core-image-minimal and rpi-hwup-image sdimg files =
for identical builds, and perhaps some file listings to show that one of =
the builds contains kernel modules (rpi-hwup-image) and the other does =
not (core-image-minimal).

Steve Pavao
Korg R&D


