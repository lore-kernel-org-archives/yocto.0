Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC681E0145F;
	Sat, 16 Mar 2013 01:30:32 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id 12so1179076wgh.3
	for <multiple recipients>; Sat, 16 Mar 2013 01:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=e4IHtcE23RDsqT6cra1lqJfxetRrOmIaomTlPKhQx8I=;
	b=K1XOfH+Gwi4Fg1tx3yBYyCBh4UykTSQsd6YzFk+fWvltiLvYoMkxklyH6Nq8Yxwfrp
	6/FQxzyyAl15hfW7vdwY6BOH+Zx29S5sXk0yij3uwaNUX4bsKO3zidqgvG3SIE0UuOGC
	Y30t+whZ94FIsA+BSbOFScWcg8rvT2CM7n5qCz7V+DedEe/GtAyZ7jcRvoqGuEPf+SpD
	OmWKbmBgg34OhplAdpg6vfBk70rHT0SxBQr0dIsMJpfKs7Bm+nTYwuAYt0BoBCzGmAe0
	Pm8diBdjHL0v8zqv1gGONJUnPzocWCjgQyX1stzvxA4eRYj5v3sUbFpEFeroFFiTLSSA
	PsxA==
X-Received: by 10.194.11.70 with SMTP id o6mr15068270wjb.29.1363422631826;
	Sat, 16 Mar 2013 01:30:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sat, 16 Mar 2013 01:30:11 -0700 (PDT)
In-Reply-To: <5143345E.9070703@windriver.com>
References: <cover.1363347615.git.insop.song@gmail.com>
	<a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
	<5143345E.9070703@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Sat, 16 Mar 2013 01:30:11 -0700
Message-ID: <CACzyEJ-JAyx53BWArVftotHiCoeGA_jjg-GFphVtp4ATweRwJg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] add scheedtool-dl for testing sched_deadline use jiri's github as a main repo
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
X-List-Received-Date: Sat, 16 Mar 2013 08:30:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 15, 2013 at 7:46 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-03-15 04:47 AM, Insop Song wrote:
>>
>> ---
>>   recipes-extended/images/core-image-realtime.bb |    1 +
>>   recipes-tools/schedtool-dl/schedtool-dl.bb     |   23
>> +++++++++++++++++++++++
>>   2 files changed, 24 insertions(+)
>>   create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb
>>
>> diff --git a/recipes-extended/images/core-image-realtime.bb
>> b/recipes-extended/images/core-image-realtime.bb
>> index 624aacf..386b16b 100644
>> --- a/recipes-extended/images/core-image-realtime.bb
>> +++ b/recipes-extended/images/core-image-realtime.bb
>> @@ -8,5 +8,6 @@ EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks
>> tools-profile dbg-pkgs"
>>   IMAGE_INSTALL = "\
>>         ${CORE_IMAGE_BASE_INSTALL} \
>>         rt-app \
>> +       schedtool-dl \
>>         libgcc \
>>         "
>
>
> This part of the patch is still a problem, so I'll drop  it on merge.
> We still need to rationalize why we can't extend the oe-core
> rt images:
>
> ./recipes-rt/images/core-image-rt.bb
> ./recipes-rt/images/core-image-rt-sdk.bb
>
> For this addition. Until we work through that, you can carry a local
> patch, or add the tools back via your local.conf adding it to IMAGE_INSTALL.
>
>

I put the "libgcc" because rt-app complained during finish regarding
pthread and libgcc during my previous meta-realtime/meta-dl, which was
using core-image-minimal.

Since, I updated my image bases this time, I might not need it.
I will test without "libgcc" and will update the patch.

I've updated my poky tree to the latest, and I am having trouble due
to "neard" package failure (I post a question on this).
That's why it's taking long to verify and update the patch.


>> diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb
>> b/recipes-tools/schedtool-dl/schedtool-dl.bb
>> new file mode 100644
>> index 0000000..6b298f1
>> --- /dev/null
>> +++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
>> @@ -0,0 +1,23 @@
>> +DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
>> +SECTION = "devel"
>> +LICENSE = "GPLv2"
>> +LIC_FILES_CHKSUM =
>> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
>> +PR = "r1"
>> +
>> +SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git"
>> +SRCREV = "${AUTOREV}"
>
>
> We also want to lock down the SRCREV vs autorev. I'd expect that going
> forward,
> you can maintain/update this once we've merged it, so when a SRCREV
> is known to be good, you can send update patches with the new values
> (just like I do with linux-yocto in oe-core). But in the general case,
> we want to have consistent and reproducible builds and to do that,
> we need a well defined SRCREV.
>

updated and testing is in-progress.


> So one more version of the series and we should be good (you can
> drop the image addition as part of that) .. sorry for all the
> iterations, the first merges always take the longest.
>

I appreciate your through review and will send out the revision soon
as I am done testing.

Insop

