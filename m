Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E29FE009BE; Thu, 16 Jul 2015 02:07:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC7A5E0095C
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 02:07:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id ECED927E2CD;
	Thu, 16 Jul 2015 09:07:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id yTibH6pK5WW7; Thu, 16 Jul 2015 09:07:10 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 3F86627E289;
	Thu, 16 Jul 2015 09:07:10 +0000 (UTC)
Message-ID: <55A77439.80406@dynamicdevices.co.uk>
Date: Thu, 16 Jul 2015 10:07:05 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437009521.git.rich.tollerton@ni.com>
In-Reply-To: <cover.1437009521.git.rich.tollerton@ni.com>
Subject: Re: [meta-mono] [PATCH 0/3] DEPENDS/RDEPENDS fixes
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
X-List-Received-Date: Thu, 16 Jul 2015 09:07:12 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 16/07/2015 02:29, Richard Tollerton wrote:
> These are fixes for build/runtime issues due to insufficient dependency
> specifications. The libgdiplus patches fix observed build failures; the
> gtk-sharp-dev patch is untested but pretty obvious.
>
>
> The following changes since commit 9f63cbaaa859f9ae55288de06c1c0eb0e6992f53:
>
>   mono-4.xx.inc: disable parallel make (2015-07-08 11:46:11 +0100)
>
> are available in the git repository at:
>
>   git://github.com/rtollert/meta-mono dev/rtollert/v2/depends
>   https://github.com/rtollert/meta-mono/tree/dev/rtollert/v2/depends
>
> Richard Tollerton (3):
>   libgdiplus-native: depend explicitly on giflib-native
>   gtk-sharp-dev: add perl dependency
>   libgdiplus: add jpeg, tiff, giflib, libexif dependencies
>
>  recipes-mono/gtk-sharp/gtk-sharp.inc                | 1 +
>  recipes-mono/libgdiplus/libgdiplus-native_2.10.8.bb | 2 +-
>  recipes-mono/libgdiplus/libgdiplus_2.10.8.bb        | 2 +-
>  3 files changed, 3 insertions(+), 2 deletions(-)
>

Merged, thanks Richard

