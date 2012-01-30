Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C7AE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:38:56 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2012 15:38:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="png'150?scan'150,208,150";a="118263866"
Received: from unknown (HELO [10.255.14.89]) ([10.255.14.89])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2012 15:38:49 -0800
Message-ID: <4F272A08.6020705@linux.intel.com>
Date: Mon, 30 Jan 2012 15:38:48 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
References: <20111211044626.GA4790@autobuilder01.yoctoproject.org>
	<20111211044626.GA4777@autobuilder01.yoctoproject.org>
In-Reply-To: <20111211044626.GA4777@autobuilder01.yoctoproject.org>
Subject: Package Updating Goals for 1.2 M3
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
X-List-Received-Date: Mon, 30 Jan 2012 23:38:57 -0000
X-Groupsio-MsgNum: 4511
Content-Type: multipart/mixed; boundary="------------050107030701030207020400"

--------------050107030701030207020400
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Core MetaData Folks:

We are making a strong attempt to keep the OE-Core as up to date as 
possible, to this end we are tracking the packages that need to be 
updated via the packages.yoctoproject.org website and weekly emails.

Our goal for M3 will be based on the 1/15/2012 Package Lists attached to 
this email

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

   * Manual Check Recipe List:
     Goal:
     - "LastChkTime" of under 30 days for 100% of the recipes at code
         freeze of each milestone. We need to do a final check in the
         last week of the Development phase.
     Background:
     - This is a list of recipes that require manual checking because
        automatic checking can't parse the directory for some reason
        (such as sourcefourge.net does not allow viewing directories.)
     - We will be working to use other tools such as U-Scan and U-Watch
       that will help with the manual checking.

     What to do:
     - Find Upstream Source and update the RECIPE_MANUAL_CHECK_DATE and
        possibly RECIPE_NO_UPDATE_REASON in distro_tracking_fields.inc on
        a regular basis.
     - These updates should be done regularly such that by each milestone
       code freeze the Check data is no older than 30 days.
     Tracking:
     - Weekly Burndown Chart, based on data from tools and Saul
     - You can see that information in the package.yoctoproject.org site.

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

   * Patch Upstream-Status:
     Goal:
     - 100% of all patches (.patch, .diff, dpatch) have an upsteam status
     - We have 17 patches remaining and the maintainer is aware of that.

     What to do:
     - Continue to monitor any new patches for Upstream-Status
     Tracking:
     - check_patches script (see attached)


-- 
      Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System




--------------050107030701030207020400
Content-Type: text/plain;
 name="check_pactches"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="check_pactches"

find meta* -name "*.patch" -o -name "*.diff" -o -name "*.dpatch" > patch_list/patch_list
echo -n "Total Patches Files: " ; wc -l < patch_list/patch_list 
echo -n "All Upstream-Status: "
grep -lri Upstream-Status `cat patch_list/patch_list` | wc -l
grep -r Upstream-Status `cat patch_list/patch_list` > patch_list/correct
grep -ri Upstream-Status `cat patch_list/patch_list` > patch_list/need_fix
echo -n "Fix Upstream-Status: "
diff patch_list/correct patch_list/need_fix | grep -c "^>"
diff patch_list/correct patch_list/need_fix | grep "^>"
grep -Lri Upstream-Status `cat patch_list/patch_list` > patch_list/needs_status 
echo -n "Need Upstream-Status: ";  wc -l < patch_list/needs_status
cat patch_list/needs_status
echo -n "Pending Upstream-Status: "
grep -r "Upstream-Status: Pending" `cat patch_list/patch_list` | wc -l

--------------050107030701030207020400
Content-Type: message/rfc822;
 name="Attached Message"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message"

Delivered-To: saul.wold@gapps.intel.com
Received: by 10.182.58.202 with SMTP id t10cs60189obq;
        Sun, 15 Jan 2012 00:11:48 -0800 (PST)
Received: by 10.68.72.136 with SMTP id d8mr16191636pbv.75.1326615104414;
        Sun, 15 Jan 2012 00:11:44 -0800 (PST)
Return-Path: <yocto-bounces@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com. [143.182.124.37])
        by mx.google.com with ESMTP id m3si17581481pbb.139.2012.01.15.00.11.42;
        Sun, 15 Jan 2012 00:11:44 -0800 (PST)
Received-SPF: neutral (google.com: 140.211.169.118 is neither permitted nor denied by best guess record for domain of yocto-bounces@linux.intel.com) client-ip=140.211.169.118;
Authentication-Results: mx.google.com; spf=neutral (google.com: 140.211.169.118 is neither permitted nor denied by best guess record for domain of yocto-bounces@linux.intel.com) smtp.mail=yocto-bounces@linux.intel.com
Received: from azsmga001.ch.intel.com ([10.2.17.19])
  by azsmga102.ch.intel.com with ESMTP; 15 Jan 2012 00:11:42 -0800
X-ExtLoopCount2: 2 from 10.22.226.211
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
   d="scan'208";a="95983433"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
  by azsmga001.ch.intel.com with ESMTP; 15 Jan 2012 00:11:41 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
 orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server (TLS)
 id 8.2.255.0; Sun, 15 Jan 2012 00:11:41 -0800
Received: from fmsmga002.fm.intel.com (10.253.24.26) by
 orsmsx605-2.jf.intel.com (10.22.226.231) with Microsoft SMTP Server id
 8.2.255.0; Sun, 15 Jan 2012 00:11:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
   d="scan'208";a="112395070"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])  by
 fmsmga002.fm.intel.com with ESMTP; 15 Jan 2012 00:11:36 -0800
Received: from linux.intel.com (linux.intel.com [127.0.0.1])	by
 linux.intel.com (Postfix) with ESMTP id DDDC36A408D;	Sun, 15 Jan 2012
 00:11:32 -0800 (PST)
X-Original-To: yocto@linux.intel.com
Delivered-To: yocto@localhost.localdomain
Received: from azsmga001.ch.intel.com (azsmga001.ch.intel.com [10.2.17.19])	by
 linux.intel.com (Postfix) with ESMTP id BA8746A4087	for
 <yocto@linux.intel.com>; Sun, 15 Jan 2012 00:11:31 -0800 (PST)
Received: from azsmga102.ch.intel.com ([10.2.16.52])	by
 azsmga001-1.ch.intel.com with ESMTP; 15 Jan 2012 00:11:35 -0800
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Av8EAAjU306M06l2/2dsb2JhbABDggWoUYEFgjNnJyYYRIgPlyWfUIgBglBjBIgujDyFa4xa
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="787378115"
Received: from unknown (HELO autobuilder.yoctoproject.org) ([140.211.169.118])
	by mtab.intel.com with ESMTP; 15 Jan 2012 00:11:34 -0800
Received: by autobuilder.yoctoproject.org (Postfix, from userid 1008)	id
 1A47383144; Sun, 15 Jan 2012 00:11:34 -0800 (PST)
