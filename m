Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AC254C80FB2
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 01:30:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 23:30:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684626374"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 23:30:49 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 15:30:01 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 7 Dec 2010
	15:29:42 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Garman, Scott A" <scott.a.garman@intel.com>
Date: Tue, 7 Dec 2010 15:29:41 +0800
Thread-Topic: param format about qeme extra options parse in
Thread-Index: AcuV4IM+Ye4jT424Q7WQxjfzHeCISA==
Message-ID: <789F9655DD1B8F43B48D77C5D30659733104C7B4@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: param format about qeme extra options parse in
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
X-List-Received-Date: Tue, 07 Dec 2010 07:30:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica & Scott

I am now looking@the task of User specified qemu config support, desc " We'=
ll provide user an edit box which allows advanced qemu user to specify arbi=
trary qemu configuration to meet their needs, which the poky-qemu scrip wil=
l just append the config list towards the end of the list of parameters to =
bring up qemu, it also expect the poky-qemu script to do some basic sanity =
check on the user specifications to catch the obvious mistake"


Currently, for the user experiences, the param parsing is without specific =
ordering. So the parsing shell code would be somewhat fixed. Since we're ne=
eding to append other user options directly, the options vary greatly. So m=
y plan is all user options are put into "" and read in as one parameters fo=
r easier processing in the shell script, for example:

./poky-qemu qemuarm qemuarm.bin unfs_dir serial "-smp -hda /dev/myfda_file =
-m 256" (extra options for advance user)


How do you think of it? All extra options are given within "" as one parame=
ter.

Thanks& Regards,
criping

