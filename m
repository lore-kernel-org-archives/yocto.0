Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C931E00830; Fri, 24 Oct 2014 03:06:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-yh0-f42.google.com (mail-yh0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C90E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 03:06:53 -0700 (PDT)
Received: by mail-yh0-f42.google.com with SMTP id t59so3904400yho.15
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 03:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=WdVgd1Ucsxdq+a/RT5sgxEG2CegSLjdH3T43Va4jQQg=;
	b=mXUsKEdvOh0Cm/ZWhUZ0y/wUjnfby+HHPtumvJrLe/wdHjClJZLga8eosdmRn4SX1+
	YWOtCJVh3XJqgxbIZJQuOo7FQk2t5v1LJl0b9SKBwyOVsUP+r1z5Y8k/CZHlcG1NZaey
	7N+8blo7pRBRPhNSn0yiixFuwqk4FZJ/rBFpveDuBesRm2g4FMIir2fYL5xi3WZfbFZP
	J9en2Os2SRrzXm3+NARMJVi/oqs01KGJV/2ilBhxznX3yOqvKlLZle946ocSzKPhwzsy
	jb3xXZmWw6YpR2MzNFIk3aiXu6nlX6Wfzjt6Qg+vGQaKpOed3UWTEKqc2t6wgraE8tb+
	+Qgw==
X-Received: by 10.170.45.79 with SMTP id 76mr4849539ykn.74.1414145212759;
	Fri, 24 Oct 2014 03:06:52 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id hi1sm707162igb.18.2014.10.24.03.06.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Oct 2014 03:06:52 -0700 (PDT)
Message-ID: <544A24BB.5020604@gmail.com>
Date: Fri, 24 Oct 2014 06:06:51 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <5449BD8D.3070907@gmail.com> <1414139646.30118.4.camel@ted>
In-Reply-To: <1414139646.30118.4.camel@ted>
Cc: yocto@yoctoproject.org
Subject: Re: Failing Build
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
X-List-Received-Date: Fri, 24 Oct 2014 10:06:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

I tried that and it didn't work.
Cheers Nick

On 14-10-24 04:34 AM, Richard Purdie wrote:
> On Thu, 2014-10-23 at 22:46 -0400, nick wrote:
>> Greetings Fellow Yocto Developers and Users,
>> I am getting a failing build with bitbake core-image-rt-sdk on qemux86 or qemux86_64 machine builds.
> 
> I'm guessing you've built a non-rt image, then built an -rt image and
> the two have become confused since the kernel changed. Wiping out the
> tmpdir and rebuilding (but leaving DL_DIR and SSTATE_DIR) will probably
> avoid this error.
> 
> Cheers,
> 
> Richard
> 

