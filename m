Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 306CDE00A31; Fri, 26 Jun 2015 02:06:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D61AE00A03
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 02:06:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BBD8BF811D9; Fri, 26 Jun 2015 03:06:28 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 64265F811D9;
	Fri, 26 Jun 2015 03:06:28 -0600 (MDT)
Message-ID: <558D1639.6070103@mlbassoc.com>
Date: Fri, 26 Jun 2015 03:07:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
In-Reply-To: <CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 09:06:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-26 02:31, Burton, Ross wrote:
>
> On 26 June 2015 at 05:16, Jon Szymaniak <jon.szymaniak@gmail.com <mailto:jon.szymaniak@gmail.com>> wrote:
>
>     GitHub provides this ability to download repository contents at
>     a specified changeset as a zip file. This is generally *much* quicker
>     than fetching the entire git repository.

Hopefully the zip file is also a bit more manageable - the cached version
of the git tree for this repo is HUGE!

3599813625 Mar  5 11:02 /work/misc/Poky/sources/git2_github.com.raspberrypi.firmware.git.tar.gz

>
> Github also can and will regenerate these tarballs whenever it feels like it, so you'll need to periodically update the checksums.  Obviously as existing developers will tend to
> have the tarballs cached locally, it can be a while before this failure is reported back.
>
> A better solution might be to add support for "depth" to the git fetcher, so you can grab just the commit you are interested in instead of the entire repository.

Is that something that can be in the recipe, or is this ability
something that needs to be added to the bitbake/OE-core infrastructure?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

