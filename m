Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EAC3E0097C; Sat, 29 Sep 2018 10:13:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27C14E0093B
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 10:13:39 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8THDJd8029614
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 10:13:29 -0700
Received: from server.local (128.224.21.116) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Sat, 29 Sep 2018 10:13:08 -0700
To: <changqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <1538213181-18700-1-git-send-email-changqing.li@windriver.com>
	<1538213181-18700-2-git-send-email-changqing.li@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <e4202d53-1d78-e768-87bc-c04322fd78ae@windriver.com>
Date: Sat, 29 Sep 2018 13:13:07 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1538213181-18700-2-git-send-email-changqing.li@windriver.com>
Subject: Re: [PATCH][meta-virtualization] docker: fix package qa warning
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
X-List-Received-Date: Sat, 29 Sep 2018 17:13:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-09-29 5:26 AM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> fix below warning:
> do_package_qa: QA Issue: ELF binary 'xxx/usr/bin/docker'
> has relocations in .text [textrel]
> 
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   recipes-containers/docker/docker_git.bb            |  1 +
>   .../files/0001-fix-do_package_qa-error.patch       | 31 ++++++++++++++++++++++
>   2 files changed, 32 insertions(+)
>   create mode 100644 recipes-containers/docker/files/0001-fix-do_package_qa-error.patch
> 
> diff --git a/recipes-containers/docker/docker_git.bb b/recipes-containers/docker/docker_git.bb
> index 73e0120..1a8d1a6 100644
> --- a/recipes-containers/docker/docker_git.bb
> +++ b/recipes-containers/docker/docker_git.bb
> @@ -28,6 +28,7 @@ SRC_URI = "\
>   	file://docker.init \
>   	file://hi.Dockerfile \
>           file://0001-libnetwork-use-GO-instead-of-go.patch \
> +        file://0001-fix-do_package_qa-error.patch \
>   	"
>   
>   # Apache-2.0 for docker
> diff --git a/recipes-containers/docker/files/0001-fix-do_package_qa-error.patch b/recipes-containers/docker/files/0001-fix-do_package_qa-error.patch
> new file mode 100644
> index 0000000..79e71a5
> --- /dev/null
> +++ b/recipes-containers/docker/files/0001-fix-do_package_qa-error.patch
> @@ -0,0 +1,31 @@
> +From 56c865e2a7269d63f0780b4cd1ed6fdb18e3ff1b Mon Sep 17 00:00:00 2001
> +From: Changqing Li <changqing.li@windriver.com>
> +Date: Wed, 26 Sep 2018 17:41:59 +0800
> +Subject: [PATCH] fix do_package_qa error
> +
> +fix below error:
> +do_package_qa: QA Issue: ELF binary 'xxx/usr/bin/docker'
> +has relocations in .text [textrel]
> +
> +Upstream-Status: Inappropriate [oe-specific]
> +
> +Signed-off-by: Changqing Li <changqing.li@windriver.com>
> +---
> + cli/scripts/build/dynbinary | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/cli/scripts/build/dynbinary b/cli/scripts/build/dynbinary
> +index 3c32ed3..938e086 100755
> +--- a/cli/scripts/build/dynbinary
> ++++ b/cli/scripts/build/dynbinary
> +@@ -9,6 +9,6 @@ source ./scripts/build/.variables
> +
> + echo "Building dynamically linked $TARGET"
> + export CGO_ENABLED=1
> +-go build -o "${TARGET}" -tags pkcs11 --ldflags "${LDFLAGS}" "${SOURCE}"
> ++go build -o "${TARGET}" -tags pkcs11 --ldflags "${LDFLAGS}" -buildmode=pie "${SOURCE}"

This should be conditional. I'm not seeing these warnings/errors
on any of my builds, so clearly you have a different configuration.

Bruce

> +
> + ln -sf "$(basename "${TARGET}")" build/docker
> +--
> +2.7.4
> +
> 


