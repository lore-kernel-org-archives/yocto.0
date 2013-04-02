Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36529E014E3
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 00:13:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2013 00:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,391,1363158000"; d="scan'208";a="311003595"
Received: from unknown (HELO helios.localnet) ([10.255.13.223])
	by orsmga002.jf.intel.com with ESMTP; 02 Apr 2013 00:13:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 02 Apr 2013 08:13:08 +0100
Message-ID: <7803001.8VMXG1vLlf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CC8EC8ACB2884AB0BBAF61C7FAF19D47@PAULD>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<1624497.d7J2isS43f@helios>
	<CC8EC8ACB2884AB0BBAF61C7FAF19D47@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Tue, 02 Apr 2013 07:13:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 01 April 2013 16:42:46 Paul D. DeRocco wrote:
>  What I don't see is any info on the recipes, beyond name and version
>  number.
> I don't see a list of packages they produce. For instance, doing "bitbake
> -e samba", and then looking at the PACKAGES variable, shows the following
> list:
> 
>     libwbclient
>     libwinbind
>     libwinbind-dbg
>     winbind
>     winbind-dbg
>     libnetapi
>     libtdb
>     libsmbsharemodes
>     libsmbclient
>     libsmbclient-dev
>     cifs
>     cifs-doc
>     swat
>     samba-dbg
>     samba-staticdev
>     samba-dev
>     samba-doc
>     samba-locale
>     samba
> 
> I'm not sure what got included when I added "samba" to my IMAGE_INSTALL
> variable, but I assume samba and winbind are required, but the other things?
> To an end user like me (someone who just wants to build a distro with
> certain capabilities, and then get back to the real work of application
> development), the following sorts of questions occur:
> 
>     What choices are provided by each package?
>     If something is included in the build, can I do without it?
>     If something isn't included in the build, should I add it?
> 
> To be a real turn-key system, each recipe needs a page, or two, or three, of
> human-written (not script-produced) explanation of what options the recipe
> has, what they correspond to in user terms, and how they can be selected or
> deselected. Without that, the recipe really isn't "documented" in the
> conventional sense.

I guess that would be helpful, but I don't know if we have the resources to
document that for every recipe. Usually that information is already available
upstream. It could be that we can get to this point later on.

> When I added samba to core-image-base-cedartrail-nopvr, the image got vastly
> bigger. I wouldn't think the ability to do Windows file sharing would be
> comparable in size to the rest of the system. 

As I understand it Samba 3 itself (upstream) is an special case in this regard
- it has a deficiency where it includes a substantial portion of its library
code in every executable, of which Samba provides quite a few, making
it quite large indeed. If you look at these executables on your standard
Linux distribution you'll probably find they are similarly sized. Last time
I searched about the problem it was acknowledged by the developers but
they didn't seem overly interested in solving it at the time, which is
unfortunate. Hopefully Samba 4 is better in this regard. Here is the
thread:

http://lists.samba.org/archive/samba/2009-October/151096.html

> Did it add tons of man pages which no one will read, because it's an
> embedded system?

In the absence of bugs, we do package documentation separately (*-doc
packages) so that is unlikely to be the case.

> Did it add a
> client which I don't need, or just the server which I do need? Did it add
> libraries to the target that will never be used? Eventually, I'll figure
> this out, but I'm spending weeks and weeks on this, which is making this a
> very expensive project. Perhaps I should have just hired someone else to do
> it for me.

FWIW, we do strive to make things as minimal as we can; that's why we split
things up into so many packages. You've done the right thing in just adding
the main "samba" package to the image, it's just that Samba itself is quite
large and beyond patching the source or splitting packages further there's not
a lot that can be done about it.

FYI if you're interested in some analysis of the contents of final images you
may find buildhistory useful. There is a section of the manual about it here:

http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#maintaining-build-output-quality

Also, I know this doesn't help you much right now, but FYI we plan to
build more powerful image contents analysis tools into Web Hob, which
will be a web-based frontend to the build system.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

