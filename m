Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B525DE0073F
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 05:11:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Jul 2012 05:11:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118458307"
Received: from fmsmsx106.amr.corp.intel.com ([10.19.9.37])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jul 2012 05:11:01 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	FMSMSX106.amr.corp.intel.com (10.19.9.37) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 3 Jul 2012 05:11:00 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.33]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.220]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 20:10:58 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Eggleton, Paul" <paul.eggleton@intel.com>, "Jim Kosem (jim@halfman.com)"
	<jim@halfman.com>
Thread-Topic: Some questions about the webhob design
Thread-Index: Ac1ZFOdFGM6SyguyTo+eIH9a2sio8A==
Date: Tue, 3 Jul 2012 12:10:57 +0000
Message-ID: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Some questions about the webhob design
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
X-List-Received-Date: Tue, 03 Jul 2012 12:11:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul and Jim,

Today Jessica and PRC team had a discussion of the webhob tasks listed in t=
he wiki page, and about the "Group" and "Project" concept, we still have so=
me questions.

Say user A and user B are privileged users, who have the right to customize=
 images, while user C is normal user (Say a TME) and only "building image" =
is allowed.

1) If user A customized an image with certain configurations, and he told u=
ser C that the environment is ready, and user C can build his demo image th=
ere. However, before user C starts to build, user B changed some configurat=
ions, making the final output not the expected version.

2) Another issue may be how to avoid global project changes happened togeth=
er? For example user A and user B change the setting in the same time?

3) If user A changes the global project setting, what's the impact to the u=
ser B who already kicked off a build based on the original setting?

We are really appreciate if you can help to clarify these questions for us.

Thanks,
Dongxiao

