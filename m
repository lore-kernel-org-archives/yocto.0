Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EDECE00922; Fri, 27 Mar 2015 10:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8599E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 09:59:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BBAACF811D7; Fri, 27 Mar 2015 10:59:55 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1B3E6F811D7;
	Fri, 27 Mar 2015 10:59:55 -0600 (MDT)
Message-ID: <55158C90.6090001@mlbassoc.com>
Date: Fri, 27 Mar 2015 11:00:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Question about BB_NO_NETWORK
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
X-List-Received-Date: Fri, 27 Mar 2015 17:00:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Can someone explain to me why this recipe (from meta-fsl-arm-extra)
requires network access if I have a current (built today on a different
machine) git tarball of the repository?

The error I get is:

    ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c 
core.fsyncobjectfiles=0 fetch -f --prune git://github.com/boundarydevices/u-boot-imx6.git refs/*:refs/* (for url 
git://github.com/boundarydevices/u-boot-imx6.git;branch=v2014.07-20140914)
    ERROR: Logfile of failure stored in: /local/imx6_2015-03-27/tmp/work/nitrogen6x-amltd-linux-gnueabi/u-boot-script-boundary/v2014.07+gitAUTOINC+fcb04d6103-r0/temp/log.do_fetch.22945
    Log data follows:
    | DEBUG: Executing python function do_fetch
    | DEBUG: Executing python function base_do_fetch
    | DEBUG: Trying Upstream
    | DEBUG: Running export 
PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; 
export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 branch --contains fcb04d6103e2a1f62d3ae197432559aee5621765 --list v2014.07-20140914 2> /dev/null | wc -l
    | DEBUG: Running export 
PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; 
export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 remote rm origin
    | DEBUG: Running export 
PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"; 
export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 remote add --mirror=fetch origin git://github.com/boundarydevices/u-boot-imx6.git
    | DEBUG: Python function base_do_fetch finished
    | DEBUG: Python function do_fetch finished
    | ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c 
core.fsyncobjectfiles=0 fetch -f --prune git://github.com/boundarydevices/u-boot-imx6.git refs/*:refs/* (for url 
git://github.com/boundarydevices/u-boot-imx6.git;branch=v2014.07-20140914)
    ERROR: Task 111 (/local/poky-cutting-edge/meta-fsl-arm-extra/recipes-bsp/u-boot/u-boot-script-boundary_git.bb, do_fetch) failed with exit code '1'

The git tarball and full log are at http://www.mlbassoc.com/poky

Is this a BUG?  I'm using these layers:
   meta              = "master:5c76cebc24675edb3dff473fce9b67cedff615db"
   meta-fsl-arm      = "master:115aaced72fddc23024f8838f0eeb8ad5e37d048"
   meta-fsl-arm-extra = "master:22f6672c3ef58bf5070d0c6894a459fada66f55e"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

