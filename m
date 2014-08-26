Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC2FEE006B5; Mon, 25 Aug 2014 21:11:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59820E004F5
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 21:11:32 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id c11so673933lbj.7
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 21:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sfVJ8hmApU4RnPdy4ZVbtoDMowzoiVzH53DEy+eTBMQ=;
	b=cO568aNpIGEe19MR9bzuhbASe+d/iGH3qmqs9ysAfJXYXjTHqi1lGxUaQw+paJ5ihg
	Vf9J/d4BuRO32GsR2RH6aXL3GnLCTDo/BGm2kR4ouhoi6gz86RU+b01uV/PV+HGlR8Gm
	zFBiG2eP7wmajq6d6qDgvhOFrWnRoZ8ulNqTJH1qRCQxvd0lAq+oN185pc+DKxU44xeS
	DvXurMY5dNXaKrsvXiQGCkmh/quBzfXnSx1GZhYZWWdt9ibfPYNkDVLVkUTV4mzzKUJQ
	+F28E0wce3KUwU3GpqLcW8vd7aNqe4EfncGFc6AfMZjRRKM/0v9zuSSXBOpLIKh9VFib
	MO5g==
MIME-Version: 1.0
X-Received: by 10.152.121.98 with SMTP id lj2mr236422lab.93.1409026291076;
	Mon, 25 Aug 2014 21:11:31 -0700 (PDT)
Received: by 10.112.202.67 with HTTP; Mon, 25 Aug 2014 21:11:31 -0700 (PDT)
In-Reply-To: <20140825233000.GA9458@haswell>
References: <53FA6F09.6040502@gmail.com>
	<CADkTA4PeNvAuv8SDfUNtpsTT_25OHvTMRbuFtAe2-gJZQxB4rA@mail.gmail.com>
	<53FBBF39.7010909@gmail.com> <20140825233000.GA9458@haswell>
Date: Tue, 26 Aug 2014 00:11:31 -0400
Message-ID: <CADkTA4PbemFXQffA6xHDwCbfRZi92NN1AUD+PC1e7N0UuLAEkA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New kernel error after syncing
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
X-List-Received-Date: Tue, 26 Aug 2014 04:11:39 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 25, 2014 at 7:30 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On 14-08-25 15:56:57, akuster808 wrote:
>> Khem
>>
>> it was the config option not being set..
>>
>> seems like a kernel bug to me.. kconfig or otherwise.
>
> OK, I was thinking may be it would help if we should somehow review the
> linux-yocto kernel patches may be on this mailing list too may be just a FYI
> pointing to a git.yp.org showing the commits that went between the SRCREV
> bumps in metadata, Bruce does a great job of explaining what has changed
> but hey show me the code :). But if they already are then ignore me.

No worries .. the suggestion is a good one. We have the patches posted on the
dedicated linux-yocto mailing list, so if anyone is interested in seeing them as
they scroll by, that's the place to be.

Also, if we've got a Kconfig or other default that doesn't make sense
to everyone,
let me know, and we'll get it fixed up.

Cheers,

Bruce

>
> -Khem



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

