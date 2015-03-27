Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D1DAE00922; Fri, 27 Mar 2015 10:19:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03B5E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 10:19:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2RHJbpN011576; Fri, 27 Mar 2015 17:19:37 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id RaXpe5N7P1vS; Fri, 27 Mar 2015 17:19:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2RHJLF6011562
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 27 Mar 2015 17:19:33 GMT
Message-ID: <1427476761.14020.197.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 27 Mar 2015 17:19:21 +0000
In-Reply-To: <55158ED4.3090504@mlbassoc.com>
References: <55158C90.6090001@mlbassoc.com> <55158ED4.3090504@mlbassoc.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 27 Mar 2015 17:19:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2015-03-27 at 11:09 -0600, Gary Thomas wrote:
> On 2015-03-27 11:00, Gary Thomas wrote:
> > Can someone explain to me why this recipe (from meta-fsl-arm-extra)
> > requires network access if I have a current (built today on a different
> > machine) git tarball of the repository?
> 
> Oops, forgot the recipe:
> 
> >
> > The error I get is:
> >
> >     ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c
> > core.fsyncobjectfiles=0 fetch -f --prune git://github.com/boundarydevices/u-boot-imx6.git refs/*:refs/* (for url
> > git://github.com/boundarydevices/u-boot-imx6.git;branch=v2014.07-20140914)
> >     ERROR: Logfile of failure stored in:
> > /local/imx6_2015-03-27/tmp/work/nitrogen6x-amltd-linux-gnueabi/u-boot-script-boundary/v2014.07+gitAUTOINC+fcb04d6103-r0/temp/log.do_fetch.22945
> >     Log data follows:
> >     | DEBUG: Executing python function do_fetch
> >     | DEBUG: Executing python function base_do_fetch
> >     | DEBUG: Trying Upstream
> >     | DEBUG: Running export
> > PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games";
> > export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 branch --contains fcb04d6103e2a1f62d3ae197432559aee5621765 --list v2014.07-20140914 2> /dev/null | wc -l
> >     | DEBUG: Running export
> > PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games";
> > export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 remote rm origin
> >     | DEBUG: Running export
> > PATH="/local/poky-cutting-edge/scripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin/arm-amltd-linux-gnueabi:/local/imx6_2015-03-27/tmp/sysroots/nitrogen6x/usr/bin/crossscripts:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/usr/bin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/sbin:/local/imx6_2015-03-27/tmp/sysroots/i686-linux/bin:/local/poky-cutting-edge/scripts:/local/poky-cutting-edge/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games";
> > export HOME="/home/gthomas"; git -c core.fsyncobjectfiles=0 remote add --mirror=fetch origin git://github.com/boundarydevices/u-boot-imx6.git
> >     | DEBUG: Python function base_do_fetch finished
> >     | DEBUG: Python function do_fetch finished
> >     | ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c
> > core.fsyncobjectfiles=0 fetch -f --prune git://github.com/boundarydevices/u-boot-imx6.git refs/*:refs/* (for url
> > git://github.com/boundarydevices/u-boot-imx6.git;branch=v2014.07-20140914)
> >     ERROR: Task 111 (/local/poky-cutting-edge/meta-fsl-arm-extra/recipes-bsp/u-boot/u-boot-script-boundary_git.bb, do_fetch) failed with exit code '1'
> >
> > The git tarball and full log are at http://www.mlbassoc.com/poky
> >
> > Is this a BUG?  I'm using these layers:
> >    meta              = "master:5c76cebc24675edb3dff473fce9b67cedff615db"
> >    meta-fsl-arm      = "master:115aaced72fddc23024f8838f0eeb8ad5e37d048"
> >    meta-fsl-arm-extra = "master:22f6672c3ef58bf5070d0c6894a459fada66f55e"
> >

Is the specified revision on the specified branch in the tarball?

Cheers,

Richard


