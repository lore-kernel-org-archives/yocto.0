Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F901E00777; Mon, 16 Feb 2015 12:06:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8B7DE00769
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 12:06:43 -0800 (PST)
Received: from [192.168.0.123] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 528286000736;
	Mon, 16 Feb 2015 22:06:39 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1424117199; bh=W2MtYwaOSu+WMyMbpVfmUhn2C+9IPx+hgQRKqaz47Xg=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=m366JAZi3r7YGWEXWbnlvGV+m2nwiQB7Zcv7I5kXCZmfV9asZQfeu5ulDYnPjqPD2
	omcB3ckVQKzRj3pU4sCxRMFPIumyJpj0BTnt6nCDcukFwXUiclRjnZzewA6fAO6GGn
	wbbE8FBuuZJJN+DXtuAOriEAcfAgTlmQJUAOhWPs=
Message-ID: <54E24DCF.3080705@mail.bg>
Date: Mon, 16 Feb 2015 22:06:39 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.4.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <54E0A128.3040307@mail.bg> <20150215220408.GC2297@jama>
In-Reply-To: <20150215220408.GC2297@jama>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto patch tracking
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
X-List-Received-Date: Mon, 16 Feb 2015 20:06:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Thanks!

On 02/16/2015 12:04 AM, Martin Jansa wrote:
> On Sun, Feb 15, 2015 at 03:37:44PM +0200, Nikolay Dimitrov wrote:
>> Hi guys,
>>
>> Is there a web-based staging area where Yocto project holds all the
>> submitted and pending patches until they're merged, something like
>> Patchwork? Or is it up to each Yocto layer maintainer to define his own
>> work-flow?
>
> layers from meta-openembedded respository and meta-qt5 are tracked in
> patchwork:
> http://patches.openembedded.org/

Regards,
Nikolay

