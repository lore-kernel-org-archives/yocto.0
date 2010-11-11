Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 140414C80FA4
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 23:48:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Nov 2010 21:48:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,181,1288594800"; d="scan'208";a="347327241"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 10 Nov 2010 21:48:04 -0800
Message-ID: <4CDB8393.206@linux.intel.com>
Date: Wed, 10 Nov 2010 21:48:03 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [PULL] Distro Core updates
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
X-List-Received-Date: Thu, 11 Nov 2010 05:48:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard:

Grouping of distro updates along with some changes from Gary and Jiajun.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master


Gary Thomas (2):
   Make /etc/timestamp usage consistent. Also keep timestamp in UTC
   Remove superfluous 'create_etc_timestamp()' function - seems to be a
     duplicate of 'rootfs_update_timestamp()'

Jiajun Xu (1):
   imagetest-qemu: Add sanity test cases for scp/shutdown in target

Qing He (10):
   shared-mime-info: upgrade to version 0.80
   tzdata: upgrade to version 2010o
   curl: upgrade to version 7.21.2
   nfs-utils: upgrade to version 1.2.3
   pciutils: upgrade to version 3.1.7
   iproute2: upgrade to version 2.6.35
   iptables: upgrade to version 1.4.9
   procps: upgrade to version 3.2.8
   libnss-mdns: fix package removal
   insane.bbclass: fix qa_configure and qa_staging

Saul Wold (3):
   base.bbclass/poky.conf: Fix INCOMPATIBLE_LICENSE Whitelist checking
   git: Update recipe for git to include configure options
   iproute2: update LIC_FILES_CHKSUM

  meta/classes/base.bbclass                          |    9 ++-
  meta/classes/image.bbclass                         |   10 +--
  meta/classes/imagetest-qemu.bbclass                |    2 +-
  meta/classes/insane.bbclass                        |    4 +-
  meta/conf/distro/poky.conf                         |    6 +-
  .../configure.patch                                |    0
  .../guess-fix.patch                                |    0
  .../lib-build-fix.patch                            |    0
  .../pcimodules-pciutils.diff                       |    0
  .../{pciutils_3.1.5.bb =pciutils_3.1.7.bb}       |    0
  .../configure-cross.patch                          |    0
  meta/recipes-connectivity/iproute2/iproute2.inc    |    3 +-
  .../{iproute2_2.6.34.bb =iproute2_2.6.35.bb}     |    2 +-
  .../libnss-mdns/libnss-mdns_0.10.bb                |    5 +-
  .../{nfs-utils_1.2.2.bb =nfs-utils_1.2.3.bb}     |    2 +-
  .../initscripts/initscripts-1.0/bootmisc.sh        |    8 +-
  .../initscripts/initscripts-1.0/save-rtc.sh        |    2 +-
  meta/recipes-devtools/git/git.inc                  |    6 +-
  meta/recipes-devtools/git/git_1.7.2.1.bb           |    7 ++-
  .../{iptables_1.4.8.bb =iptables_1.4.9.bb}       |    0
  .../{procps-3.2.7 =procps-3.2.8}/install.patch   |    0
  .../linux-limits.patch                             |    0
  .../pagesz-not-constant.patch                      |    0
  .../procmodule.patch                               |    0
  .../{procps-3.2.7 =procps-3.2.8}/procps.init     |    0
  .../{procps-3.2.7 =procps-3.2.8}/psmodule.patch  |    0
  .../{procps-3.2.7 =procps-3.2.8}/sysctl.conf     |    0
  meta/recipes-extended/procps/procps.inc            |    8 ++-
  .../procps/{procps_3.2.7.bb =procps_3.2.8.bb}    |    8 +-
  .../tzdata/{tzdata_2010j.bb =tzdata_2010o.bb}    |    2 +-
  .../curl/{curl_7.21.0.bb =curl_7.21.2.bb}        |    0
  .../shared-mime-info/shared-mime-info.inc          |    1 -
  ...-mime-info_0.71.bb =shared-mime-info_0.80.bb} |    1 +
  scripts/qemuimage-testlib                          |    4 +-
  scripts/qemuimage-tests/sanity/boot                |    2 +-
  scripts/qemuimage-tests/sanity/dmesg               |    2 +-
  scripts/qemuimage-tests/sanity/scp                 |   71 
