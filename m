Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C0C6E0071C; Wed, 12 Aug 2015 10:02:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD7AE003D9
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 10:02:37 -0700 (PDT)
Received: by iodb91 with SMTP id b91so26261795iod.1
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 10:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=PL6ZQ9fgEAl1hehsDkH5KwggmpntIvw8qb0QqDhq35M=;
	b=LiOncfa9jAAEOAgawSYkr3znnv542YncjdsNlkeDvgIvmqyxnHqP0H5v4QdJohapZ8
	5aOlgvL3fcuk0oUsDqPtf0g3nwT2jaeiNHiCRhDHMCEckC0F4xQdMqN0M9FjfOzDUeEN
	uu+O+bPzuvApQWnIg4NuCspeQOX9svGRkfPqHpRS/upIuBT4cH/IJBtWFQD03Y3j4zIw
	fkflhR7GppzGYU1hhubQS0BgmJiEAXhTOEMBRDO3S5U6SNaWKhpglct+L3Kna4JGQpUg
	AJuZ0Hmye0CzGjWyLboDfPLCAj46MluHJGKiTCY36VIyVbKCHNfBmmHPxA3WWEcg4Oer
	k6Gg==
X-Received: by 10.107.168.214 with SMTP id e83mr660189ioj.112.1439398956546;
	Wed, 12 Aug 2015 10:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Wed, 12 Aug 2015 10:02:07 -0700 (PDT)
In-Reply-To: <7858CE2B355E1A438F13002DDE9D639401110B8A51@vie196nt>
References: <7858CE2B355E1A438F13002DDE9D639401110B8A51@vie196nt>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Aug 2015 10:02:07 -0700
Message-ID: <CAMKF1so3UF1dA42YsHJ8SY4W9bcQDmWZh6xqe_sa5g8ksgO9Dw@mail.gmail.com>
To: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Selecting a preferred recipe version for devtools
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
X-List-Received-Date: Wed, 12 Aug 2015 17:02:41 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 12, 2015 at 6:48 AM, PIEWALD Georg
<Georg.PIEWALD@frequentis.com> wrote:
> PREFERRED_VERSION_subversion = "1.6.15"
>
> in my local.conf, but it turned out that this only affects the builds for
> the target-machine (cortexa8hf-vfp-neon-3.8-oe-linux-gnueabi), but not the
> devtools on the build-machine (x86_64-linux).

you might need to set preferred version for native extension as well.
PREFERRED_VERSION_subversion-native = "1.6.15"

