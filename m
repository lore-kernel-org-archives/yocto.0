Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39CFBE00B9A; Mon, 26 Oct 2015 04:32:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9465FE00B8F
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:31:56 -0700 (PDT)
Received: by pasz6 with SMTP id z6so186283281pas.2
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=TLZno4eEVQhWNvy2IgjlKg7/dHIPrXqg3XVi71iAQ6I=;
	b=hgkeU7Xo9zcjd9kvITPYE6Qzrhbz1gGWQiftsh2T1ET8lQjNUnZLXrDRCiKd/GQl6c
	t7vydVLagp3S0JyiDnHcGVblxr2nWy5qXG46lbuNL4MT5HL7pbv8T1iennoFgc6fgtBu
	J6f3ofm674qHKuoA/l9acgj+YWK6rgnoyvCC23hYky4jLvdpJpjV1Zmyf/YtpcB9qMFB
	IC7fpy5DgxpfCZglbz//0W5oYNm+DPyng4rO/zl3KlT4nmC6iFsgegaJIq0J5wVrdPqd
	v3duQurt5syTRUzL9gGTqnXn+MSgFgJ3jysdSWrXLktMfzBW6PipilVRfbtetElxYNZe
	epQQ==
X-Received: by 10.66.251.72 with SMTP id zi8mr15176479pac.67.1445859116381;
	Mon, 26 Oct 2015 04:31:56 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	rc5sm33489022pbc.95.2015.10.26.04.31.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 04:31:55 -0700 (PDT)
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
	<562DE34F.2040905@gmail.com>
	<CAP9ODKqqQVBUX9vc3ysrXQMAfZxNFqcws5Tg7qrVJcAA7eHx5w@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <562E0F23.1040404@gmail.com>
Date: Mon, 26 Oct 2015 22:31:47 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAP9ODKqqQVBUX9vc3ysrXQMAfZxNFqcws5Tg7qrVJcAA7eHx5w@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 11:32:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2015 10:28 PM, Otavio Salvador wrote:
> On Mon, Oct 26, 2015 at 6:24 AM, Jonathan Liu <net147@gmail.com> wrote:
>> On 26/10/2015 7:08 PM, Paul Eggleton wrote:
>> It would rebuild qtbase (and recipes depending on it) without Raspberry Pi
>> support for other machines.
>> I see similar machine-specific do_configure_prepend elsewhere (e.g.
>> https://github.com/Freescale/meta-fsl-arm/blob/master/qt5-layer/recipes-qt/qt5/qtbase_%25.bbappend).
>>
>> Otavio, any thoughts on a better way to handle this?
> We handle this moving it to a SoC subarch and using a dynamic package
> arch handler to put every package depending on it as a subarch as
> well. Ideally we could split the QPA module and build it separated. No
> clue if it is possible or not.
>
So for meta-fsl-arm, would only the qtbase-plugins package be using 
machine-specific arch and the other qtbase packages be using 
non-machine-specific arch?
Or is it done on a per-recipe rather than per-package granularity?

Regards,
Jonathan

