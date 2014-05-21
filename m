Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A472BE00B7B; Wed, 21 May 2014 07:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f173.google.com (unknown [209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DDC0E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 07:47:41 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id lx4so2075376iec.18
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 07:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=57Zz5nTaV4z+5CzBj9ymG/KyuYtVgWyQdZHmm10vVww=;
	b=xReRcn8eEgWbIRfhhu/qzDWQJ8pDVHPQQnTQHaoSbN5ZrdyzVWoj3ka1gbGpdg+kM+
	SkP1SVINRj53CTUqCjYv25y9+p6dIXNwyHHM48idu556u2mu2oiAutMUMWFVP3JymK0n
	TFaS1Fm7hqkYezMMEslHoL+Vm74Tul/EqXqafQD096BGsY4j5mAgKli2I8Ne9XueLAC8
	8reMFMygjRyJ0ve1XqsV1H2K3nOZfhN7Gx8oRL9WQeILGy6KSYA2P/zDgiEvUZ6y+7lz
	9odmk3J29Vnso83blFlbunT/9eL7CRwldH7OVwBa9TsclD/BptmZjeIMEucS3M19+DtO
	qC9w==
X-Received: by 10.42.91.73 with SMTP id o9mr5966067icm.69.1400683660965; Wed,
	21 May 2014 07:47:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Wed, 21 May 2014 07:47:20 -0700 (PDT)
In-Reply-To: <1400497977.28353.168.camel@ted>
References: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
	<CABcZANknNHPuikqAgOe=0WWgDON9mb=TTdyqX5Ap30Jh+v+epQ@mail.gmail.com>
	<CAAPegz1nmK+A0ECf7oKNPkTS+MkU5pPm7Dy-+nELM=uzO+q5Pw@mail.gmail.com>
	<CABcZAN=LmEaxJ5OLJ1h4y3r6WxacSZdAEp09eu-gEVkUcseHbw@mail.gmail.com>
	<1400497977.28353.168.camel@ted>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 21 May 2014 10:47:20 -0400
Message-ID: <CAAPegz3iE9xD3r3u=euHNPAxGWMW1XDF8D8bN9CnJhwHpqpkHg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: git.py support for submodules
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
X-List-Received-Date: Wed, 21 May 2014 14:47:45 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, May 19, 2014 at 7:12 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Sat, 2014-05-17 at 13:19 -0700, Christopher Larson wrote:
>>
>>
>> On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com> wrote:
>>
>>         On May 17, 2014 3:58 PM, "Christopher Larson"
>>         <clarson@kergoth.com> wrote:
>>         >
>>         >
>>         >
>>         > On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com>
>>         wrote:
>>         >>
>>         >> Hello.
>>         >>
>>         >> I noticed that git.py doesn't seem to have support for
>>         submodules. I worked around this in my recipe by adding a pre
>>         configure step but I was wondering if a patch to add another
>>         option to git.py to fetch submodules would make sense and be
>>         welcomed (pending it's implementation of course).
>>         >
>>         >
>>         >  See gitsm.py.
>>         >
>>         >
>>         > --
>>         > Christopher Larson
>>         > clarson at kergoth dot com
>>         > Founder - BitBake, OpenEmbedded, OpenZaurus
>>         > Maintainer - Tslib
>>         > Senior Software Engineer, Mentor Graphics
>>   >
>>         I couldn't actually figure out how to use it. I looked at the
>>         code and wasn't sure how it war supposed to do or what it was
>>         for.
>>
>> You use it exactly the way you use git.py - gitsm:// instead of
>> git://.  It's basically git fetching plus submodule handling. I
>> personally would rather see it merged into git.py, but I can see the
>> reasoning.
>
> FWIW the reason its separate is that mirroring is not in a good state
> with submodules since git is doing magic things behind the scenes that
> the fetcher and its mirror infrastructure have no knowledge of. We
> should probably document that somewhere though.
>
> There are a few ways it can be fixed but its ugly and I'd prefer to have
> that code isolated for now. It could easily be merged later and it needs
> someone who cares about submodules to fix it up to be a first class
> citizen before that can happen.
>
> Cheers,
>
> Richard
>


Here is an interesting twist on the same issue.

It looks like if you have two recipes pointing to the same repository
but with different git:// vs. gitsm://, that if the git:// runs first
the one with gitsm:// will fail. I'm using multiple recipes against
the same repository to build some internal code where several programs
are in the same repository. I suppose the work around is to make them
all gitsm:// but  still...

Chris

