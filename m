Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9550DE00543; Fri,  1 Aug 2014 17:59:07 -0700 (PDT)
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
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B434E004DD
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 17:59:05 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id at20so6883476iec.22
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 17:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HMoGVMKRWvIJV7kVRqQQhmjXPaDo0IZ/7tB+4OHDXqY=;
	b=Akj8wZ+R181d3Iwd72OzfbUoPm50ZDpn2EN8gGTV7GSr+Y6Fa+a8L5cGqfzOsMa9xm
	fEhsI/5IUgQx0ySPs92f1R7XKzCwpWPUNNAMYt61aBcyhRQE5dTPaXSC3qZNSmYjFtLq
	vGEZcmCjAyBIGpeaQcPAFZQx3tGRsWpcDLlNk9Q8YKOG37jJlKEY2//MeO4yHjMpmo+5
	PBR+9sXnON5fA0WLsNd7KKZzAU4usppL9QFEtoR/fw9UjjZsUA+XBmlHa4y03ov31xgG
	haEE6lnyWnuU71ZiIPWOI5W8kVXPNIKrDq2i7RM0uCkL92MlhYv8b9/OHHcMNLolF9OF
	KJxw==
X-Received: by 10.50.25.71 with SMTP id a7mr13081287igg.17.1406941144623; Fri,
	01 Aug 2014 17:59:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 1 Aug 2014 17:58:33 -0700 (PDT)
In-Reply-To: <34318024.nU0i3jDByz@peggleto-mobl5.ger.corp.intel.com>
References: <alpine.LFD.2.11.1408010535410.15871@localhost>
	<34318024.nU0i3jDByz@peggleto-mobl5.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Aug 2014 17:58:33 -0700
Message-ID: <CAMKF1soq1Vcyd2Ue54qCvmJv4a_vVt-q0XnovK42zgymBMAEGA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: what is the long-term plan for YP and eglibc?
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
X-List-Received-Date: Sat, 02 Aug 2014 00:59:07 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 1, 2014 at 2:53 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Robert,
>
> On Friday 01 August 2014 05:38:07 Robert P. J. Day wrote:
>>   at the YP resources page for eglibc:
>>
>> https://www.yoctoproject.org/tools-resources/projects/eglibc
>>
>> one reads:
>>
>> "The Yocto Project encourages interested parties to get involved with
>> the EGLIBC project. More information is at http://eglibc.org."
>
> That might now be out of date in view of upstream developments.
>
>>   but following that link, one learns:
>>
>> "EGLIBC is no longer developed and such goals are now being addressed
>> directly in GLIBC."
>
> The long-term (even medium-term) plan is to switch back to glibc. We do still
> rely on some of the functionality in eglibc that hasn't been incorporated back
> into glibc though, e.g. poky-tiny uses eglibc's fine-grained component
> selection, so it's not necessarily a straightforward switch. Mostly I think
> we're waiting on some of Khem's (and probably other folks) time to sort this
> out.


The eglibc has had its last release in 2.19 and btw. the release
branches in eglibc will get backports and fixes
as long as corresponding glibc branches are open. As of now eglibc
trunk has ceased to exist. I am waiting on 2.20 glibc release (which
should be happening anytime now)
there is a list of changed in eglibc that are not in glibc the reason
being no one carried them forward and partly I am also  to blame due
to time constraints but I will make up for it :)

- ppc/e500 has few changes around SPE which our FSL/ppc bsp might care
- Option group support - As Paul mentioned we use it and I plan to
forward port it and possibly submit it for 2.21
- cross-localedef - We care about it. We have to see whats missing in
2.20 and forward port the missing parts.
- cross testing - There are minor adoptions needed but we dont have
ptests for eglibc yet so this should be minor

Rest of items which are left out doesn't bother us.

We are in August. I am hoping that we can include 2.20 in 1.7 release
but there might be a risk associated due to above
and that we will change recipes to be called glibc instead of eglibc
some metadata changes have to be made as well. I hope to work on it
starting second week of august.

Hope that helps
-Khem

