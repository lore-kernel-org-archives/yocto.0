Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB3CE009F0; Wed,  8 Jul 2015 03:49:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D77E009C8
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 03:49:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9D6BC27E2AC;
	Wed,  8 Jul 2015 10:49:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id WXR6V73yXRKC; Wed,  8 Jul 2015 10:49:30 +0000 (UTC)
Received: from [192.168.0.7] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CA23B27E289;
	Wed,  8 Jul 2015 10:49:29 +0000 (UTC)
Message-ID: <559D0035.6070803@dynamicdevices.co.uk>
Date: Wed, 08 Jul 2015 11:49:25 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, chmorgan@gmail.com
References: <CAAPegz31c_b7hfi9YDbZ3uPz0iiDNMpT3=P0=SsZDYjCMGcOHg@mail.gmail.com>
	<1436300222-15947-1-git-send-email-rich.tollerton@ni.com>
In-Reply-To: <1436300222-15947-1-git-send-email-rich.tollerton@ni.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mono-4.xx.inc: disable parallel make
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
X-List-Received-Date: Wed, 08 Jul 2015 10:49:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 07/07/2015 21:17, Richard Tollerton wrote:
> A race was observed during `make install` of mono-native under
> PARALLEL_MAKE=-j6:

Thanks Richard - patch applied

Chris - I wasn't able to replicate the failure you see under Fedora F22
with PARALLEL_MAKE="-j 6". The build works for me here.
Can you confirm Richard's patch fixes the issue you see on your system?

Thanks,

Alex


