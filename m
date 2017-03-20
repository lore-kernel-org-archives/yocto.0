Return-Path: <547884940@qq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C5BE00AC8; Sun, 19 Mar 2017 20:11:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (547884940[at]qq.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [103.7.29.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Sun, 19 Mar 2017 20:11:31 PDT
Received: from smtpbg64.qq.com (smtpbg62.qq.com [103.7.29.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB37E00ABE
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 20:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1489979490; bh=QfxDz59qvctMFAWOd0uliSdRtB/L6M2xRruSTygAa8E=;
	h=Subject:To:References:Cc:From:Message-ID:Date:MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=kBWVrxCN3DciRrYwQQoJSSZo3SsZTF5rSEc827G90oMDuJ4mfNcqYhbWXHQTEKJIb
	3C51Tv0juAXpgcTHsOwEIEwBGTducLiO6ZK9z4Puf4SK7jpvRQfHDi90oiUwtSUY9+
	LND0ygE7BrdAh8NSMT7NYyeHyCsAO3v0l2Rt/TWM=
X-QQ-mid: esmtp31t1489979414tr9awqn1a
Received: from [192.168.31.163] (unknown [103.29.142.67])
	by esmtp4.qq.com (ESMTP) with 
	id ; Mon, 20 Mar 2017 11:10:13 +0800 (CST)
X-QQ-SSF: B000000000000000FG101F00000000Y
X-QQ-FEAT: w1AzWRVsnC5/m4sHOKER4+xCL2H7M7rrR3IrzhNjTvZPDOx6YPHwgcCkw8Kal
	gyMIDvon+V9TLQvZycLA6yeNq6Lm7aF0bIBndyq74l4VqFBPz+kBxpnmA+mPXcwo5NETokr
	5CpoYEQY52GrYaP2lc5DOW/k7i9hGFAUn//vNPoGfa8L7BAHAtFQ3/i3JpyIBaQRyl+pq+p
	ky7gdp/M1pMmJOtlhkKSOIRRGxXrRjZgXPba6fh6LBB6MQDu7h+nkCo08/Yyvlr7O8UQe/e
	JkVs1RHtx4ANfjCpMqw1uaBXPvLheOCBQTNw==
X-QQ-GoodBg: 0
To: ayaka <ayaka@soulik.info>, yocto@yoctoproject.org
References: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
	<1489946065-28272-3-git-send-email-ayaka@soulik.info>
From: chen <547884940@qq.com>
Message-ID: <4ed54afc-2216-9b73-24bd-e539356e348e@qq.com>
Date: Mon, 20 Mar 2017 11:10:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1489946065-28272-3-git-send-email-ayaka@soulik.info>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:qq.com:bgweb:bgweb115
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [PATCH 2/3] recipes-multimedia: gstreamer: update to 1.10.4
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
X-List-Received-Date: Mon, 20 Mar 2017 03:11:34 -0000
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit

Hi randy,


ayaka wrote on 2017Äê03ÔÂ20ÈÕ 01:54:
> I need a various of features from the new version.
>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> Signed-off-by: ayaka <ayaka@soulik.info>
> ---
>   recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend  | 4 ++++
>   recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend | 4 ++++
>   recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend | 4 ++++
>   recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend              | 4 ++++
>   4 files changed, 16 insertions(+)
>   create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
>   create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
>   create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
>   create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> new file mode 100644
> index 0000000..5f2255f
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -0,0 +1,4 @@
> +PV="1.10.4"
> +
> +SRC_URI[md5sum] = "2757103e57a096a1a05b3ab85b8381af"
> +SRC_URI[sha256sum] = "23ddae506b3a223b94869a0d3eea3e9a12e847f94d2d0e0b97102ce13ecd6966"
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
> new file mode 100644
> index 0000000..0bc9c6e
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
> @@ -0,0 +1,4 @@
> +PV="1.10.4"
> +
> +SRC_URI[md5sum] = "f6b46f8fac01eb773d556e3efc369e86"
> +SRC_URI[sha256sum] = "f6d245b6b3d4cb733f81ebb021074c525ece83db0c10e932794b339b8d935eb7"
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
> new file mode 100644
> index 0000000..5176458
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
> @@ -0,0 +1,4 @@
> +PV="1.10.4"
> +
> +SRC_URI[md5sum] = "cc0cc13cdb07d4237600b6886b81f31d"
> +SRC_URI[sha256sum] = "8a86c61434a8c44665365bd0b3557a040937d1f44bf69caee4e9ea816ce74d7e"
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
> new file mode 100644
> index 0000000..83c4c1d
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
> @@ -0,0 +1,4 @@
> +PV="1.10.4"
> +
> +SRC_URI[md5sum] = "7c91a97e4a2dc81eafd59d0a2f8b0d6e"
> +SRC_URI[sha256sum] = "50c2f5af50a6cc6c0a3f3ed43bdd8b5e2bff00bacfb766d4be139ec06d8b5218"

We don't need to update gstreamer version in master branch.

It's already 1.10.4.
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-multimedia/gstreamer/gstreamer1.0_1.10.4.bb


