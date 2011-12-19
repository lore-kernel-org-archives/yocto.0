Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E55CE00749
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2011 08:23:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Dec 2011 08:22:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="eml'208?png'208,150?scan'208,150,208,150";a="97953075"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2011 08:22:56 -0800
Message-ID: <4EEF64E0.3090005@linux.intel.com>
Date: Mon, 19 Dec 2011 08:22:56 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
References: <20111211044626.GA4790@autobuilder01.yoctoproject.org>
	<20111211044626.GA4777@autobuilder01.yoctoproject.org>
In-Reply-To: <20111211044626.GA4777@autobuilder01.yoctoproject.org>
X-Forwarded-Message-Id: <20111211044626.GA4790@autobuilder01.yoctoproject.org>
	<20111211044626.GA4777@autobuilder01.yoctoproject.org>
Subject: Package Updating Goals for 1.2 M2
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
X-List-Received-Date: Mon, 19 Dec 2011 16:23:23 -0000
X-Groupsio-MsgNum: 3888
Content-Type: multipart/mixed; boundary="------------010308080606050201040105"

--------------010308080606050201040105
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Core MetaData Folks:

We are making a strong attempt to keep the OE-Core as up to date as 
possible, to this end we are tracking the packages that need to be 
updated via the packages.yoctoproject.org website and weekly emails.

Using Manual Check and Upgrade Recipes Attached to the email

  * Manual Check Recipe List:
    Goal:
    - "LastChkTime" of under 30 days for 100% of the recipes at code
        freeze of each milestone, we almost reached that I think there
        are some issues with the checking scripts.
    Background:
    - This is a list of recipes that require manual checking because
       automatic checking can't parse the directory for some reason (such
       as sourcefourge.net does not allow viewing directories.
    What to do:
    - Find Upstream Source and update the RECIPE_MANUAL_CHECK_DATE and
       possibly RECIPE_NO_UPDATE_REASON in distro_tracking_fields.inc on
       a regular basis.
    - These updates should be done regularly such that by each milestone
      code freeze the Check data is no older than 30 days.
    Tracking:
    - Weekly Burndown Chart, based on data from tools and Saul

  * Upgrade Recipe List:
    Goal:
    - Update 70% of the recipes on the combined Upgrade & Manual Check
      list (that need upgrading) by Code freeze of M1.
    - Re-evaluate % for future Milestones during their planning phase.
    - The 70% is exclusive of any packages that can't be upgraded for
      stability or compatibility.
    Background:
    - In an effort to keep Yocto as current and fresh as possible
      we want to continue to update package with the latest stable
      upstream version.
    What to do:
    - Update the package as appropriate
    - Update the distro_tracking_fields.inc with the latest version
      information and last update time.
    Tracking:
    - Weekly Burndown Chart, based on data from tools and Saul

  * Patch UpStream Status:
    Goal:
    - 100% of all patches (.patch and .diff files) have an upsteam status
    What to do:
    - Verify all patches have an Upstream-Status field and research and
      add appropriate status.
    Tracking:
    - Grep!

  * Patch Upstreaming:
    Goal:
    - No defined goal at this point other than to reduce # of patches
    What to do:
    - Continue working with Upstream communities to push Pending
      patches, use beginning of each Milestone as baseline.
    Tracking:
    - Number of Upstream-able patches is reduced
    - Patches are getting status Updates as appropriate

  * Documentation Generation:
    Goal:
    - No defined goal at this point other than to increase # of
      documentation packages generated
    Background:
    - Scott Garman generates a list of packages that have  -docs
      packages, we should continue to monitor this list and where
      possible modify recipes to increase -doc package generation.
    What to do:
    - Review Doc list and as recipe updates or maintenance occurs verify
      the recipe will generate valid documentation
    Tracking:
    - # of -docs packages tracked weekly

Mutlilib checking, need to work with Dongxiao to define this further.

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System



--------------010308080606050201040105
Content-Type: message/rfc822;
 name="[Package Report System]Manual check recipes name list.eml"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="[Package Report System]Manual check recipes name list.eml"

Return-Path: <swold@autobuilder.yoctoproject.org>
X-Original-To: sgw@linux.intel.com
Delivered-To: sgw@linux.intel.com
Received: from fmsmga002.fm.intel.com (fmsmga002.fm.intel.com [10.253.24.26])
	by linux.intel.com (Postfix) with ESMTP id 208C82C8001
	for <sgw@linux.intel.com>; Sat, 10 Dec 2011 20:46:23 -0800 (PST)
Received: from fmsmga101.fm.intel.com ([10.1.193.65])
  by fmsmga002-1.fm.intel.com with ESMTP; 10 Dec 2011 20:46:27 -0800
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AvwEADk05E6M06l2/2dsb2JhbABDqn+BBYIzZycmGESIEJVVnmyIOIJSYwSIMYw/hWyMXQ
X-IronPort-AV: E=Sophos;i="4.71,333,1320652800"; 
   d="scan'208";a="904203864"
Received: from unknown (HELO autobuilder.yoctoproject.org) ([140.211.169.118])
  by mga01b.intel.com with ESMTP; 10 Dec 2011 20:46:27 -0800
Received: by autobuilder.yoctoproject.org (Postfix, from userid 1008)
	id B9E7289875; Sat, 10 Dec 2011 20:46:26 -0800 (PST)
