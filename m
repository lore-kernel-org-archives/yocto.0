Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D91E0030B
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2014 12:09:42 -0800 (PST)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B78868606E
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2014 20:09:40 +0000 (UTC)
Message-ID: <52E96001.7030000@dynamicdevices.co.uk>
Date: Wed, 29 Jan 2014 20:09:37 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: How to temporarily disable a package rebuild during an image build?
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
X-List-Received-Date: Wed, 29 Jan 2014 20:09:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I was wondering if there's a per-package environment variable I could
use to contrain the rebuilding of packages?

i.e. I am modifying a linux-imx kernel, rebuilding that kernel package
and then generating an output filesystem image to boot from an SD card
for testing.

Each time I modify linux-imx I am finding that qt4 does a rebuild.

So whilst I'm making changes to linux-imx for test I'd rather that q4
didn't rebuild when I build the image, and was wondering if there's a
way to prevent that?

(I could, I suppose, move to a testing model that didn't use a
completely rebuilt SD card image but I like this approach as if it
works, well, it works, and I can distribute. Perhaps there's a better way?)

Thanks,

Alex


