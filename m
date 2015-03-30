Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 170E0E007A0; Mon, 30 Mar 2015 10:47:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA79AE00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 10:47:39 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 30 Mar 2015 10:47:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,495,1422950400"; d="scan'208";a="548486369"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga003.jf.intel.com with ESMTP; 30 Mar 2015 10:47:38 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.30]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.2]) with mapi id
	14.03.0224.002; Mon, 30 Mar 2015 18:47:37 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [RFC] Toaster integration with Jenkins
Thread-Index: AQHQaxGb9e0ecdHkrU+vWFZmdcTyZA==
Date: Mon, 30 Mar 2015 17:47:36 +0000
Message-ID: <D13F4AC9.58302%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.237.224.79]
MIME-Version: 1.0
Subject: [RFC] Toaster integration with Jenkins
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
X-List-Received-Date: Mon, 30 Mar 2015 17:47:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D95D5C6A5E7FDE42803FA6C0CD7A4159@intel.com>
Content-Transfer-Encoding: quoted-printable

We are considering working on integrating Toaster with Jenkins as part of
the next Yocto Project release. Our thinking so far is collected in this
Bugzilla feature:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7527

Any thoughts? Are we missing something? Are we going about it in a
completely wrong way?

Let us know.

Thanks!

Bel=E9n



