Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68AF3E01373
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 05:10:20 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3F729F8123A; Mon, 23 Jan 2012 06:10:18 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3D77DF81239;
	Mon, 23 Jan 2012 06:10:17 -0700 (MST)
Message-ID: <4F1D5C39.6070503@mlbassoc.com>
Date: Mon, 23 Jan 2012 06:10:17 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <56375FA8-BB1F-4D3B-91EC-C84665DF9905@gmail.com>
	<4F1CB41A.301@mlbassoc.com> <4F1D57CE.2050807@gmail.com>
In-Reply-To: <4F1D57CE.2050807@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: tar ball vs. git development questions
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
X-List-Received-Date: Mon, 23 Jan 2012 13:10:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-23 05:51, jfabernathy wrote:
> On 01/22/2012 08:12 PM, Gary Thomas wrote:
>> On 2012-01-22 13:19, James Abernathy wrote:
>>> I have used both git and the tarball methods of bitbaking projects, all of them derivatives of the examples in the Yocto documentation. I was having issues using the local clone of
>>> the Yocto kernel git repository this weekend. I had successfully done that before, but I was rebuilding the PC workstation, and getting everything setup and tested some of the
>>> meta-intel BSPs to make sure I had everything right. Cloning the linux-yocto-3.0 repository was successful, but the bakes against it failed. I made sure I had poky-extras setup
>>> right, but I still had problems. To isolate the problem, I changed to building with the tarballs and everything worked fine.
>>>
>>> So that got me thinking what are the differences between the 2 methods:
>>>
>>> * I assume that if I use the tarball method, bitbake, using the recipes, pulls down files from the online repositories and puts those files into the centralized local download
>>> directory ($DL_DIR), allowing reuse instead of re-downloading each time. The content downloaded for linux-yocto-3.0 is exactly what would be pulled from the local repository if
>>> I used a local clone of the git repository for linux-yocto-3.0.
>>> * If my assumption above is correct, if I'm not modifying the source code of the kernel (only changing config parameters), then once you've run at least one build with the
>>> tarball method, the $DL_DIR directory contains all the files you'll need to build any image with linux-yocto-3.0. So there is no need to have a local clone of the kernel
>>> repository for speeding up development. Am I right?
>>> * If I have a successful creation of a bare clone of linux-yocto-3.0.git, how could builds of Edison packages be failing? That makes me concerned about using git and successfully
>>> repeating builds of stable branches like Edison.
>>
>> If you set BB_GENERATE_MIRROR_TARBALLS = "1" (e.g. in local.conf)
>> then you'll get tarballs which hold the git repositories after
>> download. You can then reuse these (by sharing the DL_DIR or
>> using a local mirror). Does that help with the issue you're seeing?
>>
> I'm not sure it does. I don't want poky to do more work. I have my download directory, $DL_DIR, outside my build directory so I can keep it run to run, as mentioned in the comments
> in local.conf. I was trying to understand 2 basic questions:
>
> 1. what could be causing build failures using a freshly created bare clone yesterday vs. using the poky-edison-6.0 tarball. It would be scary if you could clone the linux-yocto-3.0
> successfully one day and have it be used in a build successfully, but clone it another day and it not work. I figured that bitbake/poky pulled the same information into DL_DIR
> regardless of whether you pulled from the bare clone locally or straight from the on-line repository.

What kind of errors?  Some details might help understand what the problem is.

> 2. I was trying to look at items to speed up build runs. I thought that if the downloads in DL_DIR were reused if they existed, it would speed up a run. It seems to. So the
> question is, after the first build, the files I need for linux-yocto-3.0 are in DL_DIR regardless of whether they came from the online repository or the local bare clone. right?

I think so, but I'm not 100% sure.

The way I have my system set up, I never download anything more
than once :-)  I have a shared source repository which I point to
using MIRRORS and then all my builds are relative to that.  If there
is new code, it gets downloaded and saved (as a tarball) in my sources
repository to be used by subsequent builds.  To do this, I just have
these lines in <distro>.conf
   # Provide pre-staged sources
   SOURCE_MIRROR_URL ?= "file://${COREBASE}/sources/"
   INHERIT += "own-mirrors"
   BB_GENERATE_MIRROR_TARBALLS = "1"
I don't define DL_DIR in local.conf so files only come from my mirror.

This process is so successful that I almost always run with BB_NO_NETWORK="1"
which causes the fetcher to die if it can't find the file locally.  If I find
that I do need to download something new, I disable this and let the fetcher
download it.  I'll then have a saved tarball (either downloaded directly or
synthesized) in <build_dir>/downloads that I can push to my mirror.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

