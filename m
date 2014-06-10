Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A60E2E00BEC; Tue, 10 Jun 2014 00:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D0E4E00BE3
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 00:07:43 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so10130807qge.11
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 00:07:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=644f91WL0S+2A9Ae5ZLlxP0kIgGEQPNcOEfjastErJc=;
	b=c6W9XQ/mL6+20ALj2dvd6dTjGMZ1YCG1Y7Y56X9IoPFslbjR2yV/svVvBuOgE9itR3
	5+piLemzOAM5i26B+bNeEwxGupZB03E0WR2jpddbKReVkaNzxf8D6cNdLCCetfm3Db91
	VYc2d4bonx43JH7JEoJsZWWF/RmOV2R8HfTp21mP7JrPM4tG7yIIlAGKxfDwoZJmD6Dv
	NmgXe409MPYY21RIyKmsrvrNs2dn5PrSNp6xYluwqXbHXhNx9bE5Q2cN/tH44cW9kRUS
	rJ0niLlA++qpk21Eref+IcgrVC+JOUzs3TtaotdWBaPUk9FAexwwD2Goy/da7St+3GkN
	OQKA==
X-Gm-Message-State: ALoCoQmVdUyAqjxZfmsUf6JxbySR5w4wiQL9HLPFgZS/WY1AgnRdj4QWuLhqcFv3ayiTNiAVnbrs
X-Received: by 10.140.48.161 with SMTP id o30mr37388713qga.68.1402384063291;
	Tue, 10 Jun 2014 00:07:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Tue, 10 Jun 2014 00:07:23 -0700 (PDT)
In-Reply-To: <9AD1F2A584A7644C9605656D538412FEAA3AE2@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1402288294-19549-1-git-send-email-yaoxp@cn.fujitsu.com>
	<20140609083044.GC7549@jama>
	<9AD1F2A584A7644C9605656D538412FEAA3AE2@G08CNEXMBPEKD03.g08.fujitsu.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Jun 2014 08:07:23 +0100
Message-ID: <CAJTo0LaFhZX8bb8x335Y_-9oz+dbiV8+wS7ZoTumMa=uczPcFg@mail.gmail.com>
To: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] add license file: DMTF
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
X-List-Received-Date: Tue, 10 Jun 2014 07:07:51 -0000
Content-Type: text/plain; charset=UTF-8

On 10 June 2014 03:29, yaoxp@cn.fujitsu.com <yaoxp@cn.fujitsu.com> wrote:
> I plan to add the recipe for "software which associates with DMTF" to oe-core.

Please sent this addition in a series alongside the addition of the
software, as you don't know that the software has been accepted into
oe-core yet.

Ross

