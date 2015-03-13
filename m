Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4B5BE0086D; Fri, 13 Mar 2015 02:12:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F01CE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 02:12:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2015 02:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,393,1422950400"; d="scan'208";a="691537845"
Received: from bonchen-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.8.183])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2015 02:12:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Albert K <alberk@gmail.com>
Date: Fri, 13 Mar 2015 09:12:06 +0000
Message-ID: <1811548.x7Wc9Pr9px@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CACjDgAMJiOGEj=Osa10gsc8jMj8rK=NUYrbDOg8-KqaKd7=GTA@mail.gmail.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<2800438.dQj2Pq3DsR@peggleto-mobl5.ger.corp.intel.com>
	<CACjDgAMJiOGEj=Osa10gsc8jMj8rK=NUYrbDOg8-KqaKd7=GTA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Subject: Re: Difference b/w yocto kernels and normal linux.org kernels
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
X-List-Received-Date: Fri, 13 Mar 2015 09:12:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 13 March 2015 17:05:29 Albert K wrote:
> I hope you don't mind me asking a question slightly out of topic.  I
> would like to know if there is a recipe for linux kernel 3.19 for
> dizzy branch (intel x64).  Thanks.

No, not out of the box - 3.19 wasn't available at the time dizzy (1.7) was 
branched and we don't generally backport upgrades. That said it should be 
fairly easy to build your own newer kernel by adding your own recipe to do so 
(though there may possibly be user-space compatibility issues you need to 
resolve as a result - I'm no expert there).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

