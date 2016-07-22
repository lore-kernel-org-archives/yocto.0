Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 861E2E00F48; Fri, 22 Jul 2016 07:07:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D671E00F41
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 07:07:37 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id c52so5258005qte.1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 07:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9cEoLNNk3XsaNA2y6KvPfnuLxJfXzFME+5qIm7LFyJs=;
	b=rvOBZBoYaOE2KuGx3W0WsGGy54j5WJDKCB2DVumPJ2CYKm55aXerUAZ1vTmAEQMSLk
	YRpax1MyYYY6czar2Ya2iLKC+MVo1AWOXdT6WNt7ZFIYnGACL4OzxEmu8FWdPKfc5soA
	WCgYqBQwk2+mLIvBoksI3WliP/BVHoqtsYznSHzQIbrIR1etPhKJ8rhec8trOR6riySo
	gqC1Boco9yDNcPtHIZjB0oiRpEXXrCCi41kkymZZUY23RQvq+ImlMfWntey5gJCd+z1o
	XRtQviIuKBUtCROthwWb3h9QdIWovBttBY6wPN/dfXroVFH5M68ouDxtnJcayPufR+wq
	Anpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9cEoLNNk3XsaNA2y6KvPfnuLxJfXzFME+5qIm7LFyJs=;
	b=buywYmtjpfwl3D/EgncrTE/FGvf962v3rhqlwCuDWzUtOUcyikkjax8CobOZH+8UoF
	qBDeI7aaVg5Ff/HRidRz6CEPMNe44v8f2ZUGYjdlt7da5G7I++VCaw2iB84if9Dmqqd/
	SuqAPhUI6stQ+b7uSHCM+VeUjqRlZXPJp64bH29luPI7aSlbczH1ejgBKfyWEVabINIA
	AMPNfFK5vDO2nX97r5V/4bIOKy0sM7OPMGjFXQWQoSBg7fYJTYWSrpANp362DRTv8Wwj
	yKetyoki1HUsZi5tikFSApCcZspmxhvuTS7ekB4ZAy13UG0+OvHAuh3JkJ7gWQAoIggS
	wlmA==
X-Gm-Message-State: AEkoousUd4rbkrC6AARaJVzbg/yXBbRqwfjcwjJtYo8QAgCua74Jik2p4dHvnObRqLPl3ZDMxBFHgG93fDNstg==
X-Received: by 10.200.53.103 with SMTP id z36mr6346777qtb.5.1469196456634;
	Fri, 22 Jul 2016 07:07:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 22 Jul 2016 07:07:07 -0700 (PDT)
In-Reply-To: <543dea85-f500-9551-12f2-25bc718b47d2@elfin.de>
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
	<001e01d1e366$2908ffc0$7b1aff40$@neuf.fr>
	<543dea85-f500-9551-12f2-25bc718b47d2@elfin.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2016 07:07:07 -0700
Message-ID: <CAMKF1srbdtSSthhR0mBq_Lfz=O14oANhnvwJjzRFFGSxPtVBLw@mail.gmail.com>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Fri, 22 Jul 2016 14:07:41 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 22, 2016 at 12:03 AM, piotr.lewicki <piotr.lewicki@elfin.de> wrote:
> Hi all,
>
> I also think that's a good idea. In my opinion we should at least make
> latest LTS (4.4) the default kernel and try to add latest mainline.
>
> Probably the "proper way" of dealing with the issue is using branches. This
> way (as it is in oe-core): jethro would have kernel 3.18 and 4.1, krogoth
> would have 4.4 and 4.1 and master would only have 4.4 and latest mainline.

4.1 is also LTS, So it should be kept along with 4.4 until next LTS

>
> Don't you think that it would be a good idea to create some "quasi" krogoth
> branch out of what is on master and then cleaning the master (e.g. removing
> kernel 3.18 and 4.1) ?
>
>
> BR,
>
> Piotr
>
>
>
> On 21.07.2016 17:39, Herve Jourdain wrote:
>>
>> Hi Paul,
>>
>> I had the same line of thoughts...
>> I believe 3.18 should be dropped, maybe even 4.1, default to 4.4, and
>> maybe
>> add 4.7 to the mix, since 4.7 seems to be where the bulk of the work is
>> done
>> now.
>>
>> Herve
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org]
>> On Behalf Of Paul Barker
>> Sent: jeudi 21 juillet 2016 09:03
>> To: yocto@yoctoproject.org
>> Subject: [yocto] [meta-raspberrypi] linux-raspberrypi versions
>>
>> Hi all,
>>
>> I'm planning to look at the linux-raspberypi recipes once I've had time to
>> send V2 of my u-boot patches. I'd like to know people's thoughts on the
>> available kernel versions in the meta-raspberrypi layer:
>>
>> Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
>> referenced in SRCREV is from June 2015. I think it's probably time to
>> retire
>> this unless anyone has a reason to keep it around.
>>
>> Is there any reason to keep linux-raspberrypi 4.1 as the default recipe?
>> The
>> last commit to the 4.1 branch was in April and the default branch on the
>> linux-raspberrypi GitHub repository has been
>> 4.4 since then. I think we should change the default version to 4.4 unless
>> there's a good reason not to.
>>
>> If there's no objections I'll send a couple of patches to drop 3.18 and
>> change the default to 4.4.
>>
>> Thanks,
>> Paul Barker
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

