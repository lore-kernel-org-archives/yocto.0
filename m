Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFEEF4C80FFE
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 04:13:31 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Dec 2010 02:13:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="640711537"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 27 Dec 2010 02:13:01 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 27 Dec 2010 18:13:00 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 27 Dec 2010 18:12:59 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 27 Dec 2010 18:12:57 +0800
Thread-Topic: Autobuilder upgrade to Buildbot 0.8.3
Thread-Index: AQHLotnieLIb83jZjEOr0ky1Y5Dol5O0E4Zw
Message-ID: <749B9D3DBF0F054390025D9EAFF47F223195FA9E@shsmsx501.ccr.corp.intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder upgrade to Buildbot 0.8.3
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
X-List-Received-Date: Mon, 27 Dec 2010 10:13:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Beth,

Thanks for your work to make autobuilder setup process more convenient.
I used the opensuse 11.2 to setup the autobuilder for team testing, but I m=
eet one problem, all build tasks blocked by do_fetch() . When excute do_fet=
ch(), it will stay all the time until timeout.
The autobuilder print the local proxy environment like this:
  ftp_proxy=3Dhttp://proxy01.pd.intel.com:911
  http_proxy=3Dhttp://proxy01.pd.intel.com:911
  https_proxy=3Dhttp://proxy01.pd.intel.com:911
I think it's a autobuilder proxy issue, but I don't know how can I set the =
correct proxy for autobuilder. I notice you made a file under class directo=
ry named example-proxy.bbclass, but I didn't find the way to use it. Can yo=
u tell me how to set the correct proxy for autobuilder? Thanks a lot~

Happy new year
Lei=20
>-----Original Message-----
>From: yocto-bounces@yoctoproject.org
>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Flanagan, Elizabeth
>Sent: Friday, December 24, 2010 3:45 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] Autobuilder upgrade to Buildbot 0.8.3
>
>All,
>
>I've now finished the upgrade of the autobuilder repo to include buildbot =
0.8.3.
>I've rewritten the installer and updated a bunch of build helper files. I =
wanted
>to take a few moments to explain some of the changes regarding installatio=
n.
>
>The big change is the upgrade to buildbot 0.8.3. Buildbot now keeps the ma=
ster
>and slave code in different tarballs, so I've split up the installer to al=
low people
>to install either a master, a slave or both.
>
>I've also added some command line args to help people in configuration of =
a
>local BB. To see the long form of usage:
>
>git clone git://git.pokylinux.org/poky-autobuilder
>cd poky-autobuilder
>./scripts/poky-setup-autobuilder --help
>
>The quickest way to set up the autobuilder for developer use, is to do:
>
>./scripts/poky-setup-autobuilder both
>cd ~/poky-master
>make start
>cd ~/poky-slave
>make start
>open a browser to http://localhost:8010
>
>If for some reason the bb uses too many cpu cycles, you *should* be able t=
o do:
>
>nice -n 20 make start
>
>I haven't tested this though so YMMV.
>
>This creates a minimal pokyABConfig.py within ~/poky-master. There is a lo=
nger
>more complex pokyABConfig.py within scripts called pokyABConfig.py.example
>but for most developers, the default should suffice. If you need to turn o=
ff some
>buildsets in pokyABConfig.py, just edit it and comment out the build steps=
 you
>don't need and issue a
>
>make reconfig
>
>If something went funny (ie you don't see your changes) tail out the twist=
d.log
>file for debug info.
>
>I've tested this on opensuse and ubuntu, but would appreciate any feedback=
,
>especially for folks doing more complicated installs (multiple slave build=
ers,
>etc)

>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

