Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2BACE00D6B; Tue,  2 Jan 2018 03:26:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D9C0E0095C
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 03:26:39 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w02BQXBl026435
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 2 Jan 2018 11:26:34 GMT
Message-ID: <1514892393.5525.69.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Cruz, Libertad"
	<libertad.cruz@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Tue, 02 Jan 2018 11:26:33 +0000
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335D94DFF@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335D94DFF@PGSMSX109.gar.corp.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>
Subject: Re: QA cycle report for 2.4.1 RC1
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
X-List-Received-Date: Tue, 02 Jan 2018 11:26:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Fri, 2017-12-22 at 01:40 -0800, Yeoh, Ee Peng wrote:
> Enjoy viewing the full Report for 2.4.1
> RC1:  https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-21-
> _Full_Test_Cycle_-_2.4.1_rc1
> 
> ======= Summary ========
> 
> The QA cycle for release 2.4.1 RC1 is complete.  There are 5 new bugs
> from which so far none of them are high. QA has 1 concern on the
> performance testing.
> 
> Performance report shows an increase of 23% build time on the eSDK in
> fedora 23, bug has not been created until further investigation with
> setup outside of the GDC environment. 

Was there any further update on this?

It may be worth running the test for 2.4.0 and checking that you get
the same result as we had at time of release, just to double check
there isn't some other contributing cause here...

Cheers,

Richard

