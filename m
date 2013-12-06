Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE668E00799
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 07:07:45 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E5427F811FA; Fri,  6 Dec 2013 08:07:43 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7081EF811F9;
	Fri,  6 Dec 2013 08:07:40 -0700 (MST)
Message-ID: <52A1E867.40604@mlbassoc.com>
Date: Fri, 06 Dec 2013 08:08:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Dealing with new git fetcher
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
X-List-Received-Date: Fri, 06 Dec 2013 15:07:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The 'git' fetcher was recently changed to expect/need the branch
name for the desired revision.  Many recipes don't have this and
the revision is not on the master branch, hence leading to errors
like this:
   ERROR: Fetcher failure: Unable to find revision f89bc066db0569008418fac1a0408a9a57f2232f in branch master even from upstream
   ERROR: Function failed: Fetcher failure for URL: 'git://github.com/boundarydevices/u-boot-imx6.git'. Unable to fetch URL from any source.
   ERROR: Logfile of failure stored in: /local/imx6_new/tmp/work/sabrelite-amltd-linux-gnueabi/u-boot-script-boundary/v2013.01+gitAUTOINC+f89bc066db-r0/temp/log.do_fetch.25272
   ERROR: Task 144 (/local/poky-multi/meta-fsl-arm-extra/recipes-bsp/u-boot/u-boot-script-boundary_git.bb, do_fetch) failed with exit code '1'

So the problem becomes how to identify the branch?  In the case
above, I have a checked out copy of this repository and when I
try to find the branch, I come up empty:
   $ git branch --contains f89bc066db0569008418fac1a0408a9a57f2232f
   $ git log f89bc066db0569008418fac1a0408a9a57f2232f
   commit f89bc066db0569008418fac1a0408a9a57f2232f
   Author: Eric Nelson <eric.nelson@boundarydevices.com>
   Date:   Mon Aug 26 17:36:35 2013 -0700
       i.MX6: nitrogen6x: Add Yocto boot script

So I see that the commit is present, but when I ask what branch, I
get nothing...

Any ideas how to proceed?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

