Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1654FE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 07:16:30 -0700 (PDT)
Received: by oagh2 with SMTP id h2so3966522oag.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 07:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CtfjpqlKlK+1zCYEfdD1wcsgAM//aVr3xXDk3LquhZM=;
	b=p2LEfiBks+HgQ82hwixu6D+8P84371KzPkc5VqKqAcgj/ggrfeZv/5/uGcrJcdMGSL
	RjuRAnV3cg78nMlNnNNn6bPpi9y6lvXgOEnr7YnliXc1K8BuLPzLGwPeMt8LxrGgTZ/p
	RRnevbRRoLoGquzXZCLDEgE8IXulY2+gNGYC0MoxfI+dqpgW5kLDgNwTRlyTZAqpB5vD
	kgF+lHAJl03ZebXsIKholB61pAwetIU6PDSOoRAxxOkfa4A6Bmod5VukcQ7eRZWu8Xnt
	0qHVrZK6BIF3ocm3FerQk1GcK2zLqTKa/ZrWCcolheTu3c78gGnKsVQsXodSl6Vxo3oB
	zC4A==
MIME-Version: 1.0
Received: by 10.60.22.162 with SMTP id e2mr5930376oef.35.1348841788203; Fri,
	28 Sep 2012 07:16:28 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Fri, 28 Sep 2012 07:16:27 -0700 (PDT)
In-Reply-To: <1470336.PrNkWSnEWe@helios>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A70D02@FMSMSX151.amr.corp.intel.com>
	<CAMAb8ZPWCD+Q6CVwcUM75UCZXqf=JTTL6=-f0wfX19333KHzQw@mail.gmail.com>
	<1470336.PrNkWSnEWe@helios>
Date: Fri, 28 Sep 2012 10:16:27 -0400
Message-ID: <CAMAb8ZO4+DBOAboVYLMQDq-Aa2ymreBrumnrLvUp0ZGJcqK+Tw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: build failure on current
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
X-List-Received-Date: Fri, 28 Sep 2012 14:16:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

Seems it definitely didn't build tar:

evadeflow% pwd
/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr/bin
evadeflow% ls t*
tabs  tailf  taskset  tic  toe	tput  tset  tunctl  tzselect
evadeflow% tar --version
tar (GNU tar) 1.22
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.


This is on denzil, BTW. (Maybe the check against the tar version was added
later?)


evadeflow% bitbake core-image-sato
WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated
with this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Parsing recipes: 100%
|###################################################################|
Time: 00:00:07
Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105
targets, 34 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2.1"
TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
TARGET_FPU        = "soft"
meta
meta-yocto        = "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"


Maybe I got my build tree into an inconsistent state somehow when I was trying
to 'fix' this. I can try rebuilding if it helps, using the original perl
archive (not the one I re-tarballed with tar 1.22)...


On Thu, Sep 27, 2012 at 6:58 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 27 September 2012 17:55:45 Evade Flow wrote:
>> Fair enough. And I should mention that the error I reported occurs on
>> Ubuntu 10.04. It's not like I wasn't warned. :-}
>>
>>   WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated
>>   with this version of the build system; you may possibly experience
>>   unexpected failures. It is recommended that you use a tested
>>   distribution.
>>
>> (Other than this oddity with the perl package, things seem to work fine.)
>
> Yeah, it's just a warning :)
>
> This issue is rather perplexing. We're supposed to not be using the host tar
> if it is older than 1.24 due to another bug in earlier versions - if an older
> version is found we build tar-replacement-native before anything else gets
> built. Was tar-replacement-native built on the machine where it was failing?
> You can verify it built by just checking under tmp/sysroots/<native
> sysroot>/usr/bin/ to see if tar exists there.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

