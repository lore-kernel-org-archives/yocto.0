Return-Path: <david.c.stewart@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F38EFE007B6; Thu, 30 Apr 2015 09:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F19E0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 09:23:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 30 Apr 2015 09:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,677,1422950400"; d="scan'208";a="718540685"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2015 09:23:28 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Thu, 30 Apr 2015 09:23:28 -0700
Received: from orsmsx113.amr.corp.intel.com ([169.254.7.60]) by
	ORSMSX160.amr.corp.intel.com ([169.254.13.31]) with mapi id
	14.03.0224.002; Thu, 30 Apr 2015 09:23:28 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Replacing HOB in Build Appliance for YP 1.9
Thread-Index: AQHQg2H9SjIVtnVGCE6tiRJOD/tS4A==
Date: Thu, 30 Apr 2015 16:23:27 +0000
Message-ID: <D167A526.E93F6%david.c.stewart@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.9.150325
x-originating-ip: [10.24.4.237]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Replacing HOB in Build Appliance for YP 1.9
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
X-List-Received-Date: Thu, 30 Apr 2015 16:23:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <109C27C9B25C554D988E2F06BD448F30@intel.com>
Content-Transfer-Encoding: quoted-printable

+1

On 4/30/15, 9:06 AM, "Georgescu, Alexandru C"
<alexandru.c.georgescu@intel.com> wrote:

>Hello,
>In 1.9 HOB is intended to be deprecated by Toaster functionality. This
>means that Build Appliance also must be changed. Since HOB is started
>automatically in BA in order to help users get started quickly with YP, I
>have the following proposal for updating BA in 1.9 and to replace HOB:
>
>
>* Update current BA implementation in order to support Toaster (maybe few
>patches needed to be included in the image in order to run Toaster)
>* If Toaster is enabled in BA then the user might be able to run Toaster
>from his host machine, or if BA is installed on a remote server, just
>access the server via HTTP.
>* this should be an easy solution to implement and maintain the BA
>functionality.
>
>There are solutions like Docker that were previously discussed, but my
>opinion is that first of all Docker is limited to Linux only. Secondly it
>will need much more QA effort (support at least 4 distros that YP
>currently supports) and more failure prone for specific Docker
>configurations.
>
>Regards,
>--
>Alexandru Georgescu
>Yocto QA Engineer
>SSG/SSD Open Source Technology Center Romania
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


