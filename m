Return-Path: <boon.leong.ong@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CB76E0053E; Mon,  7 Jul 2014 01:05:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33DC8E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 01:05:53 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Jul 2014 01:05:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,616,1400050800"; d="scan'208";a="453917533"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by azsmga001.ch.intel.com with ESMTP; 07 Jul 2014 01:05:50 -0700
Received: from pgsmsx108.gar.corp.intel.com (10.221.44.103) by
	PGSMSX101.gar.corp.intel.com (10.221.44.78) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 7 Jul 2014 16:04:58 +0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.74]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.179]) with mapi id
	14.03.0123.003; Mon, 7 Jul 2014 16:04:57 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [daisy branch] circular dependency bitbake build issue in
	initscript
Thread-Index: Ac+ZuiQW3TgiwF65Tdy1OduXqWBwjw==
Date: Mon, 7 Jul 2014 08:04:57 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B72F7F6A61@pgsmsx105.gar.corp.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Le Foll, Brendan" <brendan.le.foll@intel.com>
Subject: [daisy branch] circular dependency bitbake build issue in initscript
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
X-List-Received-Date: Mon, 07 Jul 2014 08:05:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
    While upgrading poky daisy branch to YPv1.6.1, both Brendan & I observe=
d that there is an circular dependency issue in initscripts.=20
    Strangely, this issue is not observable if we are building poky as it i=
s, but is observable when we use it together with meta-intel-iot-devkit.
    We have identified that a patch from OE-Core rev:=20

     8b4256758ba55dcabe80dd1bf3884cdf1cc39909    update-rc.d: Allow to use =
different initscripts provider=20

    is not applied onto daisy branch but is available in master now. Withou=
t the above patch, initscript bitbake process will fail with circular depen=
dency complaint. After the above patch is applied, the circular dependency =
issue has been resolved.

    Please consider pulling this patch onto daisy branch if there is no con=
cern from the community.

Thanks
Ong Boon Leong

