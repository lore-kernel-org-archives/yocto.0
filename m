Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0C35E007B6; Thu, 30 Apr 2015 09:06:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29C8CE007A0
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 09:06:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 30 Apr 2015 09:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,677,1422950400"; d="scan'208";a="721703268"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2015 09:06:40 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.5]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.76]) with mapi id
	14.03.0224.002; Thu, 30 Apr 2015 17:06:38 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Replacing HOB in Build Appliance for YP 1.9
Thread-Index: AQHQg1+jJHA8n6FEVE60UTnnmkXlIQ==
Date: Thu, 30 Apr 2015 16:06:37 +0000
Message-ID: <D1682DBC.1AE81%alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.9.150325
x-originating-ip: [10.237.105.34]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Replacing HOB in Build Appliance for YP 1.9
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
X-List-Received-Date: Thu, 30 Apr 2015 16:06:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EA0B09A416DC284D8345A19F2A5B85DD@intel.com>
Content-Transfer-Encoding: quoted-printable

Hello,
In 1.9 HOB is intended to be deprecated by Toaster functionality. This
means that Build Appliance also must be changed. Since HOB is started
automatically in BA in order to help users get started quickly with YP, I
have the following proposal for updating BA in 1.9 and to replace HOB:


* Update current BA implementation in order to support Toaster (maybe few
patches needed to be included in the image in order to run Toaster)
* If Toaster is enabled in BA then the user might be able to run Toaster
from his host machine, or if BA is installed on a remote server, just
access the server via HTTP.
* this should be an easy solution to implement and maintain the BA
functionality.

There are solutions like Docker that were previously discussed, but my
opinion is that first of all Docker is limited to Linux only. Secondly it
will need much more QA effort (support at least 4 distros that YP
currently supports) and more failure prone for specific Docker
configurations.

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