Date: Sat, 10 Dec 2011 20:46:26 -0800
From: Yocto Project Package Report System <yocto.package.reporting@intel.com>
To: sgw@linux.intel.com
Subject: [Package Report System]Manual check recipes name list
Message-ID: <20111211044626.GA4790@autobuilder01.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
ethtool                  2.6.36              2.6.36              18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
tzdata                   2011n               2011l               18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
webkit-gtk               1.5.1+svnr907...    1.6.1+svnr101...    8 days,                  Zhai Edwin <edwin.zhai@intel....        No data                       
web-webkit               0.1+git1+0f70...    0.0+svnr110         Long long time ....      Zhai Edwin <edwin.zhai@intel....        No data                       
puzzles                  r9306               r9306               18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
pcmanfm                  0.9.10              0.9.10              18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
libfm                    0.1.17              0.1.17              18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
beecrypt                 4.2.1               4.2.1               18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
x11vnc                   0.9.13              0.9.13              18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
matchbox-wm-2            0.1+git1+18ab...    0.0+svnr2106        Long long time ....      Zhai Edwin <edwin.zhai@intel....        No data                       
menu-cache               0.3.2               0.3.2               18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
acpid                    1.0.10              1.0.10              18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
setserial                2.17                2.17                18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
eggdbus                  0.6                 0.6                 18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
jpeg                     8c                  8c                  18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
tinylogin                1.4                 1.4                 18 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
mingetty                 1.08                1.08                Long long time ....      Xiaofeng.Yan <xiaofeng@windri...        No data                       
eds-tools                git                 git                 15 days                  Wenzong Fan <wenzong.fan@wind...        No data                       
libpam                   1.1.4               1.1.3               Long long time ....      Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.46              1.5.6               26 days                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
libgdbus                 0.0+git1+aeab...    0.2                 Long long time ....      Scott Garman <scott.a.garman@...        No data                       
libevent                 1.4.14b             2.0.11              200 day                  Scott Garman <scott.a.garman@...        libevent 2 is incompatible    
expat                    2.0.1               2.0.1               26 days                  Scott Garman <scott.a.garman@...        No data                       
e2fsprogs                1.41.14             1.41.12             26 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5                 No Data             Long long time ....      Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.3               Long long time ....      Scott Garman <scott.a.garman@...        No data                       
lsb                      1.4                 1.4                 9 days,                  Saul Wold <sgw@linux.intel.co...        1.4 is fixed version of LSB Te...
psmisc                   22.14               22.14               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.0.3              10.0.3              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     444                 444                 9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
cracklib                 2.8.18              2.8.18              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
zip                      3.0                 3.0                 9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
unzip                    6.0                 6.0                 9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
lame                     3.99.3              3.99.3              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libcap                   2.22                2.19                Long long time ....      Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.20              0.6.20              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.8               0.9.8               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.47.0              1.47.0              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.9               3.7.9               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.7.0               1.7.0               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
qemugl                   0.0+git1+d888...    0.0+git0+d888...    9 days,                  Saul Wold <sgw@linux.intel.co...        Do not upgrade to version: 334...
usbutils                 0.91                0.91                200 day                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
util-linux               2.19.1              2.20.1              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
squashfs-tools           4.2                 4.2                 9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
man-pages                3.32                3.32                Long long time ....      No Maintainer information               No data                       
gst-plugin-bluetooth...  4.96                No Data             Long long time ....      No Maintainer information               No data                       
mpfr                     3.1.0               3.1.0               25 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
libpcre                  8.20                8.20                25 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
btrfs-tools              git                 git                 53 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
python-scons             2.1.0               2.1.0               24 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
nasm                     2.07                2.07                24 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
flex                     2.5.35              2.5.35              24 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
gcc                      4.6.2+svnr181...    4.6.1               157 day                  Nitin A Kamble <nitin.a.kambl...        No data                       
tcl                      8.5.11              8.5.11              24 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
sat-solver               0.0-git1+0a73...    git                 9 days,                  Mark Hatle <mark.hatle@windri...        No data                       
prelink                  1.0+git1+3e3f...    1.0+git0+0x90...    9 days,                  Mark Hatle <mark.hatle@windri...        No data                       
adt-installer            0.1.8+svnr596...    1.1                 74 days                  Jessica Zhang <jessica.zhang@...        No data                       
libtirpc                 0.2.2               0.2.1               18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
quota                    4.00-pre1           4.00-pre1           18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
rpcbind                  0.2.0               0.2.0               18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
minicom                  2.4                 2.5                 18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libsamplerate0           0.1.7               0.1.8               18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libical                  0.47                0.47                18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libomxil                 0.3.3               0.9.3               18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
flac                     1.2.1               1.2.1               18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
kexec-tools              2.0.2               2.0.2               Long long time ....      Dongxiao Xu <dongxiao.xu@inte...        No data                       
linux-firmware           0.0+git1+d543...    97649b1e            164 day                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
strace                   4.5.20              4.6                 18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
wireless-tools           29                  29                  18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
irda-utils               0.9.18              0.9.18              18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
bluez4                   4.96                4.82                Long long time ....      Dongxiao Xu <dongxiao.xu@inte...        No data                       
libgsmd                  0.1+svnr5394        5394                164 day                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
bluez-hcidump            2.1                 2.0                 Long long time ....      Dongxiao Xu <dongxiao.xu@inte...        No data                       
connman-gnome            0.5                 0.5                 Long long time ....      Dongxiao Xu <dongxiao.xu@inte...        No data                       
opkg                     0.1.8+svnr625...    0.1.8               18 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
hdparm                   6.3                 9.37                23 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
watchdog                 5.9                 5.9                 23 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
freetype                 2.4.6               2.4.8               23 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
oprofileui               0.0+git1+b311...    0.0+git0+0c3c...    Long long time ....      Dexuan Cui <dexuan.cui@intel....        No data                       
oprofile                 0.9.7               0.9.6               Long long time ....      Dexuan Cui <dexuan.cui@intel....        No data                       
tcf-agent                0.0+svnr1855        0.0+svnr1855        23 days                  Dexuan Cui <dexuan.cui@intel....        1855 is the latest stable revi...
Any problem, please contact Mei Lei <lei.mei@intel.com> 

