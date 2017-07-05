Return-Path: <Zhixiong.Chi@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F15CE00BE8; Tue,  4 Jul 2017 23:38:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFD70E00BE0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 23:38:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v656cUNS014303
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 4 Jul 2017 23:38:30 -0700
Received: from [128.224.163.137] (128.224.163.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 4 Jul 2017 23:38:29 -0700
To: <yocto@yoctoproject.org>
References: <1498097843-257146-1-git-send-email-zhixiong.chi@windriver.com>
From: Zhixiong Chi <zhixiong.chi@windriver.com>
Message-ID: <595C8964.9070709@windriver.com>
Date: Wed, 5 Jul 2017 14:38:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1498097843-257146-1-git-send-email-zhixiong.chi@windriver.com>
Subject: Re: [meta-selinux][PATCH] initscripts: use the 'i' option for restorecon command
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
X-List-Received-Date: Wed, 05 Jul 2017 06:38:35 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Ping...

On 2017年06月22日 10:17, Zhixiong Chi wrote:
> Use the 'i' option for restorecon command to ignore the files that
> don't exist when building project.
>
> Signed-off-by: Zhixiong Chi <zhixiong.chi@windriver.com>
> ---
>   recipes-core/initscripts/initscripts_1.0.bbappend | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-core/initscripts/initscripts_1.0.bbappend
> index f17cf07..0fc7a5e 100644
> --- a/recipes-core/initscripts/initscripts_1.0.bbappend
> +++ b/recipes-core/initscripts/initscripts_1.0.bbappend
> @@ -5,9 +5,9 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>   do_install_append () {
>   	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
>   touch /var/log/lastlog
> -test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/lib /run \
> +test ! -x /sbin/restorecon || /sbin/restorecon -iRF /var/volatile/ /var/lib /run \
>       /etc/resolv.conf /etc/adjtime
>   EOF
> -	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /sbin/restorecon -RF /run' \
> +	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /sbin/restorecon -iRF /run' \
>   	    ${D}${sysconfdir}/init.d/checkroot.sh
>   }

-- 
---------------------
Thanks,
Zhixiong Chi
Tel: +86-10-8477-7036


