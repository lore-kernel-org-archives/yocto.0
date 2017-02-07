Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8882BE006EA; Tue,  7 Feb 2017 14:28:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C986AE00655
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 14:27:59 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP; 07 Feb 2017 14:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="56345382"
Received: from gowdasan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.208])
	by orsmga004.jf.intel.com with ESMTP; 07 Feb 2017 14:27:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marc Ferland <marc.ferland@gmail.com>
Date: Wed, 08 Feb 2017 11:27:55 +1300
Message-ID: <6113473.XG9hUCgrBg@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.6-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <CAMRMzCDUQnK3f+xe0sGrYZPrf7LuWXf8EnGUWYoD1q2e7UTQxg@mail.gmail.com>
References: <CAMRMzCDUQnK3f+xe0sGrYZPrf7LuWXf8EnGUWYoD1q2e7UTQxg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Removing/Disabling /etc/version
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
X-List-Received-Date: Tue, 07 Feb 2017 22:28:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marc,

On Tuesday, 7 February 2017 2:20:09 PM NZDT Marc Ferland wrote:
> I would like to disable the /etc/version file from being installed to
> the rootfs. How do I proceed? It looks hard-coded at first glance...?

It is hardcoded, however it would be trivial to delete it in a shell function 
added to ROOTFS_POSTPROCESS_COMMAND e.g. in the image recipe (or a class 
inherited from the image recipe):


remove_etc_version () {
	rm ${IMAGE_ROOTFS}${sysconfdir}/version
}
ROOTFS_POSTPROCESS_COMMAND += "remove_etc_version ; "


Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

