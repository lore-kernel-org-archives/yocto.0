Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EFE2E00938; Mon, 30 Jan 2017 23:48:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABEBDE007EB
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:15 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id j13so125584926iod.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=49thtDDAhDXFoh71InuGIEiakTJ/fIhSHhDNYUV/YmQ=;
	b=Oj+ayfuY/AH464EK5jY2QWBdVlQdFI9jP4rUAnr3uTou2N2UJpwRfrR16ae7RJdQX2
	bK0hOJeiKhP+etJpkymcr2iXcw298NfT5Xh1XmxcZPScOyFeH9RbIdZbW9ka4lR9sKh7
	nvmY5uQEsysv1+NLHxQQZwR+NJB1+K3mALkQeuZ6QkRVnYeI7GYbyKZdh97cf6b6t+8r
	zwoGc6XUUxUdUh291tDKgF3HHI+cvyLdCAbFuvkKj18+zE2ATb5pGzPKnvUdUFGgHkS1
	8RqXHxtqxj73996W2927WXqXFXOMWr5qsxwBXClkoKZKcEDBElbSqoIEiBdre9zkCVVL
	T66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=49thtDDAhDXFoh71InuGIEiakTJ/fIhSHhDNYUV/YmQ=;
	b=AKY4UGgNfWRssP9srPP2p0Eeuo2G6WDRyAZSqlCYH7mMStF/oWuKolw1ep7Mt/I8iP
	jB06o2/R0QW8eSGySKeQLOfZDTpmYlcTlHtkgRw/ypRT3nkoLFW8VKAaXX7pk8f7lKlS
	2tA5GsYMsYtgGmxrPe/D1k3slhuRlBKL+Db9q6F8RU7A5ZVjCuSbERcTqLgZOZmBaz05
	sqMGlC6XYqdaIR/hbvbR3trUsMmPgwqX1tJJVSjinyMJWaKHo4OfCV7kVTRMZwNNCtZr
	kZB3mwSY1FPz35v43DG7Zp/i5EW2s0s1ELK22MIPLTSfNIPg3GozzaExxdRBQCQUcwY7
	2DTA==
X-Gm-Message-State: AIkVDXJsIgvVg2lVi8hytogs1TP3VKh22nWlSAYMF4AeI56JvLGuTxFz9ikQlUMD5iaQetJD
X-Received: by 10.107.16.156 with SMTP id 28mr22322563ioq.228.1485848894676;
	Mon, 30 Jan 2017 23:48:14 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:13 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:47:59 +0100
Message-Id: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH 0/8] tpm: virtual TPM for qemu
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:17 -0000

I recently started using swtpm-native in combination with the qemu-tpm
patches to simulate a virtual TPM chip in qemu. The qemu-tpm patches
should go into OE-core, but currently usage is a bit cumbersome
(requires root privileges and manually starting swtpm before each
runqemu invocation), so at this time I only consider the meta-security
changes ready and useful enough for merging.

Inside the virtual machine I used tpm-tools + trousers to set up
sealed keys for EVM, which required fixing a few things.

These patches were based on Armin's swtpm+trousers version update
series which needs to be merged first to avoid merge conflicts.

Patrick Ohly (8):
  trousers: missing libtspi.so.1 in libtspi package
  trousers: recommend tcsd
  trousers: tcsd.conf must be owned tss:tss
  swtpm: enable native and nativesdk flavors
  swtpm: depends on tpm-tools
  swtpm: fix compiler format warning
  swtpm: cuse packageconfig
  swtpm-wrappers: simplify using swtpm-native

 recipes-tpm/swtpm/files/fix_lib_search_path.patch | 64 ++++++++++++++++-
 recipes-tpm/swtpm/files/fix_signed_issue.patch    |  2 +-
 recipes-tpm/swtpm/swtpm-wrappers.bb               | 41 ++++++++++-
 recipes-tpm/swtpm/swtpm_1.0.bb                    | 12 ++-
 recipes-tpm/trousers/trousers_git.bb              |  7 +-
 5 files changed, 121 insertions(+), 5 deletions(-)
 create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
 create mode 100644 recipes-tpm/swtpm/swtpm-wrappers.bb

base-commit: 6787dd986122cd6420b1f348c4550a42ed596f57
-- 
git-series 0.9.1

