Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7367BE00D00; Mon, 23 Sep 2019 14:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 163DBE00B33
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 14:48:39 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id x3so9015114oig.2
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 14:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=7GJdn2N4oTIVsUbvQsENq5p/zSFAtZAXBMF+raWuZQE=;
	b=cpQT4dpJ46pm6nKtd7uoxuRnKwH+XHa4+N5JmpFM3HgQZmAEKbf1251g/Dk8wxEr73
	TQI/q94pqS/iN3R4cROdb9L7FCakRO518JKp+X5MnbWiXUcycjPGPzn3Xdjsudn40LR7
	xTTNP0xGKfSyQj99EDIojwMb1rze+a5REJHLrIyyRrD/XeCS45Ird4A2jHaCG+v8rN6e
	FwIsqRh2Kg1WDtqakRWfgzOqBDaAZNTro0vKrwGvQ6gKzlVzIZ1mSlDy96WaVCzLen9b
	OSYPP85P7jtcC422xQMKlDtLLt0RNPh4YSgd+7ri53vRYbmJs7Azwm9yEuOJP1HYGhns
	1EJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=7GJdn2N4oTIVsUbvQsENq5p/zSFAtZAXBMF+raWuZQE=;
	b=a/izcVniRSsZuglhjgUEGZgCI+v8Hfg/bPjYHlllgnMLmlBOuvdCM59Rn0qXd7ZyX2
	TjSJgT9+rtr2KWHxKKxNVEV4hqK+oQ2kVZUV0c/34Q2o1v7Z4xOblTF1LRdo6u1HPWUy
	eI4cH03ooVa0GQfR2Hun/0iU8JWKYNzn5CaMPkk5bXYPKgFP6+OSGYl9O4QxTPK5ZRi8
	x1Zzm/m4Xe9wUtQjCOwbZVDybQOHsRYRV2aOSnRkMTFrOxN/Cksvt472GhLMWzQJr6d6
	E7Ewzb3frPEq7WU8LguvimNFTCty0iSwiN5jN3vtlzO23gBGCkOqhdXHVc17IV+sTbX9
	3OZQ==
X-Gm-Message-State: APjAAAWjEzfzWZAhgnL7AV0vOeFNDq6enVs7CjJWaCAVvIN5wcqadBoY
	V6ixtw0G4S0g2ws1iZlH2ycBWh4ytiLxkIztCs73DGWsYOI=
X-Google-Smtp-Source: APXvYqwNTof4pje90BejRbolkH8dBK2t4Yp3117AhJrakXv7Uj0SfJZF3+bCQzee2NkHC/m3xn1hXDin/Ke8H0yN0LQ=
X-Received: by 2002:aca:50ca:: with SMTP id e193mr2057647oib.110.1569275319189;
	Mon, 23 Sep 2019 14:48:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:ce8f:0:0:0:0:0 with HTTP; Mon, 23 Sep 2019 14:48:38
	-0700 (PDT)
From: Yann Dirson <yann.dirson@blade-group.com>
Date: Mon, 23 Sep 2019 23:48:38 +0200
Message-ID: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: bunk@stusta.de, Simon Spannagel <simon.spannagel@cern.ch>
Subject: gitlab-ci helper scripts for OpenEmbedded builds
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
X-List-Received-Date: Mon, 23 Sep 2019 21:48:40 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

We released our scripts to help in setting up continuous integration
of a yocto-based project
using Gitlab-CI.  You'll find the repository at
https://github.com/BladeGroup/gitlab-oe

Although we're using this in production, it still has a couple of
rough edges and may need
tuning for different usages.  We'd love to hear how well it fits (or
doesn't fit ;) with other use
cases, and will gladly consider evolutions to make it more generally usable.

Best regards,
-- 
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

