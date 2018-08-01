Return-Path: <pinganddu90@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17B40E00CDC; Tue, 31 Jul 2018 21:52:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pinganddu90[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12B7E00CC9
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 21:52:49 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id b15-v6so32240175oib.10
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 21:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HRugavAyuu1opKU1qZsHVRBtuF5OpiIQdOleWrnGplg=;
	b=uaRyZWae2ZZIKegRihy0323wYbeonTSM9leYgBBsrsHn5uMn5WkFgw0mGvAQtEgaAb
	MhjdvDvr7EujfnPvTbr2mb1r1QNGbzx1/wiVr9YRbwovk+WHLf68fiCDVixH4Ta8Hbji
	ETiNPQNT3Oa+JOlGi5ERTgzLbcRmtenq3ngbBM3WmsMbn7Uv5NfAGxlNUBDQM7E4lRgo
	7/SjJeJjkQAtq99ReNb/X12UoMDLx7RWzwc2vY4UCUAYu2PiC3a7INAcOUGdexUYY7dT
	LS2d46N8Y8ijSNDkRdFyc9uteADUL7txdqFZ29jSaAAUw0gBmbrkzcKOjWxsc3vXpRpb
	0aqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HRugavAyuu1opKU1qZsHVRBtuF5OpiIQdOleWrnGplg=;
	b=fZ1AT9Ol5jEtnv9H1INxXp1w12+DU95Nbn3BL4Jgy8PK3pmTs3duaO91igLJpiKJxT
	Ig9He3zLhIY3pnhcOZ/YCTYsRlCKZURf4dKuPXKvcHF//e0J4c9GmC0XFEimLbuQd2SF
	RhaTUyoGX2zUhpY7PL5m2nc5Z/JOSJZilU1212bNeGGPnlMjsJhc2vfgGl69kVLJWUWg
	2SMLxIPvHKWX/NdmnaF5xEOJYDDvMXWwT8N+pbKc2SAgnccPvVbp7Uhr1+iStgxhpL2P
	qybBDqmM3BwUKmVeNMdP3HnCjmPnPUGcdiSk4b6CBlYc3eCBB5tD22OO3AAkiESSrgTi
	2dLg==
X-Gm-Message-State: AOUpUlFagqvKoLXL6hVEUGbhAGWmBQusBvxSDXToQpCO3YG+zYF8Dg9e
	dU6i5QPD+VUg+HQ5+EBXzyfhsAJSEoHhs8K+1QaKxO1z6nM=
X-Google-Smtp-Source: AAOMgpe9NLYnF3j3VDvpB2LWWEAv8EaBxwKRvCqah2FCVe3p4sC3o2mPQc+Ah8JUsxG/1shzLavvDgkuVkEANiHXTbI=
X-Received: by 2002:aca:fc08:: with SMTP id
	a8-v6mr1827170oii.196.1533099168914; 
	Tue, 31 Jul 2018 21:52:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:7da:0:0:0:0:0 with HTTP;
	Tue, 31 Jul 2018 21:52:48 -0700 (PDT)
From: kk <pinganddu90@gmail.com>
Date: Wed, 1 Aug 2018 12:52:48 +0800
Message-ID: <CAKHP1dv1H9Yua5bUJtb3O-_Xo=bnKFdygpqGi+ethDsM58u_LA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: raspberrypi: dnf can't access repository
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
X-List-Received-Date: Wed, 01 Aug 2018 04:52:50 -0000
Content-Type: multipart/alternative; boundary="0000000000005e6e5d05725877b7"

--0000000000005e6e5d05725877b7
Content-Type: text/plain; charset="UTF-8"

Hi guys
I can't use dnf access the repository, on raspberrypi(zero-wifi):
    dnf repolist -v

That throws:
Unable to detect release version (use '--releasever' to specify release
version)
DNF version: 2.7.5
cachedir: /var/cache/dnf
Cannot download 'http://my-server-ip/': repomd.xml parser error: Parse
error at line: 3 (not well-formed (invalid token)).
Failed to synchronize cache for repo 'yocto', disabling.
Total packages: 0

On server side:
I let the directory ../tmp/deploy/rpm as the root directory on apache2, I
am sure I already run the:
    bitbake package-index

Does anyone can help me?

--0000000000005e6e5d05725877b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi guys</div><div>I can&#39;t use dnf access the repo=
sitory, on raspberrypi(zero-wifi):</div><div>=C2=A0=C2=A0=C2=A0 dnf repolis=
t -v</div><div><br></div><div>That throws:</div><div>Unable to detect relea=
se version (use &#39;--releasever&#39; to specify release version)<br>DNF v=
ersion: 2.7.5<br>cachedir: /var/cache/dnf<br>Cannot download &#39;<a href=
=3D"http://my-server-ip/" target=3D"_blank">http://my-server-ip/</a>&#39;: =
repomd.xml parser error: Parse error at line: 3 (not well-formed (invalid t=
oken)).<br>Failed to synchronize cache for repo &#39;yocto&#39;, disabling.=
<br>Total packages: 0</div><div><br></div><div>On server side:</div><div>I =
let the directory ../tmp/deploy/rpm as the root directory on apache2, I am =
sure I already run the:</div><div>=C2=A0=C2=A0=C2=A0 bitbake package-index<=
/div><div><br></div><div>Does anyone can help me?</div><br></div>

--0000000000005e6e5d05725877b7--