++++++++++++++++++++
  scripts/qemuimage-tests/sanity/shutdown            |   70 
+++++++++++++++++++
  scripts/qemuimage-tests/sanity/ssh                 |    2 +-
  .../scenario/qemuarm/poky-image-sato               |    2 +
  .../scenario/qemuarm/poky-image-sdk                |    2 +
  .../scenario/qemumips/poky-image-sato              |    2 +
  .../scenario/qemumips/poky-image-sdk               |    2 +
  .../scenario/qemuppc/poky-image-sato               |    2 +
  .../scenario/qemuppc/poky-image-sdk                |    2 +
  .../scenario/qemux86-64/poky-image-minimal         |    1 +
  .../scenario/qemux86-64/poky-image-sato            |    5 ++
  .../scenario/qemux86-64/poky-image-sdk             |    5 ++
  .../scenario/qemux86/poky-image-sato               |    2 +
  .../scenario/qemux86/poky-image-sdk                |    2 +
  50 files changed, 222 insertions(+), 42 deletions(-)
  rename meta/recipes-bsp/pciutils/{pciutils-3.1.5 
=pciutils-3.1.7}/configure.patch (100%)
  rename meta/recipes-bsp/pciutils/{pciutils-3.1.5 
=pciutils-3.1.7}/guess-fix.patch (100%)
  rename meta/recipes-bsp/pciutils/{pciutils-3.1.5 
=pciutils-3.1.7}/lib-build-fix.patch (100%)
  rename meta/recipes-bsp/pciutils/{pciutils-3.1.5 
=pciutils-3.1.7}/pcimodules-pciutils.diff (100%)
  rename meta/recipes-bsp/pciutils/{pciutils_3.1.5.bb 
=pciutils_3.1.7.bb} (100%)
  rename meta/recipes-connectivity/iproute2/{iproute2-2.6.34 
=iproute2-2.6.35}/configure-cross.patch (10
0%)
  rename meta/recipes-connectivity/iproute2/{iproute2_2.6.34.bb 
=iproute2_2.6.35.bb} (92%)
  rename meta/recipes-connectivity/nfs-utils/{nfs-utils_1.2.2.bb 
=nfs-utils_1.2.3.bb} (99%)
  rename meta/recipes-extended/iptables/{iptables_1.4.8.bb 
=iptables_1.4.9.bb} (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/install.patch (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/linux-limits.patch (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/pagesz-not-constant.patch (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/procmodule.patch (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/procps.init (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/psmodule.patch (100%)
  rename meta/recipes-extended/procps/{procps-3.2.7 
=procps-3.2.8}/sysctl.conf (100%)
  rename meta/recipes-extended/procps/{procps_3.2.7.bb =procps_3.2.8.bb} 
(89%)
  rename meta/recipes-extended/tzdata/{tzdata_2010j.bb =tzdata_2010o.bb} 
(99%)
  rename meta/recipes-support/curl/{curl_7.21.0.bb =curl_7.21.2.bb} (100%)
  rename meta/recipes-support/shared-mime-info/{shared-mime-info_0.71.bb 
=shared-mime-info_0.80.bb} (74%
)
  create mode 100755 scripts/qemuimage-tests/sanity/scp
  create mode 100755 scripts/qemuimage-tests/sanity/shutdown
  create mode 100644 
scripts/qemuimage-tests/scenario/qemux86-64/poky-image-minimal
  create mode 100644 
scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
  create mode 100644 
scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System



