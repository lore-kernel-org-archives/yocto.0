Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2595FE0059B
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 05:55:12 -0800 (PST)
Received: from [172.16.140.120] (172.16.140.120) by SESTOEX03.enea.se
	(172.21.1.38) with Microsoft SMTP Server (TLS) id 14.2.247.3;
	Thu, 2 Feb 2012 14:54:59 +0100
Message-ID: <4F2A95B2.1030403@enea.com>
Date: Thu, 2 Feb 2012 14:54:58 +0100
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [172.16.140.120]
Subject: pkg-manager assembly of rootfs via meta-toolchain tarball tools.
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
X-List-Received-Date: Thu, 02 Feb 2012 13:55:13 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to assemble a functioning rootfs by using the pre-built ipk 
tarballs and the toolchain tarball.
Below commands installs the correct packages, but produces a 
non-functional rootfs, probably since the
post-install hooks does not seem to be executed with an offline 
'install'. Also, as expected, the /dev directory is left unpopulated.

 >bitbake meta-toolchain
 >sudo chmod 777 /opt
 >tar jxvf poky-eglibc-x86_64-ppce500mc-toolchain-1.1.tar.bz2 
--delay-directory-restore -C /
 >source /opt/poky/1.1/environment-setup-ppce500mc-poky-linux
 >mkdir -p /tmp/rootfs/var/lib/opkg
 >opkg-cl -f /opt/poky/1.1/sysroots/ppce500mc-poky-linux/etc/opkg.conf 
--offline-root /tmp/rootfs update
 >opkg-cl -f /opt/poky/1.1/sysroots/ppce500mc-poky-linux/etc/opkg.conf 
--offline-root /tmp/rootfs install task-core-boot

--force-postinstall will try to run them, but without success since most 
scripts are reference the root directory. And I can't find an easy way 
to tell opkg to run post-install scripts with a path prefix.
I'm guessing I need a fakechroot jail for this to work. But I would 
prefer to use stuff already in the tarball.

Can I use pseudo for this ? Are there any more documentation on 
practical usage of pseudo, other than that in the README in pseudo:s GIT 
repo.

There seems to be a lack of documentation on the features and other neat 
stuff you can do 'offline' with the meta-toolchain tarball, perhaps we 
should open a page on the wiki detailing some of this stuff. Or perhaps 
this is already documented elsewhere ?

Best Regards,
David



