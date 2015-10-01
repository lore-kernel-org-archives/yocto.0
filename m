Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F3E0E010DA; Thu,  1 Oct 2015 09:48:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E724E010CD
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 09:48:47 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 19BDEF811DE; Thu,  1 Oct 2015 10:48:46 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A673DF81188;
	Thu,  1 Oct 2015 10:48:45 -0600 (MDT)
To: "Smith, Virgil" <Virgil.Smith@flir.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <560BD1F3.1090907@mlbassoc.com>
	<F14AEF751653024287138321000C846AF48D2103@BOS-DAG1.zone1.flir.net>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560D63FC.1040604@mlbassoc.com>
Date: Thu, 1 Oct 2015 10:49:00 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <F14AEF751653024287138321000C846AF48D2103@BOS-DAG1.zone1.flir.net>
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
X-List-Received-Date: Thu, 01 Oct 2015 16:48:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-10-01 10:38, Smith, Virgil wrote:
> The following is roughly the procedure I follow and that works for me.  Maybe someone could chime in with how some of this should be trimmed based on yocto/bitbake intent/design.
> Even so I'd probably stick with this level of extremism because without a known good backup of your downloads(sources) you may be incapable of (tweaking and) rebuilding your products if anything happens to your build server.
>
> The only reason I've seen that simply deleting the downloads folder causes problems is that external servers/content go away, violate their git history, or replace files with non-identical contents.
>
>
> Warning: The following does not maintain PR server information, so automatic upgrading of your own packages could break.  If you rely on this work out how to extract that information (and back it up regularly).
>
> 1. rename/move your current downloads folder and create a new one.
> 2. for all of your product build configurations empty out the following folders
> 2.1 cache
> 2.2 state-cache
> 2.3 tmp
> 3. build (bitbake) all your product images with all appropriate configuration variances
> 4. run the following command to extract the unexpanded sources from downloads
> find -H downloads -maxdepth 1 \
>       -not -type d   -and   -not -name "*.done" \
>       -exec cp -L {} sources-tmp \;
>
> You now have everything you *currently* need for a sources mirror in the sources-tmp folder.
>
> 5. move sources-tmp to wherever/whatever backs your SOURCE_MIRROR_URL.
> 6. Check those contents into some form of revision control (even if that is just a manual set of backup folders/media).
>
>
> Yes this is costs time and space, you just have to decide how much your images and how much being able to reproduce them (with or without 'small' changes) is worth.

I'm already doing more or less this same sequence.  I use these commands to
stage the downloaded files to my mirror (/work/misc/Poky/sources for historical reasons)
   ( cd downloads;
     find . -maxdepth 1 -type f | grep -v '.lock$' | grep -v '.done$' >/tmp/files.$$;
     rsync -auv --files-from=/tmp/files.$$ . /work/misc/Poky/sources
   )

This works very well (I've been doing it for many years).  The issue I'm trying
to work on now is that my script leaves 'downloads' possibly full of files, especially
if there are new versions that have just been downloaded.  This is especially noticeable
for the tarballs of GIT trees - there are a number that I need/use that are measured in
gigabytes (e.g. the RaspberryPi board firmware is 4194568645 bytes as of 2015-07-20!)
Once I've saved these to my mirror(s), I'd like to be able to purge them from the local
download directory in my builds.  As mentioned, I've found that just wiping that in a
build tree tends to break things quite badly.  Of course I can always start over with
a new build tree, but that also defeats the purpose of incremental builds.

>
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>> Sent: Wednesday, September 30, 2015 7:14 AM
>> To: Yocto Project
>> Subject: [yocto] Safely cleaning 'downloads'
>>
>> Over time, I tend to build in the same build tree many, many times.  This leads to
>> some really big trees as many things are duplicated, especially in the 'downloads'
>> directory.
>>
>> I use local mirrors and hence my 'downloads' directory is _mostly_ populated
>> with symbolic links.  However, there are also expanded SCM packages, e.g.
>> git2/xxx
>>
>> How can I safely clean up the 'downloads' directory?  I already copy any created
>> tarballs (I use BB_GENERATE_MIRROR_TARBALLS="1"
>> to preclude unneeded downloads) to my mirror, but I'd like to periodically clean
>> out the whole directory (without disturbing my builds of course).  I've found out
>> the hard way that just emptying seems to be unsafe, at least for some recipes
>> like the [RaspberryPi] Linux kernel recipe which once built seems to expect the
>> expanded git2/xxx tree to remain.
>>
>> Just trying to find ways to recover my lost GB...
>>
>> Thanks for any ideas
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> ________________________________
>
> Notice to recipient: This email is meant for only the intended recipient of the transmission, and may be a communication privileged by law, subject to export control restrictions or that otherwise contains proprietary information. If you receive this email by mistake, please notify us immediately by replying to this message and then destroy it and do not review, disclose, copy or distribute it. Thank you in advance for your cooperation.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

