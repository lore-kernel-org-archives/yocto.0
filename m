Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76EE6E01069; Thu,  8 Oct 2015 03:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 309 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Oct 2015 03:28:07 PDT
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C099CE00A73
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 03:28:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6C23427E3B7;
	Thu,  8 Oct 2015 10:22:55 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id meyX2RYkjeA4; Thu,  8 Oct 2015 10:22:35 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1E4BD27E3AC;
	Thu,  8 Oct 2015 10:22:35 +0000 (UTC)
To: Vivek Per <pervivek@gmail.com>
References: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <561643E2.5000202@dynamicdevices.co.uk>
Date: Thu, 8 Oct 2015 11:22:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: can any one please tell the difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Thu, 08 Oct 2015 10:28:09 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 07/10/2015 07:10, Vivek Per wrote:
> Hi,
>      Can any one please tell the what is the exact difference between
> DEPENDS and RDEPENDS . I am not able to get it . How these variables
> are exactly parsed.
>
>

Vivek - does this help ?

https://lists.yoctoproject.org/pipermail/yocto/2013-August/015783.html

Regards, Alex

