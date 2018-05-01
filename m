Return-Path: <irving@irving-st.id.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEAB8E00C54; Tue,  1 May 2018 03:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15808E00C40
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 03:58:56 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id y8so7161008ual.5
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 03:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=irving-st.id.au; s=googledkim1;
	h=mime-version:sender:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=MWtYbx9bI6oF8qE+i+kePFECIOcpXKG3kk4mkMYdGt4=;
	b=iNa4NQEZLNz6+SQx4wopj0KmC6NeV96QY7UHchExrrDz74eBcj1xZn+CadB9bn6UF7
	WLlMRn8FeHCBa9t+LZqm9nNGTg/Nv9MRy4wSxQAjvuE77RtniycKqNUoieqteurElpq1
	U5aPLYuN5XMoCFZbGCE6rJfitMdaXYZO1leX0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ssfivy-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=MWtYbx9bI6oF8qE+i+kePFECIOcpXKG3kk4mkMYdGt4=;
	b=L8zjxyXx631760kj5YYw7oHplkX+939QtCq2eNExn991LILoAhMhhlphUkG/ebTZEV
	xfAcWCbIzVmEZEOWaJ+SBHXdsWmAxByCgJv7oVA9NJKdx99WoQZvQmIKVQSps6zPK1nH
	B4ifiU/4PU537zBLmISytQvXBwgi4jl7uL7q3SFzt6k1ukQcgqZJaiozCzSS5ap7w9MK
	N59HiY0YPdTQoA5jk0AYKxia8q5guxOr2ZJJoldP+XxJQzkoU4VX3gOicyzGmZ/eKpkn
	BLrGXk4orX7S2ZPGGXDmsoLGGNEYHNfn/chzH+lazriDUyUqytofyWOrkvSLNWWhNEbT
	So5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:content-transfer-encoding;
	bh=MWtYbx9bI6oF8qE+i+kePFECIOcpXKG3kk4mkMYdGt4=;
	b=fGv234190xHBiraOjyxSvOazlKdQVTDU2coVFsj2xzLZEYXdYwt+uf0R1qLqahXMFh
	sbcKbceLs42GecehICMKz6UbSnyu5vlWaBoY9fcP6cCYwUSRKjeNgiM1HsbtXR4VNDfq
	L3IJIY2Mo/GWl7CH7AATXp9Ykq/gdGgsrUxktfrUvUTeILQxKlFwP929AGrbpboE5y06
	E2w/dmDlypv2hMWtjKrBiyq4LPxORwsQWkqIw9Ot7p8piImIQDvVaZyij9v0Yvd0YreH
	lKqj3gFEE5pXOS1x+ZUqbxeM+EUBWEr2Qo3AIBf4mM43hfX3BkEf/6Ruz21LjewcWeK5
	m6vQ==
X-Gm-Message-State: ALQs6tCtZNwhJm8+fdDfAWE3D+7TOEMfv7H3cjnNGo8mEdEanQga6WUA
	HPGOMGRqKeQ+SzvZ/062hTb6kiX+CmB5K3kqCPpZfIDe
X-Google-Smtp-Source: AB8JxZpde/PZdDnvc0XKWd8EKSgKpxybkStjQXN7leBzJqRBKWi5jHpTL5Wi+bIHQx1zrOCm35hkCggnrWLILx85Uvc=
X-Received: by 10.176.13.136 with SMTP id i8mr9989929uak.67.1525172335695;
	Tue, 01 May 2018 03:58:55 -0700 (PDT)
MIME-Version: 1.0
Sender: irving@irving-st.id.au
Received: by 10.103.192.143 with HTTP; Tue, 1 May 2018 03:58:55 -0700 (PDT)
X-Originating-IP: [2001:44b8:3152:ab00:c1a5:6c82:81f4:2221]
From: Irving ST <irving@ssfivy.com>
Date: Tue, 1 May 2018 20:58:55 +1000
X-Google-Sender-Auth: Kspkg_VkgQLluLYw5LdLR7WnvTQ
Message-ID: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Tue, 01 May 2018 10:58:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

First time posting, apologies if I miss anything in the community guideline=
s.

I had some problems trying to make an image that contains no GPLv3
(due to corporate requirement) nor old GPLv2 software in meta-gplv2
(due to lack of support).

I tried getting a fresh checkout of poky and adding
INCOMPATIBLE_LICENSE in conf/local.conf , but I got the following
error:

ERROR: Nothing RPROVIDES 'make' (but
/home/irving/srcgit/poky/meta/recipes-core/zlib/zlib_1.2.11.bb,
/home/irving/srcgit/poky/meta/recipes-connectivity/openssl/openssl_1.0.2o.b=
b
RDEPENDS on or otherwise requires it)
make was skipped: it has an incompatible license: GPLv3 & LGPLv2

I tried adding meta-gplv2 layer to bblayer.conf and the error
disappears. I was expecting the license restriction to apply to the
final image only, but my guess is I am also restricted from building
the cross compilation tools (which seems weird to me).

Is this layer required when building without GPLv3?
Is there any alternative I can try, or is my choice limited to either
using GPLv3 code vs outdated GPLv2 code?
If I have to use the meta-gplv2 layer, is there a way to restrict
anything inside this layer from being built into the image?

I tried to look for information on building a busybox-based image (vs
a GNU coreutils-based image) in the mega manual but didn=E2=80=99t find
anything specific.

Regards,
Irving

