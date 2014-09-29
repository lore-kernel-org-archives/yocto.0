Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE9B6E00873; Mon, 29 Sep 2014 01:49:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D47CE00869
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 01:49:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Sep 2014 01:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,618,1406617200"; d="scan'208";a="598174951"
Received: from marksmed-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.173])
	by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2014 01:49:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Albert K <alberk@gmail.com>
Date: Mon, 29 Sep 2014 09:49:23 +0100
Message-ID: <2392952.t66f6ohaR4@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CACjDgANDVFPaH33FkyQTwB+npRJ093G6CPvttoqbnbUT3tLJnA@mail.gmail.com>
References: <CACjDgANDVFPaH33FkyQTwB+npRJ093G6CPvttoqbnbUT3tLJnA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Daisy with MariaDB 5.5
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
X-List-Received-Date: Mon, 29 Sep 2014 08:49:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Albert,

On Monday 29 September 2014 13:13:50 Albert K wrote:
> May I ask if there is any recipe for MariaDB 5.5 on the Daisy Branch? 
> Thanks.

There is a mariadb recipe in meta-oe, but the daisy branch has only version 
5.1.67. However in theory you should be able to take the 5.5 recipe from meta-
oe master and use that with daisy.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

