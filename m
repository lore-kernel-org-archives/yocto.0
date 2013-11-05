Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4866E01716
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 14:21:56 -0800 (PST)
Received: by mail-la0-f50.google.com with SMTP id eo20so3740748lab.9
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2013 14:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Zndc7LfTOp2Cu11n3aHKfJmdLL0hR83wMkAN3uu0jVY=;
	b=B2omkQ2YwWLACjUkreXE9oD1dI3F/yhKHmGuzy03kV/LZQo8A0sTSJx2sJ/Tl8thka
	0NSoBHQMs36I+RmcIgDKC1xIfmtUBBL8StskpFqF8zU9Fnj/iSRvL+eUL44Q3+73fEK4
	f7VWPJ6/nk6ykwXZ7wGnrrP+IkiNxNyEcGcLAtLJvf0VtK0oDKXPHrbdz5uDIPbbHFjJ
	WGFTSSgLo4KonGbZH0rYVZP8/VgwoAjetPClrOuDwry9eYcRlZ15jJsDjp+syxKaATBm
	OqpBXI8PBFbRm5KmGez+cbQUh2wMlvLC0soy/g+hyNsqIyaQw78r64PmWR6tXTNhXVw7
	2zlw==
X-Received: by 10.152.9.198 with SMTP id c6mr3650715lab.36.1383690114515;
	Tue, 05 Nov 2013 14:21:54 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135]) by mx.google.com with ESMTPSA id
	l10sm21762615lbh.13.2013.11.05.14.21.53 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Nov 2013 14:21:53 -0800 (PST)
Message-ID: <52796F81.6010900@gmail.com>
Date: Tue, 05 Nov 2013 23:21:53 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Robert Calhoun <rcalhoun@shotspotter.com>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CE9EC8E7.1E1933%rcalhoun@shotspotter.com>
In-Reply-To: <CE9EC8E7.1E1933%rcalhoun@shotspotter.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 05 Nov 2013 22:21:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2013-11-05 11:10, Robert Calhoun wrote:
> -----Original Message-----
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>> AFAIK, there are two recommended values for SRCREV assuming you are
>> fetching 
> >from an SCM at all:
>> A) A specific revision (SHA1 hash when fetching from git)
>>
>> or
>>
>> B) "${AUTOREV}" if you want to always build the latest version available
>> at 
>> time of building. If you want to build the latest version from a branch,
>> specify it in branch= in the SRC_URI entry.
>>
>> Anything else isn't really a good idea. Sometimes I wonder if we ought to
>> just 
>> tighten this up so that only settings that make sense can be set.
> The current behavior is a little non-intuitive, since using SRCREV =
> "${AUTOREV}" 
> alone will not force the package to be rebuilt when SRCREV changes. Unless
> I am
> mistaken, $PV needs to be modified also. But modifying $PV causes its own
> headaches with patching, so I've ended up using recipes based on the model
> below.
>
> Another challenge is that bitbake's fetch2 is not very well documented. I
> don't
> think the "user" and "pswd" fields for the svn fetcher are documented
> anywhere
> outside of the source code.
>
> I'd love to help address this, but I'm not sure where I should submit
> updated documentation. Is this the right place?
>
> git://git.yoctoproject.org/yocto-docs
>
>
> Hans, below is a model recipe for building current head-of-line from a
> subversion repository:
A good example indeed. I will see what I can make out of it in our own recipes.
I also realized the caveats attached to finding the patch dir etc. when auto-incrementing the version.
This will certainly help.

Thanks.
Hans

> -Rob Calhoun
> SST Inc
>  
>
>
>
> ######################
>
> DESCRIPTION = "example_1.0.bb, autorevving checkout example"
>
> # This says look for LICENSE in the root of the directory being checked
> out. Fix
> # license filename and md5sum as required.
> LIC_FILES_CHKSUM = "file://LICENSE;md5=abc123"
>
> # this is the rev of your recipe. Bumping it will toss the cache and redo
> everything
> PR = "r1"
>
> # pick up latest svn rev for this module. Note this a deferred evaluation!
> SRCREV = "${AUTOREV}"
>
> # ${PV} is pulled from the recipe filename, e.g. helloworld_2.7.bb ->
> ${PV} expands to "2.7".
> # We use immediate evaluation to define a new var PVBASE holding the
> original value of ${PV}.
> PVBASE := "${PV}"
>
> # We need to tell bitbake about our current directory structure or we
> won't be able to find patches after we mess with ${PV}
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PVBASE}:"
>
> # Then redefine PV to tack the svn rev onto the base version. This is
> evaluated at fetch time.
> # Then the package will get rebuilt any time the relevant part of the
> source tree changes.
> PV = "${PVBASE}.${SRCPV}"
>
> # Now we format the source code URI.
> # There is nothing special about "module"; it is just the final directory
> of the svn checkout.
> # SRC_URI below is equivalent to the svn command:
> # "svn checkout --username=poky --password=xyzzy
> https://svn.example.com/repo/trunk/example"
> #
> SRC_URI= 
> "svn://svn.example.com/repo/trunk;module=example;protocol=https;user=poky;p
> swd=xyzzy"
>
> # build will fail without this; it specifies where in the workdir to find
> the source. The
> # name must be the same as the "module" name in SRC_URI.
> S = "${WORKDIR}/example"
>
> # BELOW NOT PART OF RECIPE; IT SHOWS WHAT THE WORK DIR LOOKS LIKE WITH
> THIS RECIPE.
> # By setting PV, the cache is invalidated and new code checked out each
> time the 
> # relevant part oF the svn repo gets updated because I've made the svn
> revision look
> # like a package version number to bitbake.
> #
> # Here is a directory listing of the work dir:
> #
> # 
> poky@build:/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/example$
>  ls -l
> #drwxrwxr-x 12 poky poky 4096 Oct 30 10:17 1.0.57400-r1
> #drwxrwxr-x 12 poky poky 4096 Oct 30 11:52 1.0.57401-r1
> #drwxrwxr-x 12 poky poky 4096 Oct 31 12:37 1.0.57408-r1
> #drwxrwxr-x 12 poky poky 4096 Nov  1 07:56 1.0.57412-r1
>
>
>
>


