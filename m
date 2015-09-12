Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F10EAE00B37; Fri, 11 Sep 2015 22:09:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B34D6E00AD2
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:09:41 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=[192.168.1.15])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Zad2l-0000xB-1a; Sat, 12 Sep 2015 05:08:08 +0000
Message-ID: <55F3B392.4070002@twobit.us>
Date: Fri, 11 Sep 2015 22:09:38 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Joe_MacDonald@mentor.com
References: <1441946179-16001-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1441946179-16001-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] net-tools: Rename net-tools bbappend with wildcard for minor version.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:09:44 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Woops, duplicate. Please disregard.

On 09/10/2015 09:36 PM, Philip Tricca wrote:
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-extended/net-tools/net-tools_1.%.bbappend     | 11 +++++++++++
>  recipes-extended/net-tools/net-tools_1.60-25.bbappend | 11 -----------
>  2 files changed, 11 insertions(+), 11 deletions(-)
>  create mode 100644 recipes-extended/net-tools/net-tools_1.%.bbappend
>  delete mode 100644 recipes-extended/net-tools/net-tools_1.60-25.bbappend
> 
> diff --git a/recipes-extended/net-tools/net-tools_1.%.bbappend b/recipes-extended/net-tools/net-tools_1.%.bbappend
> new file mode 100644
> index 0000000..e99a5bc
> --- /dev/null
> +++ b/recipes-extended/net-tools/net-tools_1.%.bbappend
> @@ -0,0 +1,11 @@
> +PR .= ".2"
> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +SRC_URI += "file://netstat-selinux-support.patch"
> +
> +inherit selinux
> +
> +DEPENDS += "${LIBSELINUX}"
> +
> +EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
> diff --git a/recipes-extended/net-tools/net-tools_1.60-25.bbappend b/recipes-extended/net-tools/net-tools_1.60-25.bbappend
> deleted file mode 100644
> index e99a5bc..0000000
> --- a/recipes-extended/net-tools/net-tools_1.60-25.bbappend
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -PR .= ".2"
> -
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -SRC_URI += "file://netstat-selinux-support.patch"
> -
> -inherit selinux
> -
> -DEPENDS += "${LIBSELINUX}"
> -
> -EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
> 


