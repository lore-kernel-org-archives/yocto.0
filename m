Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C8CAE00D99; Wed, 21 Aug 2019 07:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B737E00D35
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 07:32:22 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id j16so2258498wrr.8
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 07:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=QTkouWGlFMCwjHH6KNcH6xmKZ8GySEvDIo23AHWaDAk=;
	b=cgu9z9oHS4Z1/pEP/+EftsOhtTda0m7E/j1H+//zY6EwRHE3RQx9ZTtTF5IUUcMHiW
	s2YMRGydmBq0JKOcsI6OcOwwuUZpyTN2r5I508g2jwucioU1cW8RYHf3A136IPqPN/y2
	hR8ENQoHZChLi883a8RfKbpLnpj8AzDhud3sM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=QTkouWGlFMCwjHH6KNcH6xmKZ8GySEvDIo23AHWaDAk=;
	b=TbL7bQvZK5y3hyOQNf6g4YOCFsf+vH3nbwAw6JcXtkQ8zdnMPUeSkmvpSKA6BI4uFc
	+WQxDynt1tGvYzeyorw566WYmCLTWyOepY+n3RztIvl5EmjyybFnEK789im81DR2ymi4
	lBh2nIkpCKDqhBE2k0ef2WhtMGQ7eiqQuSfNxVRQh21c3utT367SJ+bRDIp/9zjQ3Qwo
	oK5CdSV2oC0fnkoy0kwkfnhMucbX4RzI+/SS8HDBO1ggohb01XhiG8E18xRAtBGm7PXL
	/uh0ntSPW+mFDsjYeDbmjZLsw4M41TxOTMfhg0oaq7qlLlycqmG4GyLAv6HE3esnCBNj
	iIew==
X-Gm-Message-State: APjAAAW+XGZWvSD+aS6icXkhSCikJKW/+rk2iYenqvlEIqy8LrpDIrzf
	rB0Tynw0eNLIIyJP+pzFJo9Nvw==
X-Google-Smtp-Source: APXvYqwAKaI0024+SpAMeRnDEYrMbzIXcNMGBFcVBfL+ff5v+xtB46nPTe5C3+VCpUm0FCDL6ZRWWQ==
X-Received: by 2002:adf:afe7:: with SMTP id y39mr40008950wrd.350.1566397941315;
	Wed, 21 Aug 2019 07:32:21 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id p186sm273129wme.9.2019.08.21.07.32.20
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 21 Aug 2019 07:32:20 -0700 (PDT)
Message-ID: <9de5c3ce4cc156b5cef0fc7cdc2c5457cba382a7.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Teemu K <maillinglists18@gmail.com>, yocto@yoctoproject.org
Date: Wed, 21 Aug 2019 15:32:19 +0100
In-Reply-To: <CAAmVmrorMXVsnNKU4PK6oW1gUmYV4sb0VnK3ntqYZVA8Q_DNBQ@mail.gmail.com>
References: <CAAmVmrorMXVsnNKU4PK6oW1gUmYV4sb0VnK3ntqYZVA8Q_DNBQ@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: Recipe svn-fetcher and scmdata
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
X-List-Received-Date: Wed, 21 Aug 2019 14:32:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-08-19 at 10:18 +0300, Teemu K wrote:
> Hi,
> 
> I have some recipes that fetch sources directly from svn. I'd like to
> keep the .svn to make it easier to commit changes. I checked that
> those are by default removed and that there is scmdata - option if
> those wanted to be kept.
> 
> I set the following src_uri:
> 
> SRC_URI =
> "svn://my.svn.server/svn/sw_components/program/;module=trunk;protocol
> =http;scmdata=keep"
> 
> Yet the .svn - data is removed from the sources under build -
> directory. It is in under download directory though so I'm wondering
> if I got this right in the first place?
> 
> I tried with devtool modify and it seems I ended up having .git -
> directory there although sources are in svn. Maybe it's systems
> 'subtle' way of telling me to switch to git? ;)
> 
> But should the scmdata=keep option work like I'm thinking it should
> and/or what I'm doing wrong?

I have a suspicion the build directory (${B}) may be getting cleaned by
one of the tasks and wiping out the scm data but its just a guess...

Cheers,

Richard


