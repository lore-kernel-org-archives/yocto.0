Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D531E00B5F; Thu,  1 Sep 2016 07:54:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,MISSING_HEADERS,PLING_QUERY,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 802BCE00B46
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 07:54:32 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id a1so1940367uaa.0
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 07:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=Frtj5pvtkhJQza1xXj+R1Oc8sQm36+K2hvO9ihBA5s0=;
	b=Yl3SfaP8Tp6VeqrWmw+EkXafXl/b7SccAVnPBuyLGYBvqp/7w2tCzrQjtWpBN/VZKl
	mC9rgl2Z8dy2kLnZUVdalPYTz2bptuchZuiAUcd7BN2EUOVcK0OrSk9jwngYLK2sjxBJ
	HClKwuvwCu7t5ikpeGu08JupPpo50aChJlK77uljktd5PJSPsmZUPP4HgfEFGNkVRHmL
	FBQxNFF01bwem5Cvg81YuRxe4GPwaFJWdMfYFioz0uCaEQKrhSXtjd7yXm3MPGZDISVN
	dAzLYOlkJ/4QwkXjqb1nk6u4FECjkKlM2lYLMKakcRPXopPwtZ+rhk2T943/AZ80xkUR
	BTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=Frtj5pvtkhJQza1xXj+R1Oc8sQm36+K2hvO9ihBA5s0=;
	b=C/HhGC/op0RB+vXve16AX6MzJXh4ASVdz+BcO5lnk7cN1Tn+12BidIT3Oo6C18iZDm
	LVwERGsguPSyT1BYfO2ttD9hBxs7H7OvcmLSgqcaNDXgyNI6qt3fbY3PmO3k51vHDP1c
	vpveh555mLP2BYY2IFHFGoqZHImHTANxzXIfynZ049v4wTZmFS4kSXVf4Arj5jFl5riF
	anxDr1uGSDc97zX4Msef4zFPRSf4rzGCF6qJUbf9Xxu8VPum64XS2XXBpbGGKTgz8ISR
	hFkUjAin8bwrHbkX3YixUQ4ZKFLktJ/GJWRjmsqPZucXngr0y0r9cYbx3wLSpUeBQgks
	BOnA==
X-Gm-Message-State: AE9vXwPSMFRzl+OI8pMW+bJLOsuZfaOHlNKthlMKzxTuViC+JvSE0QjxpCq/r714lJzPGGjVEbyOZVt04hGIdg==
X-Received: by 10.159.34.117 with SMTP id 108mr8048619uad.120.1472741671411;
	Thu, 01 Sep 2016 07:54:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Thu, 1 Sep 2016 07:54:30 -0700 (PDT)
In-Reply-To: <0ded4d99-a310-e7a0-fbe7-206a481a568c@windriver.com>
References: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
	<1888254.UId6usnihk@peggleto-mobl.ger.corp.intel.com>
	<0ded4d99-a310-e7a0-fbe7-206a481a568c@windriver.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 1 Sep 2016 11:54:30 -0300
Message-ID: <CAF3SDA5z6NSLPP0GZqmHLAkyyJY771-w4y5JtzZA8kh_XQGp_Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Automating imaging building and testing, what aproach to use!?
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
X-List-Received-Date: Thu, 01 Sep 2016 14:54:36 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul, Bruce

Thanks for the replies,

Paul,

I take a look at the documentation. It's an amazing feature I'll try
it as soon as got time avaible.
My next question is about that "master image" that is installed at
target hardware so that the image
is deployed automagically. I read that it writes the image to a second
partition... Well.. I'm dealing
with NAND Flash memory here I would like to avoid writing as much as
possible. Even more for
machines that will be reflashing at each new image built. I know how easy
is to setup an NFS + TFTP server and get u-boot booting things from
network. Also, with this kind
of setup booting a fresh new image is just a matter of rebooting
(which makes the master image
very simple). Would be possible to customise the master image and the
autodeploy to the hardware target!?

Regards,

2016-08-31 19:43 GMT-03:00 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 2016-08-31 6:23 PM, Paul Eggleton wrote:
>>
>> Hi Daniel,
>>
>> On Tue, 30 Aug 2016 17:18:44 Daniel. wrote:
>>>
>>> While writing software we're used to delivery packages, libraries and
>>> stacks. There are out there a lot of continuos integration solutions
>>> to automaticaly build and test these kinds of software. But when
>>> dealing to images the thing is more tricky.
>>>
>>> I can't run the tests at the same machine that build the image because
>>> crosscompilation take place on 99% of the cases. What is aproach that
>>> you guys are using to automate and increase the quality of your
>>> images?
>>>
>>> Automating the build is the easy part my concert is about automating
>>> the runtime tests that need the target board to run. In my case I
>>> depend on hardware to fully test the image features. Is there any
>>> reliable way to automate image installation and boot!?
>>
>>
>> There are some folks here working on automated hardware tests (on CC),
>> perhaps
>> they can expand on what we're currently doing in that area. At least in
>> the
>> existing code we do have basic support for running tests on real hardware
>> that
>> may be worth looking into - at the moment though it's pretty rudimentary
>> when
>> it comes to interacting directly with the hardware though. You can see
>> what
>> we've currently got here:
>>
>>
>> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#hardware-image-enabling-tests
>>
>> We've looked at LAVA several times, and I'm sorry to say the conclusion
>> each
>> time is that its a mess - both from a usage perspective and looking at the
>> code. It was disappointing to us because initially it looked like it was
>> going
>> to solve a lot of our problems. Maybe others have had different
>> experiences -
>> I'd love to hear details if anyone is prepared to share.
>
>
> We've been using LAVA extensively within WRind River, and haven't run
> into any major issues with the code and usage. Perhaps it depends on
> the type of test cases that are being run ?
>
> LAVA was active, extensible and able to integrate with our wide range
> of targets.
>
> That's not to say that we didn't add a lot of our own tests,
> infrastructure, etc, but that was expected work with whatever we
> chose.
>
> Cheers,
>
> Bruce
>
>>
>> Cheers,
>> Paul
>>
>



-- 
"Do or do not. There is no try"
  Yoda Master

