Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B273E00BAD; Thu,  3 Aug 2017 03:19:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6212E007E4
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 03:19:27 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v73AJKWJ020155
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 3 Aug 2017 11:19:21 +0100
Message-ID: <1501755560.18633.157.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Thu, 03 Aug 2017 11:19:20 +0100
In-Reply-To: <58D9E2E50A021A45AD740492365FCDC531ECAA4A@fmsmsx107.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC531ECAA4A@fmsmsx107.amr.corp.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Thu, 03 Aug 2017 11:19:21 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Cc: "Cruz Alcaraz,
	Juan M" <juan.m.cruz.alcaraz@intel.com>
Subject: Re: QA cycle report for 2.4 M2 rc2
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
X-List-Received-Date: Thu, 03 Aug 2017 10:19:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-08-02 at 17:55 -0700, Cruz, Libertad wrote:
> QA does not approve that  the workarounds provided  for 2.4 m2 rc2
>  were on different commits. Testing was not limited to 2.4 m2 rc2
> commit “8e15e9b6e478f6368034519b2a8fd3c7ea71d23b” it was performed by
> following each commit on the provided workarounds described below.  

Thanks Libertad.

The different commits wasn't intentional, there were bugs which were
reported and fixed after rc2 was built. It made sense to resolve those
bugs as fixed in master but obviously they were still present in M2.

Given the high volume of issues and other things that went on with rc2
I've decided to build an rc3. We'll have to take current master as
there are some many fixes it only makes sense to use that rather than
create any special branch. I've set that build away.

Cheers,

Richard

