Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12F92E009BE; Tue, 21 Jul 2015 12:51:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76B8FE0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 12:51:56 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so116093073igb.0
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 12:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qzpoz3KJdMMlxw7/qI7Cdv8pTe2uuwlED+HlKwOcdTY=;
	b=CMR+xosiMInpERMqME/zP5cHk6Jnx6wz5Qq5Mj1HoJwKG++sNurnAA9zXO3PtYQFuP
	JSqQcesYyPneNsFeYBVWyP81ziHlsAwqW4hQBU0DYkxWfUVmD3tP8aYgx365EOzewQ+9
	qpy8MoSJQshOQr1rfxVQUYjMfARLGsi94wHos05By68huU6JOLER/IcKwAN46BmXiIPV
	RU1GbZAI/Ghtn/QnsTOEol7A5Bf1eJEmUNWHffeg5Cjc4yvokFa1XLtOE7vex0VjkjZY
	l7ZnMBIlVq5uw/5y0Ps8yLHD83zdLwqe2m8FyxtfFz2gC+yt9RUtGsA1IbXVBeep5fmq
	fppA==
MIME-Version: 1.0
X-Received: by 10.50.111.231 with SMTP id il7mr27199788igb.23.1437508315464;
	Tue, 21 Jul 2015 12:51:55 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 21 Jul 2015 12:51:55 -0700 (PDT)
In-Reply-To: <55AE8445.60302@linux.intel.com>
References: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
	<55AE6705.5040907@mlbassoc.com>
	<CAK5mtex-n4XrVXG18zG=ha_+R1-Z5Yh6TKLWudt1CVpXpUHokQ@mail.gmail.com>
	<55AE8445.60302@linux.intel.com>
Date: Tue, 21 Jul 2015 14:51:55 -0500
Message-ID: <CAK5mtexxVJ2uZeahegoJ=+8pOztcPufUHYmXWrhwy9hMzc3tLw@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org
Subject: Re: [oe] Question about IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL
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
X-List-Received-Date: Tue, 21 Jul 2015 19:51:57 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 21, 2015 at 12:41 PM, Leonardo Sandoval
<leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>
>
>
>
> On 07/21/2015 10:45 AM, Victor Rodriguez wrote:
>>
>> On Tue, Jul 21, 2015 at 10:36 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> On 2015-07-21 09:26, Victor Rodriguez wrote:
>>>>
>>>>
>>>> Hi team
>>>>
>>>> I have a question , according to documentation there is a difference
>>>> between
>>>>
>>>> IMAGE_INSTALL_append
>>>>
>>>> and
>>>>
>>>> CORE_IMAGE_EXTRA_INSTALL
>>>>
>>>> Specifies the list of packages to be added to the image. You should
>>>> only set this variable in the local.conf configuration file found in
>>>> the Build Directory.
>>>>
>>>> When I use the second one and try to build a core-image-minimal-xfce
>>>> bitbake does not install what I wanted in my image . I had a really
>>>> hard time few weekends ago because of this.
>>>>
>>>> I wonder If I am missing something or if this is a bug
>>>
>>>
>>>
>>> The core-image-minimal-xfce recipe does not "play nice" with
>>> the core-image class and is not respecting CORE_IMAGE_EXTRA_INSTALL.
>>>
>>> I think this should be filed as a bug (and feel free to suggest a patch)
>>>
>>> BTW, this question should really be on the OpenEmbedded development list.
>>
>>
>>
>> Thanks Gary
>>
>> I will submit the BUG , do you know the Bugzila where I should submit it ?
>
>
> Victor, you can file a bug at https://bugzilla.yoctoproject.org
>

I think we have one already

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7616

>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> --
>>> _______________________________________________
>>> Openembedded-devel mailing list
>>> Openembedded-devel@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel

