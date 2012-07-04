Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E76FE006B1
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2012 03:19:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Jul 2012 03:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118807741"
Received: from unknown (HELO helios.localnet) ([10.252.120.228])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Jul 2012 03:19:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Date: Wed, 04 Jul 2012 11:19:27 +0100
Message-ID: <21992681.B0b6PJh8l8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-26-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C894004@ORSMSX105.amr.corp.intel.com>
References: <CDED78A957032E45B3239CDDA7642D151C894004@ORSMSX105.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Web Hob's design - missing developer workflow?
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
X-List-Received-Date: Wed, 04 Jul 2012 10:19:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dave,

On Tuesday 03 July 2012 22:28:12 Stewart, David C wrote:
> Now I want to do something like change the default root password. OK, I
> don't know where that file is located so how do I edit it? (Remember, there
> are no local files to do a find | grep to locate "passwd" anyplace.) So how
> do I change this?
> 
> In fact, if I want to edit any of the static files we provide in YP, I don't
> know how to do this.
>
> Next I want to add my own application, which consists of .c files, .h files
> and a makefile. (Because I am really old school). So I create a .bb file
> for this and then... what? How do I get this collection of files into my
> project in WebHob to build it?
> 
> For that last one, I guess I could treat it as a layer, since I see a way to
> provide an external layer to WebHob. OK, it means I need to create a
> conf/layer.conf file, right? Do I have any clues on how to do this or am I
> on my own?
>
> Oh, and when I tried to make my new layer build, I had a compile error,
> which I just fixed in a .c file. How do I get that file onto the WebHob
> server? Do I need to reload the whole layer?
 
We did discuss this problem earlier, and the conclusion was that people ought 
to be using layers to do their customisation. We can certainly help with that 
process however. I've just talked to Jim and for the prototype he's going to 
be designing in some functionality at the layer level to switch branches and 
fetch the latest version from the remote repository. You can then at least use 
the normal git processes to get updated versions of the metadata, switch 
between master, contrib and stable branches, etc. This is something we can 
reasonably cover for the current design phase.

FYI for updates to the source code itself as opposed to the metadata, it is 
already possible within the build system to have a recipe which always pulls 
the latest version of the source from some git/svn/etc. server (using 
AUTOREV). This mechanism could be used for a live development situation you 
mention above - you would just push your changes to whereever the recipe is 
pointing, and then hit "build" in the web interface, no other interaction 
would be required.

However, some of this will be "learn to walk before we try to run" (to quote 
Richard). I've no doubt we will discover different workflows as people have a 
chance to use it especially for internal collaboration. I think we can 
certainly record though that it would be nice if there was a guided way within 
the interface to create a layer and separately allow modification of common 
configuration files (e.g. /net/network/interfaces) by letting the user edit the 
file and then setting up a bbappend within a layer to apply it.

I'll work with the designers to add these requirements in the form of user 
stories so they can be covered in the next design cycle.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

