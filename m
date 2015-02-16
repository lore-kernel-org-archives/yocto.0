Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A7FE00779; Mon, 16 Feb 2015 15:13:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E15AE0076B
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 15:13:02 -0800 (PST)
Received: by pdjz10 with SMTP id z10so39328685pdj.12
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 15:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=47ygOFiA0qafurIeVAvFheFM+kvvNJWPNl/EhG71uRY=;
	b=VxQbZV9Qx9gsflRqcSYcaQmcHTxIOg07nz0vzmQ0Q8O5Ks3oC6ekCcdhcWFXJPaTRI
	UZ22k9Z0uRgyo7j8q8vujJfXLNBxxn1qY3GGtwcHeSsKLMB+mOzB/lq/XICt7B6dgv28
	bJ4blcHW1EagKNaPTxA+9ur970lEjRIe0XTllyW/h1A2JGT6pCRdEahYcEgPRNarMPnb
	A+S7Mda4ep87T1tadFX3kfgLTZfJX2nHPO2p4c7ZIuQyAjRhxqF7FCb4Mv3nAD6T+/pO
	TEnhoXMDdu3EcANYJh4Y+Jzv96d4ZLVIzB/kPgZKOiVWbOCiJQGP56PPBroELCE7bRVw
	hP7w==
X-Received: by 10.66.233.74 with SMTP id tu10mr43986582pac.135.1424128381695; 
	Mon, 16 Feb 2015 15:13:01 -0800 (PST)
Received: from [172.26.37.58] ([76.14.1.153]) by mx.google.com with ESMTPSA id
	mm9sm15647862pbc.76.2015.02.16.15.12.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Feb 2015 15:13:00 -0800 (PST)
Message-ID: <54E27979.2050806@gmail.com>
Date: Mon, 16 Feb 2015 15:12:57 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Lars Ellenberg <lars@linbit.com>, 
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>,
	Christopher Larson <clarson@kergoth.com>
References: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
	<CABcZANnOS=DoQspvKv1P5YVPv4Z_woTqJP4H9QENbb5Q+Z+2hA@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D7B2084@SESTOEX04.enea.se>
	<60DDAC69-DBB2-481A-B72A-74D5496FA6D5@linbit.com>
In-Reply-To: <60DDAC69-DBB2-481A-B72A-74D5496FA6D5@linbit.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Mon, 16 Feb 2015 23:13:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

It should be an ""&" (and).  I will send a updated patch soon.

- armin

On 02/16/2015 09:24 AM, Lars Ellenberg wrote:
> Am 16. Februar 2015 10:18:29 MEZ, schrieb Alexandru Vaduva
> <Alexandru.Vaduva@enea.com>:
>
>     Hello Christopher,
>
>     Your observation is very accurate.
>
>     After a quick inspection I observed the following:
>
>                          Inside heartbeat-suse.spec the next information:License:        GPL v2 only; LGPL v2.1 or later
>
>     Link here:
>     http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-suse.spec
>
>                          Inside heartbeat-fedora.spec the next information:License:          GPLv2 and LGPLv2+
>
>     Link here:
>     http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-fedora.spec
>
>     I added Lars Ellenberg one of the authors behind heartbeat or drbd
>     to the discussion.
>
>     Hello Lars, sorry for disturbing you but maybe you could help us
>     with our little problem.
>
>     If anyone from the Yocto Project community has any input on this
>     matter please help.
>
>     For me at least this problem is not clear. Should the “|”sign remain
>     or should it be replaced with the “&”one between the licenses.
>
>     Thanks guys,
>
>     Alex Vaduva
>
>     *From:*yocto-bounces@yoctoproject.org
>     [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Christopher
>     Larson
>     *Sent:* Sunday, February 15, 2015 4:01 PM
>     *To:* Armin Kuster
>     *Cc:* yocto
>     *Subject:* Re: [yocto] [meta-cgl][PATCH] heartbeat: fix license issue
>
>     On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>> wrote:
>
>     -LICENSE = "GPLv2 LGPLv2+"
>     +LICENSE = "GPLv2 | LGPLv2+"
>
>
>     Are you sure this is correct? Afaict this is wrong, as there are
>     parts of the source tree under the GPL, and parts under LGPL, which
>     means it's an AND relationship -- both apply, not an OR
>     relationship, where you can choose which to use.
>     --
>
>     Christopher Larson
>     clarson at kergoth dot com
>     Founder - BitBake, OpenEmbedded, OpenZaurus
>     Maintainer - Tslib
>     Senior Software Engineer, Mentor Graphics
>
>
> It is an "and".
> Some parts have been taken from LGPL or dual license whatever/LGPL
> origin. Some GPL. So it is both, not an option or choice. Which parts
> are what however I do not know from the top of my head, I'd have to
> check, if it is relevant to you.
>
> Thanks,
> Lars

