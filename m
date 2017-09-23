Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E864E00D0B; Fri, 22 Sep 2017 22:21:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.175 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1138EE00D00
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 22:21:05 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id r68so1481507pfj.3
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 22:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=IjesgbrHT+CQ1rdkdasp9intOzh1qANLsrkdNJjTLZM=;
	b=S6RjDFMB+QHSO1BJ1KKF6i10DBeZbbC9Y5P8a4qT5GdBSg5SJs2Yfy7abgxyZUN16O
	X31d/x0V/KbPwopczTLYIx1NolgcNUmy6R/vzrNi7nBZ2MxyEZrQsC9UNeHaXGycRHGT
	6aFM1xO5u4y03VneaHDjfP7Mbm9ZNSg9E+DYiQJlF6ZJjbp+7Iv4vvClqlzkTVoHCohI
	JWEfweOentk2c3mcPTp6MRDtAUzmxFo9cOyDYS8JvLCAB5U/GlLaUnzbOVD8iVds+e3S
	pstCaF1LD6HHU0MnxLKeczA6k+lr4ZueFnn15FHPqk09c8zdnf3fnYVR6u6BKYSDV6la
	k3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=IjesgbrHT+CQ1rdkdasp9intOzh1qANLsrkdNJjTLZM=;
	b=uG3zLqS87weOs5OZt9ZtxzHbKups+MTRlpPv8wZDEvhuZs62kVcomE/JmnHdAga3uD
	sv1IhXbOiOSOEP7mgb8QhbiZlTHxZA2NCOfjAuEprxeFNhFBKW/aybi51W9zvTVZ9Mkh
	F+wdv9dU0z2cbnCR+qMyX1fiOyAYzYCaq12vA9r6PI6XXSFSDftDi5xb4tOhsDVY2chQ
	yEPkWiqeyTr+j3gZ9ou0ShqLM9XJ+CHp1CaCDdAskrXWLVedYr3/x6YFPsfY7zFNg+kf
	qI8dtrKtPV6Vit3zfTQNyUD2n9quRcmjEFrrn4G7ryrYLfcEQXc+L6IYjwvGLgp8B7IW
	Cv/w==
X-Gm-Message-State: AHPjjUiFmTgiQgbz12Q5M1UabSs+s3BIq0GsWAQ9yJ+7hhg8vjMlj/fK
	Vgh4FLzMfBtyRLXP4zxaFDJoqipqtRY=
X-Google-Smtp-Source: AOwi7QCfpIyqxd4pXomrq3377Jebs/0UTLZcGE7H/FQFR1ulqd974wEQJOeODqX29mFWsCt5f3taVg==
X-Received: by 10.84.136.34 with SMTP id 31mr1233571plk.174.1506144064800;
	Fri, 22 Sep 2017 22:21:04 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:d126:a20b:717e:18a0?
	([2601:202:4001:9ea0:d126:a20b:717e:18a0])
	by smtp.gmail.com with ESMTPSA id
	w82sm1852271pfa.69.2017.09.22.22.21.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Sep 2017 22:21:03 -0700 (PDT)
To: Yusuke Mitsuki <mickey.happygolucky@gmail.com>, yocto@yoctoproject.org
References: <CACMwXoWOfgvRzEebbKE4tHCcPmJeChYC1angZiJLPmLFRLTcLQ@mail.gmail.com>
From: akuster <akuster@mvista.com>
Message-ID: <5d069560-b9cd-df9c-513e-c0ae58a171b1@mvista.com>
Date: Fri, 22 Sep 2017 22:21:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CACMwXoWOfgvRzEebbKE4tHCcPmJeChYC1angZiJLPmLFRLTcLQ@mail.gmail.com>
Subject: Re: libgcrypt building fails for armv6 binaries.
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
X-List-Received-Date: Sat, 23 Sep 2017 05:21:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 09/22/2017 09:15 PM, Yusuke Mitsuki wrote:
> Hello yocto
>
> libgcrypt has problem that build for armv6.
> bitbake said error messages at do_compile as follows:
> ...(snip)...
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S: Assembler m=
essages:
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
> Error: selected processor does not support `rbit r8,lr' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
> Error: selected processor does not support `rbit r9,r9' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
> Error: selected processor does not support `rbit r10,r10' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
> Error: selected processor does not support `rbit r11,r11' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
> Error: selected processor does not support `rbit r8,lr' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
> Error: selected processor does not support `rbit r8,lr' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
> Error: selected processor does not support `rbit r9,r9' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
> Error: selected processor does not support `rbit r10,r10' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
> Error: selected processor does not support `rbit r11,r11' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
> Error: selected processor does not support `rbit r8,lr' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1167:
> Error: selected processor does not support `rbit r8,lr' in ARM mode
> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1167:
> Error: selected processor does not support `rbit r9,r9' in ARM mode
> ...(snip)...
>
> I googled about this problem then I found the clue at here.
> https://mail-index.netbsd.org/pkgsrc-bugs/2017/08/01/msg062410.html
>
> I thought it fixed at libcrypt_1.8.1.
>
> I tried update to 1.8.1. It seems fine.
> So I suggest the libgcrypt updating for 1.8.1.
It may be too late to update=C2=A0 as we are in the stabilization phase o=
f
the next release.
>
> By the way, I created the patch for this problem.
The is great and much appreciated.

> But I am not sure, where to send to this patch?
Yes it is a bit confusing and we should revisit the documentation.
> I could not found the guidelines of contributing [meta].
> I should send to OE-Core's ML? or  here directly?

The oe-core ML is the appropriate place.


>
> And, Would you let me know what strings of options to git send-email I
> should to set?
if you want to us git send mail, I use the following.

git send-email -1 -M --to=C2=A0 openembedded-core@lists.openembedded.org
--subject-prefix=3DPATCH

regards,
Armin

> Thanks.



