Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DCEBE0051D
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2013 09:31:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Apr 2013 09:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,387,1363158000"; d="scan'208";a="310673482"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2013 09:31:14 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 1 Apr 2013 09:31:14 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.185]) with mapi id
	14.01.0355.002; Mon, 1 Apr 2013 09:31:14 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: $HOME use in DL_DiR
Thread-Index: Ac4u9lMq3Dm9+wxDQx6nrEDKWrpyxA==
Date: Mon, 1 Apr 2013 16:31:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCEEE0E@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: $HOME use in DL_DiR
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
X-List-Received-Date: Mon, 01 Apr 2013 16:31:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI,=20

I recently used $HOME as part of a path in the DL_DIR variable in my local.=
conf.  This caused bad things to happen during the build.  It essentially c=
reated a "never-ending" directory structure inside my build directory and t=
he build failed.  I would like place a note in the glossary entry for the D=
L_DIR variable.  Can anyone provide some general reasons why a user should =
not use $HOME as part of the DL_DIR path that goes beyond "it will break th=
e build"?

Thanks,
Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


