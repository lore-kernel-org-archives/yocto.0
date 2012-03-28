Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE19DE0070C
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 03:33:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Mar 2012 03:33:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133984726"
Received: from unknown (HELO helios.localnet) ([10.252.123.244])
	by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2012 03:33:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andy Gikling <agikling@lasx.com>
Date: Wed, 28 Mar 2012 11:33:28 +0100
Message-ID: <1712776.fDrv18UvW5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <23FC35CD1508674EBB20455EB700B1B4BCE85A464B@EXMBX05.mmeprod.cbeyond>
References: <23FC35CD1508674EBB20455EB700B1B4BCE85A464B@EXMBX05.mmeprod.cbeyond>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Explicitly Adding Common Packages (ie Java) and Creating Users
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
X-List-Received-Date: Wed, 28 Mar 2012 10:33:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

On Sunday 25 March 2012 21:05:02 Andy Gikling wrote:
> I'd like to ask two specific questions:
> 
> Question 1:
> The ADT manual instructs you to install the Target Management (RSE)
> framework into Eclipse.  Presumably, one would want to use these tools to
> do remote debugging on their Yocto target.  Unfortunately, the primary
> vehicle to doing streamlined remote debugging with Target Management is to
> run the rseserver and this requires java.  Many of Yocto's base images
> don't come with java support (for example core-image-minimal).  So I set
> out to figure out how to add this into my project.  Makes sense right?
> 
> I was never able build an image that contains the meta-oracle-master layer
> using the config files only.  (The documentation on how to do this is
> sparse.  Even the readme file in the layer's download is a one-liner on how
> to use it... why?)  I was able to get an image to build using hob though. 
> When I boot the image I have two new folders now; "/usr/java/" and
> "/usr/jdk1.7.0_02/" both of which contain a "/bin" folder with "java" in
> it.
> 
> The problem is I can't seem to execute any of them what-so-ever.  I just
> need to be able to call "java -version" and I just can't get er' to go no
> matter what I do!
> 
> I've tried adding various locations to my $PATH and I've also tried
> navigating to the folder directly and calling "./java" to no avail.  What
> folder should I expect my java executable to be in?  Why can't I use it? 
> The jdk is clearly there - I must be missing something very obvious.
>
> There really should be some documentation on this because Java is so common
> as it's a requirement for the tools suggested in the ADT manual. 
> Documentation on this topic would fit really well with other common
> first-timer question of "How do I explicitly add a package to my Yocto
> image, such as OpenSSH, GDB, or Java?"

I'm afraid I don't know the answer to this, but maybe someone else can help - 
Jessica, Nitin, any ideas on this one?
 
> The brief sections about this topic in the official guides are not very
> clear to me.  It seems like explicitly adding a custom package might even
> fit in the quick start guide.
> 
> Question 2:
> I was able to get the OpenSSH package added to my Yocto build using hob
> (when I can't get things to work by editing the .conf files I try hob and
> it feels like cheating... but it seems to work much better for me.)  All I
> want to do now is set it up but I can't make new users!
> 
> The default Yocto login account on my target is "root" but I can't call
> "useradd andy" because useradd is not included in my core-image-minimal
> build.  This makes configuring sshd quite a bit harder.
> 
> Any ideas?  Is there a way to add user accounts at build time or do I have
> to add the "useradd" package?

We have useradd.bbclass as well as a few recipes that use it as examples; this 
class is typically used from a recipe to add accounts necessary for running 
daemons themselves (e.g. dbus) although in principle it could be used to add 
any account at build time.

If you want to include the useradd utility in the root filesystem, you would 
need to include the "shadow" package, which is easy to do with Hob.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

