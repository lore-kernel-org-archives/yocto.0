Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FEF8E0092C; Tue,  8 Mar 2016 18:17:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91889E00911
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 18:17:02 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id x1so14670548qkc.1
	for <yocto@yoctoproject.org>; Tue, 08 Mar 2016 18:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=2MWN4nQWyGu0EH7qX8KwhpbUGCTfn2MXY25/xlsvNo8=;
	b=s19exlWPYGpz7AWkv46xqi2QSDzyRDCZRWzwWP7eADPqnXbGebc9K8FyU+hQeHJFX9
	F3ozw+/+hHu4iUpWwP9qDK/F6bQYOoKXDjEYGkD6ESNh9zoLEs4ukU+WGTm3MhWB5U3Z
	jrAcERV0m/Xt53LPJivQEj7d/GmP4oSvxrrBOpgPZHHYnA8ooIVnaStC4YNZXtDDswW/
	BjRqkk+Izo/WKeO8WA3+8vr6NHBW7uJPHYhUhBwKsr9GHV+dUphIKVU4d7rjbeJ9kvZm
	Z9D6qgW6HjnTPVsRFMKUABHbHF7VB+ie1x2eA4QDUuqLMEl9C+OKcx/LaGJwU2F+Wx7l
	QZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=2MWN4nQWyGu0EH7qX8KwhpbUGCTfn2MXY25/xlsvNo8=;
	b=BeIIpph83eFfPk147pYwsJQVvm+fQpb4rM87913eR3zlOA9Mcy1qh2mnM2m/I/skRk
	4CSKIdpngUnGOURlMVa31A4Cqmvg0V096rJItO996rdNSES6Poj4FvBMj6EQy//ydrKC
	Jbn8gEe8YEExSadCLEYjhY2/DdnkdLzRR1T2GonkdOutbLGTM8yWvn+1TC62DaIv2vK/
	gk4Mv2+jmdytFZOFnvtD4Smt15ZMsQQonHEHrLseBabH+j8GXM9MWrVroY1QvmP1TMvZ
	+OaxmRytTi1Czv/NXEu8M7YWL1GjMgpbk4yfMhp0oVbuyLd9dJ7VRlTws3VfWZ9IlaTM
	HSnQ==
X-Gm-Message-State: AD7BkJJkLfl9D6J9uMveI1GsKrFfGDz19HU/R6jy+caVnrEABAh/g1nROR/NIX3CSiHEWckoeaouauyNP+Ldhw==
MIME-Version: 1.0
X-Received: by 10.55.73.199 with SMTP id w190mr39928255qka.77.1457489821614;
	Tue, 08 Mar 2016 18:17:01 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Tue, 8 Mar 2016 18:17:01 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Tue, 8 Mar 2016 18:17:01 -0800 (PST)
In-Reply-To: <56DE87AA.7090109@actia.se>
References: <56DE87AA.7090109@actia.se>
Date: Wed, 9 Mar 2016 09:17:01 +0700
Message-ID: <CAMKF1sqeY7BVaDNifDgY3VyKmbS-qX8zNuci-O8GXMnfW=dJAg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: John Ernberg <john.ernberg@actia.se>
Cc: yocto@yoctoproject.org
Subject: Re: Replacing eglibc with glibc in Yocto 1.6.1?
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
X-List-Received-Date: Wed, 09 Mar 2016 02:17:06 -0000
Content-Type: multipart/alternative; boundary=001a114a869614c8bc052d944bbd

--001a114a869614c8bc052d944bbd
Content-Type: text/plain; charset=UTF-8

On Mar 8, 2016 3:06 PM, "John Ernberg" <john.ernberg@actia.se> wrote:
>
> Hi
>
> I'm using Yocto 1.6.1 (Daisy) in a project, and I'm not allowed to
> update to a newer version, I did however get the task to update from
> eglibc-2.19 to glibc-2.23.
>