--------------010308080606050201040105
Content-Type: message/rfc822;
 name="[Package Report System]Upgrade recipes name list.eml"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="[Package Report System]Upgrade recipes name list.eml"

Return-Path: <swold@autobuilder.yoctoproject.org>
X-Original-To: sgw@linux.intel.com
Delivered-To: sgw@linux.intel.com
Received: from AZSMGA002.ch.intel.com (azsmga002.ch.intel.com [10.2.17.35])
	by linux.intel.com (Postfix) with ESMTP id C21702C8001
	for <sgw@linux.intel.com>; Sat, 10 Dec 2011 20:46:23 -0800 (PST)
Received: from azsmga101.ch.intel.com ([10.2.16.36])
  by AZSMGA002-1.ch.intel.com with ESMTP; 10 Dec 2011 20:46:27 -0800
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Av4EAE/K306M06l2/2dsb2JhbABDqUOBEoEFgX4BgRsHCQEBFRQSAwEURIgPlxmfUIpRYwSILoVkgReFQYVrjFo
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
   d="png'150?scan'150,208,150";a="773855883"
Received: from unknown (HELO autobuilder.yoctoproject.org) ([140.211.169.118])
  by mtab.intel.com with ESMTP; 10 Dec 2011 20:46:27 -0800
Received: by autobuilder.yoctoproject.org (Postfix, from userid 1008)
	id 625B589705; Sat, 10 Dec 2011 20:46:26 -0800 (PST)
