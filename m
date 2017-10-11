Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14F4BE00B87; Wed, 11 Oct 2017 04:39:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63AF5E008A4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 04:39:25 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Oct 2017 04:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,361,1503385200"; 
	d="scan'208,223";a="908877521"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2017 04:39:24 -0700
Date: Wed, 11 Oct 2017 14:37:31 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Message-ID: <20171011113731.GA35471@mbabyjoh-desk.ger.corp.intel.com>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
	<1507713360.9509.27.camel@collabora.co.uk>
	<CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
	<1507717126.9509.29.camel@collabora.co.uk>
MIME-Version: 1.0
In-Reply-To: <1507717126.9509.29.camel@collabora.co.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 11:39:27 -0000
X-Groupsio-MsgNum: 38322
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Fabien,

On Wed, 2017-10-11 at 13:06 +0300, Henrik Lindblom wrote:
>> I think you'll want RDEPENDS instead of DEPENDS in your recipe. DEPENDS implies build time
>> dependencies (e.g. libraries) while RDEPENDS actually gets the component installed as a runtime
>> dependency.
>> 

>Thanks Henrik
>I tried to add RDEPENDS too without success. The problem is that users and groups are not installed
>IIUC.

Could you apply this patch and see if it helps here ?

Best Regards,
Maxin

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="useradd.patch"

From 36c75e348cd5bb3cff242783550b925623492297 Mon Sep 17 00:00:00 2001
From: "Maxin B. John" <maxin.john@intel.com>
Date: Wed, 20 Sep 2017 18:05:49 +0300
Subject: [PATCH] sstate.bbclass: provide an exception for useradd scenario

Packages, which depend on users/groups created from other packages,
needs "shadow-native" as a build time dependency. So, add an exception
to the "shadow-native" from otherwise discarded native/cross tools
dependency.

Fixes [YOCTO #11960]

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 meta/classes/sstate.bbclass | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 2a54993..e30fbe1 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -967,7 +967,8 @@ def setscene_depvalid(task, taskdependees, notneeded, d, log=None):
             if isNativeCross(taskdependees[dep][0]):
                 return False
             # Native/cross tools depended upon by target sysroot are not needed
-            if isNativeCross(taskdependees[task][0]):
+            # Add an exception for shadow-native as required by useradd.bbclass
+            if isNativeCross(taskdependees[task][0]) and taskdependees[task][0] != 'shadow-native':
                 continue
             # Target populate_sysroot need their dependencies
             return False
-- 
2.4.0


--fUYQa+Pmc3FrFX/N--
