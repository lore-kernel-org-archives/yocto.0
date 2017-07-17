Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6873AE00C3D; Mon, 17 Jul 2017 07:13:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 908B6E00C43
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:13:38 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2017 07:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,374,1496127600"; d="scan'208";a="126044938"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 17 Jul 2017 07:13:36 -0700
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
References: <20170707103058.976-1-ricardo.ribalda@gmail.com>
	<c49169cb-86c2-918d-09aa-e4e8de22a275@linux.intel.com>
	<CAPybu_3WQkv9_pJ-td_heuWyp3uF07kLmFGp894DnPCjX5jGPw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <241fa6bc-e9d9-47fc-7cda-fc39bdeb4f65@linux.intel.com>
Date: Mon, 17 Jul 2017 17:11:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAPybu_3WQkv9_pJ-td_heuWyp3uF07kLmFGp894DnPCjX5jGPw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt4][PATCH] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:13:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 07/17/2017 05:11 PM, Ricardo Ribalda Delgado wrote:
> https://codereview.qt-project.org/#/c/40593/3/src/tools/moc/main.cpp
> 

Can you add this link to the patch please?

Alex

