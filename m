Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86511E007A2; Fri, 29 Aug 2014 19:56:44 -0700 (PDT)
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
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7664E00781
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 19:56:43 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id at1so3638388iec.23
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 19:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QN2eFnzucfBu33Ic1AIgrZ95IvAtkCCRQ0lFHeGSkIc=;
	b=bHKlhcCnpNtTmwEr2BsSynLNmR2aXQOzEiiI2Ov1AJs8gkaPkiOA8DLmDohXC8Oww7
	U3PN2vbikFAhNVXIjiHZ3nTreBTyMZwpKKJ2s29JIhLMu5MAyJVmeaAQ/0Q0wnS8CjBw
	0zxCZ/j3R2P0E0+EK4+mgXdJnL+0woe/CjVO/1/dh8dWzhD/ZeNFiu+LeGRH+TO2Hn77
	TBYH1/Rmq/yHF5+yP63c9+pqC8VkwOlkBaXCZe0DNpqVvkmDkdJpNzeOH6Mb0npCPqFZ
	SUdwtkG24Jve3c/dmsWBUAvspDMcDcwiaiAsi3fl8D+b/1ic4jI8YPP4vIKQMuoXrEoA
	zWLQ==
X-Received: by 10.43.167.196 with SMTP id nf4mr1895715icc.22.1409367402728;
	Fri, 29 Aug 2014 19:56:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Fri, 29 Aug 2014 19:56:12 -0700 (PDT)
In-Reply-To: <CAMKF1sq4NwaFhZCXysdJ53G=3UY2CnHgKZmgpG7H-X=vhG0W9w@mail.gmail.com>
References: <20140828064051.GA13139@haswell> <1409266291.29296.147.camel@ted>
	<CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
	<CAMKF1spj67i2i_50m=oTUpS3x2J=de0UxGf70zLhn-a7c4M3QA@mail.gmail.com>
	<1409308755.29296.148.camel@ted>
	<CAMKF1sq4NwaFhZCXysdJ53G=3UY2CnHgKZmgpG7H-X=vhG0W9w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Aug 2014 19:56:12 -0700
Message-ID: <CAMKF1sqRHG28mmX+0B2jGNzBbKux2FriRgbTX0WhjGxXWAp92w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Sat, 30 Aug 2014 02:56:44 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 29, 2014 at 5:01 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Aug 29, 2014 at 3:39 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> On Thu, 2014-08-28 at 18:46 -0700, Khem Raj wrote:
>>> On Thu, Aug 28, 2014 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> > reproduced. will apprise as I have some fix.
>>>
>>> OK pushed another patch to the contrib tree that should take care of both
>>> xf86-input-synaptics xf86-input-vmmouse
>>
>> Thanks. I'm having one heck of a problem unentangling all the different
>> build failures (from these and other patches) but this one looks like
>> glibc:
>>
>> https://autobuilder.yoctoproject.org/main/builders/poky-tiny/builds/18/steps/BuildImages/logs/stdio
>>
>
> Trying to reproduce it locally. Once I have, I will update.
>

Richard

I have fixed this too and pushed the updates to same pull tree.
Please give it another whirl

-Khem

