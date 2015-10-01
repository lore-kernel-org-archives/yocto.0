Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12D6BE00FED; Thu,  1 Oct 2015 10:49:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA13FE0073C
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 10:48:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9AA63F811E0; Thu,  1 Oct 2015 11:48:56 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2CA5DF81188;
	Thu,  1 Oct 2015 11:48:55 -0600 (MDT)
To: Christopher Larson <clarson@kergoth.com>
References: <560BD1F3.1090907@mlbassoc.com>
	<F14AEF751653024287138321000C846AF48D2103@BOS-DAG1.zone1.flir.net>
	<560D63FC.1040604@mlbassoc.com>
	<CABcZANm3twj-c7gnctQNiwfXr64tV9nDbLFYEGyu+gPy+1TvWQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560D7216.7060303@mlbassoc.com>
Date: Thu, 1 Oct 2015 11:49:10 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CABcZANm3twj-c7gnctQNiwfXr64tV9nDbLFYEGyu+gPy+1TvWQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Safely cleaning 'downloads'
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
X-List-Received-Date: Thu, 01 Oct 2015 17:49:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-10-01 10:54, Christopher Larson wrote:
>
> On Thu, Oct 1, 2015 at 9:49 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2015-10-01 10:38, Smith, Virgil wrote:
>
>         The following is roughly the procedure I follow and that works for me.  Maybe someone could chime in with how some of this should be trimmed based on yocto/bitbake
>         intent/design.
>         Even so I'd probably stick with this level of extremism because without a known good backup of your downloads(sources) you may be incapable of (tweaking and) rebuilding
>         your products if anything happens to your build server.
>
>         The only reason I've seen that simply deleting the downloads folder causes problems is that external servers/content go away, violate their git history, or replace files
>         with non-identical contents.
>
>
>         Warning: The following does not maintain PR server information, so automatic upgrading of your own packages could break.  If you rely on this work out how to extract that
>         information (and back it up regularly).
>
>         1. rename/move your current downloads folder and create a new one.
>         2. for all of your product build configurations empty out the following folders
>         2.1 cache
>         2.2 state-cache
>         2.3 tmp
>         3. build (bitbake) all your product images with all appropriate configuration variances
>         4. run the following command to extract the unexpanded sources from downloads
>         find -H downloads -maxdepth 1 \
>                -not -type d   -and   -not -name "*.done" \
>                -exec cp -L {} sources-tmp \;
>
>         You now have everything you *currently* need for a sources mirror in the sources-tmp folder.
>
>         5. move sources-tmp to wherever/whatever backs your SOURCE_MIRROR_URL.
>         6. Check those contents into some form of revision control (even if that is just a manual set of backup folders/media).
>
>
>         Yes this is costs time and space, you just have to decide how much your images and how much being able to reproduce them (with or without 'small' changes) is worth.
>
>
>     I'm already doing more or less this same sequence.  I use these commands to
>     stage the downloaded files to my mirror (/work/misc/Poky/sources for historical reasons)
>        ( cd downloads;
>          find . -maxdepth 1 -type f | grep -v '.lock$' | grep -v '.done$' >/tmp/files.$$;
>          rsync -auv --files-from=/tmp/files.$$ . /work/misc/Poky/sources
>        )
>
>     This works very well (I've been doing it for many years).  The issue I'm trying
>     to work on now is that my script leaves 'downloads' possibly full of files, especially
>     if there are new versions that have just been downloaded.  This is especially noticeable
>     for the tarballs of GIT trees - there are a number that I need/use that are measured in
>     gigabytes (e.g. the RaspberryPi board firmware is 4194568645 <tel:4194568645> bytes as of 2015-07-20!)
>     Once I've saved these to my mirror(s), I'd like to be able to purge them from the local
>     download directory in my builds.  As mentioned, I've found that just wiping that in a
>     build tree tends to break things quite badly.  Of course I can always start over with
>     a new build tree, but that also defeats the purpose of incremental builds.
>
>
> I'd think something like this would get the job done:
>
> 1. Do a build of all your supported machines and configurations with BB_GENERATE_MIRROR_TARBALLS=1 to ensure you have current, not out of date scm tarballs.
>
> 2. Set up builds of all your supported machines and configurations, using a new DL_DIR, with PREMIRRORS pointing to the old DL_DIR.
>
> 3. Either clean up the old DL_DIR by access time before you kicked off the builds, or resolve the symlinks in the new DL_DIR and remove the old.

Still not terribly different than what I'm doing - I already use
BB_GENERATE_MIRROR_TARBALLS which is what leads to the giant
tarballs in my downloads (and later mirror(s)).  All of that works
great.  I just want to be able to clean up my downloads directory
after a successful build and still be able to do an incremental
build in that tree.

Here's an example with more details:
   1. Set up a [virgin] build tree for some target.  This establishes
      use of premirrors, etc.  Also sets BB_GENERATE_MIRROR_TARBALLS so
      any new SCM packages will get saved.
   2. Build the desired images
   3. At this point, my 'downloads' directory has the new SCM (and other)
      files that were needed that were not already in the mirrors.
   4. Save any downloaded file updates (using my script/commands as above)
      to my mirror(s)
   5. Purge anything that is in 'downloads' that is now in the mirror(s)
   6. Sometime later, presumably after some package updates, metadata changes,
      etc, rebuild the same target images in this same tree - incremental rebuild.

I've been doing this sequence (except for step 5) for a long time and everything
works great, my only question is how to safely execute step 5.  This is useful
as on my build machine I may have many such build trees and if each one has
a downloads directory with many duplicated (many GB) tar files, it can really
add up.

I just ran a test of the above sequence and for step 5 I simply removed the
files which were saved during my 'save_download' script.  I left everything
else (still a lot, in this case >6GB).  This seemed to be totally safe and
looks like it will answer my original question.

Thanks for all the help & ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

