Return-Path: <laurentiu.duca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D08FE00CC4; Tue,  5 Dec 2017 06:21:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (laurentiu.duca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB0F5E00B48
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 06:21:35 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id d23so249929pfe.9
	for <yocto@yoctoproject.org>; Tue, 05 Dec 2017 06:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kjkme7V7x5uUQiu/jd0kobHBcI8//WsftcBRh08uHOY=;
	b=edc+JDRGGAEo7B2GF7+gIz3Imt80pmOBG3v3KoFTkecHffmE9eIlhpL29XrwAt6qqX
	33vLQHX878TZja2vSQWgLw+5a93cIl3LM5F4Ffvw1wU590i6YwjiKPM0000vMTTNaQjt
	0iH8f0MuYKonP3EqgaM3JzAtXEhbkD0artKeHIeYVMRtUy87Szvo4/BSpmq/5XpXhMom
	9nsGlQ5NB2n9ZRGrBKh515SoPKxZuDBSooWDuiZDob60BvX5Ms1xcIyIlYY4EOccKJ4G
	597VcdpxKJ+kXLD41CdlaXqFQPqDF+XKpyFMzHAExpHC4sYa5QSeeqn42sttCm595gGG
	VayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kjkme7V7x5uUQiu/jd0kobHBcI8//WsftcBRh08uHOY=;
	b=rh+r2/1ip0s8xWAp3XIvvSHoKez7O2Mnsfuwbfj2qmawAJS1nd+rX9Y8LBtRn+a36e
	BThJUGz00wQLi6t8h0fovsUU/C1BWpiuwIPe61a+AKnIMcToRZoawJ+XqCsdFO38LgzU
	OaqvIGUG0UC8OzmKJXU7zkYAm6s/0N//b4jzXb0Jp5gh7BwBSRWLvl7l/DEqnuWQZaFc
	ngCy/zSDnu1P9NHw7VCfIPFI/7IOd6GfgBNElSqZBtfQIHD8KRUMUR1iJVkcy6xkRlAd
	jFHeT+CiAmwP0focx4ZTVYWCkQXRY8Osp/e/q2thdrtw6jjJxw14obt7831e966oMtwX
	my2A==
X-Gm-Message-State: AJaThX79NnWmGGzhevd013pcCMa9+x3DpkENtpEj7gkBH/c8vbqrFiq6
	At8SM1gowuMhWf5SDV1MYXxOuTO+cowx60iNjbU=
X-Google-Smtp-Source: AGs4zMa3cBesBHNFRuFp7o2wkT0vaULY2UoQycs/iEl9XKBol2ZSJlFGgCHGzDK2dpqB9fkV/oWqogqrov/nHSB9RI4=
X-Received: by 10.99.110.201 with SMTP id j192mr17798680pgc.70.1512483694876; 
	Tue, 05 Dec 2017 06:21:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.162.48 with HTTP; Tue, 5 Dec 2017 06:21:34 -0800 (PST)
From: Laurentiu-Cristian Duca <laurentiu.duca@gmail.com>
Date: Tue, 5 Dec 2017 16:21:34 +0200
Message-ID: <CAPm8-H4f4XaMThA7V0kpUBoRCF_xDJdRkOenqyG9XTyMbvE+-A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Run application at system boot
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
X-List-Received-Date: Tue, 05 Dec 2017 14:21:37 -0000
Content-Type: text/plain; charset="UTF-8"

Hello yocto community,

  I want to know a few things
about how to configure yocto such that
- a simple application (let's say a hello world C program
from a new recipe) is run at boot time.
- run a kernel module from a simple recipe at boot time
and automatically build its "/dev/hello" interface file
(which normally is done by hand using mknod).

  I appreciate any hint, example or tutorial regarding this questions.

Thank you very much,
Laurentiu

