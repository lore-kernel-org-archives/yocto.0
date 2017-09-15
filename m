Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D765AE0091D; Fri, 15 Sep 2017 12:18:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32153E007EF
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 12:18:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8FJIu4d008718
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 12:18:56 -0700
Received: from server.local (128.224.21.239) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 15 Sep 2017 12:18:55 -0700
To: <jackie.huang@windriver.com>, <yocto@yoctoproject.org>
References: <20170915092729.12501-1-jackie.huang@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <68b3a824-be81-8973-0965-1d4ffc82253d@windriver.com>
Date: Fri, 15 Sep 2017 15:18:54 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170915092729.12501-1-jackie.huang@windriver.com>
Subject: Re: [meta-cloud-services][PATCH] packagegroups: fix invalid license file
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
X-List-Received-Date: Fri, 15 Sep 2017 19:18:57 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

wrong mailing list, but merged anyway.

use the meta-virtualization mailing list for these.

Bruce

On 2017-09-15 5:27 AM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
> 
> Use '${COMMON_LICENSE_DIR}/MIT' for MIT License to fix the warning:
> 
> | WARNING: packagegroup-cloud-compute do_populate_lic:
>    ${COREBASE}/LICENSE is not a valid license file, please use
>    '${COMMON_LICENSE_DIR}/MIT' for a MIT License file in LIC_FILES_CHKSUM.
>    This will become an error in the future
> 
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>   .../recipes-extended/packagegroups/packagegroup-cloud-benchmarking.bb   | 2 +-
>   .../recipes-extended/packagegroups/packagegroup-cloud-compute.bb        | 2 +-
>   .../recipes-extended/packagegroups/packagegroup-cloud-controller.bb     | 2 +-
>   .../recipes-extended/packagegroups/packagegroup-cloud-debug.bb          | 2 +-
>   .../recipes-extended/packagegroups/packagegroup-cloud-extras.bb         | 2 +-
>   .../recipes-extended/packagegroups/packagegroup-cloud-network.bb        | 2 +-
>   6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-benchmarking.bb b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-benchmarking.bb
> index 6310b8f..e659c31 100644
> --- a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-benchmarking.bb
> +++ b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-benchmarking.bb
> @@ -1,7 +1,7 @@
>   SUMMARY = "Add benchmarking capabilities to cloud images"
>   PR = "r0"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-compute.bb b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-compute.bb
> index 21f8f10..2e9446d 100644
> --- a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-compute.bb
> +++ b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-compute.bb
> @@ -1,7 +1,7 @@
>   SUMMARY = "Configuration for OpenStack Compute node"
>   PR = "r0"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-controller.bb b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-controller.bb
> index f172839..1f0a8de 100644
> --- a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-controller.bb
> +++ b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-controller.bb
> @@ -1,7 +1,7 @@
>   SUMMARY = "Configuration for OpenStack Controller node"
>   PR = "r0"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-debug.bb b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-debug.bb
> index e5517d2..fecbdc6 100644
> --- a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-debug.bb
> +++ b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-debug.bb
> @@ -1,7 +1,7 @@
>   SUMMARY = "Add debugging capabilities to cloud images"
>   PR = "r0"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-extras.bb b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-extras.bb
> index 6fb6045..9273916 100644
> --- a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-extras.bb
> +++ b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-extras.bb
> @@ -1,7 +1,7 @@
>   SUMMARY = "Extra packages that improve the usability of compute/control nodes"
>   PR = "r0"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> diff --git a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-network.bb b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-network.bb
> index f5b07a2..749a99f 100644
> --- a/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-network.bb
> +++ b/meta-openstack/recipes-extended/packagegroups/packagegroup-cloud-network.bb
> @@ -1,7 +1,7 @@
>   SUMMARY = "Configuration for OpenStack Network node"
>   PR = "r0"
>   LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>   
>   inherit packagegroup
> 


