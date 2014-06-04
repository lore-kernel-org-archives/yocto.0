Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F9FE00B68; Wed,  4 Jun 2014 01:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6BBE00B20
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 01:59:21 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id 63so15455108qgz.30
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 01:59:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=80D4Lyiw4GJWrtA67t1nbY5ayXv9M6YNfVJq8LFRBbg=;
	b=SIFcIGndiW96K72g+Ance60BQC3RN3ro/kH8g2W1FBEXy/r/B+sN6eP4ZQYzORTAFb
	jURjuT9WxPxG4/0lEV3eBThcPBNtcx+/1uvraIywXga18VxPDDaOt6nA9te/lk4IfVMv
	TgnqtvwhyxrQGNn8pwXNLpW+I1PF0L5U41U4N41jOAyfg3H+RPjdh//1AUknnMNeVUky
	C6B7oVMDn1KavHRUYKIoVaTEeFrUnzSWoGRPcQdRR01JyWb0ZEKMJvwtElU//qiEKoVD
	6Lz4Z88BuIN2dU5k1fLAVDkX+++9zcLJxB5OUReKEG8+lA5+eu2zLxQ/4OkDeYLQOw1o
	lb6A==
X-Gm-Message-State: ALoCoQmP1G5qhh34V9qMtSm+6bA0DT4zXtLm+nsvftpnMrwoNlDLdQ98lwnEe4OwRYsESy1jAoH7
X-Received: by 10.224.166.73 with SMTP id l9mr3612209qay.34.1401872361338;
	Wed, 04 Jun 2014 01:59:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 4 Jun 2014 01:59:01 -0700 (PDT)
In-Reply-To: <lmmmm6$o20$1@ger.gmane.org>
References: <lmmmm6$o20$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Jun 2014 09:59:01 +0100
Message-ID: <CAJTo0LZsgxt9des=d=WQJy1E0VsJh_e9+8RCcHscodG=_V=woA@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best way to add conditional configure option
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
X-List-Received-Date: Wed, 04 Jun 2014 08:59:24 -0000
Content-Type: text/plain; charset=UTF-8

On 4 June 2014 09:51, Neuer User <auslands-kv@gmx.de> wrote:
> The conditional configure option is "--enable-imx6".

You can use a machine override, along the lines of:

EXTRA_OECONF_ixm6 = "--enable-imx6"

This will set EXTRA_OECONF to --enable-imx6 if the MACHINE is ixm6.
It gets a little complicated when you've general and machine-specific
options but for a single option that works just fine.

Ross

