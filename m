Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99CA2E0091A; Thu, 16 Apr 2015 08:58:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F04EE00306
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 08:58:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 16 Apr 2015 08:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,588,1422950400"; d="scan'208";a="714771037"
Received: from koneill-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.110])
	by orsmga002.jf.intel.com with ESMTP; 16 Apr 2015 08:58:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Apr 2015 16:58:10 +0100
Message-ID: <1795404.fNYR0e1r1I@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <20150416131144.GA9092@ad.chargestorm.se>
References: <552FA28B.5010507@actia.se>
	<14610153.uBZ2VKfICl@peggleto-mobl.ger.corp.intel.com>
	<20150416131144.GA9092@ad.chargestorm.se>
MIME-Version: 1.0
Cc: Anders Darander <anders@chargestorm.se>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Thu, 16 Apr 2015 15:58:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 16 April 2015 15:11:44 Anders Darander wrote:
> * Paul Eggleton <paul.eggleton@linux.intel.com> [150416 14:57]:
> > Hi John,
> > 
> > On Thursday 16 April 2015 11:52:48 John Ernberg wrote:
> > > After restoring everything I re-created the recipe, this time I also
> > > saved a copy of the recipe at a safe location.
> > > At the end of the path given to subpath I had added a '/' as it was not
> > > specified what the format of the path should be. I figured I would see
> > > an error if the path was wrong, and technically I did.
> > > Essentially the SRC_URI looked like this:
> > > SRC_URI = "git://git@<server+repo>;protocol=ssh;subpath=path/"
> > > 
> > > Running the recipe resulted in do_fetch (or do_unpack) failing again and
> > > complaining about missing files. This time the deletion was on a much
> > > greater scale, it had deleted so much of my home-dir that my user
> > > account was rendered entirely useless. The fastest way to recover this
> > > time was re-installing the machine.
> 
> It's most likely a call to bb.utils.prunedir(destdir), with destdir
> being set to '/'...
> 
> > Very sorry about this :(
> 
> Yeah, too bad...
> 
> > Looking at the code I can see at least two problems we need to fix
> > relating to this issue. It seems that having '/' either at the start or
> > the end of the value was unexpected and would trigger undesirable
> > behaviour.
> 
> The issue with having '/' at the end ought to be solved by adding
> .rstrip('/') like:
> ----------------------------
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 44fc271..0fd9bee 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -246,7 +246,7 @@ class Git(FetchMethod):
>          subdir = ud.parm.get("subpath", "")
>          if subdir != "":
>              readpathspec = ":%s" % (subdir)
> -            def_destsuffix = "%s/" % os.path.basename(subdir)
> +            def_destsuffix = "%s/" %
> os.path.basename(subdir.rstrip('/'))
>          else:
>              readpathspec = ""
>              def_destsuffix = "git/"
> ---------------------------
> 
> Probably, the first issue could be solved by replacing subdir with
> subdir.strip('/') on the line above that.
> 
> Though I might be missing something...
> 
> I've only looked for a moment on the patch above, which at least seems
> to create correct path's when inspecting the output.

That looks like a reasonable solution to me, thanks.

FYI I've created the following bug to track this issue:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=7620

I'll send a fix ASAP probably based on the above.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

