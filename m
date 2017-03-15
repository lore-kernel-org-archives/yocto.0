Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C197FE00A81; Wed, 15 Mar 2017 01:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 797C8E006D8
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 01:05:45 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id 2so883730ywn.3
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 01:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eDmr8fX5+Zdgs7cQEEnd00rqqLJzSx14c/ZqUa2YzvI=;
	b=m9o6Wsh2ijnIbciDn4x7dFqsLj9tZSjR3oAWYRKzL/6y44OcGsWRthTFVp4lOR5iCc
	pGwPCexc8b8We4YZG9A5Cl8AIbAgiir6zGSgWMQu+9t9ge5kRXvL0ZKSpkNhbswN/Y8Y
	N9OjPpdVT1QcixP/Z2trKIligKYSR1JaF6EJRHC+9j+nCrN7OXTDRB4DsyD0JnXKuDvk
	+/7xWNuLblonow7jkRDBEF3W8lYpXYp5AQ1z1TLZIRyfG2ZWiI+oNOinsBFdl10Xu/F/
	/3vMDrMDJ+OOcAvtyd+G9Mm0h2zk8DlZGUYhQnNY6odu+W7ScBpIb8b2v+cGC+XM/Xl3
	G9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eDmr8fX5+Zdgs7cQEEnd00rqqLJzSx14c/ZqUa2YzvI=;
	b=HpcLzABIm5VqVA+XAia2I+NCux6PTkWQ2sz4qqe9rNN2PJrPCvWhGTmF7L0lPmOAMs
	t2wNQs2kJLQndqSgzgyTdn1T5bCBIwXtjlUUAJvQGVLWnFXhg0wuaKFXFB9cmejfC7XR
	Snrg3kHC5Av79Z6q3ts4c7Ns24Yy2L+cIZv+gVJ3ksz1sYG7qjkcNxzJVr5+oGnNEkfh
	kBuh9GNJA+ukGY7M8RQCeO439n9PCA2n98kpUc/u7594P3ZLUa9DuQm/rI8JJF0HVY5z
	s6BzIP8tro+Mj7WfaMeAexP96JF0YynW/hIYYHw7u8VLB+qKbHZT9QkN5DfPsuRMQFpG
	I4ig==
X-Gm-Message-State: AFeK/H3YM8o5XXhwdJmHYhXtZ4SdFRrO70mGFaOSK0R/0eKTyuVLwF6iynQi527XPoPSoOvRbHUvH034wJ1HZw==
X-Received: by 10.13.192.193 with SMTP id b184mr1419449ywd.30.1489565144301;
	Wed, 15 Mar 2017 01:05:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.59.79 with HTTP; Wed, 15 Mar 2017 01:05:43 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1703141652030.15636@localhost.localdomain>
References: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
	<alpine.LFD.2.20.1703141608001.3664@localhost.localdomain>
	<CAAfyv34xQFXPZ2ir7P0nWHMqyHPZR5jLSy4=QRd9=8x=t3Y8xQ@mail.gmail.com>
	<alpine.LFD.2.20.1703141652030.15636@localhost.localdomain>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 15 Mar 2017 09:05:43 +0100
Message-ID: <CAAfyv36nwRAeKt-LyaMfDXmDuTTDQbLCPu1M5MLR_T=fAf_4ig@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: make[2]: *** No rule to make target 'fitImage'. Stop.
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
X-List-Received-Date: Wed, 15 Mar 2017 08:05:53 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 14, 2017 at 9:53 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Tue, 14 Mar 2017, Belisko Marek wrote:
>
>> Hi Robert,
>>
>> On Tue, Mar 14, 2017 at 9:16 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>> > On Mon, 13 Mar 2017, Robert P. J. Day wrote:
>> >
>> >>
>> >>   i'll start a new thread to focus on just this issue. again, building
>> >> core-image-minimal for mpc8315e-rdb, adding this to local.conf:
>> >>
>> >>   INHERIT += "kernel-fitimage"             <-- do i need this line?
>> >>   KERNEL_IMAGETYPES_append = " fitImage"
>> >>
>> >> anyway, run:
>> >>
>> >>   $ bitbake virtual/kernel
>> >>
>> >> and eventually get:
>> >>
>> >>   make[2]: *** No rule to make target 'fitImage'.  Stop.
>> >
>> > ... snip ...
>> >
>> >   i would still love to figure out how to generate a simple FIT image
>> > when building core-image-minimal for mpc8315e-rdb.
>> >
>> >   first, based on what i read, my first attempt was to add the
>> > following line to local.conf:
>> >
>> >   KERNEL_IMAGETYPES_append = " fitImage"
>> You need probably also add:
>>
>> KERNEL_CLASSES += "kernel-fitimage"
>>
>> to local.conf
>
>   that *appears* to have solved the problem ... so why is it i didn't
> realize that? where is that written up that i somehow missed it?
It is not documented in yocto manual (I cannot find anything about
fitimage at all), so maybe it could be extended.
>
>   and would it not make sense that selecting FIT image in one variable
> should automatically set the other required variables?
I think something like that can be doable and it will save a lot of
time for people who want's to have it enabled.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

