Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1F97E0096C; Fri,  2 May 2014 06:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CACE00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 06:07:49 -0700 (PDT)
Received: by mail-yh0-f49.google.com with SMTP id c41so362158yho.22
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 06:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=FTVd9rYXkOFzS+p6wiPs+lrG7Rmn1pYNgl10PcmaPTM=;
	b=Ar3JtkTUxZ6m3IsaR472IdypOAYtVKktc5vB3vlq14aINgu25tFzV/wUwsik31JzTH
	tFfBbx7JO8/2j7pzSSuOli7/TAqap6jSYr/dIFD7uBCld+7aTJAUVayfffFRo0shX9QF
	ewjQiCW2CQVyEMp2AXk7MaGzjYa3z0Lrr/XmA56aj69rPhttYSbcS9FeQKmUAOAUn8WJ
	4OhtjWou80mEKaHEaLxyPinctpsx5WjbRDm119He2Or+Omw/8ThylBMIBfrZk9eQra9s
	QdOKl2FxJqHYR0mkf70TDjvW+YgZdQOq0uG2lF7KsgBgNh7kTb4b01jK07VA3ksr1eAd
	Z/MA==
MIME-Version: 1.0
X-Received: by 10.236.230.41 with SMTP id i39mr23243005yhq.14.1399036068619;
	Fri, 02 May 2014 06:07:48 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Fri, 2 May 2014 06:07:48 -0700 (PDT)
In-Reply-To: <5363973A.6020106@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
	<53632C0B.1010401@dynamicdevices.co.uk>
	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
	<5363973A.6020106@dynamicdevices.co.uk>
Date: Fri, 2 May 2014 10:07:48 -0300
X-Google-Sender-Auth: F65Q8kZSpSuefPwzxFVJU-0GOHM
Message-ID: <CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>
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
X-List-Received-Date: Fri, 02 May 2014 13:07:53 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 10:01 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 02/05/2014 13:56, Otavio Salvador wrote:
>> On Fri, May 2, 2014 at 2:24 AM, Alex J Lennon
>> <ajlennon@dynamicdevices.co.uk> wrote:
>> ...
>>> So I guess I'm at the point where I'm wondering if a getVar() with a
>>> flag is behaving as you would expect it to,
>>> or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
>>> isn't defined?
>>>
>>> Thanks in advance for any advice,
>> I think we have a simple error error. You are mixing a recipe, which
>> is old and a metadata layer with new concepts.
>>
>> The u-boot-imx, in 2009.08 recipe, used to set the UBOOT_MACHINE in
>> the recipe as it was left as a fallback in case user needed it and the
>> value was different from newer releases.
>>
>> In your case, the easier is to make a new yourmachine.conf and use the
>> UBOOT_CONFIG or UBOOT_MACHINE setting there so it will work just fine.
>>
>
> If I have to do that, then I have to do that.
>
> However if I could just undefine one of the two variables defined in the
> meta-fsl-arm
> layer then I could continue with what I am doing without having to spend
> the time
> right now to rework the configuration, which is wasted effort for me, as
> I will be moving
> up to the new version of u-boot in the near future.
>
> Is there no simple way to undefine a variable in a recipe?

You can change the recipe byhand. This is ugly and I wouldn't do it. I
do think you are wasting more time trying to 'workaround' it than
fixing it.

Comment the UBOOT_MACHINE setting in the u-boot-imx recipe and move
on. The log is clear you're not setting the PREFERRED_VERSION
accordingly and you should.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

