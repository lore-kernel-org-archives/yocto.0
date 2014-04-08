Return-Path: <SRS0=0YJyQI=ZI=xstreamworship.com=darcy@yourhostingaccount.com>
Received: from mailout05.yourhostingaccount.com
	(mailout05.yourhostingaccount.com [65.254.254.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BFE1E00C46
	for <yocto@yoctoproject.org>; Mon,  7 Apr 2014 22:21:47 -0700 (PDT)
Received: from mailscan22.yourhostingaccount.com ([10.1.15.22]
	helo=mailscan22.yourhostingaccount.com)
	by mailout05.yourhostingaccount.com with esmtp (Exim)
	id 1WXOTh-0004As-KH
	for yocto@yoctoproject.org; Tue, 08 Apr 2014 01:21:45 -0400
Received: from impout02.yourhostingaccount.com ([10.1.55.2]
	helo=impout02.yourhostingaccount.com)
	by mailscan22.yourhostingaccount.com with esmtp (Exim)
	id 1WXOTh-0001Zk-SR; Tue, 08 Apr 2014 01:21:45 -0400
Received: from walauthsmtp12.yourhostingaccount.com ([10.1.18.12])
	by impout02.yourhostingaccount.com with NO UCE
	id nHMl1n00Q0FdXoS01HMllL; Tue, 08 Apr 2014 01:21:45 -0400
X-EN-OrigOutIP: 10.1.18.12
X-EN-IMPSID: nHMl1n00Q0FdXoS01HMllL
Received: from [70.68.129.247] (port=55354 helo=[192.168.25.11])
	by walauthsmtp12.yourhostingaccount.com with esmtpa (Exim)
	id 1WXOTh-0000hr-FE; Tue, 08 Apr 2014 01:21:45 -0400
Message-ID: <1396934499.19057.43.camel@stabb>
From: Darcy Watkins <darcy@xstreamworship.com>
To: yocto@yoctoproject.org
Date: Mon, 07 Apr 2014 22:21:39 -0700
In-Reply-To: <1396918944.19057.21.camel@stabb>
References: <1396918944.19057.21.camel@stabb>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
X-EN-UserInfo: 9718c98d0dcf33dd6a452bac2a172d62:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dwatkins@pop.powweb.com
Sender: Darcy Watkins <darcy@xstreamworship.com>
X-EN-OrigIP: 70.68.129.247
X-EN-OrigHost: unknown
Subject: Re: Ext3 rootfs Corrupted during do_rootfs
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
X-List-Received-Date: Tue, 08 Apr 2014 05:21:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-04-07 at 18:02 -0700, Darcy Watkins wrote:
> Hello,
> 
> I think I may have encountered the same issue as reported originally on
> the meta freescale list...
> https://lists.yoctoproject.org/pipermail/meta-freescale/2014-February/006928.html
> ...and...
> https://lists.yoctoproject.org/pipermail/meta-freescale/2014-February/007086.html
--snip!--

Found a workaround!  I set the IMAGE_ROOTFS_EXTRA_SPACE to a nice 128M
margin and got everything working OK.

So it would appear that the rootfs size estimation algorithm
underestimates the needed size.  Perhaps using 'du' on the build host
results in variances between how it lays out on the host versus the
filesystem being constructed for the target.

The algorithm includes a margin for error, so we run into trouble when
the variances accumulate to exceed this margin.

Perhaps worse than any of this is that the populate-extfs.sh script
didn't catch the failures to exit with an error code (i.e. to break the
build rather than leave a corrupt rootfs).

Hopefully this info helps.

I have observed symptoms of the filesystem corrupted this way as any of:
 - kernel boots but unable to complete init because things are missing
 - numerous error messages about commands missing during startup
 - a seemingly random file at a path that should be a directory
 - files in wrong location, usually closer to the root directory
 - broken symlinks
 - commands / programs / libraries missing



-- 

Regards,

Darcy

http://xstreamworship.com
[P1]


