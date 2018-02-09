Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B129E00EF7; Fri,  9 Feb 2018 00:04:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD0EEE00D5F
	for <yocto@yoctoproject.org>; Fri,  9 Feb 2018 00:04:38 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Feb 2018 00:04:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,482,1511856000"; d="scan'208";a="202809714"
Received: from kaheisra-mobl1.amr.corp.intel.com ([10.252.128.165])
	by fmsmga006.fm.intel.com with ESMTP; 09 Feb 2018 00:04:38 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <A5CAC78F-D7E3-4D94-87C4-98277BF0B468@linux.intel.com>
Date: Fri, 9 Feb 2018 00:04:37 -0800
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [eclipse-poky] no longer sending patches to yocto list
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
X-List-Received-Date: Fri, 09 Feb 2018 08:04:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

We are switching to active development of the new eclipse-poky plugin =
and the first 23 patch series has been sent to =
eclipse-poky@yoctoproject.org

We will no longer send patches to yocto@yoctoproject.org, so if you =
desire to follow along with the development or review the patches, you =
will need to subscribe to the new mailing list.

https://lists.yoctoproject.org/listinfo/eclipse-poky

This new series will be merged in two or three days.

This series can be viewed at:
=
http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-contrib/log/?h=3Dti=
mo/maven

A clean build can be viewed at:
https://travis-ci.org/moto-timo/eclipse-poky-1/builds/339340428

The existing plugin, which will be shipped with YP 2.5 (Sumo), will be =
based on the neon-master and oxygen-master branches of =
http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky

As soon as the new patch series is merged, master will diverge and any =
patches or bug fixes will need to be explicitly identified as needing to =
be back-ported to neon-master or oxygen-master, or their YP release =
specific branches (e.g. neon/pyro or oxygen/rocko).

=E2=80=94Tim=

