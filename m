Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35B5E007A0; Mon, 30 Mar 2015 08:33:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8203DE00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 08:33:30 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E928BF81188; Mon, 30 Mar 2015 09:33:29 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5AFEEF81188;
	Mon, 30 Mar 2015 09:33:29 -0600 (MDT)
Message-ID: <55196CC9.5050607@mlbassoc.com>
Date: Mon, 30 Mar 2015 09:33:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1427696400-3216-1-git-send-email-ouf_du_45@hotmail.com>
In-Reply-To: <1427696400-3216-1-git-send-email-ouf_du_45@hotmail.com>
Subject: Re: [meta-raspberrypi][PATCH] spitools : Add new package
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
X-List-Received-Date: Mon, 30 Mar 2015 15:33:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-30 00:20, texierp wrote:
> Signed-off-by: texierp <ouf_du_45@hotmail.com>
> ---
>   recipes-devtools/spitools/spitools_git.bb | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/recipes-devtools/spitools/spitools_git.bb b/recipes-devtools/spitools/spitools_git.bb
> index 287e3eb..128ad7f 100644
> --- a/recipes-devtools/spitools/spitools_git.bb
> +++ b/recipes-devtools/spitools/spitools_git.bb
> @@ -1,5 +1,6 @@
>   DESCRIPTION = "This package contains some simple command line tools to help using Linux spidev devices"
>   HOMEPAGE = "https://github.com/cpb-/spi-tools"
> +AUTHOR = "Christophe BLAESS"
>   LICENSE="GPLv2"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=8c16666ae6c159876a0ba63099614381"
>
>

The email subject line doesn't match what's happening in the patch.

Also, why put this in meta-raspberrypi?  It probably makes more
sense to put it in meta-oe since it doesn't seem to be RaspberryPi
specific.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

