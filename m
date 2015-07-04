Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 368DCE00A71; Fri,  3 Jul 2015 22:29:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433A9E00A4C
	for <yocto@yoctoproject.org>; Fri,  3 Jul 2015 22:29:42 -0700 (PDT)
Received: from [192.168.0.63] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 72050600346E;
	Sat,  4 Jul 2015 08:29:40 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1435987780; bh=qMui68P27SiRGWcU1QDUaGN/HL64WtsIpjmCsaEntcI=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=7QlWMxXcknUTSpjBQbEn2rqZ5khciHApX2CSLtxDocFT/VVclcFJAURGRFGZ6ulUH
	NxIbVXwE6iHXVbLsg1pAniJ/y/o6ZbpeNb+ZilMi5qn/bBl32hmFzBucWBPd2bl9p8
	6xHQ6isBcGlQc1brxmmUZrK7eOT+Zf7/gNksQKUM=
Message-ID: <55976F44.5070106@mail.bg>
Date: Sat, 04 Jul 2015 08:29:40 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Jonathan Liu <net147@gmail.com>, yocto@yoctoproject.org
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
In-Reply-To: <1435981717-29443-1-git-send-email-net147@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Sat, 04 Jul 2015 05:29:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jonathan,

On 07/04/2015 06:48 AM, Jonathan Liu wrote:
> Reduces the download time significantly.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>   recipes-bsp/common/firmware.inc | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index ad3176a..100df3a 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,7 +1,7 @@
> -RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
> +RPIFW_SRCREV ?= "461"
>   RPIFW_DATE ?= "20150206"
> -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> -RPIFW_S ?= "${WORKDIR}/git"
> +RPIFW_SRC_URI ?= "svn://github.com/raspberrypi/firmware;protocol=https;module=trunk"
> +RPIFW_S ?= "${WORKDIR}/trunk"
>
>   SRC_URI = "${RPIFW_SRC_URI}"
>   SRCREV = "${RPIFW_SRCREV}"
>

Just tested the download times for this repo:

git (deep clone): 24m
svn: 3m8s
git (shallow clone): 40s

Isn't it possible to use "--depth 1" for git clone? I would rather
prefer seeing this instead of just giving up and going back to svn...

Regards,
Nikolay

