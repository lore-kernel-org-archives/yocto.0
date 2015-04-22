Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40F5BE00949; Wed, 22 Apr 2015 04:01:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F404AE003A8
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 04:01:10 -0700 (PDT)
Received: by pdea3 with SMTP id a3so271114518pde.3
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 04:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2w6oA5f8GimxoEh41AbxcakbNbhD3EoQ+y4Z0EcXGSM=;
	b=Mpu/gJmdAWrSExxeDwLPiatub17OB17Ct1I2ey6CtPQLdhNy7OY981yl2B5fRrceVw
	jQYRbwMZDJ1Rx1kBl9mzymZz/K3G3gjm6s8/FwAcrWcgR51SHW75RkR2sHdHSqb1d7j0
	KAGWzqaql7mTyTVI69oTE2hpYn68Okr2CJv4pR+qi41Bb9aBgrPYY4Wym+hHMKoaFkkd
	TGeJxQK8te7HCq7fjZcYuJOrm0ql+N04T7mJdYl/PPzG0ZnS7kK6w5rQUUyxkCF7Nmf/
	NLdwfMA/09rY49JAuu48FmpP410k7l9/kxsSG6fydn26GR2q5e19ZGXn63w6i6y0ym/8
	h7eQ==
X-Received: by 10.70.131.76 with SMTP id ok12mr45559984pdb.155.1429700470712; 
	Wed, 22 Apr 2015 04:01:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.114.166 with HTTP; Wed, 22 Apr 2015 04:00:50 -0700 (PDT)
In-Reply-To: <1758688.vCBBUn3nR9@peggleto-mobl.ger.corp.intel.com>
References: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
	<E6ED90C4-6C3F-4D28-8F62-69B4E1637BE7@gmail.com>
	<1758688.vCBBUn3nR9@peggleto-mobl.ger.corp.intel.com>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 22 Apr 2015 07:00:50 -0400
Message-ID: <CAAPegz0yoeT6MHsTgszud2RXHpkNDZLo28Xsj_w8iHPosSikhw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extrausers working from image file .bb but not from .bbappend
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
X-List-Received-Date: Wed, 22 Apr 2015 11:01:16 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 22, 2015 at 4:10 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 21 April 2015 18:54:29 Khem Raj wrote:
>> Hi Chris
>>
>> > On Apr 21, 2015, at 6:27 PM, Chris Morgan <chmorgan@gmail.com> wrote:
>> >
>> > Hello.
>> >
>> > Based on
>> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-c
>> > lasses-extrausers and the .bbclass file I've added this to a .bbappend,
>> > pulseaudio_%.bbappend actually so root user can use pactl when
>> > pulseaudio is running in system mode:
>> >
>> > inherit extrausers
>> > EXTRA_USERS_PARAMS = "\
>> >
>> >        usermod -a -G audio root \
>> >
>> > "
>> >
>> >
>> > From the .bbappend this isn't working. If instead I add it to our
>> > custom image file recipe (image-blah.bb) it does work.
>>
>> its a image level config so thats right behavior.
>>
>> > I'm not sure how to debug or why it isn't working from the .bbappend.
>> > Thoughts?
>> >
>> >
>> >
>> > Also, the documentation in the .bbclass seems out of date but wanted to
>> > confirm:
>> >
>> > http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers.bb
>> > class
>> >
>> > shows:
>> >
>> > Below is an example showing how to use this functionality.
>> > # INHERIT += "extrausers"
>> > # EXTRA_USERS_PARAMS = "\
>> > # useradd -p '' tester; \
>> > # groupadd developers; \
>> > # userdel nobody; \
>> > # groupdel -g video; \
>> > # groupmod -g 1020 developers; \
>> > # usermod -s /bin/sh tester; \
>> > # "
>> >
>> > This INHERIT vs. inherit seems like it could be something that changed
>> > in bitbake in the past but was left over in the .bbclass.
>>
>> its correct because its assuming you are adding it to config metadata and
>> not recipe metadata may be location is not right. Send a patch
>
> It should work either in the image recipe (with inherit) or at the
> configuration level (with INHERIT +=), but I agree extrausers not intended to
> work from individual recipes, we have useradd for that.
>

Looked at useradd source and documentation and skeleton example but I
don't see a way to add another specific user to a group.

I had been looking to use extrausers with 'usermod' in the
pulseaudio_%.bbappend because the pulseaudio.inc base recipe file is
the one creating the 'audio' group and adding the 'pulse' user to it.
So it seemed like an appropriate recipe to add to to also add root to
the 'audio' group.

Am I missing some way of doing this with useradd or should I just be
modifying the top level image recipe to resolve this issue?

Chris

