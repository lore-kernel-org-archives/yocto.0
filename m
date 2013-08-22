Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23AE5E00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 07:14:35 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x16so1308512vbf.10
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 07:14:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UO69WzFKC2oaPezeSOEvcTuEXa+uvuEG4LRTMqKl6h4=;
	b=ctiC+TVOkC02Rk8W9UVKdPBJ7V4lNRqulaGGcuC7yP4pzT0edrX9eUO76Bd0pGH2Rh
	Ze5xXBqzpALxcvN30FoEJtcEUEm+Em3k8QO+FDwwQqUp/NpOVUVIpePrQF9+OX+qvOZg
	s00Y1rDD8A4QuoJ80r1y3H0lb29CrxVeX+5ocKOKlvwOgdWyGiGWsKwxSORVCWNnawn2
	ncnJ9QqSLV/FAgBAj5X2LgbDjJNIm2hYdi5rd27R5+qF9Pcz2pWruvUqcYRgcT6PrcEx
	8Ud6bOxCGcUCdY1R0axzvl2b3ENUWKIk6H5Q3AN/D0+fyFe/4+VaSo+DtUdKbOjdYt1j
	EtjA==
X-Gm-Message-State: ALoCoQloXCVtlvk+JtzifP1LwpV+HHWbM2St8/tiNgX2vKjmhYCHqmBO/XbR1QgtV+ch0rEMItln
X-Received: by 10.58.75.41 with SMTP id z9mr11842624vev.4.1377180874980; Thu,
	22 Aug 2013 07:14:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 22 Aug 2013 07:14:14 -0700 (PDT)
In-Reply-To: <CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 15:14:14 +0100
Message-ID: <CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 14:14:37 -0000
Content-Type: text/plain; charset=UTF-8

On 22 August 2013 14:40, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> Hi Ross,
>
> Is this the correct way to write my recipe with cmake?

You should be able to remove your do_configure().

Ross

