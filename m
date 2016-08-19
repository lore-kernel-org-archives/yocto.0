Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D384E00EF8; Fri, 19 Aug 2016 03:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F022E00ED8
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 03:14:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u7JAE9Na016936; Fri, 19 Aug 2016 11:14:09 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6xD-2N64YUPJ; Fri, 19 Aug 2016 11:14:09 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u7JAE4XL016933
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 19 Aug 2016 11:14:05 +0100
Message-ID: <1471601644.16712.23.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, OE Core mailing list
	<openembedded-core@lists.openembedded.org>, Yocto Discussion Mailing List
	<yocto@yoctoproject.org>, OpenEmbedded Devel List
	<openembedded-devel@lists.openembedded.org>
Date: Fri, 19 Aug 2016 11:14:04 +0100
In-Reply-To: <888B09F3-F9A2-49C1-86E8-E33FA1FE6521@gmail.com>
References: <888B09F3-F9A2-49C1-86E8-E33FA1FE6521@gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: [OE-core] [RFT] gcc 6.2 RC1 update
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
X-List-Received-Date: Fri, 19 Aug 2016 10:14:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-08-16 at 11:55 -0700, Khem Raj wrote:
> Hi All
> 
> I have put together recipe upgrade for upcoming gcc 6.2 release now
> that it entered RC phase. With gcc 6.2 the recipes are using tarballs
> instead of git fetcher as promised :)
> Please help testing it out in your setups and report any issues you
> see.
> 
> The commit you need to cherry-pick for OE-core is this one
> 
> https://github.com/kraj/openembedded-core/commit/0319b603761a16e65d70
> 4336112c3709a8bf771c
> 
> Thank you for your help

I put this through the autobuilder and it passed so I've merged it. I
did this quickly as we're putting a "pre M3" build through a QA cycle
and I wanted to get some of the more invasive changes into that build
so we don't have a stampeding herd of patches breaking everything
coming up to the final feature freeze for 2.2.

In other news, we are now also testing musl world builds on the
autobuilder as part of regular testing.

Cheers,

Richard



