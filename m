Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF5ADE00B66; Sat, 24 Oct 2015 15:17:06 -0700 (PDT)
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
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AD36E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 15:17:05 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so37090629igb.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 15:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=Ik0STpnxapkf8dNRx1Zl1ekAgqKXgkkVgLoTBJT3eEU=;
	b=iVXqcuEWNeS9rlkNwZebI9/uxX9FaFuKIf4om5NMM4f9Yu8wgZ+w/PucNo1LdqWx9p
	rqTZGKVMaw0n9TAaS3Nh/gUHBAab7xvRJcVQa7tiRWjLawVt92UZl8E7fgkBOL5y1Pqg
	94rR5RF9Vfx2uK7DVyG9FPku5DeC8scnAZLJBdvA3t8keZxl5iZe5LLdHvo7bwIVyON3
	gsyRdwsKrPNnDWcxLtsQDaaJYBAK2wv5KAZubVYn/yo8wsJdKFqvj0WrwCHEF6iJ9NGC
	i/2mGX9mDqSJXdj0r25wcFpgAxI0gbT0fzfIi1We3JL9gWgVb4x0LUjNI1QwJGI003NZ
	W9LA==
X-Received: by 10.50.97.37 with SMTP id dx5mr9751860igb.14.1445725025346;
	Sat, 24 Oct 2015 15:17:05 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	o74sm10420963ioo.8.2015.10.24.15.17.04
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 15:17:04 -0700 (PDT)
To: Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	Andrei Gherzan <andrei@gherzan.ro>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
	<562C02AE.9030609@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <562C035E.2020705@gmail.com>
Date: Sat, 24 Oct 2015 18:17:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <562C02AE.9030609@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Sat, 24 Oct 2015 22:17:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/24/15 18:14, Trevor Woerner wrote:
> Unfortunately the distinction between SoCs, boards,
> MACHINEs, DEFAULTTUNEs, and DISTROs isn't as clear and as clean as one
> would like.

Oops! The distinction between these ideas is clear, what isn't clear is
how to divide them up into layers (imho).

