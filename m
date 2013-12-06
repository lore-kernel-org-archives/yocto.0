Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4559DE00799
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 07:17:49 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A1FC3F811FA; Fri,  6 Dec 2013 08:17:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AF810F811F9;
	Fri,  6 Dec 2013 08:17:48 -0700 (MST)
Message-ID: <52A1EAC7.6080803@mlbassoc.com>
Date: Fri, 06 Dec 2013 08:18:31 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <52A1E867.40604@mlbassoc.com>
	<CABcZANmvO-f5MVmHcHUWvEoD4sz5vziJcvVCX-XVM3uvefrf4Q@mail.gmail.com>
In-Reply-To: <CABcZANmvO-f5MVmHcHUWvEoD4sz5vziJcvVCX-XVM3uvefrf4Q@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Dealing with new git fetcher
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
X-List-Received-Date: Fri, 06 Dec 2013 15:17:50 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-06 08:15, Chris Larson wrote:
>
> On Fri, Dec 6, 2013 at 8:08 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     The 'git' fetcher was recently changed to expect/need the branch
>     name for the desired revision.  Many recipes don't have this and
>     the revision is not on the master branch, hence leading to errors
>     like this:
>        ERROR: Fetcher failure: Unable to find revision f89bc066db0569008418fac1a0408a__9a57f2232f in branch master even from upstream
>        ERROR: Function failed: Fetcher failure for URL: 'git://github.com/__boundarydevices/u-boot-imx6.__git <http://github.com/boundarydevices/u-boot-imx6.git>'. Unable to fetch
>     URL from any source.
>        ERROR: Logfile of failure stored in:
>     /local/imx6_new/tmp/work/__sabrelite-amltd-linux-gnueabi/__u-boot-script-boundary/v2013.__01+gitAUTOINC+f89bc066db-r0/__temp/log.do_fetch.25272
>        ERROR: Task 144 (/local/poky-multi/meta-fsl-__arm-extra/recipes-bsp/u-boot/u__-boot-script-boundary_git.bb <http://u-boot-script-boundary_git.bb>, do_fetch) failed with exit
>     code '1'
>
>     So the problem becomes how to identify the branch?  In the case
>     above, I have a checked out copy of this repository and when I
>     try to find the branch, I come up empty:
>        $ git branch --contains f89bc066db0569008418fac1a0408a__9a57f2232f
>        $ git log f89bc066db0569008418fac1a0408a__9a57f2232f
>        commit f89bc066db0569008418fac1a0408a__9a57f2232f
>        Author: Eric Nelson <eric.nelson@boundarydevices.__com <mailto:eric.nelson@boundarydevices.com>>
>        Date:   Mon Aug 26 17:36:35 2013 -0700
>            i.MX6: nitrogen6x: Add Yocto boot script
>
>     So I see that the commit is present, but when I ask what branch, I
>     get nothing...
>
>
> You asked git only about local branches.
>
> $ git branch -a --contains f89bc066db0569008418fac1a0408a9a57f2232f
>    remotes/origin/production-before-20131107

Perfect (I should have known!)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

