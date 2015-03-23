Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78492E0094C; Mon, 23 Mar 2015 00:49:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18C3EE00757
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 00:48:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t2N7mvlM028067
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 00:48:58 -0700 (PDT)
Received: from [128.224.162.201] (128.224.162.201) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 23 Mar 2015 00:48:57 -0700
Message-ID: <550FC568.4020404@windriver.com>
Date: Mon, 23 Mar 2015 15:48:56 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1427095751-31030-1-git-send-email-wenzong.fan@windriver.com>
In-Reply-To: <1427095751-31030-1-git-send-email-wenzong.fan@windriver.com>
Subject: Re: [PATCH][meta-selinux] udev: restorecon /run to allow mdadm creating /run/mdadm
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
X-List-Received-Date: Mon, 23 Mar 2015 07:49:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/23/2015 03:29 PM, wenzong.fan@windriver.com wrote:
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
> (LOCAL REV: NOT UPSTREAM) -- Sent to yocto on 20150323

Oops, the "local rev" mark should be removed, V2 sent for fixing this.

//Wenzong

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

