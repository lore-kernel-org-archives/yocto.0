Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D78E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 10:09:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2012 10:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="124932762"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2012 10:09:24 -0700
Message-ID: <4F7B2E9C.7040600@linux.intel.com>
Date: Tue, 03 Apr 2012 10:08:44 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
	<20120403164432.GC3943@jama.jama.net>
In-Reply-To: <20120403164432.GC3943@jama.jama.net>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 17:09:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 04/03/2012 09:44 AM, Martin Jansa wrote:
> On Tue, Apr 03, 2012 at 09:32:27AM -0700, Darren Hart wrote:
>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>> 
>> 
>> 
>> On 04/03/2012 09:25 AM, Martin Jansa wrote:
>>> On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
>>>> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible
>>>> testing results. Whether or not a pair of git clones and some
>>>> tinkering can result in the same thing as a poky repository
>>>> or not isn't relevant in my opinion. I believe that we need a
>>>> consistent mode of validating support for a Yocto Project X.Y
>>>> release. Now if that is accomplished by building with the
>>>> poky repository of the same vintage or by running some script
>>>> that pulls the right bits together independently.... I
>>>> honestly don't care, but I do think it should be consistent.
>>> 
>>> so teach setup script something like: poky.sh checkout X.Y
>>> (which checkouts whatever parts are needed for X.Y) poky.sh
>>> update X.Y (dtto)
>>> 
>>> Which creates the same structure like poky repository has, but
>>> by checkouting upstream repositories or using submodules or
>>> whatever.
>>> 
>>> That's what oebb.sh and SHR makefile does for master/shr HEADs,
>>> but can be extended do it for particular version too.
>>> 
>> 
>> 
>> This is certainly doable, but it doesn't address the
>> stabilization buffer poky provides that I mentioned.
> 
> And is it? OE @ ~ $ diff -rq openembedded-core/ projects/poky/ |
> grep -v '\.git' Files openembedded-core/README and
> projects/poky/README differ Only in projects/poky/:
> README.hardware Only in projects/poky/: bitbake Only in
> openembedded-core/: dev Only in projects/poky/: documentation Only
> in openembedded-core/meta/conf: bblayers.conf.sample Only in
> openembedded-core/meta/conf: local.conf.sample Only in
> openembedded-core/meta/conf: local.conf.sample.extended Only in
> openembedded-core/meta/conf: site.conf.sample Only in
> projects/poky/: meta-yocto Only in projects/poky/scripts: lib Files
> openembedded-core/scripts/oe-setup-builddir and
> projects/poky/scripts/oe-setup-builddir differ Only in
> projects/poky/scripts: yocto-bsp Only in projects/poky/scripts:
> yocto-kernel
> 
> OE @ ~ $ diff -rq projects/bitbake/ projects/poky/bitbake/ | grep
> -v '\.git' Only in projects/bitbake/: MANIFEST.in Only in
> projects/bitbake/: TODO Only in projects/poky/bitbake/bin:
> bitbake-runtask Only in projects/bitbake/: classes Only in
> projects/bitbake/: conf Only in projects/bitbake/lib/bb: fetch Only
> in projects/poky/bitbake/lib/bb: shell.py Only in
> projects/bitbake/: setup.py
> 
> Those changes doesn't look like stabilization buffer.. which is
> fine we don't need bigger diff between oe-core repo and poky copy,
> smaller would be nice.
> 
> And "dangerous" changes are stopped to oe-core AFAIK, see e.g. my
> 13 pending patches...
> 
> Cheers,
> 

I expect the buffer to be empty at times. Hopefully *MOST* of the time.

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPey6cAAoJEKbMaAwKp364o9YIAK8aUDP2jj4Nf1YeefhvZyrm
kI5EID7AF1ROjItOX2oQJjLj7aZDsiXCTzx7HFOv1L2VHm1j/6cEtyHkXHwKNFlN
ZMWqH2q3+ImUeb6PR2E1PH41KMZoleQtvtQZQQz1cnmn2rjxAI0bJV+3gMcxmugg
XO0L7uj0/O1LS/F+s4eCFe7k4VnglzuHyeL4ZIqrBOqGdfawl8vs+iMRaeMhUatX
guu42fTZJDulKTaymsYf8pkz6vWfNsz4Nivt101ofcAcWLABxDqVwCk3nnX7j6m7
yO5AldHi19IgcSUNncqdWkIrecQpoSSGB5s4S52i4xHKpM1VwhmtiSfiP+8r7Wk=
=qtXk
-----END PGP SIGNATURE-----

