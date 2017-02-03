Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 614CBE004D2; Fri,  3 Feb 2017 10:35:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44A4FE00480
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 10:35:20 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id v184so8600957pgv.3
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 10:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=OWXf+31Vgm6ok3ug2WZgOzbxREVfw7aUgMpA9HcwgqU=;
	b=onps26j9/0Q2C+VPHzp7P8niAjnUsqo0uikext062vVkFXdKxVoWL4wHHtV0iw3aST
	iMJ2mClRcXMjWj+ybKO+mikE+elZLGriCsZIO9eJIgpDJA61w9aID4Vk8U4o0G/2gjKG
	2cL2Q6tvbAlRE1j+WbB5DtcqMivRhRLnmS5WP8H9RCLMMCY1+kyelZ2LgiD3KFRaPSVu
	Gzklhn0g4gzPvdTnJtRdjhpwIUQ9cCUmOpziKzKfFFH8jmhd2Iax4sSzA7cgmGi259hf
	k8skJQoJ+/jcD4ALeSELn20qwCE7em18oHqc13XipFlGqjoWaUdxjjMZnJSeLN+AfXTd
	U7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=OWXf+31Vgm6ok3ug2WZgOzbxREVfw7aUgMpA9HcwgqU=;
	b=Rxb0TFkvpSSpkqfpCAqKoGCIPZ5lrDkyemHVAekK94Ol4VGP4cnMkzMBXWMQFwV9Zi
	TfTzLH9L4TETf35mOdtxAINwECLM9M2GHw/95vAaWTZxNt/mV/Cxk1gEJ3MqrJ1YKrey
	jgUBaxhHa2DsypvFC/Mci21BQlo2svalNELVe7AbylQ0atlxGvwpKQI0VBS96/S2vq4T
	XdOcKPEk2PPDV8ZWjKBMRd/dkgv94ySjbCa4tm1LJMxFH9QcWbkL+UYbi+UI9jDDOQTj
	cqDtiLyGNvdAeVjVQvpn1WH3k2bpnDwzP5GrxRrA10uIMABHIoPEuIgKV377bw2v0Lin
	0zXg==
X-Gm-Message-State: AIkVDXIpXD6fKgOQ6ZDmIzAkBzPNI5M8PK7xoGTb3Iw/hOHs8R2u5OEZivCkvio0tOAA6Q==
X-Received: by 10.98.66.82 with SMTP id p79mr19790533pfa.10.1486146920562;
	Fri, 03 Feb 2017 10:35:20 -0800 (PST)
Received: from Akusters-laptop.local ([2601:202:4001:9ea0:2063:277e:c36d:dab2])
	by smtp.googlemail.com with ESMTPSA id
	u28sm4008985pgo.20.2017.02.03.10.35.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Feb 2017 10:35:20 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>, yocto@yoctoproject.org
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <b85dd671-0c0b-73f8-0c99-ce1f40bf8892@gmail.com>
Date: Fri, 3 Feb 2017 10:35:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: Re: [meta-security][PATCH v2 0/9] tpm: virtual TPM for qemu
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
X-List-Received-Date: Fri, 03 Feb 2017 18:35:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 2/3/17 12:46 AM, Patrick Ohly wrote:
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
In staging,

Thanks,
- armin
>
> Changes in V2:
> - add --system to tss user and group creation
> - revised commit message for wrapper scripts (swtpm_cuse needs
>   absolute path to tpm state dir, can be passed via parameter)
> - another swtpm SRCREV bump
>
> Patrick Ohly (9):
>   trousers: missing libtspi.so.1 in libtspi package
>   trousers: recommend tcsd
>   trousers: tcsd.conf must be owned tss:tss
>   swtpm: enable native and nativesdk flavors
>   swtpm: depends on tpm-tools
>   swtpm: fix compiler format warning
>   swtpm: cuse packageconfig
>   swtpm-wrappers: simplify using swtpm-native
>   swtpm: update to latest tip
>
>  recipes-tpm/swtpm/files/fix_lib_search_path.patch | 64 ++++++++++++++++-
>  recipes-tpm/swtpm/files/fix_signed_issue.patch    |  2 +-
>  recipes-tpm/swtpm/swtpm-wrappers.bb               | 41 ++++++++++-
>  recipes-tpm/swtpm/swtpm_1.0.bb                    | 14 +++-
>  recipes-tpm/trousers/trousers_git.bb              | 11 +--
>  5 files changed, 124 insertions(+), 8 deletions(-)
>  create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
>  create mode 100644 recipes-tpm/swtpm/swtpm-wrappers.bb
>
> base-commit: 6787dd986122cd6420b1f348c4550a42ed596f57