Date: Sat, 10 Dec 2011 20:46:26 -0800
From: Yocto Project Package Report System <yocto.package.reporting@intel.com>
To: sgw@linux.intel.com
Subject: [Package Report System]Upgrade recipes name list
Message-ID: <20111211044626.GA4777@autobuilder01.yoctoproject.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in distro_tracking_fields.inc to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
xz                            5.0.3                         5.1.1alpha                    Zhai Edwin <edwin.zhai@intel.com>                 No data                       
matchbox-panel-2              0.0+git1+cdf7a22716b8746      2.0                           Zhai Edwin <edwin.zhai@intel.com>                 No data                       
eds-dbus                      2.30+git1+7337d11aed576e      6.0                           Zhai Edwin <edwin.zhai@intel.com>                 2.30.2 is latest stable releas...
libsoup                       2.2.100                       2.2.105                       Zhai Edwin <edwin.zhai@intel.com>                 No data                       
logrotate                     3.7.9                         3.8.1                         Xiaofeng.Yan <xiaofeng@windriver.com>             No data                       
xserver-kdrive                1.7.99.2                      1.11.99.1                     Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
xserver-xorg-lite             1.11.2                        1.11.99.1                     Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
directfb                      1.4.15                        1.5.3                         Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
libx11-diet                   1.4.4                         1.4.99.1                      Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
chkconfig                     1.3.55                        1.3.56                        Wenzong Fan <wenzong.fan@windriver.com>           No data                       
at                            3.1.12                        3.1.13                        Scott Garman <scott.a.garman@intel.com>           No data                       
blktool                       4-6                           4                             Scott Garman <scott.a.garman@intel.com>           No data                       
apmd                          3.2.2-14                      3.2.2                         Scott Garman <scott.a.garman@intel.com>           No data                       
dbus-glib                     0.92                          0.98                          Scott Garman <scott.a.garman@intel.com>           No data                       
base-passwd                   3.5.22                        3.5.24                        Scott Garman <scott.a.garman@intel.com>           No data                       
libnfsidmap                   0.24                          0.25                          Scott Garman <scott.a.garman@intel.com>           No data                       
libffi                        3.0.10                        3.0.11                        Saul Wold <sgw@linux.intel.com>                   No data                       
libidn                        1.22                          1.23                          Saul Wold <sgw@linux.intel.com>                   No data                       
augeas                        0.9.0                         0.10.0                        Saul Wold <sgw@linux.intel.com>                   No data                       
tiff                          3.9.5                         4.0.0beta4                    Saul Wold <sgw@linux.intel.com>                   Wait until 4.0.0 releases     
libiconv                      1.13.1                        1.14                          Saul Wold <sgw@linux.intel.com>                   No data                       
js                            1.7.0+1.8.0rc1                1.60                          Saul Wold <sgw@linux.intel.com>                   No data                       
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM, ...
libnl                         2.0                           3.2.3                         Saul Wold <sgw@linux.intel.com>                   libnl.3.2.2 is incompatible wi...
xserver-xorg                  1.11.2                        1.11.99.1                     Saul Wold <sgw@linux.intel.com>                   Do not update to *99* unstable...
libdrm                        2.4.27                        2.4.28                        Saul Wold <sgw@linux.intel.com>                   No data                       
xf86-video-vmware             11.0.3                        11.0.99.901                   Saul Wold <sgw@linux.intel.com>                   Do not update to *99* unstable...
u-boot-mkimage                2011.06                       2011.09                       Saul Wold <sgw@linux.intel.com>                   target version is not used    
python-pycairo                1.8.10                        1.10.0                        Saul Wold <sgw@linux.intel.com>                   No data                       
dhcp                          4.2.0                         4.2.2                         Saul Wold <sgw@linux.intel.com>                   No data                       
openssl                       1.0.0e                        1.0.0                         Saul Wold <sgw@linux.intel.com>                   No data                       
qt4-x11-free                  4.7.4                         4.8.0                         Paul Eggleton <paul.eggleton@linux.intel.com      No data                       
texi2html                     1.82                          5.0                           No Maintainer information                         No data                       
cogl                          1.8.0                         1.8.2                         No Maintainer information                         No data                       
clutter                       1.8.0+git1+39db46123ed6b      1.9.2                         No Maintainer information                         No data                       
eglibc                        2.13                          15871                         No Maintainer information                         No data                       
apt                           0.7.14                        0.8.16                        No Maintainer information                         similar to zypper, defer the u...
linux-libc-headers-yocto      2.6.37+git-1+69cfbdf9f1f      2.6.37.6                      Nitin A Kamble <nitin.a.kamble@intel.com>         No data                       
linux-libc-headers            3.1                           3.2                           Nitin A Kamble <nitin.a.kamble@intel.com>         No data                       
quilt                         0.48                          0.50                          Nitin A Kamble <nitin.a.kamble@intel.com>         No data                       
curl                          7.22.0                        7.23.1                        Mei Lei <lei.mei@intel.com>                       No data                       
libzypp                       0.0-git1+15b6c52260bbc52      9.9.2                         Mark Hatle <mark.hatle@windriver.com>             No data                       
zypper                        1.5.3-git1+2c5bb6ceb99ec      1.6.9                         Mark Hatle <mark.hatle@windriver.com>             No data                       
gobject-introspection         1.29.0+gitr1+8d64bc23d2b      1.31.1                        Kai Kang <kai.kang@windriver.org>                 No data                       
libnewt                       0.52.13                       0.52.14                       Kai Kang <kai.kang@windriver.com>                 No data                       
rpm                           5.4.0                         5.4.0.0.20101229              Joshua Lock <joshua.lock@intel.com>               No data                       
clutter-1.8                   1.8.0                         1.8.2                         Joshua Lock <josh@linux.intel.com>                No data                       
polkit                        0.102                         0.103                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-plugins-ugly              0.10.17                       0.10.18                       Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-ffmpeg                    0.10.11                       0.10.13                       Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-plugins-bad               0.10.21                       0.10.22                       Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-plugins-base              0.10.35                       0.11.1                        Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gstreamer                     0.10.35                       0.11.1                        Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
libmusicbrainz                3.0.3                         4.0.0beta1                    Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-fluendo-mp3               0.10.15                       0.10.16                       Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-fluendo-mpegdemux         0.10.67                       0.10.69                       Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
tremor                        20101121                      18116                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
dbus                          1.4.16                        1.5.8                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
glib-2.0                      2.30.1                        2.30.2                        Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
mtd-utils                     1.4.6                         1.4.8                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
valgrind                      3.6.1                         3.7.0                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
telepathy-glib                0.17.0                        0.17.3                        Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
ofono                         0.50                          1.0                           Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
dpkg                          1.15.8.7                      1.16.1.2                      Dongxiao Xu <dongxiao.xu@intel.com                No data                       
liburcu                       0.6.4                         0.6.6                         Dexuan Cui <dexuan.cui@intel.com>                 No data                       
util-macros                   1.15.0                        1.16.0                        Dexuan Cui <dexuan.cui@intel.com>                 No data                       
xkeyboard-config              2.1                           2.3.99                        Dexuan Cui <dexuan.cui@intel.com>                 No data                       
libx11-trim                   1.4.4                         1.4.99.1                      Dexuan Cui <dexuan.cui@intel.com>                 No data                       
libpciaccess                  0.12.1                        0.12.902                      Dexuan Cui <dexuan.cui@intel.com>                 No data                       
libxi                         1.4.3                         1.4.99.1                      Dexuan Cui <dexuan.cui@intel.com>                 No data                       
libx11                        1.4.4                         1.4.99.1                      Dexuan Cui <dexuan.cui@intel.com>                 No data                       
lttng-control                 0.89                          0.89.05122011                 Dexuan Cui <dexuan.cui@intel.com>                 0.88.09242010 has been the lat...
linux-yocto-rt                3.0.12+git1+caa74f86f42f      3.1                           Darren Hart <dvhart@linux.intel.com>              No data                       
linux-yocto                   3.0.12+git1+caa74f86f42f      3.1                           Darren Hart <dvhart@linux.intel.com>              No data                       
syslinux                      4.03                          4.05                          Darren Hart <dvhart@linux.intel.com>              No data                       
The based commit merge time is:
Sat Dec 10 00:18:15 2011 +0000
The based commit is:
commit 924b1e47ab7895e42dd6a56952beb2ef2f61e4fe
Author: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Date:   Fri Dec 9 16:05:24 2011 -0800
Any problem, please contact Mei Lei <lei.mei@intel.com> 

