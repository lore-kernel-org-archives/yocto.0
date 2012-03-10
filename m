Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CE20E00723
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 07:51:21 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E80B3F8125D; Sat, 10 Mar 2012 08:51:20 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id C4550F811F3;
	Sat, 10 Mar 2012 08:51:19 -0700 (MST)
Message-ID: <4F5B7877.40202@mlbassoc.com>
Date: Sat, 10 Mar 2012 08:51:19 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1203100523020.26289@oneiric>
	<4F5B3272.2010607@mlbassoc.com>
	<alpine.DEB.2.02.1203100654540.29307@oneiric>
	<4F5B6B44.7020409@mlbassoc.com>
	<alpine.DEB.2.02.1203101025220.24607@oneiric>
	<4F5B7492.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203101045440.24548@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203101045440.24548@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to set up PREMIRRORS_prepend to avoid constant git clones?
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
X-List-Received-Date: Sat, 10 Mar 2012 15:51:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-10 08:46, Robert P. J. Day wrote:
> On Sat, 10 Mar 2012, Gary Thomas wrote:
>
>> On 2012-03-10 08:29, Robert P. J. Day wrote:
>>> On Sat, 10 Mar 2012, Gary Thomas wrote:
>>>
>>>> On 2012-03-10 06:39, Robert P. J. Day wrote:
>>>
>>> ... snip ...
>>>
>>>>>      $ bitbake -c fetchall core-image-minimal
>>>>>
>>>>> and got something unexpected:
>>>>>
>>>>> NOTE: package bash-4.2-r1: task do_fetch: Started
>>>>> ERROR: Function failed: Network access disabled through BB_NO_NETWORK
>>>>> but access rquested with command /usr/bin/env wget -t 5 -nv
>>>>> --passive-ftp --no-check-certificate -P
>>>>> /home/rpjday/yocto/builds/beag2/downloads
>>>>> 'ftp://ftp.gnu.org/gnu/bash/bash-4.2-patches/bash42-001' (for url
>>>>> None)
>>>>> ERROR: Logfile of failure stored in:
>>>>> /home/rpjday/yocto/builds/beag2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/bash-4.2-r1/temp/log.do_fetch.32479
>>>>> Log data follows:
>>>>> | DEBUG: Trying PREMIRRORS
>>>>> ... snip ...
>>>>>
>>>>>      i can clearly see the problem -- while i have the bash tarball
>>>>> itself in my own mirror, i don't have the patches to go with it, as
>>>>> defined in the recipes file:
>>>>>
>>>>> SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
>>>>>
>>>>> ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-001;apply=yes;striplevel=0;name=patch001
>>>>> \
>>>>> ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-002;apply=yes;striplevel=0;name=patch002
>>>>> \
>>>>> ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-003;apply=yes;striplevel=0;name=patch003
>>>>> \
>>>>> ... etc etc ...
>>>>>
>>>>>      when i went looking for actual downloads in step 1, i just searched
>>>>> for sizable tarballs or zip files, it never occurred to me to check
>>>>> for patch files.  so i guess i just have to be more observant and
>>>>> check for patch files as well (or anything else a recipe might want to
>>>>> download).
>>>>>
>>>>>      so far, so good?
>>>>
>>>> I didn't check but this is often the recipe's fault.  It must specify
>>>> an exact git SRCREV, not a tag, for the NO_NETWORK to be successful.
>>>
>>>     i'm not sure what you're saying here.  the patches are simple files,
>>> nothing to do with git.  the bash source itself is properly being
>>> fetched from my mirror -- it's the numerous patch files i was unaware
>>> of that still require network access; that is, until i manually copied
>>> them over to my mirror directory, and that solved the problem.
>>>
>>>     i just had to notice that the bash recipe downloaded a number of
>>> patch files, then add them to my local mirror.
>>
>> Sorry, I misread.  Yes, you do need those patch files in your local mirror.
>> In fact, if you look at ${BUILD}/downloads, every _file_ (not symlink) that's
>> at the top level needs to be copied.  I manage this by running a script
>> like this:
>>    (cd downloads;find . -type f -maxdepth 1 | tar -cT - | tar -x -C ${DL_DIR})
>
>    but doesn't that pick up all the ".done" files as well?  doesn't
> hurt, but certainly unnecessary.

I said "something like" - add in "| grep -v .done" if you want to skip those.
I actually use a more complex script as there are some things I simply never
want to copy...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