Date: Sun, 15 Jan 2012 00:11:33 -0800
From: Yocto Project Package Report System <yocto.package.reporting@intel.com>
To: <yocto@linux.intel.com>
Message-ID: <20120115081133.GA15294@autobuilder01.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Yocto] [Package Report System]Manual check recipes name list
X-BeenThere: yocto@linux.intel.com
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Yocto Project Discussions <yocto@linux.intel.com>
List-Id: Yocto Project Discussions <yocto.linux.intel.com>
List-Unsubscribe: <http://linux.intel.com/mailman/listinfo/yocto>,
	<mailto:yocto-request@linux.intel.com?subject=unsubscribe>
List-Archive: <http://linux.intel.com/mailman/private/yocto>
List-Post: <mailto:yocto@linux.intel.com>
List-Help: <mailto:yocto-request@linux.intel.com?subject=help>
List-Subscribe: <http://linux.intel.com/mailman/listinfo/yocto>,
	<mailto:yocto-request@linux.intel.com?subject=subscribe>
Sender: <yocto-bounces@linux.intel.com>
Errors-To: yocto-bounces@linux.intel.com
Return-Path: yocto-bounces@linux.intel.com

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
ethtool                  2.6.36              2.6.36              22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
tzdata                   2011n               2011n               22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
webkit-gtk               1.7.2+svnr101...    1.6.1+svnr101...    44 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
web-webkit               0.1+git1+0f70...    0.0+svnr110         Long long time ....      Zhai Edwin <edwin.zhai@intel....        No data                       
pcmanfm                  0.9.10              0.9.10              22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
puzzles                  r9375               r9375               16 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
beecrypt                 4.2.1               4.2.1               22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
libfm                    0.1.17              0.1.17              22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
x11vnc                   0.9.13              0.9.13              22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
menu-cache               0.3.2               0.3.2               22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
acpid                    1.0.10              1.0.10              22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
setserial                2.17                2.17                22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
eggdbus                  0.6                 0.6                 22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
tinylogin                1.4                 1.4                 22 days                  Zhai Edwin <edwin.zhai@intel....        No data                       
mingetty                 1.08                1.08                Long long time ....      Xiaofeng.Yan <xiaofeng@windri...        No data                       
eds-tools                git                 git                 51 days                  Wenzong Fan <wenzong.fan@wind...        No data                       
libpam                   1.1.4               1.1.3               Long long time ....      Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.46              1.5.6               62 days                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
libgdbus                 0.0+git1+aeab...    0.2                 Long long time ....      Scott Garman <scott.a.garman@...        No data                       
expat                    2.0.1               2.0.1               62 days                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.13-2              Long long time ....      Scott Garman <scott.a.garman@...        No data                       
e2fsprogs                1.41.14             1.41.12             62 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5                 No Data             Long long time ....      Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.3               Long long time ....      Scott Garman <scott.a.garman@...        No data                       
lsb                      1.4                 1.4                 6 days,                  Saul Wold <sgw@linux.intel.co...        1.4 is fixed version of LSB Te...
psmisc                   22.14               22.14               6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.0.3              10.0.3              6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     444                 444                 6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
cracklib                 2.8.18              2.8.18              6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
zip                      3.0                 3.0                 6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
unzip                    6.0                 6.0                 6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
lame                     3.99.3              3.99.3              6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libcap                   2.22                2.22                6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.20              0.6.20              6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.48.0              1.48.0              6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.8               0.9.8               6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.9               3.7.9               6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.7.0               1.7.0               6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
qemugl                   0.0+git1+d888...    0.0+git0+d888...    6 days,                  Saul Wold <sgw@linux.intel.co...        Do not upgrade to version: 334...
usbutils                 0.91                0.91                6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
squashfs-tools           4.2                 4.2                 6 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
man-pages                3.32                3.32                6 days,                  No Maintainer information               No data                       
mpfr                     3.1.0               3.1.0               61 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
libpcre                  8.20                8.20                61 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
btrfs-tools              git                 git                 89 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
python-scons             2.1.0               2.1.0               60 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
nasm                     2.07                2.07                60 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
flex                     2.5.35              2.5.35              60 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
gcc                      4.6.2+svnr181...    4.6.1               193 day                  Nitin A Kamble <nitin.a.kambl...        No data                       
tcl                      8.5.11              8.5.11              60 days                  Nitin A Kamble <nitin.a.kambl...        No data                       
sat-solver               0.0-git1+0a73...    git                 45 days                  Mark Hatle <mark.hatle@windri...        No data                       
prelink                  1.0+git1+bb1b...    1.0+git0+0xbb...    31 days                  Mark Hatle <mark.hatle@windri...        No data                       
tcf-agent                0.0+svnr1855        0.0+svnr1855        5 days,                  Lianhao Lu <lianhao.lu@intel....        1855 is the latest stable revi...
ltp                      20110915            20110915            Long long time ....      Jiajun Xu <jiajun.xu@intel.co...        No data                       
adt-installer            0.1.8+svnr596...    1.1                 110 day                  Jessica Zhang <jessica.zhang@...        No data                       
libtirpc                 0.2.2               0.2.2               22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
rpcbind                  0.2.0               0.2.0               22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
quota                    4.00                4.00                22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
minicom                  2.5                 2.5                 22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libsamplerate0           0.1.8               0.1.8               22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libical                  0.48                0.48                22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
flac                     1.2.1               1.2.1               22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libomxil                 0.9.3               0.9.3               22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
kexec-tools              2.0.2               2.0.2               5 days,                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
strace                   4.5.20              4.6                 22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
wireless-tools           29                  29                  22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
irda-utils               0.9.18              0.9.18              22 days                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
libgsmd                  0.1+svnr5394        5394                200 day                  Dongxiao Xu <dongxiao.xu@inte...        No data                       
hdparm                   6.3                 9.37                22 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
watchdog                 5.11                5.11                16 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
freetype                 2.4.8               2.4.8               22 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
oprofile                 0.9.7               0.9.7               22 days                  Dexuan Cui <dexuan.cui@intel....        No data                       
Any problem, please contact Mei Lei <lei.mei@intel.com> 


--------------050107030701030207020400
Content-Type: message/rfc822;
 name="Attached Message"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message"

Delivered-To: saul.wold@gapps.intel.com
Received: by 10.182.58.202 with SMTP id t10cs60190obq;
        Sun, 15 Jan 2012 00:11:48 -0800 (PST)
Received: by 10.68.208.196 with SMTP id mg4mr16086782pbc.108.1326615105191;
        Sun, 15 Jan 2012 00:11:45 -0800 (PST)
Return-Path: <yocto-bounces@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by mx.google.com with ESMTP id l9si19565367pbi.159.2012.01.15.00.11.43;
        Sun, 15 Jan 2012 00:11:45 -0800 (PST)
Received-SPF: neutral (google.com: 140.211.169.118 is neither permitted nor denied by best guess record for domain of yocto-bounces@linux.intel.com) client-ip=140.211.169.118;
Authentication-Results: mx.google.com; spf=neutral (google.com: 140.211.169.118 is neither permitted nor denied by best guess record for domain of yocto-bounces@linux.intel.com) smtp.mail=yocto-bounces@linux.intel.com
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP; 15 Jan 2012 00:11:43 -0800
X-ExtLoopCount2: 2 from 10.31.0.57
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; 
   d="png'150?scan'150,208,150";a="96627433"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
  by orsmga001.jf.intel.com with ESMTP; 15 Jan 2012 00:11:43 -0800
