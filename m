Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B21FBE01C9A; Wed, 13 Jun 2018 21:02:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64654E0044F
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 21:02:25 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id f79-v6so4408514oib.7
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 21:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2OlQZIzMavnZkXqLmbvTffwy1hGllrFrOl0rZcETr/Y=;
	b=sZQKoxNa2bZ7IB3/FIEygmvyDqNN/mASKu/4Ivgfax6cpl4dVjt5WOLBk8yO6MWbNA
	S81JwXJ+CVnwg1/7+2YSTcqZ+/D/YduExEVHEeLWtQ3KnCfRbs82KO/kLZj/9Ru+2lk0
	fje1jc7B+IrY5yjbSr43/c4qiJZlB5XqzE9p6XEwYWdLVIG+b9pqMHYj39APRx6cB6ky
	SV3PhGvrEW3N92FuazdrQoxlabZYJsVH3pYupZfcVB/JYkDO3XXz/Ye1vPriLnWxqRI4
	Fw1+I1p3BFM2cEa1ATJgdVWtzQYw2BgpsoW5rFMtUZS+/VSCBa7FBvb9N+LGPogaBBFz
	knew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2OlQZIzMavnZkXqLmbvTffwy1hGllrFrOl0rZcETr/Y=;
	b=uftJIZxqwuU8X1oSqjsQxc7J+cehVQmRzNfDx6D6WgDwVx6HAAQBEYGnk2MumSy2gS
	gJ28nAqwd3cR5yQ2AJZxjtxeqcQWj2kDDURzN+INCfxBM5X641gPRNMsfcAryqEAEKkc
	FRdzh6OypnkEBf4TLPYGCdb+M+jIEkDNfkBFfp7IfOx5JXvnVLhH5heV2rwaBQpnmCcO
	wvca7U/AomvCP4V/peAJDiv8Pv5b+FLWHj+YpSgrcSvIBGrARZsz3D6Bc+5NWw0xTaqX
	b4jUsHe3Dc/pYI3L7Res9RiPFsSm7HaBzN2c2RzVxBuEVKVJvPbBtWuhLnGrm19S8Upq
	bxZA==
X-Gm-Message-State: APt69E1FctEt1FbHlGpTB9GkdMgtOk+QLTbjBjoaxGDV6aOmlOStslut
	VW0e9lxPZwvoS48uM3V4b7uv3WClWAT85LVwwlbefdiI
X-Google-Smtp-Source: ADUXVKLBX+5F5gKCgQUBqrDjun8ShyFRSmD7Dpd5laZEEnhi7IE7z6riQcMWTZMkwal9xKsKiNmVG1sMrRuX5vQyQMA=
X-Received: by 2002:aca:e082:: with SMTP id
	x124-v6mr390223oig.220.1528948944592; 
	Wed, 13 Jun 2018 21:02:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP; Wed, 13 Jun 2018 21:02:24
	-0700 (PDT)
From: Tim Hammer <tdhammer99@gmail.com>
Date: Thu, 14 Jun 2018 00:02:24 -0400
Message-ID: <CALh9vaXCbqBe_49fi3OFs_Cj56s=J7Bvdv6f8BfWz9QMhmJQUw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: devtool finish & patch order
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
X-List-Received-Date: Thu, 14 Jun 2018 04:02:25 -0000
Content-Type: multipart/alternative; boundary="000000000000b8e2d1056e922a1b"

--000000000000b8e2d1056e922a1b
Content-Type: text/plain; charset="UTF-8"

My changes for U-Boot are not working as expected. I am wondering- did I
use devtool incorrectly?

I used 'devtool modify' to create a working copy of the vendor's u-boot and
copied & modified files to add support for my custom board. I did my work
in 3 distinct and commitable steps, resulting in 3 patch files in my layer
when I ran 'devtool finish'.

When I pulled the changes into another clone for validation, it appears to
be applying patches in reverse order! It is attempting to apply patch 003
but cannot find the file to modify. That file was created in patch 001.
None of the files created in patch 001 are in my working directory.

I reversed the order of the patch files in the .bbappend file and it worked
fine.

Do I need to use the tool differently to get the patches correctly applied?


Thanks!
-- 

.Tim

--000000000000b8e2d1056e922a1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><div>My changes for U-Boot are not wor=
king as expected. I am wondering- did I use devtool incorrectly?=C2=A0</div=
><div><br></div><div>I used &#39;devtool modify&#39; to create a working co=
py of the vendor&#39;s u-boot and copied &amp; modified files to add suppor=
t for my custom board. I did my work in 3 distinct and commitable steps, re=
sulting in 3 patch files in my layer when I ran &#39;devtool finish&#39;.</=
div><div><br></div><div>When I pulled the changes into another clone for va=
lidation, it appears to be applying patches in reverse order! It is attempt=
ing to apply patch 003 but cannot find the file to modify. That file was cr=
eated in patch 001. None of the files created in patch 001 are in my workin=
g directory.</div></div><div><br></div>I reversed the order of the patch fi=
les in the .bbappend file and it worked fine.<div><br></div><div>Do I need =
to use the tool differently to get the patches correctly applied?</div><div=
><br></div><div><br></div><div>Thanks!<br>-- <br><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><br><span style=3D"font-family:&quot;arial narrow&quo=
t;,sans-serif">.Tim</span><br></div></div>
</div></div>

--000000000000b8e2d1056e922a1b--
