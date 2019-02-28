Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18DD3E00D00; Wed, 27 Feb 2019 16:10:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1C79E00C1B
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 16:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a+PGXf+LulwkKMlzmkoNt+X6Kl2Aay6IXoI5cq3kXkg=;
	b=ZSJSLgn/MPeSDl4imwk7qbK0u+
	IH34EvmUzTF98vCBIdl9UrrsRbxqeyfNjierv1dvPcXrGo5KlX7bd1B7dXk1LiTQ0mw5gmVzXHjuN
	2AjixLCEUO+dUpftmAwdAzHIuGJS5hvuswcinS0VAU6ChGps2juTXDdqwfnJvg+h1FjePyvZMH2dW
	5jYePyOjU8bNy16l5jQEvaAB3J6hMtY98qWReZhWrvP1Mzuc0mWm6kQCxAlMi7aHTY1ouvOjaNqaz
	OLHCLv5ZuVqE8Fhfk8M6EQzC1bp12XN3uPbKBBBvInAh0/uEJuGFLjccsnsL2ORgcRdXmgVW8lZn5
	96Uy1gzg==;
Received: from [213.221.150.139] (port=32906 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gz9H1-005RkJ-1w; Thu, 28 Feb 2019 01:10:04 +0100
To: "Burton, Ross" <ross.burton@intel.com>, Tom Rini <trini@konsulko.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <9de08726-74a5-2b43-3941-15d22316068c@innodelec.ch>
Date: Thu, 28 Feb 2019 01:10:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Thu, 28 Feb 2019 00:10:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Le 28.02.19 à 00:59, Burton, Ross a écrit :
> On Wed, 27 Feb 2019 at 23:55, Tom Rini <trini@konsulko.com> wrote:
>> My current incomplete list is:
>>     bind-utils \
>>     bridge-utils \
>>     coreutils \
>>     dnsmasq \
>>     e2fsprogs \
>>     e2fsprogs-resize2fs \
>>     e2fsprogs-tune2fs \
>>     findutils \
>>     gawk \
>>     grep \
>>     inetutils-ping \
>>     inetutils-ping6 \
>>     inetutils-traceroute \
>>     iproute2 \
>>     less \
>>     net-tools \
>>     parted \
>>     pciutils \
>>     procps \
>>     sed \
>>     util-linux \
>>     vim \
>>     which \
>>
>> And it's also incomplete as there's more stuff under inetutils I don't
>> need (but others may), and I set aside patch/diff/ed and some other
>> stuff I don't need.  And since some of that stuff comes from
>> meta-openembedded, it's indeed really not clear how/where a packagegroup
>> would reside as we need things out of meta-networking.
> That's a good start.  For a oe-core packagegroup I'd suggest dropping
> dnsmasq bridgeutils bindutils to keep it lean. Does that remove
> everything from meta-networking?  Also swap vim for something in core
> obviously.
>
> Ross
>
> Ross

My image recipe look actually like below and require several
meta-openembedded/meta-*. This is not a clean example. The 
packagegroup-core-full-cmdline already provides a chunk of commands but
more are required to look like a modern distribution.

LICENSE = "MIT"

inherit core-image distro_features_check

MACHINE_FEATURES += "acpi"
MACHINE_FEATURES += "apm"
MACHINE_FEATURES += "keyboard"
MACHINE_FEATURES += "pcbios"
MACHINE_FEATURES += "pci"
MACHINE_FEATURES += "rtc"
MACHINE_FEATURES += "screen"
MACHINE_FEATURES += "serial"
MACHINE_FEATURES += "wifi"

REQUIRED_DISTRO_FEATURES = "x11"
DISTRO_FEATURES += "keyboard"
DISTRO_FEATURES += "ldconfig"

IMAGE_FEATURES += "splash"
IMAGE_FEATURES += "x11-base"
IMAGE_FEATURES += "package-management"
IMAGE_FEATURES += "ssh-server-openssh"
IMAGE_FEATURES += "tools-debug"

IMAGE_INSTALL += "python-modules python-misc"
IMAGE_INSTALL += "packagegroup-core-full-cmdline"
IMAGE_INSTALL += "e2fsprogs-mke2fs"
IMAGE_INSTALL += "parted"
IMAGE_INSTALL += "iproute2-ss"
IMAGE_INSTALL += "iproute2-tc"
IMAGE_INSTALL += "iproute2-lnstat"
IMAGE_INSTALL += "iproute2-ifstat"
IMAGE_INSTALL += "iproute2-genl"
IMAGE_INSTALL += "iproute2-rtacct"
IMAGE_INSTALL += "iproute2-nstat"
IMAGE_INSTALL += "iproute2-ss"
IMAGE_INSTALL += "iproute2-tipc"
IMAGE_INSTALL += "kmod"
IMAGE_INSTALL += "wget"
IMAGE_INSTALL += "iputils-ping"
IMAGE_INSTALL += "less"
IMAGE_INSTALL += "vim"
IMAGE_INSTALL += "nano"

IMAGE_INSTALL += "glibc-utils"
IMAGE_INSTALL += "glibc-gconv-cp1252"
IMAGE_INSTALL += "glibc-charmap-cp1252"
IMAGE_INSTALL += "ldd"
IMAGE_INSTALL += "sysstat"
IMAGE_INSTALL += "gettext"
IMAGE_INSTALL += "curl"
IMAGE_INSTALL += "socat"
IMAGE_INSTALL += "htop"
IMAGE_INSTALL += "autossh"

IMAGE_INSTALL += "cronie"
IMAGE_INSTALL += "networkmanager"
IMAGE_INSTALL += "ethtool"
IMAGE_INSTALL += "ntp"
IMAGE_INSTALL += "openssh-sshd"
IMAGE_INSTALL += "rsync"
IMAGE_INSTALL += "git"


