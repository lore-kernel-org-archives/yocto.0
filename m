Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FDFCE0043F; Fri, 25 Jul 2014 07:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1DF8E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 07:48:40 -0700 (PDT)
Received: by mail-yk0-f180.google.com with SMTP id 200so2871308ykr.11
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 07:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=eDHtrFpyXhjW7afQ2ksHmmCbYqWuDdseNE7Qis/coAE=;
	b=M2gID96pbWLmrpMs0atnCHVwtTXgunjFemmmO9HOxqbtfYEVYY1bWdACvsrUq4w3Hq
	q479KVXPMREEO5xCJXFUKMuYE+ezkBV/F6UsAkLjbfGNROvdfWaRBjyYzJtUnivGyig6
	3RQVyKeb1VPTH7PQs+R6Xq6C8VC/DV/XP3g9iBX5jDDN2+qIZqyrENquXY9+zUE4nMgA
	S6hhb8kdBG6KqOw5j++tqsgt4Bd1gEwW4LLCw1Ew9OB2pDeiL9XmSrLNucOSkMRQA0dk
	ZgyhV3kwjg5Ge/KESSVdNz5BWO1slCvWynYAVx8PrXIJSCJR5s0h4zKtLgvxApAknH44
	qqYQ==
X-Received: by 10.236.119.146 with SMTP id n18mr23366640yhh.23.1406299720103; 
	Fri, 25 Jul 2014 07:48:40 -0700 (PDT)
Received: from [155.1.1.163] ([187.11.221.17]) by mx.google.com with ESMTPSA id
	c47sm20718439yhh.49.2014.07.25.07.48.39 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 25 Jul 2014 07:48:39 -0700 (PDT)
Message-ID: <53D26E1B.9090704@gmail.com>
Date: Fri, 25 Jul 2014 11:47:55 -0300
From: Daniel Hilst Selli <danielhilst@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5323c871b64c43d0bb0ab349b96a6d70@EPBYMINSA0001.epam.com>
In-Reply-To: <5323c871b64c43d0bb0ab349b96a6d70@EPBYMINSA0001.epam.com>
Subject: Re: [oe] [meta-oracle-java][PATCH] Version update and Java for ARM
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
X-List-Received-Date: Fri, 25 Jul 2014 14:48:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Can someone forward me the patch please, I can't apply it from web 
interface.

Here is the link: 
https://lists.yoctoproject.org/pipermail/yocto/2014-June/020223.html



Cheers,

