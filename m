Return-Path: <josep.puigdemont@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7E2EE00C34; Fri, 28 Aug 2015 04:48:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A0462E009BE
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 04:48:51 -0700 (PDT)
Received: from iapetus.enea.se (172.16.141.187) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 28 Aug 2015 13:48:44 +0200
Date: Fri, 28 Aug 2015 13:48:45 +0200
From: Josep Puigdemont <josep.puigdemont@enea.com>
To: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
Message-ID: <20150828114844.GA9463@iapetus.enea.se>
References: <1440689671-5122-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
In-Reply-To: <1440689671-5122-1-git-send-email-Alexandru.Vaduva@enea.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Received-SPF: None (SESTOEX03.enea.se: josep.puigdemont@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] Enable iSCSI configs.
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
X-List-Received-Date: Fri, 28 Aug 2015 11:48:53 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Thu, Aug 27, 2015 at 05:34:31PM +0200, Alexandru.Vaduva wrote:
> From: Siva Borra <siva.borra@enea.com>
> 
> Enable iSCSI target and supported devices.
> 
> Signed-off-by: Siva Borra <siva.borra@enea.com>
> ---
>  .../recipes-kernel/linux/files/cfg/00023-open-scsi.cfg         | 10 +++++++++-

Not that it is specific to this patch but, why are all configuration
fragments prefixed with a serial number?

>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
> index e5075cb..90d5b3f 100644
> --- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
> +++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
> @@ -1,4 +1,12 @@
>  CONFIG_SCSI_ISCSI_ATTRS=y
>  CONFIG_ISCSI_TCP=y
>  CONFIG_ISCSI_BOOT_SYSFS=y
> -
> +CONFIG_ISCSI_TARGET=y
> +CONFIG_TARGET_CORE=y
> +CONFIG_BE2ISCSI=y
> +CONFIG_CNIC=y
> +CONFIG_QLCNIC=y
> +CONFIG_SCSI_QLA_ISCSI=y
> +CONFIG_SCSI_CXGB4_ISCSI=y
> +CONFIG_SCSI_BNX2_ISCSI=y
> +CONFIG_SCSI_CXGB3_ISCSI=y

Are the device drivers actually required? If so, would it be possible
to have them built as modules instead? I imagine not all users would
want to have these drivers built in the kernel by default.

/Josep

