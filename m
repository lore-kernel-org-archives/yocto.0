Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22960E00A92; Tue,  4 Aug 2015 06:29:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E078E00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 06:29:49 -0700 (PDT)
Received: by igbij6 with SMTP id ij6so74281361igb.1
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 06:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TCh0IRWSpRpn1KPvyAHCxs5AvjKyQitmnTAZpGcuM1w=;
	b=MW+kZHqQQhdLNFavPLEw04i0S074BUvKE6etP9RDvz2AcdTt9F+Xg6lA2gOfSscc+A
	Aso/XLqOzM/NczfyB12zqsYpYGEPHv6xHk9iewQ/KXj4xBtWmf4gwUGu20u+KjIuTJsQ
	ilHad8TM83mZ2dGBc7VI4fzXEqHf3Bmls542VrXSGBHXfgHTLCzxgOYyy2aYX0xY8J3B
	To8Hd0rMAtRo3qGZvPeXCXppL3Ntx+EL9jKpHAvTok0vQqCSJQPJ8M+VW2FeEbWW8ZNU
	mxR03qxOMSEIz5u5Zm3PCGtjXHSYHYJ4rgzxKmecWu/1g27zi8Jo1LJtzOtHjoc2nlP7
	j3KA==
X-Received: by 10.50.124.4 with SMTP id me4mr6989530igb.34.1438694989159;
	Tue, 04 Aug 2015 06:29:49 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	z6sm1039409ign.12.2015.08.04.06.29.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Aug 2015 06:29:48 -0700 (PDT)
To: Klaus Knopper <yocto@knopper.net>,
	Yocto Mailinglist <yocto@yoctoproject.org>
References: <20150708145002.GO5636@knopper.net>
	<559D445A.4010308@linux.intel.com> <20150708163604.GQ5636@knopper.net>
	<559D5E4E.8020001@windriver.com> <20150804041502.GN10184@knopper.net>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55C0BE49.9020306@gmail.com>
Date: Tue, 4 Aug 2015 09:29:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150804041502.GN10184@knopper.net>
Subject: Re: Selecting different kernel inside an image recipe
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
X-List-Received-Date: Tue, 04 Aug 2015 13:29:54 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Klaus,

On 08/04/15 00:15, Klaus Knopper wrote:
> So, can you confirm that it is not possible to set
> PREFERRED_PROVIDER_virtual/kernel inside an image recipe?

Confirmed, this is not possible.

I too thought it would make sense to choose one's kernel based on which
image you want to build. I was trying this a couple weeks ago and ran
into the exact same issue.

The way it was explained to me is as follows: your choice of kernel
affects a great many other "downstream" choices, therefore it needs to
be known early in the process of bitbake parsing your metadata. As a
result, there are only a few, select places where you can select your
kernel. Some of these include conf/local.conf, your distro.conf, and
your <machine>.conf. Unfortunately your <image>.conf is not one of them.

Also, if your distro or machine set the preferred kernel with an equals
sign, it is harder to override in your local.conf. In this case you
would need to try appending "_forcevariable" to your choice.

Best regards,
	Trevor