--r5Pyd7+fXNt84Ff3
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAyAAAAJYCAYAAACadoJwAAAABHNCSVQICAgIfAhkiAAAAAlw
SFlzAAAPYQAAD2EBqD+naQAAIABJREFUeJzs3X1cVGX+//H3GfGGRBkTtERFRi0hRUVNMbxB
LS3X1Cx3IUkyK0tNJPlam7dUa22ZN92sG5kZpmVEZXfivWmLrmYqmt2IN21qAiWmKZpwfn/0
YH5OAyoKZ8R5PR8PHsl1Xeecz5kh5T3nXNcxTNM0BQAAAAAWsHm6AAAAAADegwACAAAAwDIE
EAAAAACWIYAAAAAAsAwBBAAAAIBlCCAAAAAALEMAAQAAAGAZAggAAAAAyxBAAAAAAFiGAAIA
AADAMgQQAAAAAJYhgAAAAACwDAEEAAAAgGUIIAAAAAAsQwABAAAAYBkCCAAAAADLEEAAAAAA
WIYAAgAAAMAyBBAAAAAAliGAAAAAALAMAQQAAACAZQggAAAAACxDAAEAAABgGQIIAAAAAMsQ
QAAAAABYhgACAAAAwDIEEAAAAACWIYAAAAAAsAwBBAAAAIBlCCAA1L17d9lsF/bXwb59+2Sz
2XTvvfdWcFWQpDVr1shms2nq1KmeLgUAgHJBAAHK2ZdffimbzaZOnTqV2L9o0SLZbDbZbDb9
+OOPbv2//fabqlWrplq1aqmwsLCiy3UyDKNCx1+oKVOmnPcX7jfeeMPrQlBFvd6S1KRJE+fP
pM1mk4+Pjxo2bKiuXbvqzTfftPTnsCIR5gDg8uDj6QKAK01ERITq1KmjLVu26NixY6pVq5ZL
/8qVK52/TK5atUr33HOPS/+6det05swZ3XzzzapSpYpldV9uLuQX7or8pdwbJSQkyG6369Sp
U1q1apW++OILrV+/XitXrtT8+fM9XV654ecGADyLKyBAOTMMQ927d9eZM2e0du1at/5Vq1ap
Z8+e8vf316pVq0rsl6SePXtWeK1AMcMwlJCQoEmTJunpp59WZmamvvjiC0lSamqq/vvf/3q4
wvJjmqanSwAAr0YAASpAcXj4c8DYt2+f9u3bp5tvvlldu3YtUwBZuHChevfuraCgIAUEBCg6
OlpvvfVWqTV8//33GjJkiFq2bKlatWqpdevWSkhI0LFjxy74PFatWiV/f38FBQVp+/btpY6L
iYmRzWbT559/XmJ/WlqabDabHnnkkQs+9sU4ey7LM888o5tuukl2u1033nijXnjhhVK3++ST
T9SzZ0/VqVNH4eHhGjlypI4ePVri3Jizb+P5+uuvFRsbq+bNm6tKlSr64YcfJEmrV6/WAw88
oLCwMPn7+ysgIECdOnXSjBkzSr2d6fjx4xo1apRatGihgIAA9e3bVx988ME5z/fUqVNKTk5W
VFSU6tSpo+DgYN1+++3avHlzWV62UnXq1Enh4eGSpK+++sqt/6efftKDDz6otm3bqlatWgoN
DdWwYcN0+PBht7Hx8fGy2Wzav3+/UlJS1KNHD9WpU0dt2rTRE088oTNnzpRYQ3Z2tmJjY9Wi
RQvVrl1b7du316OPPqrjx4+f8xhz587VLbfc4vx/5d5771WPHj0kSVOnTnW55ay0n1sAQMUg
gAAVoPgXnT8HjJUrV0qSoqOjFR0drR9//FHff/+9s//IkSP66quvFBAQoNatW0uSioqKdOed
d2rIkCH6/PPPFRERodtuu02bNm1SXFycHn74Ybfjv/3222rdurUWLlwom82moUOH6rffftPs
2bMVHh6unJyc857DW2+9pVtvvVUNGzbUhg0bnL+IlqS4hldffbXE/n//+98yDEMjRow473HL
w4MPPqiZM2cqNDRUsbGxys3N1bhx4xQTE+M29pVXXlG/fv20ZcsW9evXT9HR0fr888/Vp08f
HTt2rNTbdbZu3apu3brps88+U69evRQXF6dq1apJkv75z39qxYoVioiI0IgRI9S9e3d99913
evTRR3X77be77Ss/P18dO3bUK6+8In9/fw0dOlQ1a9ZUbGxsqSHz4MGDateunaZMmaJvvvlG
AwYM0PXXX69PP/1UnTt31sKFCy/hFfz/ioqKJEl2u92lffXq1brhhhuUkpKiY8eO6Z577lHV
qlX1xhtvqGXLlvr6669L3N8//vEPJSUlKSgoSEOHDtXvv/+uadOmqUePHm4hJCMjQ61bt1Za
WprCwsL0wAMPyNfXVzNmzFB4eLgOHDhQ4jGefPJJ3X///frpp580bNgw3XTTTRowYICGDh0q
6Y+gOmXKFOdXcHDwpb5MAICyMAFUiGuvvdasUqWKmZub62yLjY017Xa7WVRUZG7dutU0DMOc
M2eOsz89Pd00DMMcPHiws+3ll182DcMwhwwZYh47dszZfuzYMXPAgAGmYRjm2rVrne2HDh0y
a9eubQYGBprffvutS02pqammYRjmvffe69LerVs302azOb9/5plnTJvNZnbt2tU8cuSIy9i9
e/eWuI9WrVqZNWrUMH/++WeX9t27d5uGYZhRUVHnfc1M0zQnT55sGoZhTp06tdQx8+bNK/U8
DMMwQ0JCzEOHDjnbjx49akZERJiGYZiffvqps/3w4cOmn5+fabfbze+//97Z/vvvv5u33367
aRiGy+timqa5evVq0zAM0zAMc/LkyeZvv/3mVt+ePXvc2goLC82//vWvpmEY5kcffeTS99hj
j5mGYZj333+/S/vatWudx/rz63HXXXeZhmGYs2fPNs+cOeNs/9///mc2adLEDAgIMH/55Re3
OkoSHBxs2mw2c9++fS7t//nPf0zDMMxq1aqZR48edbafOHHCbNKkiVm9enUzMzPTrWabzWb2
6NHDpX3o0KGmYRim3W53+bk8deqUeeutt5qGYZivvPKKs72goMAMCQkxbTabuXz5cpd9Pf74
46ZhGGZMTEyJx6hbt67L/xPFit+7c/1sAQAqHldAgArSq1cvFRUVafXq1c621atXq0uXLjIM
Q+Hh4apbt67LVZLiPxdfQZGk5ORkVa1aVU899ZT8/Pyc7X5+fhozZowkad68ec72mTNn6tix
YxozZoyuu+46l5ruvvtuBQcH66233nJ+sn020zQ1atQoPf7447rjjju0fPlyt0++S/PQQw/p
1KlTbpOVi6+KWHX1Q5IGDRqka665xvl97dq1FRcXJ0maPXu2s/2NN97Qb7/9pl69eqlZs2bO
dh8fH91///3nPEb16tU1fvx4XXXVVW59ISEhbm02m00TJkyQJJefCdM09dJLL8kwDI0cOdJl
m65du5Z45embb75RWlqarrvuOo0aNcplsYKGDRtq6NCh+vnnn7VkyZJznsPZTNPUzJkzNWXK
FD3++OOKjIxUVFSU7Ha75syZo9q1azvHzp8/X/v371dcXJzbam9du3ZVVFSUVq9erf3797sd
p1evXi4/l9WqVdMDDzwgyfW9+eijj7Rv3z7dcMMN6tWrl8s+xo4dK0l65513Srzd69Zbb1XX
rl0v+NwBANZiFSyggvTo0UMLFizQqlWrdNddd2nXrl366aefFB0dLemPSb/dunXTmjVrnNus
WrVKhmE453/k5uYqJydHjRs3dgkZxUzTVNWqVfXdd98527KyspzbTpkyxW2bunXrav/+/crO
zlbz5s1d9nXHHXfoww8/1COPPKKZM2eW6Xzj4uI0fvx4vfrqq85fEE+fPq158+apbt26uuuu
u8q0v0vRu3dvt7Y+ffooMTFR3377rbOt+M8333yz2/jo6Gj5+PiUOmeja9eu8vX1LbHv5MmT
mjdvnhYsWKD9+/crJyfHZT/Z2dnOP//444/67bffVL9+fedtd3+u+8/zb4rf42uuuabEJWWL
l3c+++fiQsyaNcutbc6cORo8eHCJx//9999L/BmrWrWq8/h/vr2ppPemZ8+e8vHx0Z49e1RU
VCSbzeZ8b/r06eM2PjAwUO3bt9fmzZv13XffqX79+i79t9122znOEgDgaQQQoIL8eSJ68fyP
s69udOvWTenp6crKylJgYKB27dqlRo0aOT+N37dvnyTphx9+UHJyconHMQxDP/30k/P74m3O
/jS5tG3ODiDSH0sA+/j4qF+/fmU40z/4+flpyJAhmjNnjj7//HN17dpV77//vvLy8pSYmOic
H3E+Pj5//LX0+++/lzrm9OnTLmPPZhiGOnTo4NbeokUL+fn56eDBg8624j+3a9fObXzNmjXV
okUL7dy5s8QaSnvOS2Fhofr3768VK1aoefPmuu2223T11VerZs2aMk1TU6dO1a+//upWQ/v2
7Uvc34033ujWVvwef/7556VOoP7zz8X5GIahvXv3qnHjxsrPz9fq1av12GOP6e6771aVKlU0
aNAgt+O/+eab59xfSccv6b2pVauW87U+fPiwrr32WmeIKun8pT9e/82bN5c4D6S09wYAcHng
FiyggjRq1EgOh0O7d+/Wjz/+qFWrVunqq692+ZS7OIysXLmyxNWvGjZsKOmPT42LiopK/Cos
LHT5RL14m0OHDp1zmy5durjUaxiG1qxZozp16qhfv35aunRpmc+5eDL6v//9b+d/DcNw3mJz
IYo/MS9tgvHZfU2aNHHrM02zxCVjd+3apePHj6tBgwbOtuI/l7Rq1PHjx/XNN9+UWkNpz2hZ
sWKFVqxYobZt2+rbb79VSkqKnn32WU2aNKnET/+DgoJKrUGSNm7c6NZW/B5PmzbtnO/x3Llz
S63/XOx2uwYOHKh33nlHPj4+euihh5SXl+d2/MzMzHMev/i2t7OV9N78+uuv+uabb+Tj4+O8
mlF8jJLOX5I2bNjgMu5s3vz8HACoDAggQAXq1auXTNPUihUrtGbNGnXr1s2lPywsTIGBgVq1
alWJAeTaa69VYGCgtmzZooKCggs6Zps2bSRJ69evL3O9LVu21Jo1a2S32zVgwIAyzSEo3j4q
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
saPbKQB+AwNIKaldu7aWL1+ugwcPqly5cv7l69evlyTFx8ef8DOVK1fmXRsAAM5Sy5Yt3U4A
cAY4Cb2U9OzZU/v379ebb77pX2Zmmjp1qn7/+9+rSZMmLtYBAAAA7mAPSClp1qyZ7rrrLvXr
10+5ubmqU6eOXn/9dX322Wd666233M4DAAAAXMFJ6KWosLBQw4cP14IFC7RlyxY1btxYTz31
lDp06FBq/00zk+M4pfb3l5atW7cqNjbWk/1ebPY6n8+nkBBv7sD14uOloKBAoaHefL+KbQsA
BB8GkAvAkiVLtHDhQo0bN87tlBJbuXKl+vTpIzPTV1995XbOGcvNzZXP51OFChWKnePjBcef
l+QVaWlp+u6779SzZ0/PDSBefY6mpaVpzpw5SkxMVFJSkts5JcK2JfC8um0BEHje+Q2OE2zf
vl133HGH2rdvr507d3rq2ufbt2/XbbfdplatWunrr79WXl6eJz6cMScnR/369dMjjzyidu3a
6dZbb9XHH38s6ei78sFs586deuyxx9SlSxfde++9mjNnjnJzcyUFf/usWbOUmJio//mf/9F3
332nkJAQFRYWup31m7z6HN2zZ4969eqlm266SZs2bdK2bduUl5fndtYZYdsSeF7etgBwBwOI
R/31r39V9erV9csvv2jZsmV65ZVXPHPp3sGDBysuLk6//PKLPv/8c/3lL39RXl6eLrnkErfT
Tis9PV1dunTRd999p0aNGqlRo0b65JNP9Oijj0pSUL8j/8477+iaa67R8uXLdfjwYa1atUp3
3323evfuLSm42yVp9erVkqSqVavq73//uyQF/ePFq8/RI0eOaPDgwcrMzNS8efP0wgsvqG/f
voqMjHQ77TexbQk8r29bALjE4Cm5ubl29913m+M4NmnSJNu7d68VFhaesJ7P53Oh7vQ+//xz
i4uLsxo1ati0adMsLy/PzMyee+45cxzHUlNTzSw42/ft22cPPvigdezY0datW2cFBQVmZjZw
4ECrXr26ffPNNy4XntqhQ4fs1ltvtTZt2tjXX39t+fn5VlBQYLfccos5jmODBg1yO/GUiu7n
UaNG2T333GN/+MMfLCoqyhYvXmxmZkeOHHEz76S8/Bw1M/vwww+tUqVK9sYbb9jBgwf9y0/2
bwgWbFvc4eVtCwB38daEx4SFhal58+YKDQ1VmTJldOmllyokJESbNm3S3LlzlZaWpn379gXV
iYv239OMKleurGHDhiktLU3JycmKiIiQJNWsWVOStGnTJkkKqvYimZmZmjJlilq3bq1GjRr5
DyuoUKGCKleurCuvvNLlwlPbuHGjFi1apD59+qh+/foKDw/XJZdcov/7v/9T+fLl9c9//lML
Fy50O/Okit65XrVqlerUqaMRI0YoLCxMTz/9tCQpNDQ06A7x8OJz9Fiffvqpqlevrq5duyos
LExffPGFnnjiCQ0aNEgvv/yydu/e7XbiCdi2uMPL2xYA7mIA8Zjy5csrKSlJrVu31vjx47Vh
wwYlJycrMTFR999/vxITE9WiRQu9/PLLbqf6Ff3Sj4uL00MPPaSqVatK+nUwadKkicLDw/Xz
zz9LOnrFnWBz6NAhRUdHa8WKFf5zD7755hvNmzdPN910k2bNmqXly5e7XHly27ZtkyT99NNP
ko7e72amq6++Wm3atJEkTZgwwbU+STpw4IB27tx5wvKiF2MVK1ZUQUGBGjZsqKSkJK1evVov
vviiJPcP8Ti+3SvP0eO7i+7rvXv3+s/3GD16tFq0aKGFCxfqtdde05/+9Cd17dpV27dvd6W5
yPHtXtm2nOxx7pVty8navbBtARCkXNz7gt+QmppqkyZNsn/84x/2zjvv+Jf7fD6bNWuWlS1b
1sLDw61t27b27LPP2quvvmpTp061mJgYq1Spkq1Zs8a/fjC0n6ojMzPT4uLi7Kabbgpk4kmd
6j4/fPiwjR492kJCQqxRo0bWsWNHK1eunMXHx1v79u0tKirKypYta1OmTLHDhw8HVfvevXst
IiLCOnfubJs3b/b/e7Zs2WJNmza1a665xhzHsaVLl5pZ4B8vU6dONcdxrH///nbo0KGTrpOY
mGhPPvmkmZl9+eWX9vvf/94aNWpkW7dutenTp9uXX34ZyGS/U7UH+3P0ZN1FDUOGDLGwsDCb
MmWKtW/f3v73f//XtmzZYjt27LBhw4bZJZdcYgMHDrT8/PyANp+u/VSCadtyqm4vbFtO1b53
716LjIwM2m0LgODFABKEFi1aZAkJCdaoUSNr27atOY5jZcqUsU8//dS/TnZ2tj3++OP2xz/+
0TZv3lxsw/76669bmTJlrHv37kHXfqrjyJs1a2bNmjWznJwcV35Jncl9XlhYaGlpabZkyRKr
WrWqPfTQQ/5fut9++6116dLFoqOj7fvvvw+69pSUFHMcx+655x776aefbOfOnTZ8+HCrV6+e
/etf/7LY2Fj/C/xAKfr/fP/995vjOFapUiVbsWJFsXUKCwvt8OHD1rZtWxs/frz/Z8aNG2fh
4eFWtmxZq1u3rq1cuTLo2oPxOXq67qLbFixYYBEREVa1alWrUaOG/fTTT/6f3759u/3xj3+0
6Ohoy8nJCZr203F723Im93mwbltO1150rkowblsABD8GkCBy4MABGzJkiNWsWdP+/Oc/26pV
q2zHjh22cOFCi42NtaSkpGLrf/nll/bDDz/4vy86IbewsNDq1KljrVu3tv379wfkl25J24sU
/RLr27evXXrppbZv3z4zC9w7ZSXt9vl8NmXKFKtevbpt27atWOfEiRPNcRybM2dOULYnJSWZ
4zgWFRVlFSpUsPDwcJsxY4aZmVWvXt1Gjx5tZoE/2bh58+Z2//33W+PGja1z587+x4DZr4+D
2rVr28SJE83s6AnH1157rYWEhFhkZKS9/fbbZvbrYylY2s2C6zlaku7mzZub4zh2xx132MGD
B+3IkSP+xvHjx5vjOPbRRx8FtPnYttO1F3F723K83+oOpm3L8Y5vP37vV7BuWwAEL84BCSJl
ypRRZmamunXrplGjRqlp06aKjo7WjTfeqCpVqig0NFSFhYX+44QbNGigGjVqSDp6/HbRJxXn
5+fr8OHDuuSSS1S+fPmAnHh5pu3232OEixSdZHzZZZcpLy9Pn332maTAnSxa0m4z0+eff65D
hw4pJiZGjuP4/z3fffedwsLCdNlllwVV++HDhyVJkydP1pIlS9S/f3+lpKQoIyND3bp10549
e+Q4jsqWLSspcOdUFD2WL7/8ctWuXVvdu3dXampqsZNWHcfRjh07dOmll8rn8yk5OVmNGzdW
rVq1NGLECEVERGjGjBmSAntZ3jNpl4LrOXom3UXblqKT/N977z1t2LBBoaGh/sbMzExVqlRJ
1apVC0jzmbYfz+1tS5Ez7Q6mbctvtS9atMh/uxR82xYAHuDe7INjFb0ztGnTJv+7S0XvgG3c
uNESExPt3XfftR07dhT7uYKCgmLvlP3yyy/2xBNPWFRUlC1cuDCo24/92YULF5rjODZ//vxi
Px+M3U888YRFRkbapEmTzMxs69at9v7771u7du3s6aefLvXus20/9nCPItnZ2XbnnXdalSpV
LCsrKyDtxyosLLRq1arZ3LlzLTs725o3b24NGza0bdu2+dfx+XxWq1YtcxzHrr32WnvzzTdt
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
pn379ul3v/udKleurLffflvlypVTu3btVKlSJd1+++367LPPtGzZMu3bt0/VqlVTmzZtJEkx
MTGKioqi/QLq9nK7V7u93O7Vbi+3e7Xb6+0ALm58EvpZ8Pl8GjFihBYvXuz/JPKoqChdf/31
euyxx7R27Vo99thjSkhIUHR0tDIyMrR37175fD5J0sSJE3XLLbcoLCxMdevWpf0C7vZyu1e7
vdzu1W4vt3u12+vtAC5ybu+C8aLdu3db1apVLSEhwaZOnWpmZhs2bLDIyEhbunSpvf/++3bF
FVfY448/bn379rUaNWpYXl6emf16TfZt27a5cl11r7Z7tdvL7V7t9nK7V7u93O7Vbq+3A7i4
MYCcpczMTLvhhhssKirKPvnkEzMzu/76661nz55mZrZs2TKrVKmSNWrUyH+yn9npPxQqULza
7tVuM++2e7XbzLvtXu028267V7vNvN0O4OLFOSBnqVKlSqpXr57Wr1+vl19+WVdddZUqV66s
//znP7r55pvVsGFDxcXFadWqVcrOzlatWrXUrl27Uv9Auwu53avdXm73areX273a7eV2r3Z7
vR3AxcsxM3M7wstycnLUpk0bVaxYUZUrV5aZafDgwWrTpo3MTO+//76++eYbPfbYY26nnsCr
7V7tlrzb7tVuybvtXu2WvNvu1W7J2+0ALkKB3N1yoSm6bnpaWpp16tTJwsPDzXEcmzdvnstl
v82r7V7tNvNuu1e7zbzb7tVuM++2e7XbzNvtAC5OHIJ1DoougRgbG6urrrpKW7ZsUUZGhq64
4gp17NjR5brT82q7V7sl77Z7tVvybrtXuyXvtnu1W/J2O4CLE4dgnUc5OTl67733lJyc7HZK
iXm13avdknfbvdotebfdq92Sd9u92i15ux3AxYEB5DwxsxM+FMorvNru1W7Ju+1e7Za82+7V
bsm77V7tlrzdDuDiwQACAAAAIGC4Dh8AAACAgGEAAQAAABAwDCAAAAAAAoYBBAAAAEDAMIAA
AAAACBgGEAAAAAABwwACAAAAIGAYQAAAAAAEDAMIAAAAgIBhAAEAAAAQMAwgAAAAAAKGAQQA
AABAwDCAAAAAAAgYBhAAAAAAAcMAAgAAACBgGEAAAAAABAwDCAAAAICAYQABAAAAEDAMIAAA
AAAChgEEAAAAQMD8f3N56/8ooJA+AAAAAElFTkSuQmCC

--r5Pyd7+fXNt84Ff3--

--------------010308080606050201040105--
