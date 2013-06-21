Return-Path: <Florin.Sarbu@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC18E005B3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 23:09:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5L69fNH009219
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 20 Jun 2013 23:09:41 -0700 (PDT)
Received: from [128.224.171.138] (128.224.171.138) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 20 Jun 2013 23:09:40 -0700
Message-ID: <51C3EE24.6090802@windriver.com>
Date: Fri, 21 Jun 2013 09:09:40 +0300
From: Florin Sarbu <florin.sarbu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130529 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Noor, Ahsan" <noor_ahsan@mentor.com>
References: <1371639256-3760-1-git-send-email-noor_ahsan@mentor.com>
In-Reply-To: <1371639256-3760-1-git-send-email-noor_ahsan@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] ecryptfs-utils: create symlinks for mount file in expected path
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
X-List-Received-Date: Fri, 21 Jun 2013 06:09:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
thanks for pointing this out. I've changed the configure flags for this 
to be fixed, rather than modifying the do_install. Please update the 
master/4.0 branch, the fix for this issue is there now.

Florin

On 06/19/2013 01:54 PM, Noor, Ahsan wrote:
> From: Noor <noor_ahsan@mentor.com>
>
> * mounting ecryptfs drive was failing because it was looking for mount.ecryptfs
>    binary in /sbin/ however in our file-system, it was present in /usr/sbin/. So,
>    create symlinks of required binaries in /sbin/ as well
>
> Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
> ---
>   .../ecryptfs-utils/ecryptfs-utils_100.bb           |    4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
> index e23f32c..c05cd84 100644
> --- a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
> +++ b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_100.bb
> @@ -40,4 +40,8 @@ do_install_append() {
>           install -d ${D}${systemd_unitdir}/system/
>           install -m 0644 ${WORKDIR}/ecryptfs.service ${D}${systemd_unitdir}/system
>       fi
> +
> +    install -d ${D}${base_sbindir}
> +    ln -sf ${sbindir}/mount.ecryptfs ${D}${base_sbindir}/
> +    ln -sf ${sbindir}/umount.ecryptfs ${D}${base_sbindir}/
>   }


