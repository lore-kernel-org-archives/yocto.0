Return-Path: <galbicka.tomas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DA6E00826; Wed,  1 Mar 2017 09:49:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (galbicka.tomas[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B3AFE007AA
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 09:49:00 -0800 (PST)
Received: by mail-yw0-f171.google.com with SMTP id d1so38622792ywd.2
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 09:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7bvr7QUJFdXtPIDkIP8J/MAhr6fWLDPAs+Bd5zZ9t/U=;
	b=RWSZcAOpigZv4mGjD0gz++Li3B1k/TV4zjclaVMTAPH6Ho7p004Qenm7HUwjoTbdN8
	PcvfWVisHKqgC5Wespw+pELaW+x9ZzL+X+yWBkyZv07Szg7qqf2O4Jiq/7IJnpfzqNvy
	nnn1DZlwcZN50P34k6bwM8u9jRYoc+P1QhMU1Mcnv0CjUBBNnCmI9PAH+Lj7Z68V9w84
	659jcCXIvMifwgh5WQoen2R6/Vc6J8GL8NS4peNSYIYOhiHasvyr3MnMA/MNAJBlmDmR
	7fvG6Mp4Oztf/tJ9ZwdsyxM+NMjjeS2C8D6PzY0DmWz7nX4Ty8G4tCzjnB4DUb/HwGDV
	DTpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7bvr7QUJFdXtPIDkIP8J/MAhr6fWLDPAs+Bd5zZ9t/U=;
	b=i24YUd1VihOf+nZUY0MF61fP3/ijRrBwrkLHptV6kaOYZO35rylvEUOXOaOSvpFCkQ
	7kakMuijUMIjZgz6vGIhtBp15ddqmlviUzHS5wCMM2SSsFb4Ork9Hs1fsfnnNX7/qw7h
	R4M7rYHRK7GesuBX/IFU5Ro/O2E3ihKhfvqKHGbwpyxp2G1Vf586DSq8hxdKT1pygq2V
	wONdjHtgYdNG7xvvOxkltJlhRAEQyv2I8uNSWTC2VQZmqXMFTqoafjtyxXCmG0XOyEmr
	AvNEwYluJo5P0Wk0cp0b/xgbC7bvXdlKHnF9uWPCjAUdBY6QlF8g+G+BATdJQsNQmFbs
	dN+w==
X-Gm-Message-State: AMke39nsrTq/6tqmedmlY9M/DhQxsvrafT/gUQmhRcjR3JE9gw4e1ctZ2UZOCXVDDEoJK77TZ9qNntnFg1LHPQ==
X-Received: by 10.37.160.97 with SMTP id x88mr3432857ybh.171.1488390540130;
	Wed, 01 Mar 2017 09:49:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.171.163 with HTTP; Wed, 1 Mar 2017 09:48:59 -0800 (PST)
From: =?UTF-8?B?VG9tw6HFoSBHYWxiacSNa2E=?= <galbicka.tomas@gmail.com>
Date: Wed, 1 Mar 2017 18:48:59 +0100
Message-ID: <CADWA4U81joTQqmZgjimQ53Mt9umsejWnF=bjvgP43UVqVxi=gQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto create tar image Permissions error, tar: ./etc/gshadow+: Cannot open: Permission denied
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
X-List-Received-Date: Wed, 01 Mar 2017 17:49:01 -0000
Content-Type: multipart/alternative; boundary=94eb2c19a8c06ea1350549aeed08

--94eb2c19a8c06ea1350549aeed08
Content-Type: text/plain; charset=UTF-8

Hello,

I am using Yocto Project Krogoth 2.1.2.

And sometimes it happens to me that in the final stage
create tar image do_package it will fire error bellow about wrong
permissions.

tar: ./etc/gshadow+: Cannot open: Permission denied

It happens when tar is doing archive.
I am doing always clean build and it happens like every 3 or 4 times.

I have not find any resolution for this anywhere.
It looks like build will set wrong permissions what that file or something
----------.   1 user all-users    0 Mar  1 18:10 ./etc/gshadow+


Have you encounter this issue?
Have it could have been solved?

Build Under CentOS 7

Thanks


Regards,
Tomas

--94eb2c19a8c06ea1350549aeed08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div><div>I am using Yocto Projec=
t Krogoth 2.1.2.<br><br></div><div>And sometimes it happens to me that in t=
he final stage <br></div><div>create tar image do_package it will fire erro=
r bellow about wrong permissions.<br></div><div><br>tar: ./etc/gshadow+: Ca=
nnot open: Permission denied<br><br></div><div>It happens when tar is doing=
 archive.<br></div><div>I am doing always clean build and it happens like e=
very 3 or 4 times.<br></div><div><br></div><div>I have not find any resolut=
ion for this anywhere.<br></div><div>It looks like build will set wrong per=
missions what that file or something<br></div><div>----------.=C2=A0=C2=A0 =
1 user all-users=C2=A0=C2=A0=C2=A0 0 Mar=C2=A0 1 18:10 ./etc/gshadow+<br><b=
r><br></div><div>Have you encounter this issue?<br></div><div>Have it could=
 have been solved?<br></div><div><br></div><div>Build Under CentOS 7<br><br=
></div><div>Thanks<br></div><div><br><br></div>Regards,<br></div>Tomas<br><=
/div>

--94eb2c19a8c06ea1350549aeed08--
