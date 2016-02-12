Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56BAFE00C5B; Thu, 11 Feb 2016 23:30:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94A12E00C55
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 23:30:23 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id p63so1183470wmp.1
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 23:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=odWYfAnOv6JJj8TDxiKmPFmueZ/JxtdmlEnuOWX6AGU=;
	b=zTzJRNvskUF7ZVJ8fjF8fZAtvewMcI01+9ECupu3ZnUZIuffXyMcLVMVjSi7mif0M2
	uwD9bhh6p9GPT3OVzH3QOeb1QTwKiYPLfsQJ8MwGFz/mD8jmHmrQKTJolPIxsqrw7ys/
	3ZSMQf4DIw+vMdydHCcbWhqVO8ab2tDB0iUUsLq+Zn8JgTPT2uhzwVJuScLZhlM/8FlM
	vl9DqKaTlO4hC+wYkZLRx0JGqXLRFT85Q16EJaRyMRGoI7fbff0YeP/neOqJgAQfoNfG
	zi+Th2AP4ERj+d4/unyHYWHzAd4EsRf2VKkIYlm+Ct0aHjHYe0I+q8uGrNk2aHVoiCbg
	N2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=odWYfAnOv6JJj8TDxiKmPFmueZ/JxtdmlEnuOWX6AGU=;
	b=R7G1BXmtbABgI6VVx1KdX6CsSnx2erZn2s2Gjbmd22YzoIAV/83DoOepZsNClTev01
	eY005avhlvviQ2ArHIqVMShzquCuJBxcJLOm8unSpqKIgUOVHuEkyCSRvgNn7NrCtT/r
	JdtsvbQlJ2a+7pw2tmn7zK2/3/0EYv7mhqfO4+HRMlbR8lokBRN7zYcRUS3zAUhlT9GR
	/nADIcpTVKh7lOZlqUehLD+Q4hsi720iXW939Zx+gvBebXBdja9FzyzqMumFzekR4Qmu
	aSBEflmSdHxFhLP/CTu5kQY1rn/N60I1NdPcxD1ANQTEN2UdnIK53G4xaBM0o/bt1FH9
	SNyg==
X-Gm-Message-State: AG10YOQjpHXNnhjEgio/YRUvnIkyTt4MGureIQr2l0zTFxYNXoJcUV/9sb0XUyl9+BLHEQ==
X-Received: by 10.28.131.134 with SMTP id f128mr1318279wmd.41.1455262223172;
	Thu, 11 Feb 2016 23:30:23 -0800 (PST)
Received: from [172.20.0.187] (ip4da2a5ae.direct-adsl.nl. [77.162.165.174])
	by smtp.gmail.com with ESMTPSA id
	av3sm10762190wjc.44.2016.02.11.23.30.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 11 Feb 2016 23:30:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3120\))
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1455190922-3669-2-git-send-email-funman@videolan.org>
Date: Fri, 12 Feb 2016 08:30:19 +0100
Message-Id: <28442476-3893-4125-8578-EF5FE50B0B1B@dominion.thruhere.net>
References: <1455190922-3669-1-git-send-email-funman@videolan.org>
	<1455190922-3669-2-git-send-email-funman@videolan.org>
To: =?utf-8?Q?Rafa=C3=ABl_Carr=C3=A9?= <funman@videolan.org>
X-Mailer: Apple Mail (2.3120)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] u-boot-edison: expand variables inside python function
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
X-List-Received-Date: Fri, 12 Feb 2016 07:30:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks, applied both!

> Op 11 feb. 2016, om 12:42 heeft Rafa=C3=ABl Carr=C3=A9 =
<funman@videolan.org> het volgende geschreven:
>=20
> ---
> recipes-bsp/u-boot/u-boot-osip.inc | 10 +++++-----
> 1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/recipes-bsp/u-boot/u-boot-osip.inc =
b/recipes-bsp/u-boot/u-boot-osip.inc
> index d05d440..0091f28 100644
> --- a/recipes-bsp/u-boot/u-boot-osip.inc
> +++ b/recipes-bsp/u-boot/u-boot-osip.inc
> @@ -140,11 +140,11 @@ python do_osip_mkimage() {
>     '000000000000000000000000000000000055aa'
>=20
>     def main():
> -        input_file =3D "${UBOOT_TMP_IMG}"
> -        output_file =3D "${UBOOT_IMG}"
> -        handoff_pointer =3D  ${OSIP_HANDOFF_POINTER}
> -        destination_pointer =3D ${OSIP_DESTINATION_POINTER}
> -        starting_lba =3D ${OSIP_STARTING_LBA}
> +        input_file =3D d.expand("${UBOOT_TMP_IMG}")
> +        output_file =3D d.expand("${UBOOT_IMG}")
> +        handoff_pointer =3D  int(d.expand("${OSIP_HANDOFF_POINTER}"))
> +        destination_pointer =3D =
int(d.expand("${OSIP_DESTINATION_POINTER}"))
> +        starting_lba =3D int(d.expand("${OSIP_STARTING_LBA}"))
>=20
>         in_file_data =3D open(input_file, 'rb').read()
>=20
> --=20
> 2.5.0
>=20


