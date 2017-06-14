Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41859E00B87; Wed, 14 Jun 2017 08:27:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9493E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 08:27:05 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jun 2017 08:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,340,1493708400"; d="scan'208";a="980795817"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga003.jf.intel.com with ESMTP; 14 Jun 2017 08:27:03 -0700
Date: Wed, 14 Jun 2017 18:25:53 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: "Andersen, Christian" <c.andersen@kostal.com>
Message-ID: <20170614152552.GA18997@mbabyjoh-desk.ger.corp.intel.com>
References: <c683cf9b78e04d5e912e0c0a8a0a59b4@DEBEMAIL002.kostal.int>
MIME-Version: 1.0
In-Reply-To: <c683cf9b78e04d5e912e0c0a8a0a59b4@DEBEMAIL002.kostal.int>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Wed, 14 Jun 2017 15:27:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Andersen,

On Tue, Jun 13, 2017 at 04:10:10PM +0000, Andersen, Christian wrote:
>
>Hello,
>currently I am trying the newest Yocto release (pyro). It seems I have a problem
>with useradd and the new concept of one sysroot per recipe.
>
>I have a base recipe (let’s call it my-base.bb) which inherits useradd and creates
>a new user (let’s call him myuser):
>
> inherit useradd
> USERADD_PACKAGES = "${PN}"
> USERADD_PARAM_${PN} = " \
>  --uid 1200 \
>  --gid 1200 \
>  --system \
>  --shell /bin/bash \
>  --create-home \
>  --home-dir /home/myuser \
>  --groups mygroup,video,input \
>  myuser"
>
> GROUPADD_PARAM_${PN} = "-g 1200 mygroup"
>                                    
> do_install () {
> install -d ${D}/home/myuser
> chown -R myuser:mygroup ${D}/home/myuser
> }
>
> Other recipes depend on this base recipe (via DEPENDS and RDEPENDS), because they require this user, 
> e.g. in recipe my-appl.bb (in this case python only, so no configure or compile):
>

Here, could you try to build again with an additional DEPENDENCY on shadow-native:
ie: instead of
>DEPENDS = "puck-base"
DEPENDS = "puck-base shadow-native"

To be sure, please cleansstate the puck-base and test before build.

> RDEPENDS_${PN} = "puck-base python3-dbus python3-sqlite3 python3-netclient python3-requests"
> do_configure[noexec] = "1"
<snip>

Best Regards,
Maxin

