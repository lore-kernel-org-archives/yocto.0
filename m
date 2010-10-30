Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 669C04C80BD4
	for <yocto@yoctoproject.org>; Sat, 30 Oct 2010 04:11:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Oct 2010 02:11:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,263,1286175600"; d="scan'208";a="568760654"
Received: from unknown (HELO [10.255.12.196]) ([10.255.12.196])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2010 02:11:31 -0700
Message-ID: <4CCBE142.9070609@linux.intel.com>
Date: Sat, 30 Oct 2010 10:11:30 +0100
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: World build state
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Oct 2010 09:11:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Folks,

I just completed a world build and the situation is not that bad 
currently, the summary of the failures are listed below.


libsndfile1_1.0.17
  - Failed in compilation of flac.c
loudmouth_1.4.0
  - Failed in compilation of asyncns.c
  - asyncns.c:159:14: error: static declaration of 'strndup' follows 
non-static declaration
plugin-evolution2_0.36
  - Failed in do_configure
    CMake Error at cmake/modules/FindEPackage.cmake:166 (MESSAGE):
      Evolution Data Server not found.
      Call Stack (most recent call first):
       CMakeLists.txt:9 (FIND_PACKAGE)
clutter-gtk-0.10_git
  - Failed during linking
ohm_git
  - Failed during compilation of ohm-plugin-dpms.c
  - missing X11/extensions/dpmsstr.h
git_1.7.2.1
  - Failed during do_configure
  - Need a configure update for checking of "fopen'ed directory"
openswan_2.4.7
  - Failed during compilation of optionsfrom.c
  - optionsfrom.c:34:14: error: conflicting types for 'getline'
clutter-gtk-1.0_git
  - Failed during linking
gnome-terminal_2.26.3
  - Failed during linking
matchbox-themes-extra_svn
  - Failed during install with an overwrite error
  - will not overwrite just-created 
`/intel/poky/demo/build/tmp/work/core2-poky-linux/matchbox-themes-extra-0.3+svnr1524-r0/image/usr/share/themes/mbcrystal/matchbox/theme.desktop' 
with `theme.desktop'
libapplewm_1.0.0
  - Failed during compilation of applewm.c
  - missing X11/extensions/applewmstr.h
telepathy-idle_0.1.2
  - Failed during compilation of idle-connection.c


Bugs will be files soon on these items.

     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


