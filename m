Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7EDCE00ACD; Wed,  3 May 2017 01:46:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A277CE00A30
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 01:46:34 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 03 May 2017 01:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,283,1491289200"; d="scan'208";a="94962956"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 03 May 2017 01:46:32 -0700
To: "Aravindhlal G.S.S" <aravindhlalgss@embedur.com>
References: <BLUPR15MB05005784FB3B95086523368AD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
	<cd07a0e7-c106-470d-9be8-698f1c5c5832@linux.intel.com>
	<BLUPR15MB0500B226413293138C64D9E2D0160@BLUPR15MB0500.namprd15.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <131fa059-01f3-7f28-984d-82f530ff261c@linux.intel.com>
Date: Wed, 3 May 2017 11:46:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <BLUPR15MB0500B226413293138C64D9E2D0160@BLUPR15MB0500.namprd15.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Wed, 03 May 2017 08:46:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2017 11:29 AM, Aravindhlal G.S.S wrote:
> SRC_URI =
> "${RDKB_CCSP_ROOT_GIT}/hal/generic;protocol=${RDK_GIT_PROTOCOL};branch=${CCSP_GIT_BRANCH};name=hal"

Where are these variables defined? What do they say?

Where do you expect the source code to be pulled from, and where does it 
actually come from?

Alex


