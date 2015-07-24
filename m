Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E147BE009EF; Fri, 24 Jul 2015 01:51:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84265E00530
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 01:51:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t6O8pNG0021871
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 24 Jul 2015 01:51:23 -0700 (PDT)
Received: from [128.224.162.176] (128.224.162.176) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.235.1;
	Fri, 24 Jul 2015 01:51:12 -0700
Message-ID: <55B1FC87.2080807@windriver.com>
Date: Fri, 24 Jul 2015 16:51:19 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>, "Ouyang, Xin" <Xin.Ouyang@windriver.com>, Joe
	MacDonald <Joe_MacDonald@mentor.com>
References: <1427941583-22684-1-git-send-email-rongqing.li@windriver.com>
In-Reply-To: <1427941583-22684-1-git-send-email-rongqing.li@windriver.com>
Subject: Re: [PATCH][meta-selinux] findutils/gnulib:drop the error output of 'ls' command
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
X-List-Received-Date: Fri, 24 Jul 2015 08:51:32 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Ping ...

On 04/02/2015 10:26 AM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> The ls command is used to check if the file exists, and it is normal that
> the checked file does not exist, so drop the ls error ouput:
> 	 ls: cannot access ./doc/fdl.texi: No such file or directory
>
> Signed-off-by: Roy Li <rongqing.li@windriver.com>
> ---
>   .../drop-the-error-output-of-ls-command.patch      | 29 ++++++++++++++++++++++
>   .../findutils/findutils_4.4.2.bbappend             |  1 +
>   2 files changed, 30 insertions(+)
>   create mode 100644 recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch
>
> diff --git a/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch b/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch
> new file mode 100644
> index 0000000..069be41
> --- /dev/null
> +++ b/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-of-ls-command.patch
> @@ -0,0 +1,29 @@
> +[PATCH] drop the error output of 'ls' command
> +
> +Upstream-Status: pending
> +
> +ls is used to check if the file exists, and it is normal that
> +the checked file does not exist, so drop the ls error
> +	 ls: cannot access ./doc/fdl.texi: No such file or directory
> +
> +Signed-off-by: Roy Li <rongqing.li@windriver.com>
> +---
> + gnulib-tool | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/gnulib-tool b/gnulib-tool
> +index 354b1f0..beb81ba 100755
> +--- a/gnulib-tool
> ++++ b/gnulib-tool
> +@@ -602,7 +602,7 @@ else
> +   {
> +     # Use two sed invocations. A single sed -n -e 's,^.* -> \(.*\)$,\1,p'
> +     # would do the wrong thing if the link target contains " -> ".
> +-    LC_ALL=C ls -l "$1" | sed -e 's, -> ,#%%#,' | sed -n -e 's,^.*#%%#\(.*\)$,\1,p'
> ++    LC_ALL=C ls -l "$1" 2>/dev/null | sed -e 's, -> ,#%%#,' | sed -n -e 's,^.*#%%#\(.*\)$,\1,p'
> +   }
> + fi
> +
> +--
> +1.9.1
> +
> diff --git a/recipes-extended/findutils/findutils_4.4.2.bbappend b/recipes-extended/findutils/findutils_4.4.2.bbappend
> index 3245e5c..e174888 100644
> --- a/recipes-extended/findutils/findutils_4.4.2.bbappend
> +++ b/recipes-extended/findutils/findutils_4.4.2.bbappend
> @@ -5,6 +5,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>   SRC_URI += "git://git.savannah.gnu.org/gnulib.git;protocol=git;rev=0e0635af0b23826911dc456bd0da40dcb19247de"
>   SRC_URI += "file://findutils-with-selinux.patch"
>   SRC_URI += "file://findutils-with-selinux-gnulib.patch"
> +SRC_URI += "file://drop-the-error-output-of-ls-command.patch;patchdir=../git/"
>
>   inherit with-selinux
>
>

