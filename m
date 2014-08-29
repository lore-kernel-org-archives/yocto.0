Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3930E00798; Thu, 28 Aug 2014 17:41:30 -0700 (PDT)
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
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2040AE00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 17:41:26 -0700 (PDT)
Received: by mail-ig0-f180.google.com with SMTP id hn18so1831068igb.13
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 17:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=IIJZjsndcDQpfWH0gLlAKI3MstS51hC0vYPN+zXJMjM=;
	b=fYie9kR1MBkgEmgWjGKm0H+iePdFrCc4DHe54aGsFUbxXzKHc+UYDEPjI54nOraG21
	gaCltTPNmN6wM4DcwXOtZEGrHjj5M94hTElkFcxobjlnErCiV5tZQhWAwux3sYXnvXK+
	nRgjR+LtWbJlnuZUj/F7XPyoITcwtKvlMefjcvsTnvRJDDjJjVr1Lz2IQ9p/uKR8TBqk
	rEXrW31hCcQikARDqfHF1N4kC0Lf8svzV65wrA9dqoJgLiisFGIySSpRAkYxOXEuohZr
	ae9nxchAnrEe3DIeVQXvAl0kVle6AOi7eMzjXB2+dnWYYZURTn7RJsp9ByZrSjgdJTzU
	blOw==
X-Received: by 10.42.26.74 with SMTP id e10mr7939384icc.25.1409272885907; Thu,
	28 Aug 2014 17:41:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Thu, 28 Aug 2014 17:40:55 -0700 (PDT)
In-Reply-To: <1409261727.29296.144.camel@ted>
References: <20140828064051.GA13139@haswell> <1409261727.29296.144.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Aug 2014 17:40:55 -0700
Message-ID: <CAMKF1sqn2Bj--Mke7SA-wONxeaRYcCa_JZ5EGkmo=phdf3EoBg@mail.gmail.com>
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
X-List-Received-Date: Fri, 29 Aug 2014 00:41:30 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 28, 2014 at 2:35 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2014-08-27 at 23:41 -0700, Khem Raj wrote:
>> As we all know eglibc has been merged back into glibc and 2.19 was the
>> last release, here I have put together the recipes for upcoming glibc
>> 2.20 release and removed eglibc 2.19 in favor of move.
>>
>> I also thought about leaving eglibc in there but then eglibc and glibc
>> were pretty much same as they always have been that it would be an
>> incremental change with lot more patches this time.
>>
>> The tree is here
>>
>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/eglibc-to-glibc-2.20
>>
>> This has not recieved much testing yet and I am looking out for helping
>> hands here, so try it out in your buid environments and machines of
>> interest and report back on issues.
>
> The one I've seen so far looks like a patch wasn't updated:
>
> http://errors.yoctoproject.org/Errors/Search/Details/3783/3/10/1fc811ecd57be21ae6ab78e15204ffa76494c6b8
>

Yes.
have forgotten the squash when I updated patches earlier today Fixed
and pushed now.

> Cheers,
>
> Richard
>
>

