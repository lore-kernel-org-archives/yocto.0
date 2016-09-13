Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8963E00563; Tue, 13 Sep 2016 11:55:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4272BE0043F
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 11:55:11 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id y2so397618952oie.0
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 11:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=B+HST6Jot41NUVvV1uYtt/ZLOqVaiBv7YuImU9xNvok=;
	b=upA30YekzQETIyZx1vrn0gKQRePX0rSK181gkqSY9+yq3k6uzBABkW6cUWbJELEV7X
	fhpMRpRAwugfhCAnaeq6IT0ybzHLVuH90hiKrNXYE9JydxOOleCoPgPUOlpZg/soSdQJ
	ufpIVIlSAcaD5ZAsUC4bej7LTJE0qPlPiQ9yeJkfo1SNzxSevsNM92aNVji9sOoVsZeB
	mWN91ct/cmhT735R1QdRWAeskvzZUldetJbxU14WZH8Va49ayP16saOaEKyfQaVdCcy+
	L4s+5l1HZM7F/s2us6/Ycy2JpsDAth6zDvqAsN5RgXuHn1lvoIzMt8jidvr6+EM2GIFo
	T2zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B+HST6Jot41NUVvV1uYtt/ZLOqVaiBv7YuImU9xNvok=;
	b=K8lWQdCevJ/2eviz6rKQzbFJv1RvER0ZpcTWarMa+GTicXmtmYN4idIXo06k3lE7a6
	g/INtExsRigmCiLciS9Dz5MbOJp7olfWxV3aRVNTehL17ZzKvqWQUay9MfzieIJ3lPOD
	rS9hEhY0MO1heQTEfx2bZU3NqEC+WB79ERYpni5gws6RCrQqxNh36P/wIsTt4BM3dfXq
	xRFY4UugBUw+kNXu//rEDiDhtO70Zx/G8VNUd+Ty4xE9YO/myMTy1RJfYY3xlEEhO+VH
	OvWb46otl9yl1Ii2sxMJbFsNZdV2zVicksNByAo6DUmtFX3Os0y9M0rXJQIJg1qPF50x
	44KQ==
X-Gm-Message-State: AE9vXwMzltbTh6uuXGwinU+pBpRfY4/ALezsfGe2apt7zOdZ842cKZ9Jvw2q5hZo2VQeOY5VyPP+jYEMJfqHFQ==
X-Received: by 10.157.18.199 with SMTP id g65mr174833otg.182.1473792910855;
	Tue, 13 Sep 2016 11:55:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.79.208 with HTTP; Tue, 13 Sep 2016 11:55:10 -0700 (PDT)
From: Ronald Oakes <ronaldo@brc2.com>
Date: Tue, 13 Sep 2016 12:55:10 -0600
Message-ID: <CALRMKQqDgV5U_3=i_oQQ+2SzQTGhE3d1szfsomKH0rNp5++Uxg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Out-of-Tree Modules and __stack_chk_fail()
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
X-List-Received-Date: Tue, 13 Sep 2016 18:55:14 -0000
Content-Type: text/plain; charset=UTF-8

Furthering my investagation into why my vendor supplied kernel modules
were failing to load due to the error "Unknown symbol __stack_chk_fail
(err 0)," I conducted the following experiment:

1: I took the sample code from
poky/meta-skeleton/recipes-kernel/helo-mod and moved it into a new
layer as meta-ron/recipes-kernel/ron-mod, renaminging and modifying
the files from hello to ron as needed.

2: I added a new, otherwise dead, function to the (now named) ron.c
function that made a call to __stack_check_fail, which I declared as
"extern."

3: Included it into a new image the same way I've been pulling my
vendor kernel modules in.

When I did this, and ran the resulting image in qemu, I confirmed that
when I attempt to insmod the installed ron.ko, I get the same "Unknown
symbol __stack_chk_fail (err 0)" error.  This was built with the
unmodified Makefile (other than changing the target name) supplied in
the skeleton example, so it should have been pulling in all of the
libraries etc.

So, it appears that even following this procedure the functions from
panic.c aren't getting included in the built module.  And, while I can
continue to work around this with an empty stub version of
__stack_chk_fail(), this leaves me with a module that responds to
stack issues by ignoring them and continuing rather than causing a
kernel panic, which I suspect would be a much more useful behavior in
the long term.

Any ideas how to proceed?

Ron Oakes

