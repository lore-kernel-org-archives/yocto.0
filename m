Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21207E00DC3; Fri, 19 Jan 2018 01:31:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A7CE0085E
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 01:31:40 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jan 2018 01:31:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,381,1511856000"; d="scan'208";a="21009163"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Jan 2018 01:31:38 -0800
To: "Boto, Erik (Pelagicore)" <erik.boto@pelagicore.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AB2C775B0A414B47856169E3372B9DF202210B21@ORO-MBOX-05.luxoft.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b36addbb-1afa-0619-c125-48675e7a2ce8@linux.intel.com>
Date: Fri, 19 Jan 2018 11:25:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <AB2C775B0A414B47856169E3372B9DF202210B21@ORO-MBOX-05.luxoft.com>
Subject: Re: Automated license incompatibility checks
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
X-List-Received-Date: Fri, 19 Jan 2018 09:31:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/19/2018 07:21 AM, Boto, Erik (Pelagicore) wrote:
> I was looking for a way to analyze in more detail how packages of different licenses was used in an image, and stumbled upon this old mail-thread: https://lists.yoctoproject.org/pipermail/yocto/2015-January/023307.html
> 
> My end goal is pretty much the same as Clemens, that I want to be able to have checks/rules for which licenses are ok to have when linking dynamically/statically to other libraries. Does anyone know if this work ever got published somewhere? It seems like a very nice functionality to have.

You probably need to ask this directly from Clemens. Even if the code is 
gone, or BMW does not want to make it public :), it shouldn't be that 
hard to re-implement it from the description.

Alex

