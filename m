Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71BCCE00C7D; Tue,  4 Jun 2019 04:45:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C3F9E0098A
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 04:45:55 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45J99F2gThz3L;
	Tue,  4 Jun 2019 13:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1559648753;
	bh=D9vIcl7uvDAHye7eeq06NDYG9zwZI2wkyGNzQWa4Il4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mNytb2dyTXCMqKOn5GrQGhk1FHrBvGQX5AnWNXdFCDvU5ikOLGbCAjG+e75pxg0vM
	66CHh33s8w4Q6bV/dALprhGo4WppslX6r+tD0phZXFms+gqJtqXl6zKKo56jA/xCpw
	6WyIQ1psNghhCrFN7cpBZW9PpgWTZ3jJEtajYXbzCN7Hyj9h0bAplIotB0pcvbw8RK
	ZgXSs8QAwW1mTsGXGRpVYZTDBzIjXE+PZHQagvTzrBlzv5haeTUH4HCBFFaAO+PYU8
	01YTcW69CUqBleNbIffVOaQOtQDIMLq0leGzaKmzWoYN4bSXG0eOAWwEda4xS++nV2
	tarUf/sX6vlBuDLAMBNjmxWagRzT4cs2aplthRvrKp3pSB9CrmTiuOYCdEEKTgYfhS
	zjCFLtxC/kkfmvPuX3Q3aTIEVoFco6V3UrTDzpmWLIwYaOezHEK2J4U3W72UTvOunJ
	pdyXfg1EYI63tSLsB+0EwrPOcPQDiLnTrldSws3S0kwkfnIXdNAfh2ae64zPGAGGGH
	eEo3RryhP7d8BDJ3WjtHB95t4xuwEGwT4dC4HO8UMVgljjYtbQTv/Q/52c137jcE/s
	TUEettx+y9rltBETGYAQmWmKqk9Pi6f+YgE5UIhhKn01gZKMz5MleP4OYPs/yGGu+U
	ypWLusPoLJLfL7T96KeaxTBw=
Date: Tue, 4 Jun 2019 14:45:51 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <20190604114551.GB2249@localhost>
References: <7e9f634a-175f-1e49-2d80-da364686d077@faresoftware.it>
MIME-Version: 1.0
In-Reply-To: <7e9f634a-175f-1e49-2d80-da364686d077@faresoftware.it>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: How to disable SIMD extensions (mmx, sse3, ...)?
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
X-List-Received-Date: Tue, 04 Jun 2019 11:45:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Jun 04, 2019 at 09:08:49AM +0200, Mauro Ziliani wrote:
> Hi all.

Hi Mauro,

> I'm working with a Geode LX800, porting an old application Debian-based into
> Yocto Thud.

I assume you are aware that the Geode LX is should still work with the 
latest Debian releases.

> I need to disable some multimedia SIMD extensions for gcc compiler.

Why do you want to also disable MMX?
The AMD Geode LX does support MMX (and 3DNow!).

> Where I can do this?
> 
> I suppose I have to disable SIMD extensions in conf/machine/geode_lx800.conf
> file (the machine descriptor file), but I cannot find any document about.
> 
> Can you help me?

Passing -march=geode to the compiler should enable exactly the 
instructions supported by the CPU.

> MZ

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


