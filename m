Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 144E3E009CC; Tue,  7 Jul 2015 20:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A68BE00960
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 20:25:01 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t683P0VX006833
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 7 Jul 2015 20:25:01 -0700 (PDT)
Received: from [128.224.162.176] (128.224.162.176) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 7 Jul 2015 20:25:00 -0700
Message-ID: <559C980A.7050907@windriver.com>
Date: Wed, 8 Jul 2015 11:24:58 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1427096419-1105-1-git-send-email-wenzong.fan@windriver.com>
In-Reply-To: <1427096419-1105-1-git-send-email-wenzong.fan@windriver.com>
Subject: Re: [PATCH v2][meta-selinux] udev: restorecon /run to allow mdadm creating /run/mdadm
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
X-List-Received-Date: Wed, 08 Jul 2015 03:25:03 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Ping ...

On 03/23/2015 03:40 PM, wenzong.fan@windriver.com wrote:
> From: Wenzong Fan <wenzong.fan@windriver.com>
>
> This change bases on the factors during bootup:
>
> a. the default type for /run is var_run_t;
> b. the type for /run will be changed to tmpfs_t after tmpfs mounted;
> c. the type for /run will be fixed after populate-volatile.sh run.
>
> udev service is started in b->c period, fix the type for /run from
> udev init script to remove:
>
>    avc: denied { write } for pid=294 comm="mdadm" \
>    name="/" dev="tmpfs" ino=10581 \
>    scontext=system_u:system_r:mdadm_t:s0-s15:c0.c1023 \
>    tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir
>
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   recipes-core/udev/udev/init | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
> index 66359f2..bb8b95b 100644
> --- a/recipes-core/udev/udev/init
> +++ b/recipes-core/udev/udev/init
> @@ -61,6 +61,9 @@ case "$1" in
>       # /var/volatile/tmp directory to be available.
>       mkdir -p /var/volatile/tmp
>
> +    # restorecon /run early to allow mdadm creating dir /run/mdadm
> +    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
> +
>       # Cache handling.
>       # A list of files which are used as a criteria to judge whether the udev cache could be reused.
>       CMP_FILE_LIST="/proc/version /proc/cmdline /proc/devices /proc/atags"
>