There are many changes which make it not a drop in replacement at recipe
level. You should just change the existing recipe to backport patches from
2.1
Its not going to be a simple excercise even then
> So far I have imported the recipes from Yocto 2.1, including the
> tclibc-glibc.inc file.
> Changed the TCLIBC variable to the new value.
> Imported the configuration values from the other .inc files (such as
> preferred version) into my distro.conf.
> Disabled the distro feature ptest (temporary).
>
> After these changes I am getting the error log attached below.
> One solution I tried was setting the RPROVIDES from eglibc to "". It
> didn't change anything.
>
> I am wondering if anyone has any advice on what I have done wrong?
>
> Thank you in advance and best regards // John Ernberg
>
>
> Build log using "bitbake -vD [image]":
>
> DEBUG: providers for glibc are: ['glibc']
> DEBUG: selecting
> /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
> as PREFERRED_VERSION 2.23 of package glibc (for item glibc)
> DEBUG: sorted providers for glibc are:
> ['/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
']
> NOTE: Resolving any missing task queue dependencies
> DEBUG: providers for quilt-native are: ['quilt-native']
> DEBUG: sorted providers for quilt-native are:
> ['/home/jernberg/yocto/sources/poky/meta/recipes-devtools/quilt/
quilt-native_0.61.bb']
> DEBUG: providers for virtual/fakeroot-native are: ['pseudo-native']
> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to
> PREFERRED_PROVIDERS
> DEBUG: sorted providers for virtual/fakeroot-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/pseudo/
pseudo_1.5.1.bb']
> DEBUG: providers for prelink-native are: ['prelink-native']
> DEBUG: sorted providers for prelink-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/prelink/
prelink_git.bb']
> DEBUG: providers for rpm-native are: ['rpm-native']
> DEBUG: sorted providers for rpm-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/rpm/
rpm_5.4.9.bb']
> DEBUG: providers for file-native are: ['file-native']
> DEBUG: sorted providers for file-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/file/
file_5.16.bb']
> DEBUG: providers for autoconf-native are: ['autoconf-native']
> DEBUG: sorted providers for autoconf-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/autoconf/
autoconf_2.69.bb']
> DEBUG: providers for automake-native are: ['automake-native']
> DEBUG: sorted providers for automake-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/automake/
automake_1.14.bb']
> DEBUG: providers for libtool-native are: ['libtool-native']
> DEBUG: sorted providers for libtool-native are:
> ['/home/jernberg/yocto/sources/poky/meta/recipes-devtools/libtool/
libtool-native_2.4.2.bb']
> DEBUG: providers for gnu-config-native are: ['gnu-config-native']
> DEBUG: sorted providers for gnu-config-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/gnu-config/
gnu-config_20120814.bb']
> DEBUG: providers for virtual/arm-distro-linux-gnueabi-gcc-initial are:
> ['gcc-cross-initial']
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-devtools/gcc/
gcc-cross-initial_4.8.bb
> as PREFERRED_VERSION 4.8% of package gcc-cross-initial (for item
> virtual/arm-distro-linux-gnueabi-gcc-initial)
> NOTE: selecting gcc-cross-initial to satisfy
> virtual/arm-distro-linux-gnueabi-gcc-initial due to PREFERRED_PROVIDERS
> DEBUG: sorted providers for virtual/arm-distro-linux-gnueabi-gcc-initial
> are:
> ['/home/jernberg/yocto/sources/poky/meta/recipes-devtools/gcc/
gcc-cross-initial_4.8.bb']
> DEBUG: providers for linux-libc-headers are: ['linux-libc-headers']
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-kernel/linux-libc-headers/
linux-libc-headers_3.14.bb
> as PREFERRED_VERSION 3.14 of package linux-libc-headers (for item
> linux-libc-headers)
> NOTE: selecting linux-libc-headers to satisfy linux-libc-headers due to
> PREFERRED_PROVIDERS
> DEBUG: sorted providers for linux-libc-headers are:
>
['/home/jernberg/yocto/sources/poky/meta/recipes-kernel/linux-libc-headers/
linux-libc-headers_3.14.bb']
> DEBUG: providers for virtual/arm-distro-linux-gnueabi-libc-initial are:
> ['glibc-initial', 'eglibc-initial']
> DEBUG: selecting
> /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb
> as PREFERRED_VERSION 2.23 of package glibc-initial (for item
> virtual/arm-distro-linux-gnueabi-libc-initial)
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/
eglibc-initial_2.19.bb
> as PREFERRED_VERSION 2.19 of package eglibc-initial (for item
> virtual/arm-distro-linux-gnueabi-libc-initial)
> NOTE: selecting glibc-initial to satisfy
> virtual/arm-distro-linux-gnueabi-libc-initial due to PREFERRED_PROVIDERS
> DEBUG: sorted providers for
> virtual/arm-distro-linux-gnueabi-libc-initial are:
> ['/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb',
> '/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/
eglibc-initial_2.19.bb']
> DEBUG: providers for gperf-native are: ['gperf-native']
> DEBUG: sorted providers for gperf-native are:
>
['virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-extended/gperf/
gperf_3.0.4.bb']
> DEBUG: providers for libsegfault are: ['glibc', 'eglibc']
> DEBUG: selecting
> /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
> as PREFERRED_VERSION 2.23 of package glibc (for item libsegfault)
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/eglibc_2.19.bb
as
> PREFERRED_VERSION 2.19 of package eglibc (for item libsegfault)
> NOTE: selecting glibc to satisfy runtime libsegfault due to
> PREFERRED_PROVIDER_virtual/libc = glibc
> DEBUG: sorted runtime providers for libsegfault are:
> ['/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
',
> '/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/eglibc_2.19.bb
']
> DEBUG: providers for glibc-dev are: ['glibc', 'eglibc']
> DEBUG: selecting
> /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
> as PREFERRED_VERSION 2.23 of package glibc (for item glibc-dev)
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/eglibc_2.19.bb
as
> PREFERRED_VERSION 2.19 of package eglibc (for item glibc-dev)
> NOTE: selecting glibc to satisfy runtime glibc-dev due to
> PREFERRED_PROVIDER_virtual/libc = glibc
> DEBUG: sorted runtime providers for glibc-dev are:
> ['/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
',
> '/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/eglibc_2.19.bb
']
> DEBUG: providers for glibc are: ['glibc-initial', 'eglibc-initial',
> 'glibc', 'eglibc', 'nativesdk-eglibc-initial', 'nativesdk-glibc-initial']
> DEBUG: selecting
> /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb
> as PREFERRED_VERSION 2.23 of package glibc-initial (for item glibc)
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/
eglibc-initial_2.19.bb
> as PREFERRED_VERSION 2.19 of package eglibc-initial (for item glibc)
> DEBUG: selecting
> /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
> as PREFERRED_VERSION 2.23 of package glibc (for item glibc)
> DEBUG: selecting
> /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/eglibc_2.19.bb
as
> PREFERRED_VERSION 2.19 of package eglibc (for item glibc)
> DEBUG: selecting
>
virtual:nativesdk:/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/
eglibc-initial_2.19.bb
> as PREFERRED_VERSION 2.19 of package nativesdk-eglibc-initial (for item
> glibc)
> DEBUG: selecting
>
virtual:nativesdk:/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb
> as PREFERRED_VERSION 2.23 of package nativesdk-glibc-initial (for item
> glibc)
> NOTE: selecting glibc to satisfy runtime glibc due to
> PREFERRED_PROVIDER_virtual/libc = glibc
> NOTE: selecting glibc-initial to satisfy runtime glibc due to
> PREFERRED_PROVIDER_virtual/arm-distro-linux-gnueabi-libc-initial =
> glibc-initial
> NOTE: selecting nativesdk-glibc-initial to satisfy runtime glibc due to
> PREFERRED_PROVIDER_virtual/nativesdk-x86_64-distrosdk-linux-libc-initial
> = nativesdk-glibc-initial
> ERROR: Trying to resolve runtime dependency glibc resulted in
> conflicting PREFERRED_PROVIDER entries being found.
> The providers found were:
> ['/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb
',
> '/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb',
>
'virtual:nativesdk:/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb']
> The PREFERRED_PROVIDER entries resulting in this conflict were:
> ['PREFERRED_PROVIDER_virtual/libc = glibc',
> 'PREFERRED_PROVIDER_virtual/arm-distro-linux-gnueabi-libc-initial =
> glibc-initial',
> 'PREFERRED_PROVIDER_virtual/nativesdk-x86_64-distrosdk-linux-libc-initial
=
> nativesdk-glibc-initial']
> DEBUG: sorted runtime providers for glibc are:
>
['virtual:nativesdk:/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb',
> '/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/
glibc-initial_2.23.bb',
> '/home/jernberg/yocto/sources/yocto/recipes-core/glibc/glibc_2.23.bb',
> '/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/
eglibc-initial_2.19.bb',
> '/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/eglibc_2.19.bb
',
>
'virtual:nativesdk:/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/
eglibc-initial_2.19.bb']
> NOTE: multiple providers are available for runtime glibc
> (nativesdk-glibc-initial, glibc-initial, glibc, eglibc-initial, eglibc,
> nativesdk-eglibc-initial)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match glibc
> NOTE: Runtime target 'glibc' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['glibc']
> DEBUG: File
> '/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/glibc_2.23.bb'
is
> unbuildable, removing...
> NOTE: Target 'glibc' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['glibc', 'glibc']
> ERROR: Required build target 'glibc' has no buildable providers.
> Missing or unbuildable dependency chain was: ['glibc', 'glibc']
>
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
code.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a114a869614c8bc052d944bbd
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On Mar 8, 2016 3:06 PM, &quot;John Ernberg&quot; &lt;<a href="mailto:john.ernberg@actia.se">john.ernberg@actia.se</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt; I&#39;m using Yocto 1.6.1 (Daisy) in a project, and I&#39;m not allowed to<br>
&gt; update to a newer version, I did however get the task to update from<br>
&gt; eglibc-2.19 to glibc-2.23.<br>
&gt;</p>
<p dir="ltr">There are many changes which make it not a drop in replacement at recipe level. You should just change the existing recipe to backport patches from 2.1<br>
Its not going to be a simple excercise even then<br>
&gt; So far I have imported the recipes from Yocto 2.1, including the<br>
&gt; tclibc-glibc.inc file.<br>
&gt; Changed the TCLIBC variable to the new value.<br>
&gt; Imported the configuration values from the other .inc files (such as<br>
&gt; preferred version) into my distro.conf.<br>
&gt; Disabled the distro feature ptest (temporary).<br>
&gt;<br>
&gt; After these changes I am getting the error log attached below.<br>
&gt; One solution I tried was setting the RPROVIDES from eglibc to &quot;&quot;. It<br>
&gt; didn&#39;t change anything.<br>
&gt;<br>
&gt; I am wondering if anyone has any advice on what I have done wrong?<br>
&gt;<br>
&gt; Thank you in advance and best regards // John Ernberg<br>
&gt;<br>
&gt;<br>
&gt; Build log using &quot;bitbake -vD [image]&quot;:<br>
&gt;<br>
&gt; DEBUG: providers for glibc are: [&#39;glibc&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package glibc (for item glibc)<br>
&gt; DEBUG: sorted providers for glibc are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a>&#39;]<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; DEBUG: providers for quilt-native are: [&#39;quilt-native&#39;]<br>
&gt; DEBUG: sorted providers for quilt-native are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/poky/meta/recipes-devtools/quilt/<a href="http://quilt-native_0.61.bb">quilt-native_0.61.bb</a>&#39;]<br>
&gt; DEBUG: providers for virtual/fakeroot-native are: [&#39;pseudo-native&#39;]<br>
&gt; NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to<br>
&gt; PREFERRED_PROVIDERS<br>
&gt; DEBUG: sorted providers for virtual/fakeroot-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/pseudo/<a href="http://pseudo_1.5.1.bb">pseudo_1.5.1.bb</a>&#39;]<br>
&gt; DEBUG: providers for prelink-native are: [&#39;prelink-native&#39;]<br>
&gt; DEBUG: sorted providers for prelink-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/prelink/<a href="http://prelink_git.bb">prelink_git.bb</a>&#39;]<br>
&gt; DEBUG: providers for rpm-native are: [&#39;rpm-native&#39;]<br>
&gt; DEBUG: sorted providers for rpm-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/rpm/<a href="http://rpm_5.4.9.bb">rpm_5.4.9.bb</a>&#39;]<br>
&gt; DEBUG: providers for file-native are: [&#39;file-native&#39;]<br>
&gt; DEBUG: sorted providers for file-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/file/<a href="http://file_5.16.bb">file_5.16.bb</a>&#39;]<br>
&gt; DEBUG: providers for autoconf-native are: [&#39;autoconf-native&#39;]<br>
&gt; DEBUG: sorted providers for autoconf-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/autoconf/<a href="http://autoconf_2.69.bb">autoconf_2.69.bb</a>&#39;]<br>
&gt; DEBUG: providers for automake-native are: [&#39;automake-native&#39;]<br>
&gt; DEBUG: sorted providers for automake-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/automake/<a href="http://automake_1.14.bb">automake_1.14.bb</a>&#39;]<br>
&gt; DEBUG: providers for libtool-native are: [&#39;libtool-native&#39;]<br>
&gt; DEBUG: sorted providers for libtool-native are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/poky/meta/recipes-devtools/libtool/<a href="http://libtool-native_2.4.2.bb">libtool-native_2.4.2.bb</a>&#39;]<br>
&gt; DEBUG: providers for gnu-config-native are: [&#39;gnu-config-native&#39;]<br>
&gt; DEBUG: sorted providers for gnu-config-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-devtools/gnu-config/<a href="http://gnu-config_20120814.bb">gnu-config_20120814.bb</a>&#39;]<br>
&gt; DEBUG: providers for virtual/arm-distro-linux-gnueabi-gcc-initial are:<br>
&gt; [&#39;gcc-cross-initial&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-devtools/gcc/<a href="http://gcc-cross-initial_4.8.bb">gcc-cross-initial_4.8.bb</a><br>
&gt; as PREFERRED_VERSION 4.8% of package gcc-cross-initial (for item<br>
&gt; virtual/arm-distro-linux-gnueabi-gcc-initial)<br>
&gt; NOTE: selecting gcc-cross-initial to satisfy<br>
&gt; virtual/arm-distro-linux-gnueabi-gcc-initial due to PREFERRED_PROVIDERS<br>
&gt; DEBUG: sorted providers for virtual/arm-distro-linux-gnueabi-gcc-initial<br>
&gt; are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/poky/meta/recipes-devtools/gcc/<a href="http://gcc-cross-initial_4.8.bb">gcc-cross-initial_4.8.bb</a>&#39;]<br>
&gt; DEBUG: providers for linux-libc-headers are: [&#39;linux-libc-headers&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-kernel/linux-libc-headers/<a href="http://linux-libc-headers_3.14.bb">linux-libc-headers_3.14.bb</a><br>
&gt; as PREFERRED_VERSION 3.14 of package linux-libc-headers (for item<br>
&gt; linux-libc-headers)<br>
&gt; NOTE: selecting linux-libc-headers to satisfy linux-libc-headers due to<br>
&gt; PREFERRED_PROVIDERS<br>
&gt; DEBUG: sorted providers for linux-libc-headers are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/poky/meta/recipes-kernel/linux-libc-headers/<a href="http://linux-libc-headers_3.14.bb">linux-libc-headers_3.14.bb</a>&#39;]<br>
&gt; DEBUG: providers for virtual/arm-distro-linux-gnueabi-libc-initial are:<br>
&gt; [&#39;glibc-initial&#39;, &#39;eglibc-initial&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package glibc-initial (for item<br>
&gt; virtual/arm-distro-linux-gnueabi-libc-initial)<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc-initial_2.19.bb">eglibc-initial_2.19.bb</a><br>
&gt; as PREFERRED_VERSION 2.19 of package eglibc-initial (for item<br>
&gt; virtual/arm-distro-linux-gnueabi-libc-initial)<br>
&gt; NOTE: selecting glibc-initial to satisfy<br>
&gt; virtual/arm-distro-linux-gnueabi-libc-initial due to PREFERRED_PROVIDERS<br>
&gt; DEBUG: sorted providers for<br>
&gt; virtual/arm-distro-linux-gnueabi-libc-initial are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc-initial_2.19.bb">eglibc-initial_2.19.bb</a>&#39;]<br>
&gt; DEBUG: providers for gperf-native are: [&#39;gperf-native&#39;]<br>
&gt; DEBUG: sorted providers for gperf-native are:<br>
&gt; [&#39;virtual:native:/home/jernberg/yocto/sources/poky/meta/recipes-extended/gperf/<a href="http://gperf_3.0.4.bb">gperf_3.0.4.bb</a>&#39;]<br>
&gt; DEBUG: providers for libsegfault are: [&#39;glibc&#39;, &#39;eglibc&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package glibc (for item libsegfault)<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc_2.19.bb">eglibc_2.19.bb</a> as<br>
&gt; PREFERRED_VERSION 2.19 of package eglibc (for item libsegfault)<br>
&gt; NOTE: selecting glibc to satisfy runtime libsegfault due to<br>
&gt; PREFERRED_PROVIDER_virtual/libc = glibc<br>
&gt; DEBUG: sorted runtime providers for libsegfault are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc_2.19.bb">eglibc_2.19.bb</a>&#39;]<br>
&gt; DEBUG: providers for glibc-dev are: [&#39;glibc&#39;, &#39;eglibc&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package glibc (for item glibc-dev)<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc_2.19.bb">eglibc_2.19.bb</a> as<br>
&gt; PREFERRED_VERSION 2.19 of package eglibc (for item glibc-dev)<br>
&gt; NOTE: selecting glibc to satisfy runtime glibc-dev due to<br>
&gt; PREFERRED_PROVIDER_virtual/libc = glibc<br>
&gt; DEBUG: sorted runtime providers for glibc-dev are:<br>
&gt; [&#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc_2.19.bb">eglibc_2.19.bb</a>&#39;]<br>
&gt; DEBUG: providers for glibc are: [&#39;glibc-initial&#39;, &#39;eglibc-initial&#39;,<br>
&gt; &#39;glibc&#39;, &#39;eglibc&#39;, &#39;nativesdk-eglibc-initial&#39;, &#39;nativesdk-glibc-initial&#39;]<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package glibc-initial (for item glibc)<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc-initial_2.19.bb">eglibc-initial_2.19.bb</a><br>
&gt; as PREFERRED_VERSION 2.19 of package eglibc-initial (for item glibc)<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package glibc (for item glibc)<br>
&gt; DEBUG: selecting<br>
&gt; /home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc_2.19.bb">eglibc_2.19.bb</a> as<br>
&gt; PREFERRED_VERSION 2.19 of package eglibc (for item glibc)<br>
&gt; DEBUG: selecting<br>
&gt; virtual:nativesdk:/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc-initial_2.19.bb">eglibc-initial_2.19.bb</a><br>
&gt; as PREFERRED_VERSION 2.19 of package nativesdk-eglibc-initial (for item<br>
&gt; glibc)<br>
&gt; DEBUG: selecting<br>
&gt; virtual:nativesdk:/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a><br>
&gt; as PREFERRED_VERSION 2.23 of package nativesdk-glibc-initial (for item<br>
&gt; glibc)<br>
&gt; NOTE: selecting glibc to satisfy runtime glibc due to<br>
&gt; PREFERRED_PROVIDER_virtual/libc = glibc<br>
&gt; NOTE: selecting glibc-initial to satisfy runtime glibc due to<br>
&gt; PREFERRED_PROVIDER_virtual/arm-distro-linux-gnueabi-libc-initial =<br>
&gt; glibc-initial<br>
&gt; NOTE: selecting nativesdk-glibc-initial to satisfy runtime glibc due to<br>
&gt; PREFERRED_PROVIDER_virtual/nativesdk-x86_64-distrosdk-linux-libc-initial<br>
&gt; = nativesdk-glibc-initial<br>
&gt; ERROR: Trying to resolve runtime dependency glibc resulted in<br>
&gt; conflicting PREFERRED_PROVIDER entries being found.<br>
&gt; The providers found were:<br>
&gt; [&#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a>&#39;,<br>
&gt; &#39;virtual:nativesdk:/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a>&#39;]<br>
&gt; The PREFERRED_PROVIDER entries resulting in this conflict were:<br>
&gt; [&#39;PREFERRED_PROVIDER_virtual/libc = glibc&#39;,<br>
&gt; &#39;PREFERRED_PROVIDER_virtual/arm-distro-linux-gnueabi-libc-initial =<br>
&gt; glibc-initial&#39;,<br>
&gt; &#39;PREFERRED_PROVIDER_virtual/nativesdk-x86_64-distrosdk-linux-libc-initial =<br>
&gt; nativesdk-glibc-initial&#39;]<br>
&gt; DEBUG: sorted runtime providers for glibc are:<br>
&gt; [&#39;virtual:nativesdk:/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc-initial_2.23.bb">glibc-initial_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/yocto/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc-initial_2.19.bb">eglibc-initial_2.19.bb</a>&#39;,<br>
&gt; &#39;/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc_2.19.bb">eglibc_2.19.bb</a>&#39;,<br>
&gt; &#39;virtual:nativesdk:/home/jernberg/yocto/sources/poky/meta/recipes-core/eglibc/<a href="http://eglibc-initial_2.19.bb">eglibc-initial_2.19.bb</a>&#39;]<br>
&gt; NOTE: multiple providers are available for runtime glibc<br>
&gt; (nativesdk-glibc-initial, glibc-initial, glibc, eglibc-initial, eglibc,<br>
&gt; nativesdk-eglibc-initial)<br>
&gt; NOTE: consider defining a PREFERRED_PROVIDER entry to match glibc<br>
&gt; NOTE: Runtime target &#39;glibc&#39; is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;glibc&#39;]<br>
&gt; DEBUG: File<br>
&gt; &#39;/home/jernberg/yocto/sources/meta-test/recipes-core/glibc/<a href="http://glibc_2.23.bb">glibc_2.23.bb</a>&#39; is<br>
&gt; unbuildable, removing...<br>
&gt; NOTE: Target &#39;glibc&#39; is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;glibc&#39;, &#39;glibc&#39;]<br>
&gt; ERROR: Required build target &#39;glibc&#39; has no buildable providers.<br>
&gt; Missing or unbuildable dependency chain was: [&#39;glibc&#39;, &#39;glibc&#39;]<br>
&gt;<br>
&gt; Summary: There were 2 WARNING messages shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit code.<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</p>

--001a114a869614c8bc052d944bbd--
