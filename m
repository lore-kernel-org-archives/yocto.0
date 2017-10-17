Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 219E5E00BE8; Tue, 17 Oct 2017 07:12:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.50 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDDF7E00B83
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 07:12:00 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id k195so1174329vke.10
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 07:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zoRBPpV2T7i2C6TD/iXyQuuh+sXtkD+dukTqg5Q6TrA=;
	b=YWAqFL9ydacVNPtUlTk97iNIdG0wSCp2RvdXZl7Rljg5NVYCXa1UZbzXNE0sqqfc/j
	TsCGDxoM8uTouyMYthdzwBfMPtWiKscxuSYLa7YMePDYWyX4a+i8rX6fVequxKL3FK+q
	bBu8MN9znMAFZnyISIc9zGwAjGF8LFos9viXRnIexlvRBbNcPZt86N/JzYKB3J3WxynG
	6pKprkihFEBQNAOLVor8v4d262Rpe/4CXJ9TQT12EbC2NOw6HOPGCrO16YRpYuNC+EIh
	Zzjzt/Y8mIY6PdqVKVTatYSf/dyPskKEp2ElCCu4pLv+ntiSDMdaCnU6O5xXvoaXwy20
	VbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zoRBPpV2T7i2C6TD/iXyQuuh+sXtkD+dukTqg5Q6TrA=;
	b=kmH63ZrxqlV4O16gxJAUogePxqhnZseccpdEXh3beLZKXDk4PXD/uavnyXge7lU4aZ
	rwQBuyB+fc0zlcAt2N5VuLR78RqiWf5U+3dig7He69hP2ipVw+b2ugiUGydtS9T7Pn/H
	+oCVfdKY8ULfC3LTo8npW0il5jtcu/Av1O1WgW4rzmMa5ltNhhF1zJoluyCNSI8k3E4v
	zSAdTZeH5Vix2xQLFl2WThPWMKzZYOe+kHX15hUf0KIRCoNmsKczhXpMezCxD4Pqpjlr
	S42odYESbv9WS7QcHXlcBGF+uxZyoWIMpvnqB0FxfZ4MQ8+zEBDBhZybJTSBnlPIADhD
	8BvA==
X-Gm-Message-State: AMCzsaUpoOpzgqdAWU0KJOlQR/OoW7RopMPKat3T9ixtSnYSDQFYN6SC
	5sHLw+otaKVroPXqhxWgVYZ4D0+2fKSGkuT1G/E2Eg==
X-Google-Smtp-Source: ABhQp+SjMoalHjk+BqbCSfwCXDdhxJSLtTNzsGomu08JbZKH9UKdkEWYzHObKI2pCh+qSbHpRe7IX5YmWq1j7RVa5nY=
X-Received: by 10.31.69.7 with SMTP id s7mr3017917vka.70.1508249519997; Tue,
	17 Oct 2017 07:11:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.153.7 with HTTP; Tue, 17 Oct 2017 07:11:59 -0700 (PDT)
In-Reply-To: <8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
References: <1508218121.34337.17342@fedora25.yocto.io>
	<8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Tue, 17 Oct 2017 10:11:59 -0400
Message-ID: <CAMRMzCDyPCzRwuBKmAm1hcK1RXnbsBf5BPffDak7s_t4uTyGwQ@mail.gmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: minimize size of SW update bundle
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
X-List-Received-Date: Tue, 17 Oct 2017 14:12:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 17, 2017 at 9:12 AM, Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
> Hi,
>
> Imagine you have only a limited bandwidth to your devices available for SW
> update. So you would like to minimize what's uploaded (over the air) to your
> devices.
>
> How would you do this with yocto?
>
> [1] and [2] might be able to do incremental updates, but maybe there are
> more ideas out there.
>
> Like how would you get a diff between two release builds...
>

Some ideas:

- SquashFS with agressive compression settings can be quite
impressive. I was able to reduce my image size from 650MB
(uncompressed) down to maybe 120MB. This was for a complete system
update though.
- The new zstd algo from facebook looks promising (haven't tried it
yet) and might be worth investigating, I think it is supported as a
squashfs decompressor.
- bsdiff can generate diffs from binary files (be carefull if diffing
compressed files, i.e.: gzip --rsyncable).
- there's also casync (never tried it): https://github.com/systemd/casync/

Enjoy!

Marc

