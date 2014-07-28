Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4F76E006B5; Mon, 28 Jul 2014 08:59:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5271CE00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 08:59:29 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id j5so8788123qga.29
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 08:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AhjTEe/mo+1SQkSiP6GzHVGKwUUziPkFNhsOUr6L+ak=;
	b=KuvWFXucIpQV6SlPaVSCoCLEfjhRsT7MDztBJ/Rrjib/liUN7shjgDN0z9/FP3EJDR
	m8v/9Y9ppmthP0Vt1qHOEqsyNZOtvPaf0/4iP9zvR3FiwAPBwAl8MeQCBpB+b2yqwekJ
	BvBvkjUR90xGIVWiXGf6y+uF/8RFUr+zD5tYrg3CjKmUTwmS4xUx/Risx2j5ByPc2ww6
	aO8urmHR6LMNlZhYmDk0CCz/jqbXR+Ctk1AmqQTspzjRHrqlRHo7g/PPswwhZbvt8m9E
	DLH4oTCjjrSo7H42XYP0L7XdfGwrFACOMpoHb+AIY9Txhde40lLk8K4AFJPZtUcRxh9l
	F+bQ==
MIME-Version: 1.0
X-Received: by 10.224.130.5 with SMTP id q5mr60956790qas.72.1406563168538;
	Mon, 28 Jul 2014 08:59:28 -0700 (PDT)
Received: by 10.140.34.76 with HTTP; Mon, 28 Jul 2014 08:59:28 -0700 (PDT)
In-Reply-To: <CAPphmgZsrJ-5j-zu6TJF6WL7GOnuWVRn1vsWZRFMAh4=RoUVNg@mail.gmail.com>
References: <CAPphmgbuZG64nAFx=u_verAsb=b14idQjA85-UhsHGf=M9NHfA@mail.gmail.com>
	<CAMKF1spEdPTw3Hasxeizc5hsmp-fuVU22Hj8+AYsXXP5exqYPA@mail.gmail.com>
	<CAPphmgZsrJ-5j-zu6TJF6WL7GOnuWVRn1vsWZRFMAh4=RoUVNg@mail.gmail.com>
Date: Mon, 28 Jul 2014 11:59:28 -0400
Message-ID: <CAPphmgax8Rmc+1c=0O9QqZcw2rfCBXfPkQ=2roTiceVE0Kr1fg@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: change in base-files recipe does not trigger rebuild
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
X-List-Received-Date: Mon, 28 Jul 2014 15:59:33 -0000
Content-Type: text/plain; charset=UTF-8

I'm posting this for reference.

The variable SIGGEN_EXCLUDERECIPES_ABISAFE in layer.conf specifically
excludes the recipe base-files because it is never supposed to change.

The appropriate way to modify /etc/profile is to add customizations to
the directory /etc/profile.d.


On Fri, Jul 25, 2014 at 2:21 PM, Jate S <jatedev@gmail.com> wrote:
> base-files_3.0.14.bbappend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/base-files:"
>
> PR := "${PR}.0"
>
>
> Here's output from the tree command.
>
> recipes-core/base-files/
> |-- base-files
> |   `-- profile
> `-- base-files_3.0.14.bbappend
>
> 1 directory, 2 files
>
>
> On Fri, Jul 25, 2014 at 1:30 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Fri, Jul 25, 2014 at 9:10 AM, Jate S <jatedev@gmail.com> wrote:
>>> I'm on dora. I am using a different /etc/profile for base-files via a
>>> bbappend. Subsequent builds of my image does not add the new
>>> base-files package as I think it should.
>>>
>>> Running bitbake of my image after the modification reports nothing to do.
>>>
>>> Bumping the PR on the bbappend rebuilds base-files when bitbaking the
>>> image, but does not regenerate the image.
>>>
>>> Doing a clean of the image before bitbaking it installs the new base-files.
>>>
>>>
>>> Should the image be rebuilt automatically after changing base-files?
>>>
>>
>>
>> what does your bbappend look like ?

