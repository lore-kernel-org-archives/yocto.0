Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22A4EE00DEE; Wed, 14 Aug 2019 20:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10EA1E00DE2
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 20:23:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7F3NspC006115
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Aug 2019 20:23:54 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 14 Aug 2019 20:23:53 -0700
To: "Tg, Harish" <harish.tg@aptiv.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CY4P197MB0038F07389371519B604F466FBD20@CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <1314ed5d-faea-e484-420d-600e8dd65096@windriver.com>
Date: Wed, 14 Aug 2019 23:23:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CY4P197MB0038F07389371519B604F466FBD20@CY4P197MB0038.NAMP197.PROD.OUTLOOK.COM>
X-Originating-IP: [172.25.44.5]
Subject: Re: please help on compiling my kernel
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
X-List-Received-Date: Thu, 15 Aug 2019 03:23:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 8/13/19 5:59 AM, Tg, Harish wrote:
> Hi Guys,
> 
>                   I am facing a strange issue which was 
> working/compiling earlier. I did a clean and retried. Now I am getting 
> this error with the command “bitbake -c compile -f linux-ti-staging”:
> 
> WARNING: linux-ti-staging-4.4.45+gitAUTOINC+89944627d5-r1a.arago5 
> do_fetch: Failed to fetch URL 
> git://git.omapzoom.org/kernel/omap;protocol=git;branch=p-ti-lsk-linux-4.4.y-next, 
> attempting MIRRORS if available
> 
> ERROR: linux-ti-staging-4.4.45+gitAUTOINC+89944627d5-r1a.arago5 
> do_fetch: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> fatal: Not a git repository (or any parent up to mount point /mnt/yocto)
> 
> Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
> 
> ERROR: linux-ti-staging-4.4.45+gitAUTOINC+89944627d5-r1a.arago5 
> do_fetch: Function failed: Fetcher failure for URL: 
> 'git://git.omapzoom.org/kernel/omap;protocol=git;branch=p-ti-lsk-linux-4.4.y-next'. 
> Unable to fetch URL from any source.
> 
> ERROR: Logfile of failure stored in: 
> /mnt/yocto/yocto_repo/build/arago-tmp-external-linaro-toolchain/work/delphi_jlr_isp_proto-linux-gnueabi/linux-ti-staging/4.4.45+gitAUTOINC+89944627d5-r1a.arago5/temp/log.do_fetch.102021
> 
> ERROR: Task 2 
> (/mnt/yocto/yocto_repo/sources/meta-ti/recipes-kernel/linux/linux-ti-staging_4.4.bb, 
> do_fetch) failed with exit code '1'
> 
> Kindly help with this. Thanks.


Likely the server was just down for a while.

Both the web site:
    http://git.omapzoom.org/?p=kernel/omap.git;a=summary
and:
$ git clone -b p-ti-lsk-linux-4.4.y-next 
git://git.omapzoom.org/kernel/omap.git omap.git
Cloning into 'omap.git'...
remote: Counting objects: 6410683, done.
remote: Compressing objects: 100% (1028266/1028266), done.
Receiving objects: 100% (6410683/6410683), 1.54 GiB | 2.62 MiB/s, done.
remote: Total 6410683 (delta 5337468), reused 6409647 (delta 5336439)
Resolving deltas: 100% (5337468/5337468), done.
Checking out files: 100% (52679/52679), done.
rmacleod@ala-lpggp2$echo $?
0

work for me now.

Do you have a firewall blocking your internet access?
I don't have this problems thankfully but if you do, it looks
like there are some good recommendations here:
 
https://stackoverflow.com/questions/4891527/git-protocol-blocked-by-company-how-can-i-get-around-that

Of course you should abide by your corporate download policies.
Oh and some vendors provide full copies of all source when you install
their Yocto-based products.

../Randy

> 
> Regards,
> 
> Harish.
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

