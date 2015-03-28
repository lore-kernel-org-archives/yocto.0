Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A05E9E00922; Sat, 28 Mar 2015 04:47:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ACA2E00906
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2015 04:47:01 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 01423F81199; Sat, 28 Mar 2015 05:47:00 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4F30EF81199;
	Sat, 28 Mar 2015 05:47:00 -0600 (MDT)
Message-ID: <551694BA.80408@mlbassoc.com>
Date: Sat, 28 Mar 2015 05:47:06 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <55158C90.6090001@mlbassoc.com>
	<55158ED4.3090504@mlbassoc.com>	<1427476761.14020.197.camel@linuxfoundation.org>
	<5515A067.8070900@mlbassoc.com>
In-Reply-To: <5515A067.8070900@mlbassoc.com>
Subject: Re: Question about BB_NO_NETWORK
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
X-List-Received-Date: Sat, 28 Mar 2015 11:47:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-27 12:24, Gary Thomas wrote:
> On 2015-03-27 11:19, Richard Purdie wrote:
>> On Fri, 2015-03-27 at 11:09 -0600, Gary Thomas wrote:
>>> On 2015-03-27 11:00, Gary Thomas wrote:
>>>> Can someone explain to me why this recipe (from meta-fsl-arm-extra)
>>>> requires network access if I have a current (built today on a different
>>>> machine) git tarball of the repository?
>>>
>>> Oops, forgot the recipe:
>>>
>>>>
>>>> The error I get is:
>>>>
>>>>      ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c
>>>> core.fsyncobjectfiles=0 fetch -f --prune git://github.com/boundarydevices/u-boot-imx6.git refs/*:refs/* (for url
>>>> git://github.com/boundarydevices/u-boot-imx6.git;branch=v2014.07-20140914)
>>>>      ERROR: Logfile of failure stored in:
>>>> /local/imx6_2015-03-27/tmp/work/nitrogen6x-amltd-linux-gnueabi/u-boot-script-boundary/v2014.07+gitAUTOINC+fcb04d6103-r0/temp/log.do_fetch.22945
>>>>      Log data follows:
>>>>      | DEBUG: Executing python function do_fetch
>>>>      | DEBUG: Executing python function base_do_fetch
>>>>      | DEBUG: Trying Upstream
>>>>      | DEBUG: Running export
>>>> PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games";
>>>>
>>>> export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 branch --contains fcb04d6103e2a1f62d3ae197432559aee5621765 --list v2014.07-20140914 2> /dev/null | wc -l
>>>>      | DEBUG: Running export
>>>> PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games";
>>>>
>>>> export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 remote rm origin
>>>>      | DEBUG: Running export
>>>> PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games";
>>>>
>>>> export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 remote add --mirror=fetch origin git://github.com/boundarydevices/u-boot-imx6.git
>>>>      | DEBUG: Python function base_do_fetch finished
>>>>      | DEBUG: Python function do_fetch finished
>>>>      | ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c
>>>> core.fsyncobjectfiles=0 fetch -f --prune git://github.com/boundarydevices/u-boot-imx6.git refs/*:refs/* (for url
>>>> git://github.com/boundarydevices/u-boot-imx6.git;branch=v2014.07-20140914)
>>>>      ERROR: Task 111 (/local/poky-cutting-edge/meta-fsl-arm-extra/recipes-bsp/u-boot/u-boot-script-boundary_git.bb, do_fetch) failed with exit code '1'
>>>>
>>>> The git tarball and full log are at http://www.mlbassoc.com/poky
>>>>
>>>> Is this a BUG?  I'm using these layers:
>>>>     meta              = "master:5c76cebc24675edb3dff473fce9b67cedff615db"
>>>>     meta-fsl-arm      = "master:115aaced72fddc23024f8838f0eeb8ad5e37d048"
>>>>     meta-fsl-arm-extra = "master:22f6672c3ef58bf5070d0c6894a459fada66f55e"
>>>>
>>
>> Is the specified revision on the specified branch in the tarball?
>
> Absolutely (otherwise, I wouldn't be asking).  Here's the result
> of the first query mentioned above:
>
> $ git -c core.fsyncobjectfiles=0 branch --contains fcb04d6103e2a1f62d3ae197432559aee5621765 --list v2014.07-20140914
>    v2014.07-20140914
>

After trying this scenario on seven different hosts, some failed
while others worked as expected.  I have now determined that the
problem occurred because of stale data that I didn't think to clean
up.  Here's how it went (in chronological order):

* Machine A [2014-12-03]
   Successfully built, from scratch, for the given target, BB_NO_NETWORK unset
   This downloaded git://github.com/boundarydevices/u-boot-imx6.git
   into BUILD/downloads/git2/github.boundarydevices.u-boot-imx6.git
   and saved the result tarball, which I then moved to my shared mirror

* meta-fsl-arm-extra [2015-03-19]
   Update recipes-bsp/u-boot/u-boot-script-boundary_git.bb

* Machine B [2015-03-27]
   Tried to build for the same target, BB_NO_NETWORK="1"
   Fetch failed (as documented above)

* Machine A [2015-03-27]
   Rebuilt for the target, BB_NO_NETWORK is unset.
   The git tree is updated (since network is OK) and tarball rebuilt
   Move tarball to shared mirror

* Machine B [2015-03-27]
   Retry build BB_NO_NETWORK="1" - fails?
   Report error (this email thread) to list

The problem was that on Machine B, the git tree had already been
unpacked into BUILD/downloads/git2/github.boundarydevices.u-boot-imx6.git
with the data from 2014-12-03.  As long as that existed, it was never going
to check for a new tarball from the mirror.

* Machine B [2015-03-28]
   $ rm -fr downloads/git2_github.com.boundarydevices.u-boot-imx6.git.tar.gz*
   $ rm -fr downloads/git2/github.com.boundarydevices.u-boot-imx6.git*
   Built successfully, BB_NO_NETWORK="1"

Sorry for the lengthy explanation, but I thought it worth it
to document the confusing situation I encountered.  I'm sure
this could bite my customers who routinely use BB_NO_NETWORK="1"
if I ship them a new recipe + tarball (for any odd recipe, not just
this one).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

