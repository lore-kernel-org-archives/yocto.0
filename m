Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DCEE00561
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2011 14:59:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Sep 2011 14:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="50316787"
Received: from scimitar.jf.intel.com (HELO [10.7.199.86]) ([10.7.199.86])
	by orsmga002.jf.intel.com with ESMTP; 19 Sep 2011 14:59:10 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Sep 2011 14:59:11 -0700
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E6E8DEF@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E6E8DEF@orsmsx505.amr.corp.intel.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1316469551.2376.13.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Debian packages on Yocto Target
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
X-List-Received-Date: Mon, 19 Sep 2011 21:59:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2011-09-19 at 14:23 -0700, Saxena, Rahul wrote:

> Is it possible to generate images that support Debian packages ? 
> 
> If so how does one do it  ? A general pointer will be enough,I don’t
> 
> need details at this point.

Yes, check out the PACKAGE_CLASSES variable in build/conf/local.conf and
the relevant section of the manual:
http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#ref-classes-package

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


