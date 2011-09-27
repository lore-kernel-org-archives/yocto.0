Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 127DEE004E9
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 18:15:06 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Tue, 27 Sep 2011 09:15:00 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Tue, 27 Sep 2011
	09:14:59 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Tue, 27 Sep 2011 09:14:24 +0800
In-Reply-To: <CAEsOVNcz6xXAJkx7YJ0DcEr2LCxQASk6TB0bsaxxVciKvqvunw@mail.gmail.com>
References: <1316656573.17177.66.camel@localhost.localdomain>
	<CAEsOVNc2uOTzhxqbh4VzopYVC0-iUPBccXfNb3ey5wKZFA_VZQ@mail.gmail.com>
	<1316668170.17177.72.camel@localhost.localdomain>
	<1316740588.17177.76.camel@localhost.localdomain>
	<CAEsOVNeZK0+-KKovDG46TPnUj8GQPpRuJ+5PDzspWXbPv5KN2w@mail.gmail.com>
	<1316749868.17177.86.camel@localhost.localdomain>
	<1316750116.17177.89.camel@localhost.localdomain>
	<1316767728.6536.0.camel@localhost.localdomain>
	<CAEsOVNf5VNoxAGwwZG7yQzmNe6KY5=YZAm-dWy6QQaH3s6Qb4Q@mail.gmail.com>
	<1317001285.6536.21.camel@localhost.localdomain>
	<1317001520.6536.24.camel@localhost.localdomain>
	<1317005861.6536.35.camel@localhost.localdomain>
	<1317013437.6536.37.camel@localhost.localdomain>
	<CAEsOVNeTEH3zXjhF_UjQg3PdNKXNpjJ+hujLN=uML707EHeUdQ@mail.gmail.com>
	<CAEsOVNcz6xXAJkx7YJ0DcEr2LCxQASk6TB0bsaxxVciKvqvunw@mail.gmail.com>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1317086064.6536.45.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rootfs-ramdisk error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Sep 2011 01:15:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

maybe not only similar, but same:)

curious, the issue disappeared, what I can remeber is reconfigured the
busybox.
maybe another thing is rebuilded all.

before that, I have added debug code in udhcpc's script, and found that:
mkdir /etc/AAAAA  will fail
but
cd /etc
mkdir ./AAAAA will success.
maybe that is a clue, but I can't reproduce the problem.:(

the IMAGE_ROOTFS_SIZE is 16M, only used about 11M.
I have looked the source code of the poky, it will use the bigger one in
(ROOTFS_SIZE and 1.3 * real_size) by default.

On Tue, 2011-09-27 at 06:22 +0800, McClintock Matthew-B29882 wrote:
> 2011/9/26 Matthew McClintock <msm@freescale.com>:
> > Have you checked your rootfs itself to see how much free space is
> > left? You could mount it in loopback on your build machine to check.
> >
> > There are some vars within poky that determine the rootfs size, grep
> > for IMAGE_ROOTFS_SIZE.
> 
> I'm actually seeing a similiar issue at the moment:
> 
> Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such
> file or directory
> bootlogd.
> tar: can't open '/etc/dev.tar': No space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 52: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache: No
> space left on device
> /etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache: No
> space left on device
> Configuring network interfaces... ADDRCONF(NETDEV_UP): eth0: link is not ready
> udhcpc (v1.18.5) started
> Sending discover...
> Sending discover...
> Sending discover...
> No lease, failing
> done.
> INIT: Entering runlevel: 5postin
> 
> 
> -M

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



