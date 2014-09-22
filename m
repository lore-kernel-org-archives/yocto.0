Return-Path: <harshjain32@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C56F5E0086A; Sun, 21 Sep 2014 23:53:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (harshjain32[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E4DDE00851
	for <yocto@yoctoproject.org>; Sun, 21 Sep 2014 23:52:58 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id u56so2357815wes.10
	for <yocto@yoctoproject.org>; Sun, 21 Sep 2014 23:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+W2D4CmaApREUx2P4PkJPNvZy24K6gsDrs+305bSPEw=;
	b=OcysTpcszhFmR1equumk2Liiam+lcmxLjFyX9Zx+lGYlq/7bEOOjNqCLKXwESuPT0L
	OqMhg0kNPKFfMyU2/5zEz9k7mXCah1CD2j/tcBpp2L0Bjp00q25GsN/dAgPtXlLnGci7
	YvTkhUabH87o4hbQlIxeupN4oxh7SVAsjx9opB5GaDfxXmM+fxvP2E+pRlHN/+rafpi6
	N0//lhvgEJZol6C/EgKAKZxJReBoEBjT3mMUMHXMt2fniYx21k+GdJaP2NVVgZNVWjip
	Dj+QMlkVADEiSIjqOGeXq4d8FjxDBWtnJBipS59Cix6EZpLM9txioFaIjL5raEcBZkb6
	ayIg==
MIME-Version: 1.0
X-Received: by 10.194.94.196 with SMTP id de4mr1668368wjb.86.1411368777676;
	Sun, 21 Sep 2014 23:52:57 -0700 (PDT)
Received: by 10.216.96.11 with HTTP; Sun, 21 Sep 2014 23:52:57 -0700 (PDT)
In-Reply-To: <CAKuL1XQegnpVr2neK-z+sgBbQjNEb-S0ZF2=owBg11VgXSRMRA@mail.gmail.com>
References: <CAKuL1XTwmyTHTOZxwxCh31F3aB0M=PWExkO-SVLwXhGGD1vveA@mail.gmail.com>
	<CAJTo0LaojbZbjz-io_L3W3tQUPzL0ZMYFA11vjnW8NY6GVemzQ@mail.gmail.com>
	<CAKuL1XQegnpVr2neK-z+sgBbQjNEb-S0ZF2=owBg11VgXSRMRA@mail.gmail.com>
Date: Mon, 22 Sep 2014 12:22:57 +0530
Message-ID: <CAKuL1XSVfXkZN2ybCo=iv1m-FZMxV7_vP4eNBO2T5dfkGZs5bA@mail.gmail.com>
From: harsh jain <harshjain32@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Update recipe file to avoid conflict with other dependant packages
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
X-List-Received-Date: Mon, 22 Sep 2014 06:53:06 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Given below logs message when I tried with python 2.7.4

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 2.7.3 of python not available (for item python-core)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item python-2to3)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item python-audio)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item python-bsddb)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item python-codecs)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item python-compile)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item python-compiler)
NOTE: versions of python available: 2.7.4
NOTE: preferred version 2.7.3 of python not available (for item
plython-compression)
NOTE: versions of python available: 2.7.4

Regards
Harsh Jain

On Sat, Sep 20, 2014 at 10:06 AM, harsh jain <harshjain32@gmail.com> wrote:
> Hi,
>
> I am trying to reproduce the  warding issue again from last 3 days.
> This time I am struck with some more inconsitent errors like
>
> Traceback (most recent call last):
>   File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/command.py",
> line 99, in runAsyncCommand
>     commandmethod(self.cmds_async, self, options)
>   File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/command.py",
> line 331, in generateTargetsTree
>     command.cooker.generateTargetsTree(klass, pkg_list)
>   File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/cooker.py",
> line 888, in generateTargetsTree
>     tree = self.generatePkgDepTreeData(pkgs, 'build')
>   File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/cooker.py",
> line 634, in generatePkgDepTreeData
>     depend_tree["pn"][pn][ei] = vars(self.recipecache)[ei][fn]
> KeyError: '/home/aricent/openembedded/openembedded-core/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb'
>
>
>
> The name of recipe file is not constant some time it comes with some
> other recipe file the workaround for this is,
>
>       1) Rename the recipe file to _old(tcp-wrappers_7.6.bb_old) and
> start the HOB.
>       2) In Drop Down Menu select machine "genericarm8".This time it
> will parse successfully.
>       3) Then after build image steps fail,obviously it will because
> he will not get tcp-wrapper bb file.
>       4) Now if I rename the recipe again to original.repeats the step
> 2,3 . It moves forward.
>
> I am suspect that some temporary file is causing the this problem. I
> have used kill command to kill the HOB.
>
>
> Regards
> Harsh Jain
>
>
>
> On Sat, Sep 20, 2014 at 12:10 AM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 19 September 2014 19:11, harsh jain <harshjain32@gmail.com> wrote:
>>> I am trying to install python version 2.7.4 after updating recipe file
>>> of version 2.7.3.There are several other packages in my build system
>>> which depends upon Python version 2.7.3.When I try to make build these
>>> dependant packages give warning.
>>> What I needs to update in build environment so that these packages can
>>> also included.I am assuming that these dependants packages are also
>>> compatible with python verson 2.7.4.
>>
>> What are these warnings, because I can't think of anything off-hand
>> which will warn when the minor version changes.
>>
>> Ross

