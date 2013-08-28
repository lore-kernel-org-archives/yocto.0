Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB09E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 12:22:42 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id ep20so5276760lab.30
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 12:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=JGu7C4ni5c31QKoy1xsWfZ5GVZkb585v6J+jWVDoJAI=;
	b=uvw1LKud/sYBDF+x9ISY+RvaN2g1Q22WnHDHKkMFF3F6+fd4zuSyVpWlkBB0pWWE4t
	0PwHGW3RqbXmPGAZZkhRrgbxro3QIC5l+DY2Y5pFyIDHXsRgWHp0tjTesOMBuVBFC95d
	bNNsiB1Aatgg2g8NRiUww2+wCPvmRy85OqLe/uNxW+qZGcK1J3C1ZKLFmwMCAUxhJw/a
	kPkWwKWnxh5URElTu439smJYQejRWcoGv6so0hTmmV9mRJn+ONpfyU/E+pl0dGIwvyS2
	mdquQYHpqnNB74HfovIB//4ogNGXziQqeMlOO0I3DtNLjyEodTvpO0aRxRZMeyV3pfm/
	eyVA==
X-Received: by 10.112.29.196 with SMTP id m4mr52511lbh.66.1377717761790;
	Wed, 28 Aug 2013 12:22:41 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPSA id ao4sm11234103lac.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 12:22:40 -0700 (PDT)
Message-ID: <521E4DFC.2040704@gmail.com>
Date: Wed, 28 Aug 2013 21:22:36 +0200
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<68887874.AzlMtbdLCe@helios>
In-Reply-To: <68887874.AzlMtbdLCe@helios>
Cc: yocto@yoctoproject.org
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Wed, 28 Aug 2013 19:22:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-08-28 6:06, Paul Eggleton wrote:
> Hi Hans,
>
> On Wednesday 28 August 2013 17:08:41 Hans Beckérus wrote:
>> Hi, I am a little bit confused about how to handle these two and what
>> they are supposed to solve. I have so far never used RDEPENDS but only
>> DEPENDS.
> DEPENDS means a build-time dependency i.e. between recipes, RDEPENDS means a
> runtime dependency i.e. between packages. It is worth noting though that an
> explicitly stated RDEPENDS will cause bitbake to actually build the recipe
> providing the package named in the RDEPENDS value, just at a different time. To
> explain exactly what each of these do:
>
> * DEPENDS = "b" in recipe "a" will translate to a's do_configure task depending
> on recipe b's do_populate_sysroot task, so that anything recipe b puts into
> the sysroot is available for when a configures itself.
>
> * RDEPENDS_${PN} = "b" in recipe "a" will translate to a's do_build task
> depending on recipe b's do_package_write task, so that the package file b is
> available when the output for a has been completely built (of course assuming
> that recipe b produces a package called "b", which it will with the default
> value of PACKAGES). More importantly it will also ensure that package "a" is
> marked as depending on "b" in a manner understood by the package manager being
> used e.g. rpm / opkg / dpkg.
Thanks a lot! This was definitely more than I got from the description 
of DEPENDS and RDEPENDS in the manual.
But I probably just read the wrong one ;)
>> But I am also having severe problems when building a rootfs image when
>> one of my user space libraries are changed from eg. libfoo.so.1 to
>> libfoo.so.3. Even though all my packages that have dependencies to it
>> includes it in a DEPENDS.
>>
>> The error I get during rootfs build is:
>> | Computing transaction...error: Can't install
>>
>> someapp-1.0-r0@cortexa9_vfp: no package provides libfoo.so.1
>>
>> But there is no libfoo.so.1 in my sysroot, it has been replaced by
>> libfoo.so.3. I know for sure that 'someapp' was rebuilt, but still I got
>> the error message. What do seem to help is to force a fetch of 'someapp'
>> and then rebuild which sort of indicates that some garbage was left behind.
>> But having a package listed in DEPENDS will not force a new fetch if I am
>> not mistaken.
> By default, if recipe "foo" changes and it is mentioned in the "someapp"
> recipe's DEPENDS, then someapp's do_configure and all tasks that depend upon it
> will be re-executed next time it is called for i.e. you explicitly build
> someapp or build an image that contains it or some other recipe that depends
> upon it. The fact that you are getting the behaviour described suggests that
> this is either not happening, or more likely it is not having the desired
> effect; e.g. if internally someapp's build system doesn't drop or invalidate
> all of its  build output when it is reconfigured then you will get this kind of
> behaviour. Setting up B (the directory in which a recipe's source code is
> built) separate to S (the directory in which the recipe's source code has been
> unpacked to) can help with this since if they are separate, our build system
> will know it can delete B before re-executing do_compile after do_configure and
> you'll never have stale build output. Being able to set this up however is
> highly dependent on the software being built by the individual recipe; some
> lend themselves to this and others don't.
>   
Well, I have been struggling before with packages not properly 
supporting different build and source folders so I can definitely relate 
to what you are saying. But, does that mean I actually *have* to do it 
this way for build dependencies to work correctly? In my case we are 
talking two simple autotools enabled packages and I (naively?) assumed 
this was not something I had to take care of myself. What strikes me is 
that you say ""if recipe "foo" changes"", which is actually not the case 
here! What is changed is the actual source code only. Is that what is 
going wrong here? If I change my "foo" recipe version, would that be 
different than to simply fetch/unpack the "foo" package source code? Is 
"someapp" going to become purged differently in such a  scenario?

>> Have I been using the DEPENDS variable incorrectly? Would it make a
>> difference if I used RDEPENDS instead?
> RDEPENDS would not be appropriate in this situation, since we're talking about
> a build-time dependency.
>
> Hope that helps.
What is still somewhat unclear to me is the difference between DEPENDS 
and RDEPENDS in a simple case as this.
A simple application needing a dynamic library is obviously a subject 
for DEPENDS but to me that also sounds like a typical RDEPENDS?
However, when I build an image and include 'someapp', will 'libfoo.so.x' 
automatically be installed or is that what I need to tell it to do using 
RDEPENDS?

> Cheers,
> Paul
>


