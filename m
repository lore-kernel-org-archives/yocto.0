Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8164E0027D
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 18:55:25 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 11 Jul 2012 18:55:25 -0700
Received: by lbbgj3 with SMTP id gj3so2269534lbb.25
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 18:55:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=xGTJ7Qr5ewMy5iOCJdt9uU0UgtGQazBX5lf8C9ceYCg=;
	b=boGduBKsBsbnozTMnkm+t/McClEeEizdeDCYCT7u+HRqlC9NQvpnV7V44iKCYBunwq
	pmwy+jxBJp79X/Le3bhwiv7BE8JtX3vT7FfC9EoFpeuqLVZATxY2/NP7jWvsvN09GKWg
	uvzd21Dd7pxoNlWDWs7HfS3JonMv94l4zSGRwCnbXzio34Y1ndWpjVB8Flhq4sWgavKQ
	Qxc1JBWEt2O3r/2bGQJnhrV58Df4CWSWm1uZkGbkBqIz08m7IjLdVY0wQEEUBI+TDZtg
	JajPa7leZRKHv5n+5LDAPzGatUmYuq6AXm9sxiXCg+rDyiJ8WAyaLDuLp/3gY7KllqL5
	E77Q==
MIME-Version: 1.0
Received: by 10.112.48.169 with SMTP id m9mr164083lbn.93.1342058123066; Wed,
	11 Jul 2012 18:55:23 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 11 Jul 2012 18:55:23 -0700 (PDT)
Date: Wed, 11 Jul 2012 18:55:23 -0700
Message-ID: <CAPhnLPCtjniG_9rVOEG7fpEDHXDHUf+YHD1Cyv-FEJRZZh-gxg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlC+jxvCqHCo5NicrV3LGiAgeCoaMqtBYHc0FlNDOO0RiRyyIVbfBcPDHRZKVzS0tDwXRr2
Subject: 1.3_M2.rc1 Status
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
X-List-Received-Date: Thu, 12 Jul 2012 01:55:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

The 1.3_M2.rc1 build will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20120711-2/

One issue was detected during build time, with the eclipse plugin.
This was caused by an inability of the autobuilder to reach the
eclipse servers during build time. The eclipse build was re-run and
the artifacts copied by hand.

The 1.3_M2 branch was not created for this build. We held off creating
it to ensure that master was stable enough for branching. Once the
build is complete and things look ok, I will generate the 1.3_M2
branches.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

