Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19503E007BA; Fri, 14 Nov 2014 11:04:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF70FE005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 11:04:05 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8246CF811E4; Fri, 14 Nov 2014 12:04:05 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 06338F811E2;
	Fri, 14 Nov 2014 12:04:04 -0700 (MST)
Message-ID: <54665237.4000802@mlbassoc.com>
Date: Fri, 14 Nov 2014 12:04:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <mailman.24730.1415986771.26702.yocto@yoctoproject.org>
	<CAGMdoF=11b8CypTagV29DCo=4bvRBjp0=SifXAEwLbgUK9197Q@mail.gmail.com>
In-Reply-To: <CAGMdoF=11b8CypTagV29DCo=4bvRBjp0=SifXAEwLbgUK9197Q@mail.gmail.com>
Subject: Re: yocto Digest, Vol 50, Issue 54
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
X-List-Received-Date: Fri, 14 Nov 2014 19:04:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-11-14 11:52, Edward Wingate wrote:
> On Fri, Nov 14, 2014 at 9:39 AM, <yocto-request@yoctoproject.org <mailto:yocto-request@yoctoproject.org>> wrote:
>
>     From: Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>
>     On 2014-11-14 10:10, Edward Wingate wrote:
>     >
>     > The ramdisk image ballooned to 22MB though.  It's expected, but due to
>
>      > flash size constraints, Python may not be an option in this case.
>
>     You can always just bring in the packages you need (python-modules is a
>     pretty heavy hammer!)  Python is split into ~90 separate packages, each
>     with a [small] set of modules/functionality.
>
>
> I would really like to try this. How do I find out what the various python packages are and what's in each package?  I tried
> http://layers.openembedded.org/layerindex/branch/master/recipes/, but don't find what I'm looking for (right now, Python's built-in logging and codecs modules).

Try looking in your build tree.  Depending on your target configuration,
you'll have either RPM or IPK packages and the python modules end up in
the architecture dependent collection.  For example, on my i.MX6 (ARM)
target, I have:
   $ ls tmp/deploy/ipk/cortexa7hf-vfp-neon/python*
   tmp/deploy/ipk/cortexa7hf-vfp-neon/python-2to3_2.7.3-r0.3.0_cortexa7hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa7hf-vfp-neon/python-audio_2.7.3-r0.3.0_cortexa7hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa7hf-vfp-neon/python-bsddb_2.7.3-r0.3.0_cortexa7hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa7hf-vfp-neon/python-codecs_2.7.3-r0.3.0_cortexa7hf-vfp-neon.ipk
   tmp/deploy/ipk/cortexa7hf-vfp-neon/python-compile_2.7.3-r0.3.0_cortexa7hf-vfp-neon.ipk
     ...

It can get a bit tricky to decide which package contains the module(s) you need
as many of them are grouped together.  If you know the name of the module, you
can typically find it via a quick search, e.g. to find the package that contains
the htmllib module:
   $ find tmp/work/cortexa7hf-vfp-neon-amltd-linux-gnueabi/python/2.7.3-r0.3/packages-split/ -name htmllib.py
   tmp/work/cortexa7hf-vfp-neon-amltd-linux-gnueabi/python/2.7.3-r0.3/packages-split/python-html/usr/lib/python2.7/htmllib.py
so, in this case I'm looking for the 'python-html' package.

Once you determine the package name, just add that to your image (or if you
have things set up for package updates, you can just add the packages directly
on your board).

>
> I also can't find where the python-modules recipe is located.  I thought that might give me a clue as to what all the modules are and where they are.  I would think python-modules
> would be located in or poky/meta/recipes-devtools/python or meta-openembedded/meta-python where it seems all the other python stuff are, but it's not there that I can see.  Where
> is python-core defined, for that matter?  I can't find that anywhere either.  All references to python-core and python-modules are in the build/tmp directory, but I don't see the
> source definition.

Everything comes from just the single 'python' recipe (lots
of magic lives within)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

