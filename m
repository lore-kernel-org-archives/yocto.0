Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D25A3E00A44; Thu,  1 May 2014 10:54:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-yh0-f47.google.com (mail-yh0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58AF1E009C5
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 10:54:10 -0700 (PDT)
Received: by mail-yh0-f47.google.com with SMTP id a41so841604yho.34
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 10:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=78e76JKwPYjquhXv2ZpGkqYFKF9FVCwaSnkAmZBYyr0=;
	b=XJAkGR6N1pd+KwV7oUYP1CteIJUYjfaiXCSvERjB9Sw6w6mPEAASiila5nygm4dmr6
	RwgxGCta9JSuVahmPTRzjdv+gOmlS38d67IOO8YXE0UkYWF4tzhdJVe2ZBSHgbY+wNMW
	l+mTYyn0QSB8isjk6oBS2lmkwnVgcgwePe7z2cLaaFm18sLf2qvPFhBZDC+PkBMYpLX/
	6LZkktKWTGhrg3hc7O3E7D+Wb9g0G/poqyXH52yS+Hs/UgGN8f0C+s65JbMzxeBwOg+P
	2tErIfvdA6SEHUXGhOdBwlxzB5cJLtVKR0lzQ8ssRuAWpI7G0PK+A4J/w3v/urPpVcr0
	01+g==
MIME-Version: 1.0
X-Received: by 10.236.129.227 with SMTP id h63mr16997178yhi.148.1398966849279; 
	Thu, 01 May 2014 10:54:09 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Thu, 1 May 2014 10:54:09 -0700 (PDT)
In-Reply-To: <536285BC.8010200@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
Date: Thu, 1 May 2014 14:54:09 -0300
X-Google-Sender-Auth: GQFC_pV0_mJN5xpXGwiqzaWCzNc
Message-ID: <CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Thu, 01 May 2014 17:54:14 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 1, 2014 at 2:34 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 01/05/2014 14:54, Paul Eggleton wrote:
>> Hi Alex,
>>
>> On Thursday 01 May 2014 10:42:51 Alex J Lennon wrote:
>>> I have an issue with the build of an old u-boot (2009.08) which is
>>> failing a check in poky as both UBOOT_CONFIG and UBOOT_MACHINE are being
>>> defined for some reason.
>>>
>>> poky/meta/classes/uboot-config.bbclass
>>>
>>>  ubootmachine = d.getVar("UBOOT_MACHINE", True)
>>>  ubootconfigflags = d.getVarFlags('UBOOT_CONFIG')
>>>
>>> ..
>>>
>>>  if ubootmachine and ubootconfigflags:
>>>        raise bb.parse.SkipPackage("You cannot use UBOOT_MACHINE and
>>> UBOOT_CONFIG at the same time.")
>>>
>>>
>>> I have a .bbappend on the original u-boot recipe and could solve the
>>> problem by undefining UBOOT_MACHINE if I could work out how to do this
>>> in the .bbappend
>>>
>>> I've tried setting it to None or an empty string, and I tried an
>>> anonymous python function but those approaches didn't help,
>>>
>>> e.g. (in the .bbappend
>>>
>>> UBOOT_MACHINE = ""
>> This should work - the python code above is checking if the value evaluates to
>> True, and that shouldn't be the case for an empty string. I suspect something
>> else is at work here - either the check is running before your value gets set,
>> or the value is being set using an override somewhere and therefore your value
>> isn't being used.
>>
>> (adding Otavio on CC since these are his checks and his layer)
>
> Thanks for coming back to me on this Paul. OK, I must be
> misunderstanding something.
>
> I was outputting the UBOOT_MACHINE to test and it's not a True value at
> any point as you
> might expect as it's set to the machine type if set, but my build was
> still failing to pick up
> my preferred recipe version unless I commented out the if/raise, in
> which case all worked
> as expected.
>
> Caught up with something at the minute but I will go through this  again
> first thing tomorrow.

When you debug it let me know and I can try to help in solve it.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

