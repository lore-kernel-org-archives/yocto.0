Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB8CEE01211; Tue, 26 Jun 2018 03:30:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9932E0120F
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 03:29:59 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5QATsFt005412
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 26 Jun 2018 11:29:55 +0100
Message-ID: <347aa2e327ad1ba9da226f819137cc78fa058b2b.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org,
	ee.peng.yeoh@intel.com
Date: Tue, 26 Jun 2018 11:29:54 +0100
In-Reply-To: <1530003066-28005-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1530003066-28005-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-ab-helper] Add qemux86, qemux86-64 WIC testimage buildset-config
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
X-List-Received-Date: Tue, 26 Jun 2018 10:30:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-06-26 at 16:51 +0800, Aaron Chan wrote:
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  config.json | 32 +++++++++++++++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)

This patch looks like it might be correct. I say "might" as your commit
message tells me what you did (kind of) but not why.

I say "kind of" as you're using core-image-lsb-sdk and poky-lsb here,
probably for a good reason but you don't say why.

The key thing I need to know is what extra testing this provides that
isn't already covered elsewhere on the autobuilder - why do we need to
spend the time testing this?

Can you resend with a better description of why we need to do this
please?

Cheers,

Richard

> 

