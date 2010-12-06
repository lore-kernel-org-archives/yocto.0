Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 297FD4C80A74
	for <yocto@yoctoproject.org>; Sun,  5 Dec 2010 18:59:59 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Dec 2010 16:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,303,1288594800"; d="scan'208";a="633365208"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2010 16:59:58 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 6 Dec 2010 08:59:44 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 6 Dec 2010
	08:59:43 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Li, Susie" <susie.li@intel.com>,
	"Zhang, Jessica" <jessica.zhang@intel.com>
Date: Mon, 6 Dec 2010 08:59:41 +0800
Thread-Topic: [Yocto] Biweekly Status Report WW48~49'2010 --OSEL SDK Liping Ke
Thread-Index: AcuU4N0aDiRs4UhORJqFF5Me7i97qA==
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FFC4E18@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Biweekly Status Report WW48~49'2010 --OSEL SDK Liping Ke
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
X-List-Received-Date: Mon, 06 Dec 2010 00:59:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[Summary]
1.	OSEL SDK related jobs
2.	Others

[Details]
SDK related jobs:
1. Finished a rough shell script ADT(SDK) installer
   We can now successfully install selected native sdks and tar the select =
root fs through
   the testing repository.
   The flow is now whole and smooth and most of the code (config validation=
 checking, all necessary
   Installation and untar processing code are finished.). Prompt code and  =
log code will
   be refined in the following days (Monday and Tuesday).
2. Pushing TCF upstream
   Windriver's senior engineer tool's leader Martin jump out and raised sev=
eral issues. Some small 7 issues
   have been fixed and I have submitted the modified patch. I will wait to =
see if they would accept the
   patch and left the hard-to-solve problem to login-service.
   But still, he wanted us to make a statement to solve the "prompt problem=
" in login service(telnet service
   now face the same problem) . But since TCF framework does not consider l=
ogin at current stage,=20
   according to lianhao's input, implementing agent side login service will=
 take several weeks effort at least.=20
   Considering the hard-to-use problem Gary met recently, we might consider=
 if there's work-around/hacking ways.
Others:
   1. Take 1.5 days' annual leave and half day's sick leave
   2. Take weekly project meeting and technical sharing meeting.
    =20
Thanks & Regards,
criping


