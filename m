Return-Path: <Chris.Carr@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCD59E00873; Mon, 29 Sep 2014 05:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4213 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Sep 2014 05:53:49 PDT
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D52E00869
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 05:53:49 -0700 (PDT)
Received: from pps.filterd (m0048206.ppops.net [127.0.0.1])
	by m0048206.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id
	s8TBekrW039726
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 07:43:35 -0400
Received: from alpmlip10.e2k.ad.ge.com (n165-156-000-000.static.ge.com
	[165.156.5.1] (may be forged))
	by m0048206.ppops.net-00176a03. with ESMTP id 1pq666r105-22
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 07:43:35 -0400
Received: from unknown (HELO ALPMBHT02.e2k.ad.ge.com) ([3.159.19.195])
	by alpmlip10.e2k.ad.ge.com with ESMTP/TLS/AES128-SHA;
	29 Sep 2014 07:38:48 -0400
Received: from CINMBAPD02.e2k.ad.ge.com (3.159.212.68) by
	ALPMBHT02.e2k.ad.ge.com (3.159.19.195) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Mon, 29 Sep 2014 07:43:27 -0400
Received: from [3.26.68.158] (3.159.212.193) by CINMBAPD02.e2k.ad.ge.com
	(3.159.212.68) with Microsoft SMTP Server id 14.3.195.1;
	Mon, 29 Sep 2014 07:43:27 -0400
Message-ID: <542945DD.2010800@ge.com>
Date: Mon, 29 Sep 2014 12:43:25 +0100
From: "Carr, Chris (GE Intelligent Platforms)" <chris.carr@ge.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [3.159.212.193]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.28,
	0.0.0000
	definitions=2014-09-29_02:2014-09-29, 2014-09-29,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=1 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1409290111
Subject: Issues removing RRECOMMENDS packages with BAD_RECOMMENDATIONS
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
X-List-Received-Date: Mon, 29 Sep 2014 12:53:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Hi,

I have successfully built a custom root filesystem, but I'm having issues stopping certain packages from being installed.

Basically the BAD_RECOMMENDATIONS that I have defined is not removing/preventing the installation of the RRECOMMENDS packages. This is using opkg as the package manager.

I am using:

BAD_RECOMMENDATIONS=" \
    busybox-udhcpc \
    e2fsprogs-e2fsck \
    udev-hwdb \
    update-rc.d \
    vim-help \
    vim-syntax \
    vim-tutor \
    "

All of which are specified as RRECOMMENDS in various recipes.

The BAD_RECOMMENDATIONS all seem to write the correct entries to the /var/lib/opkg/status file (desinstall hold not-installed), which I've confirmed with some debug in the package_manager.py. However when the packages are being installed in the rootfs stage, then only a couple of them are processed and ignored.

The strange thing is, that depending on the verbosity of the opkg-cl command, the number of packages successfully processed changes. The higher the verbosity the more packages from BAD_RECOMMENDATIONS are processed.

I include the output of the rootfs creation below, with the "ignoring recommendation" lines pulled out.

I believe that I am using BAD_RECOMMENDATIONS correctly, I just cannot see what is going wrong.
I've tried with the a newer version of opkg (0.2.3) but that showed the same issues.

Thanks for any help

Chris Carr


-------------------------------

-bash-4.2$ /srv/nfs/chris/owc_up/poky/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -v
opkg version 0.2.2

Default Run:

NOTE: /srv/nfs/chris/owc_up/poky/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -f /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/opkg.conf -o /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version   install opkg-collateral packagegroup-owc-system packagegroup-owc-boot packagegroup-owc-net opkg packagegroup-owc-ruby

vim: ignoring recommendation for vim-syntax at user request
systemd: ignoring recommendation for e2fsprogs-e2fsck at user request

Debug V1:

NOTE: /srv/nfs/chris/owc_up/poky/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -V1 -f /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/opkg.conf -o /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version   install opkg-collateral packagegroup-owc-system packagegroup-owc-boot packagegroup-owc-net opkg packagegroup-owc-ruby

vim: ignoring recommendation for vim-syntax at user request
systemd: ignoring recommendation for e2fsprogs-e2fsck at user request

Debug V2:

NOTE: /srv/nfs/chris/owc_up/poky/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -V2 -f /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/opkg.conf -o /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version   install opkg-collateral packagegroup-owc-system packagegroup-owc-boot packagegroup-owc-net opkg packagegroup-owc-ruby

vim: ignoring recommendation for vim-syntax at user request
systemd: ignoring recommendation for udev-hwdb at user request
systemd: ignoring recommendation for e2fsprogs-e2fsck at user request

Debug V3:

NOTE: /srv/nfs/chris/owc_up/poky/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -V3 -f /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/opkg.conf -o /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version   install opkg-collateral packagegroup-owc-system packagegroup-owc-boot packagegroup-owc-net opkg packagegroup-owc-ruby

vim: ignoring recommendation for vim-help at user request
vim: ignoring recommendation for vim-syntax at user request
vim: ignoring recommendation for vim-tutor at user request
rsyslog: ignoring recommendation for update-rc.d at user request
busybox: ignoring recommendation for update-rc.d at user request
busybox: ignoring recommendation for busybox-udhcpc at user request
dbus-1: ignoring recommendation for update-rc.d at user request
systemd: ignoring recommendation for update-rc.d at user request
systemd: ignoring recommendation for udev-hwdb at user request
systemd: ignoring recommendation for e2fsprogs-e2fsck at user request
run-postinsts: ignoring recommendation for update-rc.d at user request
ntp: ignoring recommendation for update-rc.d at user request
quagga: ignoring recommendation for update-rc.d at user request
dropbear: ignoring recommendation for update-rc.d at user request
rarpd: ignoring recommendation for update-rc.d at user request

Debug V4:

NOTE: /srv/nfs/chris/owc_up/poky/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -V4 -f /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/opkg.conf -o /srv/nfs/chris/owc_up/poky/build/tmp/work/da923rc-owc_cc-linux-gnuspe/openware-core/1.0-r0/rootfs --force_postinstall --prefer-arch-to-version   install opkg-collateral packagegroup-owc-system packagegroup-owc-boot packagegroup-owc-net opkg packagegroup-owc-ruby

vim: ignoring recommendation for vim-help at user request
vim: ignoring recommendation for vim-syntax at user request
vim: ignoring recommendation for vim-tutor at user request
rsyslog: ignoring recommendation for update-rc.d at user request
busybox: ignoring recommendation for update-rc.d at user request
busybox: ignoring recommendation for busybox-udhcpc at user request
dbus-1: ignoring recommendation for update-rc.d at user request
systemd: ignoring recommendation for update-rc.d at user request
systemd: ignoring recommendation for udev-hwdb at user request
systemd: ignoring recommendation for e2fsprogs-e2fsck at user request
run-postinsts: ignoring recommendation for update-rc.d at user request
ntp: ignoring recommendation for update-rc.d at user request
quagga: ignoring recommendation for update-rc.d at user request
dropbear: ignoring recommendation for update-rc.d at user request
rarpd: ignoring recommendation for update-rc.d at user request



