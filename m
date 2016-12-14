Return-Path: <anders@openpuma.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40BD9E00D01; Wed, 14 Dec 2016 07:45:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A658EE00CC7
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 07:45:52 -0800 (PST)
Received: by mail-oi0-f42.google.com with SMTP id y198so24226139oia.1
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 07:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=openpuma-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rxWksAfirApL/9JvdfhDjLiaFN45QAihPWCfiLadLRI=;
	b=Uti4FuWzO3gReSbwf6UlShLyEhupBqCeWDx0O5GfQJCKYykAulpM+ZjZTWedgfkeZ1
	05Nf5l164hlawDVkqA0CWBeQNrTW/3USm3ajm7m3MDj2vOqRvfI4yVqDW4jbKyp9mvmT
	53JP37xBdJPaQLcyclMhxvaSrlIutfT5B1lblUuqENb5FUUlPiEFPA27YIA2W7GJUWzH
	hxNvrmepFY1ROJntGOg0DXv64bWzQxE41PCoJJ76y36JGN9Qr6pDsNlS84aWkUnnmjYb
	w9kSSaXxhB3UaTTS2jePH/vNpIHN8WY8GzDdKoajP/+hJ0lKkXHKqvhpylVh1YvjnUnh
	N4fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rxWksAfirApL/9JvdfhDjLiaFN45QAihPWCfiLadLRI=;
	b=j665mYcPrJmBIDAJ0Ex0IAiTNSFE0W9B78fu4RjMiO8bCfdDkAasvJD/YmHsBbprAW
	pd7g+Oqpz/emXQ0DgpPs6Of/pWJwwF0fSL/mC0ZSz/w4B+jwMnOLEvCTgrlFvrCU3iCt
	hmQEfWYkR96q4MZyL/0i34cMX0yxE/3ucPfnucBytQKGJ6kb2Ddru6oIYHe9O7pwQ4K8
	LY0ldvd95kGnHxh5gfph19jM/COBblQ7uAnoMcB/ExmTS8DuIB3ZypHhL/AxGwe05W9z
	V9ETkqdw7+23X1HHJkGpwc1zUVpac3QpLfm+l8CtKH8X04ZoI3G/5KVDRHH11uUoocQp
	qjOg==
X-Gm-Message-State: AKaTC00UNfN7B3FaNWMdtQEmPWgFwx5Ub5clf5d3LWNYd5AXvkpQ/hQcKox62xLCc+osn6x2aRRVjaPRQSMN3w==
X-Received: by 10.202.245.143 with SMTP id t137mr55852368oih.78.1481730352414; 
	Wed, 14 Dec 2016 07:45:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.236.83 with HTTP; Wed, 14 Dec 2016 07:45:52 -0800 (PST)
X-Originating-IP: [172.88.176.4]
In-Reply-To: <CAHiDW_H7h8wA2r=+QLJZGitVUidi6svV-=UZnk5HgVLeu3RZrw@mail.gmail.com>
References: <CAKTo2En3PRxQ2wsANGF8k+Zt8n4tp7choWqdu8yrbct996YQdA@mail.gmail.com>
	<CAHiDW_H7h8wA2r=+QLJZGitVUidi6svV-=UZnk5HgVLeu3RZrw@mail.gmail.com>
From: Anders Oleson <anders@openpuma.org>
Date: Wed, 14 Dec 2016 07:45:52 -0800
Message-ID: <CAKTo2EnVR4nAWwBaq5=4WhhcrhBLWizirWS2aMaQOx0g6W3cGg@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: possible bug with dpkg-native with sstate-cache
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
X-List-Received-Date: Wed, 14 Dec 2016 15:45:55 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 14, 2016 at 2:01 AM, Jussi Kukkonen
<jussi.kukkonen@intel.com> wrote:
> On 14 December 2016 at 06:59, Anders Oleson <anders@openpuma.org> wrote:
>>
>> I have found what I think is a sneaky nasty bug when using package_deb
>> with
>> SSTATE_MIRRORS on RPM based build hosts. Below is a short description of
>> what
>> I found and our workaround. A patch that adds a patch that is applied to
>> the
>> packager that packages the real packager.  To avoid this sneaking failure
>> mode
>> when building without building when using the cache (its all so very
>> meta, btw.).
>>
>> Don't ask how we found this; it wasn't pretty.
>>
>> Note: the fix approach below actually patches dpkg on the target too,
>> but I do not
>> know how to easily make the patch only apply to dpkg-native and not also
>> dpkg.
>> But in this case it should be fine anyhow; there is no reason that dpkg on
>> the
>> target should not behave this way too. I have checked the upstream and the
>> lines in question have never been touched - it is possible they may want
>> to
>> eventually upstream this too (???).
>
>
> I have to point out that the upstream developers are usually not going to
> come to us looking for patches :) If we want patches upstreamed we have to
> go to them and in fact there is a bit of process to to track this, see
> below.

Yes, I'm more or less thinking out loud whether it would be something
they care about.
I'm not sure they would, but I may ask and see. There's a minor issue
in that the
error message would disappear in case of a real misconfiguration, but
this morning I
see that on my Ubuntu box that the directory is empty anyhow.

>
>> For future knowledge, is there an easy way to have a SRC_URI list that is
>> different for dpkg-native than for dpkg?
>
>
> I think this is actually already used in dpkg recipe:
>     SRC_URI_append_class-native = "..."
> but as you said this doesn't seem required in this case.
>

OK, wasn't sure if this was a good idea and I missed the example. So
that all makes sense.
By the time I formulated the question I was 1/2 way there...

>> Also, this is my first post to the group, so apologies if this is not the
>> right place or way to upload a potential patch; set me straight if so.
>
>
> Thanks and no problem: openembedded-core@lists.openembedded.org would be the
> correct place for meta/ patches. Please take a look at
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#how-to-submit-a-change
>     http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
>
> Some specific things you may want to look at:
> * Send the commit as part of an email, not as attachment (git "send-email"
>   and/or "create-pull-request/send-pull-request" script are good tools)
> * Signed-off-by tag on both the commit and in any patch files in it
> * Upstream-Status tag in any patch files in the commit
>
> Thanks,
>  Jussi

Will do. It may take a bit to process all that, but I will.

