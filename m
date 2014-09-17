Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 942AFE0084D; Wed, 17 Sep 2014 00:54:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4251FE00786
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 00:53:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s8H7rmYK017924
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 00:53:48 -0700 (PDT)
Received: from [128.224.162.231] (128.224.162.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Wed, 17 Sep 2014 00:53:47 -0700
Message-ID: <54193E0B.5040002@windriver.com>
Date: Wed, 17 Sep 2014 15:53:47 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1408072893-28126-1-git-send-email-kai.kang@windriver.com>
	<1408072893-28126-2-git-send-email-kai.kang@windriver.com>
In-Reply-To: <1408072893-28126-2-git-send-email-kai.kang@windriver.com>
X-Originating-IP: [128.224.162.231]
Subject: Re: [PATCH] qemu: enable aarch64 support in yocto
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
X-List-Received-Date: Wed, 17 Sep 2014 07:54:05 -0000
Content-Type: multipart/alternative;
	boundary="------------060902020203010707050501"

--------------060902020203010707050501
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014?08?15? 11:21, Kai Kang wrote:
> qemu 2.1.0 support aarch64 targets, so add aarch64 to QEMU_TARGETS to
> enable qemu aarch64 support. Var QEMU_TARGETS in poky.conf overrides the
> var in qemu recipe, so add in poky.conf too.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   meta-yocto/conf/distro/poky.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index ec251f9..9a67b50 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -44,7 +44,7 @@ DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
>   
>   TCLIBCAPPEND = ""
>   
> -QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
> +QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel ppc x86_64"
>   # Other QEMU_TARGETS "mips64 mips64el sh4"
>   
>   PREMIRRORS ??= "\

ping?

-- 
Regards,
Neil | Kai Kang


--------------060902020203010707050501
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2014&#24180;08&#26376;15&#26085; 11:21, Kai Kang wrote:<br>
    </div>
    <blockquote
      cite="mid:1408072893-28126-2-git-send-email-kai.kang@windriver.com"
      type="cite">
      <pre wrap="">qemu 2.1.0 support aarch64 targets, so add aarch64 to QEMU_TARGETS to
enable qemu aarch64 support. Var QEMU_TARGETS in poky.conf overrides the
var in qemu recipe, so add in poky.conf too.

Signed-off-by: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index ec251f9..9a67b50 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -44,7 +44,7 @@ DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
 
 TCLIBCAPPEND = ""
 
-QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
+QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel ppc x86_64"
 # Other QEMU_TARGETS "mips64 mips64el sh4"
 
 PREMIRRORS ??= "\
</pre>
    </blockquote>
    <br>
    <font size="+1">ping?</font><br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Regards,
Neil | Kai Kang</pre>
  </body>
</html>

--------------060902020203010707050501--
