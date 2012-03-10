Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33779E0059B
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 06:55:04 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6B2D4F811F3; Sat, 10 Mar 2012 07:55:02 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 07C10F811F3;
	Sat, 10 Mar 2012 07:55:01 -0700 (MST)
Message-ID: <4F5B6B44.7020409@mlbassoc.com>
Date: Sat, 10 Mar 2012 07:55:00 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1203100523020.26289@oneiric>
	<4F5B3272.2010607@mlbassoc.com>
	<alpine.DEB.2.02.1203100654540.29307@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203100654540.29307@oneiric>
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
X-List-Received-Date: Sat, 10 Mar 2012 14:55:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-10 06:39, Robert P. J. Day wrote:
> On Sat, 10 Mar 2012, Gary Thomas wrote:
>
>> All you really need are these lines:
>>    SOURCE_MIRROR_URL ?= "file://${COREBASE}/sources/"
>>    INHERIT += "own-mirrors"
>> Adjust the SOURCE_MIRROR_URL to wherever you want the files.  I also always
>> add
>>    BB_GENERATE_MIRROR_TARBALLS = "1"
>> This will let the fetcher make a git2_XXX tarball, once the repo has been
>> cloned.
>>
>> My understanding is that the git (and other SCM) fetcher works like this:
>>    * If there is a git2_XXX tar file in the DL_DIR (or mirror), unpack it
>>      into ${BUILD}/downloads/git2
>>    * Check to see if the desired ${SRCREV} is present.  If not, do a 'git pull'
>>      to update the local clone and then rebuild the git2_XXX tarball.
>> This way, you only have to clone once - just copy any generated tarballs back
>> to your source mirror.
>>
>> Finally, if you set
>>    BB_NO_NETWORK = "1"
>> the build will fail if bitbake *ever* has to go to the network,
>
>    well, that (sort of) worked so let me summarize for the benefit of
> anyone else interested.
>
>    i configured for a new build (beagleboard), and added the following
> to the bottom of local.conf:
>
> SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
> INHERIT += "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS = "1"
> # BB_NO_NETWORK = "1"
>
>    (since i know i'll need to do some downloading, i won't ban network
> access, obviously, not for this first run.)
>
>    did a "bitbake -c fetchall core-image-minimal", then checked my
> downloads/ directory for any content that actually got downloaded and
> tarball-ed, and found one obvious and sizable download:
>
> ... 87770604 2012-03-10 06:45 gcc-4_6-branch_gcc.gnu.org_.svn.gcc.branches_184847_.tar.gz
>
>    i copied that over to my own mirror dl/ directory, then configured a
> whole new build (also beagleboard), added same mirror directives to
> local.conf except (of course) banning network access this time, and
> once again did
>
>    $ bitbake -c fetchall core-image-minimal
>
> and got something unexpected:
>
> NOTE: package bash-4.2-r1: task do_fetch: Started
> ERROR: Function failed: Network access disabled through BB_NO_NETWORK
> but access rquested with command /usr/bin/env wget -t 5 -nv
> --passive-ftp --no-check-certificate -P
> /home/rpjday/yocto/builds/beag2/downloads
> 'ftp://ftp.gnu.org/gnu/bash/bash-4.2-patches/bash42-001' (for url
> None)
> ERROR: Logfile of failure stored in:
> /home/rpjday/yocto/builds/beag2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/bash-4.2-r1/temp/log.do_fetch.32479
> Log data follows:
> | DEBUG: Trying PREMIRRORS
> ... snip ...
>
>    i can clearly see the problem -- while i have the bash tarball
> itself in my own mirror, i don't have the patches to go with it, as
> defined in the recipes file:
>
> SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
>
> ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-001;apply=yes;striplevel=0;name=patch001 \
> ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-002;apply=yes;striplevel=0;name=patch002 \
> ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-003;apply=yes;striplevel=0;name=patch003 \
> ... etc etc ...
>
>    when i went looking for actual downloads in step 1, i just searched
> for sizable tarballs or zip files, it never occurred to me to check
> for patch files.  so i guess i just have to be more observant and
> check for patch files as well (or anything else a recipe might want to
> download).
>
>    so far, so good?

I didn't check but this is often the recipe's fault.  It must specify
an exact git SRCREV, not a tag, for the NO_NETWORK to be successful.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

