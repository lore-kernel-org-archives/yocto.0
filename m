Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B314E00C30; Mon, 17 Jul 2017 07:25:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7892CE00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:25:00 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 17 Jul 2017 07:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,374,1496127600"; d="scan'208";a="126048526"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 17 Jul 2017 07:24:59 -0700
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>, yocto@yoctoproject.org
References: <20170717141816.11895-1-ricardo.ribalda@gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c2eee59d-1711-764c-7522-8a2e23503e3f@linux.intel.com>
Date: Mon, 17 Jul 2017 17:22:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170717141816.11895-1-ricardo.ribalda@gmail.com>
Subject: Re: [PATCH v2] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:25:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 07/17/2017 05:18 PM, Ricardo Ribalda Delgado wrote:
> index 000000000000..e5d3c266bade
> --- /dev/null
> +++ b/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
> @@ -0,0 +1,21 @@
> +Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
> +Patch obtained from: http://pkgs.fedoraproject.org/cgit/rpms/qt.git/tree/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
> +
> +Upstream-Status: Inappropriate

The patch itself also needs a Signed-off-by.

Alex


