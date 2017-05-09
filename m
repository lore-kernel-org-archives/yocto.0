Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AAD9E00B05; Tue,  9 May 2017 00:44:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513A5E00B02
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 00:44:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v497ioGe022810
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 9 May 2017 00:44:50 -0700 (PDT)
Received: from [128.224.162.150] (128.224.162.150) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Tue, 9 May 2017 00:44:49 -0700
To: <mark.hatle@windriver.com>
References: <1494315709-222489-1-git-send-email-dengke.du@windriver.com>
From: Dengke Du <dengke.du@windriver.com>
Message-ID: <fc7b7c89-354e-5c25-a036-6942923b6e29@windriver.com>
Date: Tue, 9 May 2017 15:44:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1494315709-222489-1-git-send-email-dengke.du@windriver.com>
X-Originating-IP: [128.224.162.150]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] rpm: modify the rpm bbappend file to suitable for rpm4
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
X-List-Received-Date: Tue, 09 May 2017 07:44:53 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Please ignore this, thanks.


On 2017年05月09日 15:41, Dengke Du wrote:
> 1. change the rpm_5.4.16.bbappend to rpm_git.bbappend, this is
>     because the rpm in oe-core has become rpm4 from rpm5.
>
> 2. drop the patch for rpm5.
>
> 3. delete the does not exist files when run task do_package.
>
> Signed-off-by: Dengke Du <dengke.du@windriver.com>
> ---
>   recipes-devtools/rpm/rpm_5.4.16.bbappend | 10 ----------
>   recipes-devtools/rpm/rpm_git.bbappend    |  4 ++++
>   2 files changed, 4 insertions(+), 10 deletions(-)
>   delete mode 100644 recipes-devtools/rpm/rpm_5.4.16.bbappend
>   create mode 100644 recipes-devtools/rpm/rpm_git.bbappend
>
> diff --git a/recipes-devtools/rpm/rpm_5.4.16.bbappend b/recipes-devtools/rpm/rpm_5.4.16.bbappend
> deleted file mode 100644
> index 2a41a28..0000000
> --- a/recipes-devtools/rpm/rpm_5.4.16.bbappend
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -SRC_URI += "file://rpm-fix-build-bug.patch \
> -          "
> -FILES_${PN} += "${libdir}/rpm/bin/spooktool \
> -                ${libdir}/rpm/bin/semodule \
> -               "
> -
> -inherit with-selinux
> -PACKAGECONFIG[selinux] = "${WITH_SELINUX},${WITHOUT_SELINUX},libsemanage,"
> diff --git a/recipes-devtools/rpm/rpm_git.bbappend b/recipes-devtools/rpm/rpm_git.bbappend
> new file mode 100644
> index 0000000..9f3ec90
> --- /dev/null
> +++ b/recipes-devtools/rpm/rpm_git.bbappend
> @@ -0,0 +1,4 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +inherit with-selinux
> +PACKAGECONFIG[selinux] = "${WITH_SELINUX},${WITHOUT_SELINUX},libsemanage,"


