Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EBF9E00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 15:12:22 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so3483583obb.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 15:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8HBEX6m44qae2RPYqSFoVMoupwT11NFXjQCrgaKg6dc=;
	b=smuCWdNDED2ZmpQd6AQb4krCYDfyYbMMidtTqZL5QWiY3DIeMSSVsQWtNnuqe5zGRE
	FWd8mspkC7ZsUH0iQwz9RLVTv63vegI5JZCLLaSdYAPwiCSB4OJJyz6oiAONjh+vTtUU
	uWNuMKjo4K+nkyDBDtoTDD4IL1qzqOExnQyeKYL7uo835TY227n03sn9GqAZ2crHVzpu
	4luO2ymLT9ZdqMdC7u7MnU/aLlXH4/OTqfwFS5TRjM7Hnfbj72FDvckd+1p+WP6FBMOE
	jTCzUszpFUy0kLF4PNMOu7F2vWrTVb53TdL2xp5seprTmHfU8KCXKEW+uPYdL9CRHa4y
	OzHQ==
MIME-Version: 1.0
Received: by 10.60.22.162 with SMTP id e2mr2434715oef.35.1348179141908; Thu,
	20 Sep 2012 15:12:21 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Thu, 20 Sep 2012 15:12:21 -0700 (PDT)
In-Reply-To: <13486486.LUSYcH1i4g@helios>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
	<CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
	<13486486.LUSYcH1i4g@helios>
Date: Thu, 20 Sep 2012 18:12:21 -0400
Message-ID: <CAMAb8ZNAb3qfjyRvf9CNh=Sm+o-fLCNGAikO1jAO2Z=LdZ8LOA@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 22:12:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

> You should not need to be specifying the revision within SRC_URI as you are
> doing, however, it is correct that you must specify the revision in
> SRCREV...

This doesn't appear to be done in a couple of the Yocto recipes:

  - meta/recipes-devtools/btrfs-tools/btrfs-tools_git.bb
  - meta/recipes-devtools/mtd/mtd-utils_1.4.9.bb

SRCREV is not set in either of these, but 'tag=' is supplied as part of
SRC_URI, i.e.:


  SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/mason/btrfs-progs.git;protocol=git;tag=fdb6c0402337d9607c7a39155088eaf033742752;branch=master"


I'm not sure what to make of that, but... I'll modify my Wiki entry to say
that SRCREV should be set (instead of a SRC_URI with 'tag=').



On Thu, Sep 20, 2012 at 5:41 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 20 September 2012 16:08:41 Evade Flow wrote:
>> To bring this full circle... if you want to build behind a restrictive
>> firewall using pre-mirrored sources and BB_NO_NETWORK, be aware that
>> recipes which:
>>
>>   1. Specify a git repo as the source, and,
>>
>>   2. Specify the revision to be built using a tag name
>>
>>
>> will cause your build to abort when bitbake tries to run 'git ls-remote'
>> to resolve the tag name.  So don't specify SRC_URI like this:
>>
>>
>>   SRC_URI =
>> "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v
>> ${PV}"
>>
>> Instead, use:
>>
>>   SRC_URI =
>> "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=8
>> 885ced062131214448fae056ef453f094303805;branch=master"
>>
>>
>> I added a note about this to the Wiki:
>>
>>   -
>> http://wiki.yoctoproject.org/wiki/How_do_I#Non-networked_Builds_and_Cached_
>> Git_Respositories
>>
>> I'm still new to Yocto, so someone please chime in if any of this
>> information is incorrect...
>
> You should not need to be specifying the revision within SRC_URI as you are
> doing, however, it is correct that you must specify the revision in SRCREV and
> that revision must be the full SHA1 hash and not just a tag or branch name.
> The reason for this is that tags are not fixed and could change, therefore if
> one is used we must query the server and resolve it to the current SHA1 hash
> every time the recipe is parsed.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

