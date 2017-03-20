Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23843E00ACD; Sun, 19 Mar 2017 20:12:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C685E00AC0
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 20:12:09 -0700 (PDT)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.165.105])
	by regular1.263xmail.com (Postfix) with ESMTP id DF4FCB1F0
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 11:11:59 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from smtp.263.net (sg-smtp01.263.net [54.255.195.220])
	by smtp.263.net (Postfix) with ESMTP id DD8213E8;
	Mon, 20 Mar 2017 11:11:56 +0800 (CST)
Received: from [192.168.31.163] (localhost.localdomain [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id C2A33DF30C;
	Mon, 20 Mar 2017 11:11:45 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: jacob-chen@iotwrt.com
X-SENDER-IP: 103.29.142.67
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <ec91e56d1fa39fcda32a31849d51e4f6>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 0
Received: from [192.168.31.163] (unknown [103.29.142.67])
	by smtp.263.net (Postfix) whith ESMTP id 1330527Y433;
	Mon, 20 Mar 2017 11:11:48 +0800 (CST)
To: ayaka <ayaka@soulik.info>, yocto@yoctoproject.org
References: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
	<1489946065-28272-3-git-send-email-ayaka@soulik.info>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <ecedddc3-cc61-bfb3-3303-0cdc474fc902@rock-chips.com>
Date: Mon, 20 Mar 2017 11:11:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1489946065-28272-3-git-send-email-ayaka@soulik.info>
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
X-List-Received-Date: Mon, 20 Mar 2017 03:12:23 -0000
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



