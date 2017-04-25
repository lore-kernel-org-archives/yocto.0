Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A89C4E00AE4; Tue, 25 Apr 2017 03:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80A38E00A9B
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 03:58:36 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Apr 2017 03:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,249,1488873600"; d="scan'208";a="960818172"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 25 Apr 2017 03:58:34 -0700
To: Olivier Sobrie <olivier@sobrie.be>, paul.eggleton@linux.intel.com
References: <20170425090958.11054-1-olivier@sobrie.be>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f1202f15-5734-cca6-fd84-5244efe0cbee@linux.intel.com>
Date: Tue, 25 Apr 2017 13:58:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170425090958.11054-1-olivier@sobrie.be>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] nativesdk-qt4-tools: fix build issues with libQtDBus and libQt3Support
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
X-List-Received-Date: Tue, 25 Apr 2017 10:58:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2017 12:09 PM, Olivier Sobrie wrote:

> This patch ensures that libQtXml is build before libQtDBus and that
> both libQtGui and libQtNetwork are built before libQt3Support.

Applied, thanks. Please add a [meta-qt4] to the subject, so that it's 
easier to see which layer the patch is intended for.

Alex


