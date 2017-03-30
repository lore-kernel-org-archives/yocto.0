Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 716AEE00A16; Thu, 30 Mar 2017 02:03:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E46E00AAA
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 02:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490864572; x=1522400572;
	h=subject:to:references:cc:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=YA29kaHYoM5qJF0DnaOx5DP3hAT80m3qmkwrA4+lTsg=;
	b=MarDcVlt3t1V0Q7I9YZAlgaqRWNQqatS6Xd2335e7aYiqoQRj4Or3Uo+
	1DTQxBrUQVfhaG6Uh+ugr5UxPz5Rigfw8ssIgto+RZ1P8G0akrakIX7FO
	YA6FpgsQMZ4R6P8/fQkH9Fp0s/ymhwJz8eaZMZvFVJbjButdNRV7dQ3j3 I=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 30 Mar 2017 11:02:50 +0200
To: "Maxin B. John" <maxin.john@intel.com>
References: <98e3cae0-9d39-e146-9dad-af0c6c37ab55@nedap.com>
	<20170330085728.GA528@mbabyjoh-desk.ger.corp.intel.com>
From: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <c172cf32-0e7c-f1c1-d3ef-8ca8ad95743c@nedap.com>
Date: Thu, 30 Mar 2017 11:02:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170330085728.GA528@mbabyjoh-desk.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH 1/6] oracle-jse.inc: Fix unattended downloading source
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
X-List-Received-Date: Thu, 30 Mar 2017 09:03:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


On 30-03-17 10:57, Maxin B. John wrote:
> Hi,
>
> Thank you very much for these updates. Merged to master-next.
>
> Note: from now on, please send the patches using "git send-email"
> as mentioned in the README file.
>
That was my intention (of course) but I'm having some issues with 
Thunderbird icw "git send-mail"...


