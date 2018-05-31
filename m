Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEEE6E00C4B; Thu, 31 May 2018 04:00:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
	[217.26.49.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80D08E009BC
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 04:00:49 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout013.mail.hostpoint.ch with esmtp (Exim 4.91 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1fOLJz-000PF6-El; Thu, 31 May 2018 13:00:43 +0200
Received: from [2a02:168:68a9:1:550e:baed:c73:76b2]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.91 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1fOLJz-000Ik2-Ah; Thu, 31 May 2018 13:00:43 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <783ff7cd-c1d8-1802-4b67-3aff339aae31@smart-home-technology.ch>
Date: Thu, 31 May 2018 13:00:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
Subject: cgroups and iptables problems running docker - maybe my config wrong?
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
X-List-Received-Date: Thu, 31 May 2018 11:00:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-DE

Hello,
I ran into trouble running docker on our target.
1. When I want to start docker, I first have to re-mount cgroups:
root@target:~# cgroups-umount
root@target:~# cgroups-mount
Otherwise docker would produce an error:
ERRO[0002] Failed to built-in GetDriver graph btrfs /var/lib/docker

2. When I then start dockerd, it complains about a missing nat table:
root@target:~# dockerd
INFO[0000] libcontainerd: new containerd process, pid: 929
WARN[0000] containerd: low RLIMIT_NOFILE changing to max current=1024 
max=4096
INFO[0001] [graphdriver] using prior storage driver: overlay2
INFO[0001] Graph migration to content-addressability took 0.00 seconds
WARN[0001] Your kernel does not support cgroup memory limit
WARN[0001] Unable to find cpu cgroup in mounts
WARN[0001] Unable to find blkio cgroup in mounts
WARN[0001] Unable to find cpuset cgroup in mounts
WARN[0001] mountpoint for pids not found
INFO[0001] Loading containers: start.
WARN[0001] Running modprobe nf_nat failed with message: `modprobe: 
WARNING: Module nf_nat not found in directory 
/lib/modules/4.9.81-dey+g2c6ae4c`, error: exit status 1
WARN[0001] Running modprobe xt_conntrack failed with message: `modprobe: 
WARNING: Module xt_conntrack not found in directory 
/lib/modules/4.9.81-dey+g2c6ae4c`, error: exit status 1
Error starting daemon: Error initializing network controller: error 
obtaining controller instance: failed to create NAT chain: iptables 
failed: iptables --wait -t nat -N DOCKER: iptables v1.6.1: can't 
initialize iptables table `nat': Table does not exist (do you need to 
insmod?)
Perhaps iptables or your kernel needs to be upgraded.
  (exit status 3)

Our configuration is as suggested here: 
https://wiki.yoctoproject.org/wiki/TipsAndTricks/DockerOnImage, except 
that I don't include the system systemd stuff  (it lets my build fail) 
and connman (using NetworkManager).
Furthermore, I added the following lines to the kernel bbappend file:

# remove old defconfig
SRC_URI_remove = " defconfig"
# replace with new defconfig
SRC_URI_append = " file://defconfig"

KERNEL_FEATURES_append = " features/cgroups/cgroups.scc "

I also added a lot of configurations manually to the defconfig (mostly 
via menuconfig) to enable NAT:

CONFIG_CGROUP_DEVICE=y
CONFIG_IP_MULTICAST=y
CONFIG_IP_ADVANCED_ROUTER=y
CONFIG_NETFILTER=y
CONFIG_NF_CONNTRACK=y
CONFIG_NF_TABLES=y
CONFIG_NF_NAT=y
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=y
CONFIG_NETFILTER_XT_MATCH_COMMENT=y
CONFIG_NETFILTER_XT_MATCH_HL=y
CONFIG_NETFILTER_XT_MATCH_IPRANGE=y
CONFIG_NETFILTER_XT_MATCH_LIMIT=y
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=y
CONFIG_NETFILTER_XT_MATCH_RECENT=y
CONFIG_IP_VS=y
CONFIG_NF_TABLES_IPV4=y
CONFIG_IP_NF_IPTABLES=y
CONFIG_IP_NF_NAT=y
CONFIG_IP_NF_FILTER=y
CONFIG_IP_NF_MANGLE=y
CONFIG_IP6_NF_IPTABLES=y
CONFIG_IP6_NF_FILTER=y
CONFIG_IP6_NF_MANGLE=y
CONFIG_BTRFS_FS=y
CONFIG_OVERLAY_FS=y

Apart from that, I added virtualization and aufs as DISTRO_FEATURE in 
local.conf and also enabled it in menuconfig.

But I still keep getting the above mentioned iptables error when trying 
to start docker. All this hassle makes me suspicious, especially as I'm 
quite sure that I once had docker running already with an image on our 
target and it wasn't that hard. So maybe it's just a misconfiguration 
and I need to add something in local.conf or the kernel recipe? Is 
systemd necessary? Or am I missing some life-or-death kernel 
configuration? It would also be nice if I could avoid the cgroup 
re-mounting before starting docker.

Thanks for every answer!
All the Best,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


