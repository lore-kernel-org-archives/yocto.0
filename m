Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A217E00C43; Wed,  3 Jul 2019 07:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46599E00C37
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 07:05:36 -0700 (PDT)
Received: by mail-lf1-f65.google.com with SMTP id u10so1852289lfm.12
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 07:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Z8JbzSMXPbeRVDQe6phLFdcZ3MPWqD43Q94hTmvOAKY=;
	b=dox2me2WqvR74IvXbbGJq/oWYZOtk/JiwLdp3uCvgJZrFJteX5WZerdtpnuwC5omR/
	bLoVpR0bG9CoHrcTRcN3LBieNL1eftqyLvaHT9coVrBaRHa5houp8aoSXNQPvc2DnpwI
	B92zCE7J1XdB0rucQyf58FTnGv4akgKxUqe9zzClKjhRr2WCkJqON5l8Ar395eZm1BOI
	un0ZbkEm6KsNzl49d5AKrRMbSB/5rX51vSEvA6FIf4ITQqnLh/InygNpLRjebNim0zJA
	m2pjTsMtINSVwCUph/CBrg8uAp8y+W7U06Sm08Wc6QpUV4eG33IFBwyOvf7pT7evLqM3
	q3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Z8JbzSMXPbeRVDQe6phLFdcZ3MPWqD43Q94hTmvOAKY=;
	b=dil2asjBQRYUvkKOnHm3MYV4bY0KxfuJnp+BT+DX0dECFKEMQc0z77eHRi31yWpKc4
	89eBwJYd30ECYU6MhVL7oVrSdtP90nEFwDBJb1X75KWzF7ClWj7FlOlM4YR1K0wMPVR6
	ukOVsSCp+O4Jnd7SdJ5M+nSFF6qCr5qF+K1IGBYu2xLnNzMp9uYeDnOVeE5c09p89ltG
	kfk+kjKixxHwtGndRz50xL21O3LK2WDI4cN+UdonD9Vf4w2PWfAzrYZtG9tgD87k5jwb
	keVizttfosy0iP40apD212ANVGclZKJ2DTFr6mWo2mGfA5fA1b0flkncrbqFym1FE1R/
	N4tg==
X-Gm-Message-State: APjAAAVQM61MBynfqoXO0eMupiabACKsvC/2zXNMyW8op+DT9XGwUmFs
	wVnE1V8mFMng2k8YrjLLyxGFq4jEAwrNDeTj5F8=
X-Google-Smtp-Source: APXvYqxCWupTjW1cSXPJc29oIrEgeINWuW4CEUHnx3OD7Yu1MW+ohsK7bH1GzYPo6JrmvmmGRXeb6FGmLPO0ulT4LZM=
X-Received: by 2002:ac2:495e:: with SMTP id o30mr18080325lfi.140.1562162735032;
	Wed, 03 Jul 2019 07:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <1561946902-247680-1-git-send-email-mingli.yu@windriver.com>
In-Reply-To: <1561946902-247680-1-git-send-email-mingli.yu@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 3 Jul 2019 10:05:23 -0400
Message-ID: <CADkTA4Ooc3zAj32Bzv_fkTnwHkdoNuAPYUhfZyTbsQiLiTzf5w@mail.gmail.com>
To: "Yu, Mingli" <mingli.yu@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-cloud-services][PATCH 1/2] meta-cloud-services: add layer depends on networking-layer
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
X-List-Received-Date: Wed, 03 Jul 2019 14:05:37 -0000
Content-Type: text/plain; charset="UTF-8"

merged

Bruce

On Sun, Jun 30, 2019 at 10:08 PM <mingli.yu@windriver.com> wrote:
>
> From: Mingli Yu <Mingli.Yu@windriver.com>
>
> Since spice of meta-cloud-services depends on
> cyrus-sasl which comes from networking-layer,
> add missing layer depends back.
>
> Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 203f9db..2cfb75f 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "cloud-services-layer"
>  BBFILE_PATTERN_cloud-services-layer := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_cloud-services-layer = "5"
>  LAYERSERIES_COMPAT_cloud-services-layer = "thud warrior"
> -LAYERDEPENDS_cloud-services-layer = "core filesystems-layer"
> +LAYERDEPENDS_cloud-services-layer = "core filesystems-layer networking-layer"
> --
> 2.7.4
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

