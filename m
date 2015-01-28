Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7962DE0087C; Wed, 28 Jan 2015 12:33:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFE72E00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 12:33:41 -0800 (PST)
Received: by mail-ie0-f172.google.com with SMTP id rd18so24600688iec.3
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 12:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2ByH7WIkdZrY7Ib8MuoFBr5IAlJgwVu3BwcMB03RUnU=;
	b=EsHpbKoF/RLg9MdgbG+/Y3F98OIVF3inmGqHUSrHmXKyM3POyqwEeJyp3AJH8m8aTl
	y8yOS5vBh1gnXvdyEAfk7LnsON6+EFB2rH0v+X8kfC1ln6TeeL8nfAmude1IL51A6P1y
	WlazTxpa66g9puWgGv9zWx92vZ9GUjNi82RKI+pbQlfYsxnB1oJLxRPO7YfgFTUIKu8Y
	IaoF3Jg01nZyVNhc9jYwshK2dr4Q/Ou5aVLThSNfkQQG2Pt0O6hnxN/q4DdHBLmZniKs
	40IIu/gZ70Cch3EG0GVotdpdqjOE/VrTrRMBdlAHui9X0AwhMDabfGLcPdCZvmWxD3kL
	oXtQ==
X-Received: by 10.107.13.76 with SMTP id 73mr6279912ion.24.1422477220540; Wed,
	28 Jan 2015 12:33:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.18.164 with HTTP; Wed, 28 Jan 2015 12:33:10 -0800 (PST)
In-Reply-To: <54C7FFA2.3010407@linux.intel.com>
References: <CAK8F28mUrgh3nXrOu0Mdb0zrWEgvtnjX-bD2UebzGskA4y4taA@mail.gmail.com>
	<54C7FFA2.3010407@linux.intel.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Wed, 28 Jan 2015 12:33:10 -0800
Message-ID: <CAK8F28m_nUR8+_y77HZV+H-BY5UKo=5VRQDJFSxyyDQ=GRHE+g@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 'screen' MACHINE_FEATURE
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
X-List-Received-Date: Wed, 28 Jan 2015 20:33:53 -0000
Content-Type: text/plain; charset=UTF-8

Thanks very much Saul (and thanks for the git tips).

I'll pull this MACHINE_FEATURE from my machines.

--Ash

On Tue, Jan 27, 2015 at 1:14 PM, Saul Wold <sgw@linux.intel.com> wrote:
> On 01/27/2015 11:01 AM, Ash Charles wrote:
>>
>> Hi,
>>
>> Based on the yocto manual [1], it looks like "screen" is a valid
>> MACHINE_FEATURE and, in fact, it looks like some machines actually
>> call out this feature.  That said, I can't actually see that this
>> MACHINE_FEATURE is used.  I checked with buildhistory and some
>> grepping but maybe I missed something?
>> Should I be keeping this in my machines or is the deprecated?
>>
> It seems to be deprecated, looking back in history shows task-base-screen
> which is included in older releases has been empty, although that allows
> BSPs to override it, but since it's not even included in newer versions.
>
> See: ca8f7ecca7c19933ffcf1a9f080a39a84318ebb4
>
> git log -p (great option).
>
> Sau!
>
>
>> Thanks for any insight,
>> --Ash
>>
>> [1]
>> http://www.yoctoproject.org/docs/1.7.1/mega-manual/mega-manual.html#ref-features-machine
>>
>

