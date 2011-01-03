Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40D874C80BD4
	for <yocto@yoctoproject.org>; Mon,  3 Jan 2011 07:36:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 05:36:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,266,1291622400"; d="scan'208";a="589390168"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 05:36:02 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 3 Jan 2011 21:36:01 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 3 Jan 2011 21:36:01 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 3 Jan 2011
	21:36:00 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Li, Susie" <susie.li@intel.com>
Date: Mon, 3 Jan 2011 21:35:56 +0800
Thread-Topic: [yocto] Biweekly Status Report WW52~53'2010 --OSEL SDK Liping Ke
Thread-Index: AcurSyZgATEHmweqSpitTVzNYnasww==
Message-ID: <789F9655DD1B8F43B48D77C5D306597331570C62@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Biweekly Status Report WW52~53'2010 --OSEL SDK Liping Ke
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
X-List-Received-Date: Mon, 03 Jan 2011 13:36:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[Summary]
1.	OSEL SDK related jobs
2.	Others

[Details]
SDK related jobs:
1. Modified sdk installer scripts according to Josh's feedback, including
   a. Folder reorganization per Josh's suggestion, make the structure more =
user friendly
   b. Move sudo to a smaller granularity, so that user could input $HOME as=
 parameters which will be parsed correctly outside sudo.
   c. restructure shell scripts, and move some scripts to another file for =
readability.
   d. Provide silent install and interactive install, so that user have mor=
e choices
2. Fixed several bugs/defects for shell scripts and bb files
   a. Made downloading files optional if the files exists.
   b. stored pseudo database in target rootfs, and export the path, so pseu=
do extract nfs does not need sudo at all.
   c. Linked ld.so.cache file into the host filesystem
   d. Moved tar actions to do_deploy from do_install, etc.
3. Add editor box UI in eclipse plugin for qemu extra parameters.
4. Do integral testing, bitbake installer tarball, untar the installer, ins=
tall the sdk,=20
   And then launch eclipse plugin, and launch qemu. Fixed several bugs such=
 as sdk version
   Problems (we now add version support), opkg source file chksum issues, e=
tc.
Now I have sent out all installer related materials for review.

5. Spent some time investigating why unfs qemu fails to boot, it was caused=
 by latest kernel. 0.9 kernel + current unfs works fine.
6. Spent one day in looking bitbake code (ast, bbhandler, confhandler) for =
technical sharing session.

Next step is that we need to find a repository, containing all archs build =
result, so
That we can have a whole testing. I guess we need local build machine to do=
 this.

Others:
   1. Take 2 days' annual leave
   2. Take weekly project meeting and technical sharing meeting.
    =20
Thanks & Regards,
criping
_________________

