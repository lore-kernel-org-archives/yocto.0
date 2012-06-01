Return-Path: <hongnax.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A505E0030B
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 03:26:08 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Jun 2012 03:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150342818"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2012 03:26:07 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Jun 2012 03:26:07 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.133]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.90]) with mapi id
	14.01.0355.002; Fri, 1 Jun 2012 18:26:05 +0800
From: "Xu, HongnaX" <hongnax.xu@intel.com>
To: "Sun, YilongX Y" <yilongx.y.sun@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: about syslog configurable
Thread-Index: Ac0/3c37Pt4nC5Y3SkGnl+0ZFkKFHQAAYk7Q
Date: Fri, 1 Jun 2012 10:26:04 +0000
Message-ID: <953BC298FE16B64A865952E4C88593020FD37A2F@SHSMSX102.ccr.corp.intel.com>
References: <A5935CA1C3864E4F87CAF536E3331CBF0FD2BF13@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <A5935CA1C3864E4F87CAF536E3331CBF0FD2BF13@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: about syslog configurable
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
X-List-Received-Date: Fri, 01 Jun 2012 10:26:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all
  QA check if syslog could be configured and run without problem on BSPs wi=
th the latest poky/master tree.
We found that the feature had been changed, so we could not check it, so is=
 there anybody tell us how to check?
our test steps followed:
**********************************
1.Get a Yocto image from autobuilder or local build.
2.Launch image and check if syslog is started by default in background with=
 ps command.
3.Modify /etc/syslog-startup.conf, change the LOGFILE to /var/log/messages.=
test
4.Restart syslog with command "/etc/init.d/syslog restart"
5.check if syslog is started in background with ps command
6.Check if there file generated under /var/log/message.test
***********************************

Best Regards,
Hongna

-----Original Message-----
From: Sun, YilongX Y=20
Sent: Friday, June 01, 2012 6:04 PM
To: yocto@yoctoproject.org
Cc: Xu, HongnaX; Xu, Jiajun; Ma, NingX
Subject: about syslog configurable

Hi all
   Anyone who knows the feature about " syslog configurable". Now I find no=
 syslog thread in the background.
The file " /etc/syslog-startup.conf " is a link file. So I don't know how t=
o modify it. Who can help me to explain this feature.
Thanks in advance.


Best wishes
Yilong..Sun
=20
=20

