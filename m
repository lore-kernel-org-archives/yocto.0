Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7EBAE014FF
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 06:29:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2013 06:27:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,670,1363158000"; d="scan'208";a="333860974"
Received: from unknown (HELO helios.localnet) ([10.255.12.153])
	by fmsmga001.fm.intel.com with ESMTP; 14 May 2013 06:29:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marc Ferland <ferlandm@sonatest.com>
Date: Tue, 14 May 2013 14:29:57 +0100
Message-ID: <1879864.lSqZYOE9Xi@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <87txm5og5f.fsf@sonatest.com>
References: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
	<7913150.opP2ggRnDV@helios> <87txm5og5f.fsf@sonatest.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: lmsensors
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
X-List-Received-Date: Tue, 14 May 2013 13:29:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 14 May 2013 09:16:44 Marc Ferland wrote:
> Paul Eggleton <paul.eggleton@linux.intel.com> writes:
> > On Tuesday 14 May 2013 11:21:49 Satya Swaroop Damarla wrote:
> >> It has been a month I have been fighting with installing the package
> >> "lmsensors" and had no success till today.... I would really appreciate
> >> much help....
> >> 
> >> The background goes like this..
> >> 
> >> *bitbake lmsensors * works perfectly but when I add the package into the
> >> rootfs I get the following error
> >> 
> >> * Package lmsensors-config is not available, but is referred to by
> >> another
> >> package.*
> > 
> > Looking at the output of building the current lmsensors recipe in meta-oe
> > master, the main "lmsensors" package is actually empty and thus is not
> > produced; this is a bit annoying and should probably be fixed. However
> > what I think you're supposed to do is instead install the components of
> > lmsensors that you actually need. If you look at packages-split in the
> > lmsensors work directory (or the lmsensors* packages in tmp/deploy/ipk)
> > you'll see it
> > produces the following, ignoring dbg/dev/doc/staticdev packages:
> 
> When I first wrote the lmsensors recipe I noticed that lmsensors is
> actually a collection of tools which serve very different purposes. For
> example, the sensorsdetect and pwmconfig tools are only needed to
> produce configuration files for libsensors and fancontrol (resp.). Once
> the system is configured, they can be removed.
> 
> I followed the idea from the original lmsensors recipe from oe.

Fair enough.
 
> What should the recipe actually install when bitbaking only the "main"
> package? The main lmsensors library? Everything?

That's a good question (assuming you mean installing the main package as 
opposed to bitbaking the main package). With some other recipes e.g. Qt, we 
have made it so the main package pulls in all of the sub-packages. We could do 
the same thing for lmsensors, the question is if it makes sense? Whatever we 
do I think we do need to solve the problem that the lmsensors package is 
ostensibly still provided by the recipe and yet it can't be installed and 
leads to a failure later on, and the solution to the failure is not obvious to 
new users.

This might be something to RFC on the openembedded-devel mailing list.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

