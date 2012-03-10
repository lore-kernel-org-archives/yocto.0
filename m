Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4625DE013CA
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 02:58:03 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D95A9F811F1; Sat, 10 Mar 2012 03:58:02 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 71053F811F1;
	Sat, 10 Mar 2012 03:58:01 -0700 (MST)
Message-ID: <4F5B33B9.5020609@mlbassoc.com>
Date: Sat, 10 Mar 2012 03:58:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1203100523020.26289@oneiric>
	<4F5B3272.2010607@mlbassoc.com>
In-Reply-To: <4F5B3272.2010607@mlbassoc.com>
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
X-List-Received-Date: Sat, 10 Mar 2012 10:58:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-10 03:52, Gary Thomas wrote:
> On 2012-03-10 03:35, Robert P. J. Day wrote:
>>
>> over the years, i've built up a sizable collection of source
>> tarballs for use in various projects -- top-level directory called
>> "~/dl", about 5G in size with lots and lots of .tgz and .bz2 files and
>> so on, and i'd like to confirm the best way to take advantage of all
>> that source whenever i configure and build a yocto project.
>>
>> based on my reading, whenever i create a new project, i immediately
>> add the following to the bottom of its local.conf file:
>>
>> PREMIRRORS_prepend = "\
>> git://.*/.* file:///home/rpjday/dl/ \n \
>> svn://.*/.* file:///home/rpjday/dl/ \n \
>> cvs://.*/.* file:///home/rpjday/dl/ \n \
>> ftp://.*/.* file:///home/rpjday/dl/ \n \
>> http://.*/.* file:///home/rpjday/dl/ \n \
>> https://.*/.* file:///home/rpjday/dl/ \n"
>>
>> and that certainly makes a massive difference -- whenever the fetching
>> starts, matching tarballs will be located in my "dl" directory, and
>> the project's downloads directory will be populated with symlinks to
>> the actual tarballs, as in:
>>
>> vala-0.14.2.tar.xz -> /home/rpjday/dl/vala-0.14.2.tar.xz
>>
>> and after the download, i sneak a peek at whatever newer tarballs
>> needed to be downloaded, and quietly copy them over to "dl" to avoid
>> ever downloading them again, and that's worked well so far. so, the
>> questions:
>>
>> 1) does this sound reasonable? i know about using DL_DIR and perhaps
>> sharing that across projects, but i rather like the idea of an
>> application-agnostic repository of straight tarballs and zip files
>> that any build system is allowed to pilfer from (especially since i
>> can make it read-only).
>>
>> 2) am i missing any fetch protocols from that list?
>>
>> 3) how do i set it up to avoid repeated git clones?
>>
>> it seems that, while i can avoid fetching simple tarballs, i still
>> end up doing the same "git clone" operations over and over. am i just
>> missing something obvious?
>
> All you really need are these lines:
> SOURCE_MIRROR_URL ?= "file://${COREBASE}/sources/"
> INHERIT += "own-mirrors"

Note: using this class makes sure all the needed fetcher types are filled in
as you don't have to think about it :-)

> Adjust the SOURCE_MIRROR_URL to wherever you want the files. I also always add
> BB_GENERATE_MIRROR_TARBALLS = "1"
> This will let the fetcher make a git2_XXX tarball, once the repo has been cloned.
>
> My understanding is that the git (and other SCM) fetcher works like this:
> * If there is a git2_XXX tar file in the DL_DIR (or mirror), unpack it
> into ${BUILD}/downloads/git2
> * Check to see if the desired ${SRCREV} is present. If not, do a 'git pull'
> to update the local clone and then rebuild the git2_XXX tarball.
> This way, you only have to clone once - just copy any generated tarballs back
> to your source mirror.
>
> Finally, if you set
> BB_NO_NETWORK = "1"
> the build will fail if bitbake *ever* has to go to the network, i.e. not find
> the desired files in the source mirror or DL_DIR. This is a great way to insure
> that you've got what you need locally. I use this all the time to make sure I
> have a fully populated local cache of sources.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