Received: from rrsmsx606.amr.corp.intel.com (10.31.1.130) by
 rrsmsx603.amr.corp.intel.com (10.31.0.57) with Microsoft SMTP Server (TLS) id
 8.2.255.0; Sun, 15 Jan 2012 01:11:43 -0700
Received: from fmsmga002.fm.intel.com (10.253.24.26) by
 rrsmsx606-2.rr.intel.com (10.31.1.136) with Microsoft SMTP Server id
 8.2.255.0; Sun, 15 Jan 2012 01:11:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
   d="png'150?scan'150,208,150";a="112395067"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])  by
 fmsmga002.fm.intel.com with ESMTP; 15 Jan 2012 00:11:36 -0800
Received: from linux.intel.com (linux.intel.com [127.0.0.1])	by
 linux.intel.com (Postfix) with ESMTP id B9C386A4087;	Sun, 15 Jan 2012
 00:11:32 -0800 (PST)
X-Original-To: yocto@linux.intel.com
Delivered-To: yocto@localhost.localdomain
Received: from orsmga002.jf.intel.com (orsmga002.jf.intel.com [10.7.209.21])
	by linux.intel.com (Postfix) with ESMTP id 361416A4087	for
 <yocto@linux.intel.com>; Sun, 15 Jan 2012 00:11:31 -0800 (PST)
Received: from orsmga101.jf.intel.com ([10.7.208.22])	by
 orsmga002-1.jf.intel.com with ESMTP; 15 Jan 2012 00:11:34 -0800
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AlcFALWJEk+M06l2/2dsb2JhbABEq11ce4EFgX4BgRsHCQEBFRQSAwEURIgCliOfAos0YwSIO4V1gRmFR4V0jG8
X-IronPort-AV: E=Sophos;i="4.71,513,1320652800"; 
	d="png'150?scan'150,208,150";a="437875353"
Received: from unknown (HELO autobuilder.yoctoproject.org) ([140.211.169.118])
	by mtab.intel.com with ESMTP; 15 Jan 2012 00:11:34 -0800
Received: by autobuilder.yoctoproject.org (Postfix, from userid 1008)	id
 E067B82EBD; Sun, 15 Jan 2012 00:11:33 -0800 (PST)
Date: Sun, 15 Jan 2012 00:11:33 -0800
From: Yocto Project Package Report System <yocto.package.reporting@intel.com>
To: <yocto@linux.intel.com>
Message-ID: <20120115081133.GA15283@autobuilder01.yoctoproject.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Yocto] [Package Report System]Upgrade recipes name list
X-BeenThere: yocto@linux.intel.com
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Yocto Project Discussions <yocto@linux.intel.com>
List-Id: Yocto Project Discussions <yocto.linux.intel.com>
List-Unsubscribe: <http://linux.intel.com/mailman/listinfo/yocto>,
	<mailto:yocto-request@linux.intel.com?subject=unsubscribe>
List-Archive: <http://linux.intel.com/mailman/private/yocto>
List-Post: <mailto:yocto@linux.intel.com>
List-Help: <mailto:yocto-request@linux.intel.com?subject=help>
List-Subscribe: <http://linux.intel.com/mailman/listinfo/yocto>,
	<mailto:yocto-request@linux.intel.com?subject=subscribe>
Sender: <yocto-bounces@linux.intel.com>
Errors-To: yocto-bounces@linux.intel.com
Return-Path: yocto-bounces@linux.intel.com

--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in distro_tracking_fields.inc to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
xz                            5.0.3                         5.1.1alpha                    Zhai Edwin <edwin.zhai@intel.com>                 No data                       
ed                            1.5                           1.6                           Zhai Edwin <edwin.zhai@intel.com>                 No data                       
matchbox-panel-2              0.0+git1+cdf7a22716b8746      2.0                           Zhai Edwin <edwin.zhai@intel.com>                 No data                       
eds-dbus                      2.30+git1+7337d11aed576e      6.0                           Zhai Edwin <edwin.zhai@intel.com>                 2.30.2 is latest stable releas...
libsoup                       2.2.100                       2.2.105                       Zhai Edwin <edwin.zhai@intel.com>                 No data                       
pciutils                      3.1.7                         3.1.9                         Zhai Edwin <edwin.zhai@intel.com>                 No data                       
qemu                          0.15.1                        1.0                           Zhai Edwin <edwin.zhai@intel.com>                 No data                       
logrotate                     3.7.9                         3.8.1                         Xiaofeng.Yan <xiaofeng@windriver.com>             No data                       
xserver-kdrive                1.7.99.2                      1.11.99.901                   Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
xserver-xorg-lite             1.11.2                        1.11.99.901                   Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
directfb                      1.4.15                        1.5.3                         Xiaofeng Yan <xiaofeng.yan@windriver.com>         No data                       
chkconfig                     1.3.55                        1.3.57                        Wenzong Fan <wenzong.fan@windriver.com>           No data                       
ccache                        3.1.6                         3.1.7                         Wenzong Fan <wenzong.fan@windriver.com>           No data                       
at                            3.1.12                        3.1.13                        Scott Garman <scott.a.garman@intel.com>           No data                       
blktool                       4-6                           4                             Scott Garman <scott.a.garman@intel.com>           No data                       
apmd                          3.2.2-14                      3.2.2                         Scott Garman <scott.a.garman@intel.com>           No data                       
dbus-glib                     0.92                          0.98                          Scott Garman <scott.a.garman@intel.com>           No data                       
base-passwd                   3.5.22                        3.5.24                        Scott Garman <scott.a.garman@intel.com>           No data                       
libnfsidmap                   0.24                          0.25                          Scott Garman <scott.a.garman@intel.com>           No data                       
libidn                        1.23                          1.24                          Saul Wold <sgw@linux.intel.com>                   No data                       
js                            1.7.0+1.8.0rc1                1.60                          Saul Wold <sgw@linux.intel.com>                   No data                       
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM, ...
libnl                         2.0                           3.2.5                         Saul Wold <sgw@linux.intel.com>                   libnl.3.2.2 is incompatible wi...
xserver-xorg                  1.11.2                        1.11.99.901                   Saul Wold <sgw@linux.intel.com>                   Do not update to *99* unstable...
libdrm                        2.4.29                        2.4.30                        Saul Wold <sgw@linux.intel.com>                   No data                       
xf86-input-evdev              2.6.0                         2.6.99.901                    Saul Wold <sgw@linux.intel.com>                   No data                       
xf86-input-keyboard           1.6.0                         1.6.1                         Saul Wold <sgw@linux.intel.com>                   No data                       
gnutls                        2.12.14                       2.12.16                       Saul Wold <sgw@linux.intel.com>                   No data                       
xf86-video-vmware             11.0.3                        11.99.901                     Saul Wold <sgw@linux.intel.com>                   Do not update to *99* unstable...
udev                          164                           177                           Saul Wold <sgw@linux.intel.com>                   No data                       
file                          5.09                          5.10                          Saul Wold <sgw@linux.intel.com>                   No data                       
dhcp                          4.2.0                         4.2.2                         Saul Wold <sgw@linux.intel.com>                   No data                       
openssl                       1.0.0e                        1.0.1                         Saul Wold <sgw@linux.intel.com>                   1.0.0e is latest              
qt4-x11-free                  4.7.4                         4.8.0                         Paul Eggleton <paul.eggleton@linux.intel.com      No data                       
directfb-examples             1.2.0                         1.5.3                         No Maintainer information                         No data                       
clutter                       1.8.2+git1+9041ea42655df      1.9.2                         No Maintainer information                         No data                       
eglibc                        2.13                          15871                         No Maintainer information                         No data                       
apt                           0.7.14                        0.8.16                        No Maintainer information                         similar to zypper, defer the u...
gst-plugin-bluetooth          4.96                          4.98                          No Maintainer information                         No data                       
socat                         1.7.2.0                       2.0.0                         No Maintainer information                         No data                       
linux-libc-headers-yocto      2.6.37+git-1+69cfbdf9f1f      2.6.37.6                      Nitin A Kamble <nitin.a.kamble@intel.com>         No data                       
linux-libc-headers            3.1                           3.2.1                         Nitin A Kamble <nitin.a.kamble@intel.com>         No data                       
diffstat                      1.54                          1.55                          Nitin A Kamble <nitin.a.kamble@intel.com>         No data                       
libzypp                       0.0-git1+15b6c52260bbc52      11.0                          Mark Hatle <mark.hatle@windriver.com>             No data                       
zypper                        1.5.3-git1+2c5bb6ceb99ec      11.0                          Mark Hatle <mark.hatle@windriver.com>             No data                       
gobject-introspection         1.29.0+gitr1+8d64bc23d2b      1.31.6                        Kai Kang <kai.kang@windriver.org>                 No data                       
libnewt                       0.52.13                       0.52.14                       Kai Kang <kai.kang@windriver.com>                 No data                       
rpm                           5.4.0                         5.4.0.0.20101229              Joshua Lock <joshua.lock@intel.com>               No data                       
polkit                        0.103                         0.104                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
iptables                      1.4.12.1                      1.4.12.2                      Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
gst-plugins-base              0.10.35                       0.11.1                        Dongxiao Xu <dongxiao.xu@intel.com>               gstreamer can not be upgraded ...
libmusicbrainz                3.0.3                         4.0.0beta1                    Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
tremor                        20101121                      18116                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
bluez-hcidump                 2.1                           2.2                           Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
bluez4                        4.96                          4.98                          Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
iproute2                      3.1.0                         3.2.0                         Dongxiao Xu <dongxiao.xu@intel.com>               3.1.0 is the latest version, n...
ofono                         1.0                           1.2                           Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
libpcap                       1.2.0                         1.2.1                         Dongxiao Xu <dongxiao.xu@intel.com>               No data                       
dpkg                          1.15.8.7                      1.16.1.2                      Dongxiao Xu <dongxiao.xu@intel.com                No data                       
inputproto                    2.0.2                         2.1.99.5                      Dexuan Cui <dexuan.cui@intel.com>                 Do not upgrade to version: 2.1...
xcb-proto                     1.6                           1.7                           Dexuan Cui <dexuan.cui@intel.com>                 No data                       
libxcb                        1.7                           1.8                           Dexuan Cui <dexuan.cui@intel.com>                 No data                       
syslinux                      4.03                          4.05                          Darren Hart <dvhart@linux.intel.com>              No data                       
The based commit merge time is:
Fri Jan 13 16:56:36 2012 +0000
The based commit is:
commit 8a98af2bb5858ef5fd47cf44183eb73a154043dc
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Jan 13 16:23:26 2012 +0000
Any problem, please contact Mei Lei <lei.mei@intel.com> 

