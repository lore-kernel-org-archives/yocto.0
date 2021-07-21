Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web08.1475.1626834246378166176
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 19:24:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cse1avAT;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id a80so762688qkg.11
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 19:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=auM1p4putLtEiy54+XUguVaWpQqxp99jHkJtg9q/8yE=;
        b=Cse1avATHxXcBgT1lJkhvrbFMxrnt+L+e9Ds23QP2IXUBucdo4pfTidOxo62qHIj8s
         XHPhMNkY4jKs5Xm0B1EepD2bc/65MSiVcdZqk6vWICaMMSdePB8KoKe6DXYiNI7y6m0o
         eaOMMThIP+8S08shifl8581WlX5DalBnqqxmsdnZra1RU62fh7YwvrTHKW6/uek3xfyX
         lMKibAXuuchry/iXBmF+PI+DaAfWgw5Eca0QvdLbdFSq8xGYtzj2IBIrAdneFmt8vp1r
         TdeYsv/FrKrAE+6IK9gfPkPJC/Y5j3AFOux4hUHKk8LNOIyWOri4HTBjPbCF6dZMTalg
         A7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=auM1p4putLtEiy54+XUguVaWpQqxp99jHkJtg9q/8yE=;
        b=OwiTtaDtF6skJ7yB9G3oC3NeDYc8gz5G/J0zkcvrReINY76DFyhTw7QUDBXbBJ0nSt
         XlBxJGkXGHdvATco3LJdrWJjYtFqkFA86Qy0wNjQbUOt8Dstj2OMV7WHlT8fleGOs64e
         BBAx9TthWOh/jiOlx5DPuFRsbTzkjT7IJSvRlsqZrRmgPiACBxJU7eXSJH2S+95vvaUr
         3Yk6d5JWG5fw9TsakH5Ngh8QRg+ooXPxihi+QBggIaOLmAMmhfUVZg86U1xBrqs5klBg
         mvBGQg9JSOk9U5s3ZGbMlo9Z7k/b5dARRfoO2loglfUTgUK8O8TnbFl14r1YOHwIEzjm
         fsgQ==
X-Gm-Message-State: AOAM530q+MvGmDYL8bF5Pg5JiWhroE20vkUZ1EdZCEQFrnsgD89JWzfC
	oW3zIO05LJW2whQ6TBnft/k=
X-Google-Smtp-Source: ABdhPJwa+mU7XRykoX2qmKMXbPWQwrWpSL8fIdU7+osotvQem3apu6uQSPoG/nlAWMDi8UKjm02wLQ==
X-Received: by 2002:a05:620a:1996:: with SMTP id bm22mr15330296qkb.224.1626834245465;
        Tue, 20 Jul 2021 19:24:05 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from gmail.com (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id m80sm7718372qke.98.2021.07.20.19.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 19:24:05 -0700 (PDT)
Date: Tue, 20 Jul 2021 22:24:03 -0400
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: "Wang, Xiaolei" <Xiaolei.Wang@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto-kernel-cache] [yocto-5.10] nxp-imx8: Enable IMX_SCU_SOC config
Message-ID: <20210721022402.GB42954@gmail.com>
References: <PH0PR11MB507781EB82B262FC733388F895119@PH0PR11MB5077.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <PH0PR11MB507781EB82B262FC733388F895119@PH0PR11MB5077.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In message: RE: [yocto-kernel-cache] [yocto-5.10] nxp-imx8: Enable IMX_SCU_SOC config
on 16/07/2021 Wang, Xiaolei wrote:

> Hi bruce
> 
> Can you help me merge this patch to yocto-kernel-cache branch yocto-5.10

The original patch didn't have a branch specified, so it somehow managed to
miss my filters.

this is now merged

Bruce

> 
> Thanks
> Xiaolei
> 
> -----Original Message-----
> From: linux-yocto@lists.yoctoproject.org <linux-yocto@lists.yoctoproject.org> On Behalf Of Xiaolei Wang
> Sent: Friday, July 9, 2021 12:58 PM
> To: bruce.ashfield@gmail.com
> Cc: linux-yocto@lists.yoctoproject.org
> Subject: [linux-yocto] [PATCH] nxp-imx8: Enable IMX_SCU_SOC config
> 
> Enable IMX_SCU_SOC config for imx8 get soc_id value and get revision, Because the SW workaround for i.MX8QM TKT340553 is required on the imx8qm board, it is necessary to set TKT340553_SW_WORKAROUND to true in tlbflush.h, otherwise the system will often encounter memory problems and cause hang
> 
> Signed-off-by: Xiaolei Wang <xiaolei.wang@windriver.com>
> ---
>  bsp/nxp-imx8/nxp-imx8.cfg | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/bsp/nxp-imx8/nxp-imx8.cfg b/bsp/nxp-imx8/nxp-imx8.cfg index d9ea3caf..dbc77b3a 100644
> --- a/bsp/nxp-imx8/nxp-imx8.cfg
> +++ b/bsp/nxp-imx8/nxp-imx8.cfg
> @@ -475,6 +475,7 @@ CONFIG_OF_OVERLAY=y
>  CONFIG_MAILBOX=y
>  CONFIG_IMX_MBOX=y
>  CONFIG_IMX_SCU=y
> +CONFIG_IMX_SCU_SOC=y
>  CONFIG_IMX_DSP=y
>  CONFIG_IMX_SCU_PD=y
>  CONFIG_IIO=y
> --
> 2.25.1
> 
