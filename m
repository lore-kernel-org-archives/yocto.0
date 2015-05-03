Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F156E009D6; Sun,  3 May 2015 14:11:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE4B6E00954
	for <yocto@yoctoproject.org>; Sun,  3 May 2015 14:10:55 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so143725460pab.2
	for <yocto@yoctoproject.org>; Sun, 03 May 2015 14:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=GODyRPVMF1yQm4F4GR/8LfZXcqQbsKYC7C4SpY0uxEQ=;
	b=qFiODvsH7C1yt9x/pRUlYQP86OE+dbaU17ILjT9W8ZDfogR1KRXlxqWrwUB5JbqPsE
	zsHnN93Eb4zlMN5A/Fdh7sEzwjjMG6MB3JirrayAQ+Pwc2rATL6CFvxaHHdr/5Mk2z0U
	BshvjPNn9qMUBgQ2Zgx9wf/SzRpqxX4VXgUFtAl/PzhU/mL1EsWtq8RIlImo0fWBl7E9
	F/1bqOTyFL6s3szpNnvaXa3m306iTcJZVHnN1q5czYQlZWsHPGSUxypONZjRvG++65UK
	kY8b7a78LcZj5JL8id+zRX6qHO26EXXgS+uejcsKBRk+zVPzU3KWBTKdHqLqB7iHsPTN
	aklw==
X-Received: by 10.68.108.65 with SMTP id hi1mr36489166pbb.129.1430687454986;
	Sun, 03 May 2015 14:10:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.134.227 with HTTP; Sun, 3 May 2015 14:10:24 -0700 (PDT)
In-Reply-To: <CAAPegz3OD458o4LDVLrjk-6C-GNWoCXz-TdBoQR3iAVhv+pALg@mail.gmail.com>
References: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
	<CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
	<CAF_dkJDB1nUQO_E+zZ17-drWLFoySks=aqrCx6QPR2ZkXHL6DA@mail.gmail.com>
	<CAAPegz3OD458o4LDVLrjk-6C-GNWoCXz-TdBoQR3iAVhv+pALg@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Sun, 3 May 2015 17:10:24 -0400
Message-ID: <CAF_dkJBVeASEFUmi2XRqi=CXMYe=ynbTnWB86XiodnYDf6gwAg@mail.gmail.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto-ish upgrade-in-place strategy
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
X-List-Received-Date: Sun, 03 May 2015 21:11:00 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 3, 2015 at 3:58 PM, Chris Morgan <chmorgan@gmail.com> wrote:
> We thought about the rescue/recovery approach as well. The issue was how the
> system would recover in the field and how updates were handled.
>
> Consider that to update the full system image you'd have to download and
> store that image to flash, unless you stored it somewhere, and if you were
> going to store it you'd have to have extra space for that. For recovery
> you'd have the similar approach of booting recovery but you could write
> directly to the primary fs since you're booted to recovery. The trouble
> there is download speed and connectivity. The system is down until you
> download the update diff/full image and that could take some time. And the
> system is down for that period.
>
> So we didn't see a path forward that would support slow connections plus no
> down time. And we would still need some place to put the new image that was
> guaranteed to be available which means it couldn't be used for application
> or other data that had to be preserved across updates. With two rootfs
> partitions we can download in place and take our time doing so. Plus no
> special recovery image and no reserved area that is unused except during
> update. We do have a full duplicate rootfs though.
>
> I see where you are going, for other use cases it may be better to have a
> primary and a recovery. Our rootfs is around 200MB at this point.
I don't expect my rootfs will be anywhere near 200MB.  It's a deeply
embedded, single function application.  So the issues of memory size
and bandwidth don't really apply for my particular application.

As I have thought about this more (driving to and from baseball games
for my kids), I think what I was really wishing for was a Yocto
standard/recommended Poky core-image-bootstrap image with appropriate
hooks and configuration items to allow me to tailor it to my
particular application.

So far, I'm not sure how core-image-bootstrap differs from
core-image-minimal, except for the additional packages and a custom
rc.local I mentioned previously.  So perhaps there isn't a need for
such a beast, and I'll go roll my own bootstrap/rescue upgrade
strategy myself.

I'll go start a different thread with a specific question along that line now...

--wpd

