Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0CDCE00A9C; Wed, 24 Feb 2016 13:31:55 -0800 (PST)
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
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B65C0E00948;
	Wed, 24 Feb 2016 13:31:52 -0800 (PST)
Received: by mail-pf0-f171.google.com with SMTP id c10so20474743pfc.2;
	Wed, 24 Feb 2016 13:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=isn1P1sCD6xfHWdpF6GqQiMPpvdaa8tdDujeRZcSp2I=;
	b=Jl3He8fyTo8O1wn1vILXC2aEw5RKOS4s9X1P0pA7u+1zolXAXV0PgW779aPnOTknCo
	1yYHHDMDpFUaHxhpV4CAzheACJQhH67NQNHAqcwpC1x0b+Be+0hji1kGAn9dLDxp2r3Y
	/o5mv4Z1I4eEz9zWey8c/5Ki7i+lI7Dx5WrpmSKaoxEHbjfjvV81+D1MlAU7jlU/Xt7i
	u3U75/U8HrxbTeCsWRhmLcKOd8OsBtXRsyZyJdLGlQpxLRNjBgTGEX5XMWNE4Krr8i6t
	jBleCZMJ3CjXVAfLvhAzni3xu/ODSy0xFB3m6Zr7XsC17jSS4y1nVB7PpPWDE5ZCQwx8
	+5VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=isn1P1sCD6xfHWdpF6GqQiMPpvdaa8tdDujeRZcSp2I=;
	b=NuhAKV2nGr43wdzBE8Ed/Spoelx1ZpQFT6v9ckm7IauHohiAy87MjzpprzUtWTjBjT
	/ljHWc4iIzgQN4Pw+MYvGcyGJNGWsXK3nIvchgfcfPFyn+B5n2U/DOeKLN/vl1ZFGirM
	/Z04o01Eeyav+nR5o9g7bK3m084QHlC0ovEiqjhHPN2hCAcVyhEDD9+8QnNtBFJILcwF
	hln0KxGlCXTs1qgmi9EsjUej9CqPBXQJpr2Do1NTRa+dE1V3ZFknZiEI2vAXK6hTyhcQ
	ClNcXxfhnQRSeJDbUtREpmnisp4Qf7uhz5Bv08W0Xe9vk+3cEvwDZXVm/y+yDSe/5o6G
	nGDA==
X-Gm-Message-State: AG10YORoHSulTXJNgt05FZgm1DDzG4Imd5eygY/O1FheSRTQ6PI6ZGFxMYX2RLMF10X3RA==
X-Received: by 10.98.64.26 with SMTP id n26mr57921618pfa.149.1456349512425;
	Wed, 24 Feb 2016 13:31:52 -0800 (PST)
Received: from Akusters-laptop.local (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.googlemail.com with ESMTPSA id
	m5sm7105662pfi.84.2016.02.24.13.31.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 24 Feb 2016 13:31:50 -0800 (PST)
To: Philip Balister <philip@balister.org>, akuster <akuster@mvista.com>,
	Jeff Osier-Mixon <jefro@jefro.net>,
	Yocto Project <yocto@yoctoproject.org>, yocto-announce@yoctoproject.org
References: <CA+YB3rYvuwFo1WDCQzO4vzhXGT05Nd7dThwdFRv3xhZ3yxAUOQ@mail.gmail.com>
	<56A91153.20901@mvista.com> <56A93B76.7070506@balister.org>
	<56CC8E79.50200@gmail.com> <56CDE328.4090708@balister.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56CE214C.7040002@gmail.com>
Date: Wed, 24 Feb 2016 13:31:56 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56CDE328.4090708@balister.org>
Subject: Re: Embedded Linux Conference, YP DevDay, and OEDAM
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
X-List-Received-Date: Wed, 24 Feb 2016 21:31:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 2/24/16 9:06 AM, Philip Balister wrote:
> On 02/23/2016 11:53 AM, akuster808 wrote:
>>
>> On 01/27/2016 01:49 PM, Philip Balister wrote:
>>> On 01/27/2016 07:49 PM, akuster wrote:
>>>>
>>>> On 01/27/2016 10:15 AM, Jeff Osier-Mixon wrote:
>>>>> If you are planning to attend the Embedded Linux Conference in San
>>>>> Diego this April, I wanted to let you know about the Yocto Project
>>>>> Developer Day that the team is planning. This will be similar to
>>>>> previous DevDays, with hands-on training in both introductory and
>>>>> advanced tracks. The day will happen just after ELC, on April 7 at the
>>>>> Marriott in downtown San Diego, just across from the ELC venue. We'll
>>>>> have more details posted later this week.
>>>>>
>>>>> The project is also a sponsor for the event and we will have a booth.
>>>>> If you have something cool that you have been working on and would
>>>>> like to show it off in the booth during the conference, let me know
>>>>> and we'll see what we can do to make some space for your project.
>>>> I will be bring at least one demo. Not sure if its cool.
>>>>
>>>>> For those also in the OpenEmbedded community, there will be an OE
>>>>> developer's meeting and working session on Friday, April 8. This is a
>>>>> working session for OE members (not an educational session, sorry!)
>>>>> and space is limited, so if you plan to attend, please let me know so
>>>>> I can plan space accordingly.
>>>> I will be there. I take it there will be a wiki sigh up like before?
>>> Yep, I'm on the road, but will copy the last OE developer meeting to
>>> start to page. If you do not have a wiki account go ahead and make on.
>> Is there an OEDAM page yet?
> There is now. Needs work still.
>
> http://openembedded.org/wiki/OEDAM_2016
>
>>> Accounts need to be approved by a human now, the spammers were getting
>>> bad again :(
>> Submitted a login request a month ago and no email or response.
>>
> Email notifications have been funny, but your account is there. Let me
> know if you are still having problems.

nope. works now.

thanks
Armin
>
> Philip
>
>> I am not a bot.
>>
>> - Armin
>>> Philip
>>>
>>>
>>>
>>>> - armin
>>>>> thanks!
>>>>>


