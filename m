Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7284EE00CED; Fri, 27 Jul 2018 02:34:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D7CAE00CE0
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 02:34:48 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id b15-v6so7988542oib.10
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 02:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aBTrOXheYX1ozx+Vadp/ssoNyCaBq/pTKaT54t49kUU=;
	b=G+WGqfA5t0mNKynRpIsm7bwnmAHnPTj3fqZWfBVu7sD6+HqZ7nNqBOAL+b4cJcOhwo
	IIwlGsER92luZm0RAVVjYyJK5icCzb6zIQLCDYVw3n2XvD3LMqBsVSMtUJAYTeikYB8D
	jx7yQD6ReOlPWvwRv+Q9MOzH2E1/CtqjeQv+SGG5v3GYS0bJsNIpv+ZlYFdZVmXwsNJm
	NFvnbTSlOtrKIWbJOoMCKc5ur9IbK0uMWDYt3gaOnGj6j2NdbV5e3JvWWZJC0yYNi7mH
	6iV2b+t6YgoYUHtP9XaiufvLzME4xmP09nU6cqyS3ofDqXq2KZuIHj6LwM/BmnQXHLSB
	kjYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aBTrOXheYX1ozx+Vadp/ssoNyCaBq/pTKaT54t49kUU=;
	b=ZSIqXozzU2vpt4g6fjRgGppICYgd8Fnlg74nrX6UOu8GD/S5rUn6gS/qFgunOado7d
	p5LcFH8oHYd8tIf9iXLfKNTeZ+Xqg44kPdHtXj7aTNM4vnbZzaAbqU5xvfx5ujsMPy4a
	Rd7+dXWkXDbLDnsSQyqyeUyIcov/Z8SR6M8MjbMBgajwW6rUbugTSEWCs4QluTzfqqiZ
	mffYFi6VwD+o2u3BPH1qd8nkrBPoTheJ2z2Oze/6Glqd+6RMBz7Vtb00ZFzFzfBSR5ke
	jvxuHv6f0KEYeI+YCqSoCCF0CoIsLJ7ikvZuioO+2DE2knGdp3uhNe9Lf6VFXt/tO4tN
	yc0A==
X-Gm-Message-State: AOUpUlE/cdscUpK4TdgJAL3yGJpRy0R3crW4x6zzHtakaKXirASJBPvH
	XXr19WOPkQla0FE5A1g2b9Ole7SXFJFy/glVV75iNQ==
X-Google-Smtp-Source: AAOMgpe82vVnBrka2pgZ8JBvv8FJltUm2m9RJyAuYff3vV+GQj6OvtNzwUVIl9DIN6+0F5eGUWds9aRmDV/VCmgpPgY=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr6135868oig.245.1532684087587; 
	Fri, 27 Jul 2018 02:34:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Fri, 27 Jul 2018 02:34:26
	-0700 (PDT)
In-Reply-To: <80ed21d8-8667-cf7b-82d9-8742b71c3274@gmail.com>
References: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
	<2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
	<CAJ86T=WtLMKA3M5-fWR1pm-x8PRRGwFihuwpuhbzEtQaGwFRTA@mail.gmail.com>
	<CAJTo0La3pkW79pJGaADvcTaC1M9viTYmWSH5VuiFCRzur2C5Xw@mail.gmail.com>
	<80ed21d8-8667-cf7b-82d9-8742b71c3274@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 Jul 2018 10:34:26 +0100
Message-ID: <CAJTo0Lbb634SaeP-MAohKtTyLLaO-4Fj4CvFEgWZyBa3WjZ1+Q@mail.gmail.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Fri, 27 Jul 2018 09:34:49 -0000
Content-Type: text/plain; charset="UTF-8"

We don't take patches via pull requests (that repo is a mirror for
convenience and should have PRs disabled), but patches on the
openembedded-core mailing list.

https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines has
details as to the required patch formatting.  Summary:

Commit message should be of the form 'recipe: summary'.  The patch
you're adding also needs a summary explaining what it does, an
Upstream-Status value (Pending I guess, as upstream is dead we can't
submit it) and your Signed-off-by.

Ross

On 27 July 2018 at 10:27, MOHAMMAD RASIM <mohammad.rasim96@gmail.com> wrote:
> Yes I made a pull request to the master branch
> https://github.com/openembedded/openembedded-core/pull/34
>
> note that this issue can be replicated by unzipping any linux-kernel (I
> think), I tested that it exist in the zip file of torvalds tree
> https://github.com/torvalds/linux/archive/master.zip
>
> so it's easy to replicate and test
>
> Also, to anyone how face the same issue and find this message, I solved the
> issue without patching unzip by using tar.gz file instead of unzip file
> (thanks to github for providing that) so instead of
> https://github.com/torvalds/linux/archive/master.zip use
> https://github.com/torvalds/linux/archive/master.tar.gz
>
>
> Thanks
>
>
>
> On 07/23/2018 09:51 PM, Burton, Ross wrote:
>>
>> Yes, please do.  Mohammad, as you can replicate this on demand, would
>> you be able to fix the unzip recipe with the patch in that bug and
>> send a patch?
>>
>> Ross
>>
>> On 23 July 2018 at 19:42, Andre McCurdy <armccurdy@gmail.com> wrote:
>>>
>>> On Sat, Jul 21, 2018 at 12:55 AM, MOHAMMAD RASIM
>>> <mohammad.rasim96@gmail.com> wrote:
>>>>
>>>> well apparently this is caused by the unzip binary that is compiled by
>>>> the
>>>> openembedded unzip recipe.
>>>> If I unzip the same zip file with the unzip binary that is shipped with
>>>> my
>>>> system(manjaro) then the files are not corrupted but when I use the
>>>> unzip
>>>> binary compiled by the openembedded recipe I get error and file
>>>> corruptions.
>>>> These are some of the errors I get when unzipping with the openembedded
>>>> unzip:
>>>> ...
>>>> symlink error: File name too long
>>>>
>>>> This error happens to multiple files where the file is symlinked to the
>>>> content of the file and not to a path !
>>>> Where should I report this bug ? openembedded ? unzip upstream ?
>>>
>>> If you google the "symlink error" you should find multiple hits, which
>>> all indicate a known bug in upstream unzip 6.0.
>>>
>>> So, it should be reported upstream. However, given that the last unzip
>>> release is now over 9 years old and there doesn't appear to be a
>>> public upstream development branch, the chances of getting a timely
>>> response don't look too good.
>>>
>>> We should probably add the fix to the unzip recipe in oe-core:
>>>
>>>    https://bugzilla.redhat.com/show_bug.cgi?id=972427
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
>

