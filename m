Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3750BE01C7A; Wed, 20 Jun 2018 16:06:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75615E009CF
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2018 16:06:48 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5KN6f0Y022182
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 21 Jun 2018 00:06:42 +0100
Message-ID: <f71a03e190356b138a54a4bf81bab96b42af6784.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Thu, 21 Jun 2018 00:06:41 +0100
In-Reply-To: <ad50c51b1cd1ef4e68a1e739ade98df2198ffe65.camel@linuxfoundation.org>
References: <1529395535-8886-1-git-send-email-aaron.chun.yew.chan@intel.com>
	<ad50c51b1cd1ef4e68a1e739ade98df2198ffe65.camel@linuxfoundation.org>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-autobuilder2] Add nightly-x86-64-bsp job to enable BSP HW Testcase
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
X-List-Received-Date: Wed, 20 Jun 2018 23:06:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-06-20 at 23:29 +0100, Richard Purdie wrote:
> Right now the simplistic logic in loadconfig() won't allow the simple
> addition/replacement of an entry within a dict/list but that is
> something which should be easily fixed.

FWIW I just pushed something to fix this.

Cheers,

Richard