--2fHTh5uZTiUOsy+g
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAyAAAAJYCAYAAACadoJwAAAABHNCSVQICAgIfAhkiAAAAAlw
SFlzAAAPYQAAD2EBqD+naQAAIABJREFUeJzs3XtYVWX+///X2uIpQbYKWqAieEgoPJvioIiH
tPyQp/I7qKSWluYJSUeng6Y1WTNZamVOaOZQWkZUViaeTRsqzTxkpoJiE1nAJOYJD7B+f3Sx
f+7ZGxOTtcX9fFwXV3Cve631XmwSXvte970M0zRNAQAAAIAFbJ4uAAAAAID3IIAAAAAAsAwB
BAAAAIBlCCAAAAAALEMAAQAAAGAZAggAAAAAyxBAAAAAAFiGAAIAAADAMgQQAAAAAJYhgAAA
AACwDAEEAAAAgGUIIAAAAAAsQwABAAAAYBkCCAAAAADLEEAAAAAAWIYAAgAAAMAyBBAAAAAA
liGAAAAAALAMAQQAAACAZQggAAAAACxDAAEAAABgGQIIAAAAAMsQQAAAAABYhgACAAAAwDIE
EAAAAACWIYAAAAAAsAwBBAAAAIBlCCAAAAAALEMAAQAAAGAZAggAde3aVTbb5f1zkJ2dLZvN
phEjRpRzVZCkTZs2yWazaebMmZ4uBQCAq4IAAlxlX331lWw2mzp27Oh2+/Lly2Wz2WSz2fTD
Dz+4bD916pSqVKkiPz8/FRUVlXe5DoZhlGv/y/XEE0/87h/cr7/+uteFoPL6fktSo0aNHD+T
NptNPj4+ql+/vrp06aJ//etflv4clifCHABcG3w8XQBwvWnTpo1q1aqlHTt26MSJE/Lz83Pa
vn79escfkxs2bNC9997rtH3Lli26cOGCevbsqUqVKllW97Xmcv7gLs8/yr1RYmKi7Ha7zp49
qw0bNuizzz7T1q1btX79ei1dutTT5V01/NwAgGcxAgJcZYZhqGvXrrpw4YI2b97ssn3Dhg3q
3r27/P39tWHDBrfbJal79+7lXitQwjAMJSYmavr06frb3/6mjIwMffbZZ5KklJQUffnllx6u
8OoxTdPTJQCAVyOAAOWgJDz8b8DIzs5Wdna2evbsqS5dupQpgCxbtky9evVScHCwAgICFBsb
qzfffLPUGg4ePKihQ4fq1ltvlZ+fn1q2bKnExESdOHHisq9jw4YN8vf3V3BwsHbv3l1qv/j4
eNlsNn366adut6empspms2nChAmXfe4rcfFclmeeeUZ/+tOfZLfbddttt+n5558vdb+PP/5Y
3bt3V61atdSiRQuNHTtWx48fdzs35uLbeL799lsNHjxYTZs2VaVKlfT9999LkjZu3KgHHnhA
ERER8vf3V0BAgDp27KgXXnih1NuZTp48qXHjxql58+YKCAhQnz599P7771/yes+ePatZs2Yp
OjpatWrVUkhIiO666y5t3769LN+2UnXs2FEtWrSQJH399dcu23/66Sc9+OCDat26tfz8/BQe
Hq777rtPP//8s0vf4cOHy2az6ciRI0pOTla3bt1Uq1YttWrVSo8++qguXLjgtoasrCwNHjxY
zZs3V82aNdWuXTs9/PDDOnny5CXPsXjxYt1+++2O/1dGjBihbt26SZJmzpzpdMtZaT+3AIDy
QQABykHJHzr/GzDWr18vSYqNjVVsbKx++OEHHTx40LH92LFj+vrrrxUQEKCWLVtKkoqLi3X3
3Xdr6NCh+vTTT9WmTRvdeeed2rZtmxISEvTQQw+5nP+tt95Sy5YttWzZMtlsNg0bNkynTp3S
/Pnz1aJFC+Xm5v7uNbz55pu64447VL9+fX3++eeOP0TdKanh1Vdfdbv9n//8pwzD0OjRo3/3
vFfDgw8+qLlz5yo8PFyDBw9WXl6eJk+erPj4eJe+CxYsUFxcnHbs2KG4uDjFxsbq008/Ve/e
vXXixIlSb9fZuXOnYmJi9Mknn6hHjx5KSEhQlSpVJEl///vftW7dOrVp00ajR49W165ddeDA
AT388MO66667XI5VUFCgDh06aMGCBfL399ewYcNUo0YNDR48uNSQ+eOPP6pt27Z64okn9N13
36lfv366+eabtWrVKnXq1EnLli37A9/B/19xcbEkyW63O7Vv3LhRt9xyi5KTk3XixAnde++9
qly5sl5//XXdeuut+vbbb90e7+mnn9aUKVMUHBysYcOG6fz585o9e7a6devmEkLS09PVsmVL
paamKiIiQg888ICqV6+uF154QS1atFBOTo7bczz55JMaNWqUfvrpJ913333605/+pH79+mnY
sGGSfguqTzzxhOMjJCTkj36bAABlYQIoFzfddJNZqVIlMy8vz9E2ePBg0263m8XFxebOnTtN
wzDMhQsXOranpaWZhmGYgwYNcrS9/PLLpmEY5tChQ80TJ0442k+cOGH269fPNAzD3Lx5s6P9
6NGjZs2aNc3AwEBz//79TjWlpKSYhmGYI0aMcGqPiYkxbTab4+tnnnnGtNlsZpcuXcxjx445
9T18+LDbY0RGRprVqlUz//vf/zq1Z2ZmmoZhmNHR0b/7PTNN05wxY4ZpGIY5c+bMUvssWbKk
1OswDMMMDQ01jx496mg/fvy42aZNG9MwDHPVqlWO9p9//tn09fU17Xa7efDgQUf7+fPnzbvu
uss0DMPp+2Kaprlx40bTMAzTMAxzxowZ5qlTp1zqO3TokEtbUVGR+f/+3/8zDcMwP/zwQ6dt
06ZNMw3DMEeNGuXUvnnzZse5/vf7cc8995iGYZjz5883L1y44Gj/z3/+YzZq1MgMCAgwf/nl
F5c63AkJCTFtNpuZnZ3t1P7vf//bNAzDrFKlinn8+HFH++nTp81GjRqZVatWNTMyMlxqttls
Zrdu3Zzahw0bZhqGYdrtdqefy7Nnz5p33HGHaRiGuWDBAkd7YWGhGRoaatpsNnPt2rVOx/rr
X/9qGoZhxsfHuz1HnTp1nP6fKFHy2l3qZwsAUP4YAQHKSY8ePVRcXKyNGzc62jZu3KjOnTvL
MAy1aNFCderUcRolKfm8ZARFkmbNmqXKlSvrqaeekq+vr6Pd19dXEydOlCQtWbLE0T537lyd
OHFCEydOVLNmzZxqGjJkiEJCQvTmm2863tm+mGmaGjdunP76179qwIABWrt2rcs736UZM2aM
zp496zJZuWRUxKrRD0kaOHCgbrzxRsfXNWvWVEJCgiRp/vz5jvbXX39dp06dUo8ePdSkSRNH
u4+Pj0aNGnXJc1StWlVTp07VDTfc4LItNDTUpc1ms+mxxx6TJKefCdM09dJLL8kwDI0dO9Zp
ny5durgdefruu++UmpqqZs2aady4cU6LFdSvX1/Dhg3Tf//7X61cufKS13Ax0zQ1d+5cPfHE
E/rrX/+qqKgoRUdHy263a+HChapZs6aj79KlS3XkyBElJCS4rPbWpUsXRUdHa+PGjTpy5IjL
eXr06OH0c1mlShU98MADkpxfmw8//FDZ2dm65ZZb1KNHD6djTJo0SZL09ttvu73d64477lCX
Ll0u+9oBANZiFSygnHTr1k1vvPGGNmzYoHvuuUf79u3TTz/9pNjYWEm/TfqNiYnRpk2bHPts
2LBBhmE45n/k5eUpNzdXDRs2dAoZJUzTVOXKlXXgwAFH2549exz7PvHEEy771KlTR0eOHFFW
VpaaNm3qdKwBAwbogw8+0IQJEzR37twyXW9CQoKmTp2qV1991fEH4rlz57RkyRLVqVNH99xz
T5mO90f06tXLpa13795KSkrS/v37HW0ln/fs2dOlf2xsrHx8fEqds9GlSxdVr17d7bYzZ85o
yZIleuONN3TkyBHl5uY6HScrK8vx+Q8//KBTp06pXr16jtvu/rfu/51/U/Ia33jjjW6XlC1Z
3vnin4vLMW/ePJe2hQsXatCgQW7Pf/78ebc/Y5UrV3ac/39vb3L32nTv3l0+Pj46dOiQiouL
ZbPZHK9N7969XfoHBgaqXbt22r59uw4cOKB69eo5bb/zzjsvcZUAAE8jgADl5H8nopfM/7h4
dCMmJkZpaWnas2ePAgMDtW/fPjVo0MDxbnx2drYk6fvvv9esWbPcnscwDP3000+Or0v2ufjd
5NL2uTiASL8tAezj46O4uLgyXOlvfH19NXToUC1cuFCffvqpunTpovfee0/5+flKSkpyzI/4
PT4+v/2zdP78+VL7nDt3zqnvxQzDUPv27V3amzdvLl9fX/3444+OtpLP27Zt69K/Ro0aat68
ufbu3eu2htKe81JUVKS+fftq3bp1atq0qe68807Vrl1bNWrUkGmamjlzpn799VeXGtq1a+f2
eLfddptLW8lr/Omnn5Y6gfp/fy5+j2EYOnz4sBo2bKiCggJt3LhR06ZN05AhQ1SpUiUNHDjQ
5fz/+te/Lnk8d+d399r4+fk5vtc///yzbrrpJkeIcnf90m/f/+3bt7udB1LaawMAuDZwCxZQ
Tho0aKCwsDBlZmbqhx9+0IYNG1S7dm2nd7lLwsj69evdrn5Vv359Sb+9a1xcXOz2o6ioyOkd
9ZJ9jh49esl9Onfu7FSvYRjatGmTatWqpbi4OK1evbrM11wyGf2f//yn47+GYThusbkcJe+Y
lzbB+OJtjRo1ctlmmqbbJWP37dunkydPKigoyNFW8rm7VaNOnjyp7777rtQaSntGy7p167Ru
3Tq1bt1a+/fvV3Jysp599llNnz7d7bv/wcHBpdYgSV988YVLW8lrPHv27Eu+xosXLy61/kux
2+3q37+/3n77bfn4+GjMmDHKz893OX9GRsYlz19y29vF3L02v/76q7777jv5+Pg4RjNKzuHu
+iXp888/d+p3MW9+fg4AVAQEEKAc9ejRQ6Zpat26ddq0aZNiYmKctkdERCgwMFAbNmxwG0Bu
uukmBQYGaseOHSosLLysc7Zq1UqStHXr1jLXe+utt2rTpk2y2+3q169fmeYQlOwfHR2ttLQ0
/fvf/3Zc8//ORbmU5s2bS3L/h2qJkj9KSztuenq6S1tJoCo5/sWfr1271qX/xo0bS10a9lJK
QkvJ/JyLLV++3KUtODhYNWrUUG5urnbu3Flq3Rf7I69xWbRq1UozZsxQfn6+Hnnkkatyfnev
zfr163XhwgU1btzYsexxyWvj7vrz8vK0fft2GYahm2+++bLPXTIKd7n/LwEAygcBBChHJSMc
L7zwggoKChzzP0qUPLRw8+bNjiek/+/zP2bMmKG8vDyNGjXK7aTeo0ePat++fY6vJ06cKLvd
rkmTJmnr1q0uk83PnTunLVu2lFpzeHi4Pv30U9WtW1d33323UlNTy3TNDz30kM6ePeuY81HW
yeft2rVT+/bt9e2337q9jey9997TmjVrFBISoj59+rg9xrvvvqujR486vj5+/LhSUlIkyelZ
JCXL3a5bt85pOeTz588rOTm5THWXuPPOO2UYhj788EOn9s2bN+vtt9926W8YhsaPHy/TNPXy
yy+77FMy3+Ji4eHhuvvuu/Xxxx/r+eef1/Hjx1367NmzR3l5eVd0DRebOHGi6tWrp9dff12Z
mZmSpHvvvVeNGjXSrFmztGrVKsctcSWKi4ud5jZdbP369U7zcM6ePetYqODi1yYuLk5hYWHa
u3ev4/bFEi+++KKk354/ExgYeNnXUjLitWPHjsveBwBQDjy2/hbgBfLy8hzLqBqGYX7zzTcu
fV555RXH9oiICLfHGTJkiKNPmzZtzKSkJPO+++4zO3fubFaqVMl89tlnnfq/++67pp+fn2kY
hlm3bl3zvvvuM8ePH2/27dvXrF27thkeHu7Uv2T52osdPnzYDA0NNX18fMw333zTqd3dErgl
zp07Z9arV880DMOsV6+eef78+cv6Xl1s586dZmBgoGkYhtmxY0fzoYceMidOnGh269bNNAzD
9PPzM9esWeOyX8l1jB492qxXr555//33m6NHjzZDQkLcLttqmqY5f/5802azmXa73UxISDAn
TJhg3nLLLWZUVJTZpk0bs3Llyk79L2cp1+7du5uGYZi33HKLOWbMGPPmm282DcMwH374YdMw
DDM2Ntapf0FBgXnLLbeYhmGY7du3NydNmmTefffdZvXq1c2RI0e6PV9eXp7ZqlUrxzK5t99+
uzllyhRz8ODB5q233moahmF+8cUXl/X9Lvn+HDlyxO32uXPnunz/tm7datatW9c0DMP09/c3
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
X3MAfmZwnSNHjljbtm2tRYsW9u2331p2drYdO3bMbrnlFvN4PDZo0CB/RzytY8eOmZnZiBEj
rGPHjvbnP//ZKlSoYIsWLTIzs9zcXH/GKyQzM9PuuOMO83g8NmHCBNu/f7/l5eUV2s7r9foh
3Zn5+OOPLTIy0qZNm2aHDx/2LT/V8wgE69atsxo1alhMTIxNmTLFsrKyzMxszJgx5vF4bMGC
BWYWuK/5wYMH7d5777XWrVvb+vXrffv8gAEDrGbNmvbdd9/5OeGpufXYkr8fP/7443bZZZfZ
pk2bfMtef/11q1Chgt1+++2WkZHhz5inNH/+fKtZs6YlJibagAEDLCgoyP71r39ZTk6OmQXu
Pn748GF76aWXrF69evbss8/ajh077MCBA3bs2DFLTEy0atWq2RdffOHvmAACVOB+lIXftHnz
Zs2fP1+9evXS5ZdfrrCwMJUqVUr/+te/VKZMGT3//POaN2+ev2P+pvxPr1evXq26detq2LBh
Cg0N1XPPPSdJCg4ODqhpHqGhoWrSpImCg4MVEhKiiy++WEFBQdq6datmzpypVatW6eDBgwH9
Sd/SpUtVs2ZNderUSaGhofr666/197//XYMGDdL48eP1yy+/+DtiAZUqVdKQIUO0atUqdenS
ReHh4ZKkWrVqSZK2bt0qKXA/XU1NTdXrr7+u5s2bq2HDhr79uWzZsqpUqZIuueQSPyc8NTce
W8xMQUFBMjO9//77atasmerWretb36lTJz399NOaNWuW3n77bR05csSPaX9lJ0xNuuSSS/TP
f/5Tzz//vNq2batXXnnFd8+oQN3Hc3Jy9NZbb6lJkybq0aOHqlevroiICJUqVUqDBg3S7t27
XTNCDMB5FBAX2rlzpyTpxx9/lHT8F5mZ6YorrlCLFi0kSWPHjvVbvnw5OTm+O7+fKP/NWLly
5XTs2DE1aNBASUlJWrNmjV599VVJ/p3mcXLuMmXKKCkpSc2bN9fo0aO1adMmdenSRQkJCerR
o4cSEhLUtGlTjR8/3m+Z852cPf+13r9/v+98jyeffFJNmzbVvHnz9Oabb+r+++9Xp06dtHv3
br9klgrnrlGjhnr37q2qVatK+vXNWnx8vMLCwvTzzz9LOn4lL3871X5+5MgRRUVFacWKFb7z
mr777jvNmjVLN954o6ZPn65ly5b5I67PqXK75diSnZ2txYsX+07Uzj9nIiYmxpc9X1hYmDp3
7qx27drp5Zdf1o4dO/yUunBuSWrVqpWWLl3quzfUoEGDtHPnTr3zzju+824sAM6jODG7JJUv
X17PPvusxo8fr8qVK0v6Nef+/fslSQcPHvRPWAABjwISwBYuXKiJEyfqn//8pz788EPf8qZN
m6ps2bJavny50tLSFBQUpGPHjmnHjh3au3evGjZsqI8++sh3sqs/fnm99dZbKlu2rJ5++mkd
PXq0wLr8crFt2zbfm7P7779fMTExeu2113y/fPM/AQyE3LVr11afPn20ceNGNW7cWD/++KOe
eOIJjRkzRm+++ab27Nmjxx57TF999ZWkwHnN89/khIWFaefOnXrjjTe0dOlSJScna/Hixdq4
caOeeOIJLVmyRC+88IJf3jCcbl/Jl/88jhw5osjISH3xxReS5PfLCP9W9oYNG+rhhx/WwoUL
FR8fr/bt2ys+Pl7Z2dn65ptv1L9/fyUmJuqNN95Qbm5uwORu2rSpwsPDA/rY8tRTT+niiy/W
3LlzfftrqVKldOzYMVWuXFkbN27U+vXrC1zUoly5cvrb3/6m7du366OPPvJL9lPlluQbJcgv
0wkJCerdu7feeOMNrVq1SpL/R0FOzp7/2t14440qXbq073XO/+8PP/ygsLCwgB3pAxAAnJ7z
hd83f/58i4uLs4YNG9r1119vHo/HQkJCbOnSpb5tkpOTzePxWMeOHe3HH3+09PR0Gzp0qNWv
X99eeukli46OtoEDBzqePX++co8ePczj8VhkZKStWLGiwDZ5eXl29OhRu/7662306NG+x4wa
NcrCwsKsdOnSVq9ePVu5cmVA5d61a5f179/f/vrXv9q2bdsKzM1+5513LCQkxO666y7HMuc7
Xfb8dXPmzLHw8HCrWrWqxcTE2I8//uh7/O7du+2vf/2rRUVFOTpH/kxe81O55ppr7JprrrGM
jAy/zY8/k9c8Ly/PVq1aZYsXL7aqVata7969bdu2bWZmtnHjRrv99tstKirK/u///i8gcuef
pxKox5bZs2dbtWrVLDo62l599VXbv3+/b13++R7Tpk2ziIgIGzZsWKF1O3futJYtW9o111wT
MLl/y9atW6169ep222232Q8//OBAylM72+z5+9dtt91mN9xwQ8CdzwcgcFBAAkhOTo4NHjzY
atWqZX/7299s9erVtmfPHps3b55FR0dbUlJSge2TkpLM4/FYhQoVrGzZshYWFmbvvvuumZnV
rFnTnnzySTPzz4nGTZo0sR49eljjxo3t1ltvtYMHD/rW5f+SqlOnjo0bN87Mjp90fNVVV1lQ
UJBFRETYf/7zHzP79U1RIOQ2M/vmm29s+/btvu/zf8Hm5eVZ3bp1rXnz5nbo0CG/vDH+vexN
mjQxj8djHTp0sMOHD1tubq4v5+jRo83j8dgnn3wScLnz5e8Lffr0sYsvvti3nT9P0v297F6v
115//XWrWbOm7dy5s0DWcePGmcfjsQ8++MDp2IVyZ2dnF1gfKMcWr9drBw4csGbNmpnH47GB
AwfaTz/9VOiN7YnHiQYNGthll11mn3/+uZkVvKhF9+7dLT4+vsiL9pnmPt2+++KLL1pQUJBN
njzZtyy/ABTl636+2bOysuySSy6xRx99tMDy/P9HgXrhCwDOYgpWAAkJCVFqaqo6d+6sESNG
6Oqrr1ZUVJRuuOEGValSRcHBwcrLy/NNmZg4caIWL16sRx55RMnJydqyZYs6d+6sffv2yePx
qHTp0pKcPZ8iLy9PeXl5qlixourUqaO77rpLCxYsKHDiqsfj0Z49e3TxxRfL6/WqS5cuaty4
sWrXrq1hw4YpPDxc7777riTnLst7Jrkl6corr1RMTIyk4+dX5E8Bys7O1tGjR1WqVCmVKVPG
0SkTv5c9f1pE/kn+Cxcu1KZNmxQcHOzLmZqaqsjISFWrVi1gcp8sf18oX768srKytHz5ckn+
mZ5yptnNTOvWrdORI0dUuXJleTwe3/SV77//XqGhoSpfvrzfc8+fP9+3XgqcY4vH41FERIT+
7//+T9HR0erQoYOio6N9x8KffvpJOTk5BaZTvfDCC9qxY4fGjBmjnJycAtP0srOzlZubq7Jl
ywZE7pOnLp2oS5cuio+P10svvaTly5frnXfeUdu2bXX06NEifd3PNXv+/4NvvvlGP/zwg5o1
aybp+LTJTz/9VL1791Zubm5AX8YZgIP823+QL/9Toa1bt/o+jcz/hGnz5s2WkJBgH374oe3Z
s8f3mBOneuTbtWuX/elPf7IqVapYWlqaQ+kLysvLs2rVqtnMmTNt165d1qRJE2vQoIHt3LnT
L+VvnAAADLpJREFUt43X67XatWubx+Oxq666yt577z07dOiQmZm1bdvWQkJC7Kuvvgq43GZW
YOTAzOzAgQP297//3SpUqGDz5s1zNHO+02U/MevgwYPN4/FYs2bN7PPPP7dNmzbZ4sWL7bLL
LrMHHnjA8U8nz/Q193q9vmzz5s0zj8djs2fP9q3zhzPN3r9/f4uIiLAJEyaYmdmOHTvsv//9
ryUmJtpzzz0XkLkD5dhy9OhRMzNbsmSJeTwee+yxx8zMbMKECdaoUSO7/PLLrVGjRjZw4MAC
Wfv372/h4eHWrVs3O3DggGVmZtpnn31ml19+ub322msBlfvk/ffE79977z0LDg62mjVrWqlS
paxVq1Z28ODBIt3nzzV7/gjJyJEjLTIy0nbs2GGbN2+2bt26WalSpaxdu3aWk5MTsJcVBuAs
CkgAON082VmzZlnNmjXN4/FYTEyMRUVFWXJysh04cMDMfv1ltXv3blu7dq0NHjzYqlataqNG
jSr0RtmJ7EePHrUDBw5Yw4YNfVNL3n77bQsODrZRo0aZmdmGDRvMzGzGjBn28ssv208//VTg
uaxfv963TSDmzs+5a9cuW79+vQ0ZMsQqVKhgffr0sczMzCLNfa7Z169fb2ZmGRkZNnr0aCtX
rpyFhoZabGysVa5c2Vq2bOk7PyGQcue/5ie+uVyzZo15PJ4C8/yL2vm85lu2bLGqVauax+Ox
a6+91m6//Xa75JJL7M4777Sff/454HLnv+b5U2b8fWzJ/3vat29vpUqVsri4OIuKirLbbrvN
7rvvPqtfv755PB67//77fVOrfvnlF3vuuecsNDTUKlWqZImJiVazZk275ZZbChXEQMi9b9++
Aj/jyJEjtm7dOnvwwQfN4/FY8+bNbdWqVUWa+0JlT0pKsmbNmtnQoUOtfPny9oc//MGWL19e
5NkBuAsFJEDs2bPHUlNTzezXg/9XX31lcXFx1q1bN/vggw/s/ffft969e5vH47Enn3zSd0O5
vXv32r///W+rX7++1ahRw6ZMmeK37GbHz2UpV66cffzxx771Xbp0sQoVKtjVV19tZcqUsT17
9pjX6y3wBsnpT8bONndYWJjvDePChQvt2muvtSuuuMKio6PtjTfeCPjsu3bt8m2/YsUKGzdu
nA0ePNjRUZvzec3z948NGzZY3bp1HR9tOpfsO3bsMDOzL774wh555BF74IEH7JlnnrG5c+cG
dO781zwQji2bNm0yM7Pt27dbSEiIderUyTZv3mx79+41M7Off/7ZHnroIbvooots8eLFBR6/
dOlSe/HFF61fv36Onmtzrrnzi/aGDRssODjYKlWqZK+//rpjuc8ne25urv3www++sl2xYkXf
OX4AcDIKiB+cPM1l9+7d5vF47MUXXzSzXz95zMrKsl27dhV4Y56VlWXx8fF2ww03FPgZX3/9
tU2bNq2Ik/9+dq/Xa5s3b7batWv7TgLdv3+/3XrrrebxeKxmzZq2cOFCx08uv1C586cn5Obm
2rBhwxz5BXuhsjvxqXVR5D5xX3Eq/4XeX5xyIfeVfIFybDE7frW5/OJ04uMWL15sHo/HHnro
oVP+rKJ0IXOfuH/nj0gVpQuZ3ez4cbFx48Y2fPjwog0OwPU4G8xhXq+30El4VapU0VVXXaUV
K1ZI+vWk2vDwcFWtWrXASbahoaE6cuSIMjIylJOT41veoEEDderUKSCyR0ZGKicnRxERERo/
frxq1KihTZs2qU2bNsrIyFBoaKhjJ5df6NwhISEyMwUHB2vIkCG67777XJP9xJPOi1pR7StO
5L/Q+4vkzD0nLvS+ki9Qji2SdNdddykxMVHS8dc0Ly9PQUFBatSokaTjF/LIX+aEC507/6aK
ktSvXz9XZc/NzVVwcLCWL1+uYcOGFWl2AMWAX+tPCbV+/Xp75JFH7LPPPjMzs+zsbOvbt6/F
xMT4rvl+qpNADx48aG+++aZVr17d/v3vfxfYLpCyf/bZZxYeHu77Gj58uO3atcu++uorq1Gj
hjVu3LjQZT/JXfyyuzW3m7O7NfeZZs/Ly7O8vLwCIzSZmZk2dOhQK1OmjH300UfkLiHZAbgb
BaSInXxSX3p6uu/66k2bNrXNmzeb2fF7AlSsWPGU89qPHDliGRkZNmXKFKtTp461adPGkZuX
nW32E+e1t2rVyvr06WPr16/3TUM5evSovfbaazZp0iRyF7Psbs3t5uxuzX0u2U91XDx69Khl
Zmba66+/btHR0dalS5czuslfSczt9uwAih8KSBE53TkOvXr1sujoaLvhhhusTp069tNPP1lm
ZqaVLVvWRo8ebWa//rJYunSp9ezZ02666SYLDQ21vn37FvndZc83u9nxX275V+pyiltzm7k3
u1tzm7k3u1tzm1244+Knn35qDz/8sP3xj3+0kJAQGzBgQJGeV+bW3G7PDqD4KjV8+PDh/p4G
Vhzlz61NSUnRrbfeql9++UXNmjWTx+NRmTJlNG7cOH388ceaM2eOlixZopiYGB07dkyffPKJ
evfu7Xv8pk2btGnTJlWsWFFTpkzRXXfdVeTzm883uySFhYUpNDS0SHMWl9xuzu7W3G7O7tbc
FyJ7/uPXrFmj1atXq2LFipo2bZruvPPOIj0uujW327MDKMb83YCKq8zMTLvnnnvsjjvusEce
ecRCQkLs5ZdftuzsbPv555/t0ksvtXfffdc2bdpkHTp0sMsvv9y6du1q9erVs7Vr1/p+zrFj
xxwf4r4Q2f1xsym35nZzdrfmdnN2t+a+UNnNjk9LTU9PJ3cxzw6g+KKAXACnmhKVnp5u1apV
s/vuu88OHz5sd955p1WuXNmefPJJMzNr166d9e3b18zM1q1bZ23btjWPx2OVKlWy6dOnk72Y
5nZzdrfmdnN2t+Z2c3a35nZ7dgAlCwXkApo1a5YdOnTI933Pnj2tbt26Znb8hl7du3c3j8dj
c+bMsfvvv9+aNWvm+yQyMzPT6tWrZx6Px2bOnEn2Yp7bzdndmtvN2d2a283Z3Zrb7dkBlAwU
kHNw8s2bjh07Zl26dDGPx2P33nuv7xKWM2fONI/HY8uXLzczs23btlmvXr2sQoUKdvfdd1tQ
UJDvyiNmZikpKbZlyxayF6Pcbs7u1txuzu7W3G7O7tbcbs8OoGTjJPRzcPLN0LxerzZs2KCU
lBStWrVKBw8e1GWXXaZKlSrpP//5jy666CIlJiYqMjJS7du31/Lly/X555/r4MGDqlatmlq0
aCFJqly5sipUqED2YpTbzdndmtvN2d2a283Z3Zrb7dkBlGxcwuIceL1eDRs2TIsWLZLX61Vw
cLAqVKigli1bql+/fvrqq6/Ur18/xcXFKSoqSlu2bNH+/fvl9XolSePGjdMtt9yi0NBQ1atX
j+zFOLebs7s1t5uzuzW3m7O7NbfbswMo4fw9BONGv/zyi1WtWtXi4uJs8uTJZma2adMmi4iI
sCVLlth///tfq169uvXv39/69OljMTExlpWVZWa/XpN9586dfrkOv1uzuzW3m7O7Nbebs7s1
t5uzuzW327MDKNkoIOcoNTXVWrVqZRUqVLDPPvvMzMxatmxp3bp1MzOzzz//3CIjI61hw4a+
k/3MTn9TKKe4Nbtbc5u5N7tbc5u5N7tbc5u5N7tbc5u5OzuAkotzQM5RZGSk6tevr5SUFI0f
P16XXnqpKlWqpC+++EJ//OMf1aBBA9WoUUOrV6/Wrl27VLt2bSUmJgbEjZvcmt2tud2c3a25
3ZzdrbndnN2tud2eHUDJ5TEz83cIN8vIyFCLFi1Urlw5VapUSWamxx57TC1atJCZ6b///a++
++479evXz99RC3Frdrfmltyb3a25Jfdmd2tuyb3Z3Zpbcnd2ACWQk8MtxU3+ddNXrVplbdq0
sbCwMPN4PDZr1iw/J/t9bs3u1txm7s3u1txm7s3u1txm7s3u1txm7s4OoGRiCtZ5yL8EYnR0
tC699FL99NNP2rJli6pXr67WrVv7Od3puTW7W3NL7s3u1tySe7O7Nbfk3uxuzS25OzuAkokp
WBdQRkaGFi5cqC5duvg7yllza3a35pbcm92tuSX3Zndrbsm92d2aW3J3dgAlAwXkAjGzQjeF
cgu3Zndrbsm92d2aW3Jvdrfmltyb3a25JXdnB1ByUEAAAAAAOIbr8AEAAABwDAUEAAAAgGMo
IAAAAAAcQwEBAAAA4BgKCAAAAADHUEAAAAAAOIYCAgAAAMAxFBAAAAAAjqGAAAAAAHAMBQQA
AACAYyggAAAAABxDAQEAAADgGAoIAAAAAMdQQAAAAAA4hgICAAAAwDEUEAAAAACOoYAAAAAA
cAwFBAAAAIBjKCAAAAAAHEMBAQAAAOCY/wfGyJAYwVaMNQAAAABJRU5ErkJggg==

--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline



--2fHTh5uZTiUOsy+g--

--------------050107030701030207020400--
