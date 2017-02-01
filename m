Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77273E00963; Wed,  1 Feb 2017 08:39:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E368E00524
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 08:39:23 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id y143so32171944pfb.1
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 08:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=mVDPGK96YlWWFEP3So50I3xJ89E9bRXMKyKcVX3vg8w=;
	b=InX8iJG7aBjJt6dRr8FpT6mHWgQdWevYVvmW3vKMCTwMVvkFtuQNl2bJd0pf1BhPif
	CfeiLMRVfpddWsKYa1n1wRS3b17glehgixBnVgv/T1V5yfOAPHA76utA7Xq8m0rb7RXR
	nrd/rI+S+rLh9w1PpOLypR9/FmcOvCKlXge37r0AHjIcyMaPFEIUBUWDNhDiZJIxMw8l
	8LE+/6jAjWNmEnL+PdJnUuiwidKYZZkmk3ADWMZ6oQJMCTPh1CuPE0JhfDtbYIHLMY+J
	uT4tyo5wuv3BHNiWrd6iHQ347GOzE/Rz1EMd4wZWtLzFvxfPxZ9gqxJc5W9CjY1mSOY6
	4JFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=mVDPGK96YlWWFEP3So50I3xJ89E9bRXMKyKcVX3vg8w=;
	b=XHCWkvXdYm5GiKk/Rgi0L0IP+pzBsp7M0dIoGBKrtuPJqJgl0s4d3HMCWSDUX7VRGj
	04pSJClMB63M2ojub3/OJrX8hm0BPc0zH0Vq58qnQ3KGdHoSf8ID8H6SabFulzo/BoT4
	gfTkEzyq+Ice+gWan5QO+uNrPQGozlDunCyxWOIlwUKxYZ18fWbdGOOToN9HCacVVehq
	TYJwOv4i8OC7579hNiW7vckKNiR3qQi5FA4LroiUCbPIvfGnvHQDjb6vorz6V0bk7hQr
	RY8CWYHkQYY9c6xgt2nlyS8HOntC/KqzmOEIosLfKFleVOsRoxTdGyYHduvCVwUCSiHi
	sIdw==
X-Gm-Message-State: AIkVDXKiRm1CnXVV1rDMvjqqx1vcstodJxxSj+fzrHoI61cuy0jI+SAAwjTxXSA8XWz5qw==
X-Received: by 10.98.34.130 with SMTP id p2mr4657487pfj.11.1485967162996;
	Wed, 01 Feb 2017 08:39:22 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:d12f:3ef1:f4ff:7b5b?
	([2601:202:4001:9ea0:d12f:3ef1:f4ff:7b5b])
	by smtp.gmail.com with ESMTPSA id
	m20sm51321526pgd.17.2017.02.01.08.39.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Feb 2017 08:39:22 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>, yocto@yoctoproject.org
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <dc1cc1d1-1b53-e2c3-ceb1-d8d4977ecbc3@gmail.com>
Date: Wed, 1 Feb 2017 08:39:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: Re: [meta-security][PATCH 0/8] tpm: virtual TPM for qemu
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
X-List-Received-Date: Wed, 01 Feb 2017 16:39:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Patrick,



On 01/30/2017 11:47 PM, Patrick Ohly wrote:
> I recently started using swtpm-native in combination with the qemu-tpm
> patches to simulate a virtual TPM chip in qemu. The qemu-tpm patches
> should go into OE-core, but currently usage is a bit cumbersome
> (requires root privileges and manually starting swtpm before each
> runqemu invocation), so at this time I only consider the meta-security
> changes ready and useful enough for merging.
>
> Inside the virtual machine I used tpm-tools + trousers to set up
> sealed keys for EVM, which required fixing a few things.
>
> These patches were based on Armin's swtpm+trousers version update
> series which needs to be merged first to avoid merge conflicts.
>
> Patrick Ohly (8):
>    trousers: missing libtspi.so.1 in libtspi package
>    trousers: recommend tcsd
>    trousers: tcsd.conf must be owned tss:tss
>    swtpm: enable native and nativesdk flavors
>    swtpm: depends on tpm-tools
>    swtpm: fix compiler format warning
>    swtpm: cuse packageconfig
>    swtpm-wrappers: simplify using swtpm-native

Thanks for the patch series, I am looking at them now.

- armin
>
>   recipes-tpm/swtpm/files/fix_lib_search_path.patch | 64 ++++++++++++++++-
>   recipes-tpm/swtpm/files/fix_signed_issue.patch    |  2 +-
>   recipes-tpm/swtpm/swtpm-wrappers.bb               | 41 ++++++++++-
>   recipes-tpm/swtpm/swtpm_1.0.bb                    | 12 ++-
>   recipes-tpm/trousers/trousers_git.bb              |  7 +-
>   5 files changed, 121 insertions(+), 5 deletions(-)
>   create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
>   create mode 100644 recipes-tpm/swtpm/swtpm-wrappers.bb
>
> base-commit: 6787dd986122cd6420b1f348c4550a42ed596f57


