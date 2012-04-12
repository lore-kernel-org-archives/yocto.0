Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3CFE01374
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 07:08:09 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q3CE830O019581
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 12 Apr 2012 16:08:03 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q3CE82t7019578;
	Thu, 12 Apr 2012 16:08:02 +0200
Date: Thu, 12 Apr 2012 16:08:02 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120412140802.GA3176@giant>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F862237.50200@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 14:08:10 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Darren Hart wrote:
> /dev/md0        /build          ext4
> noauto,noatime,nodiratime,commit=6000

A minor detail: 'nodiratime' is a subset of 'noatime', so there is no need to specify both.

> I run on a beast with 12 cores, 48GB of RAM, OS and sources on a G2
> Intel SSD, with two Seagate Barracudas in a RAID0 array for my /build
> partition. I run a headless Ubuntu 11.10 (x86_64) installation running
> the 3.0.0-16-server kernel. I can build core-image-minimal in < 30
> minutes and core-image-sato in < 50 minutes from scratch.

I'm guessing those are rather fast cores? I build on a different type of beast: 64 cores at 2.1GHz and 128 GB ram. The OS is on a single SSD and the build dir (and sources) is on a RAID0 array of Intel 520 SSDs. Kernel is the same ubuntu 3.0.0-16-server as yours.

Yet for all the combined horsepower, I am unable to match your time of 30 minutes for core-image-minimal. I clock in at around 37 minutes for a qemux86-64 build with ipk output:

------
NOTE: Tasks Summary: Attempted 1363 tasks of which 290 didn't need to be rerun and all succeeded.

real    36m32.118s
user    214m39.697s
sys     108m49.152s
------

These numbers also show that my build is running less than 9x realtime, indicating that 80% of my cores sit idle most of the time. This confirms what "ps xf" says during the builds: Only rarely is bitbake running more than a handful tasks at once, even with BB_NUMBER_THREADS at 64. And many of these tasks are in turn running sequential loops on a single core.

I'm hoping to find time soon to look deeper into this issue and suggest remedies. It my distinct feeling that we should be able to build significantly faster on powerful machines.

-- 
Björn

