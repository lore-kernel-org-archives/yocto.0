Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5E84E00D67; Tue, 16 Jul 2019 08:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E807EE00B9C
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 08:15:31 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id j6so8223094ioa.5
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 08:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=brbFKfTTcApxC3M2dZQZVefxzLKC0AzposAV6eHh6PI=;
	b=C3IxCEm4ICcTWYvDJ2FOYj8XvjDN2AzYqfmSBJWMeMhmF4JxwDblUnzmbfi5IpLfqQ
	+caYBKOEGhKDVsdeLtCbNquP6W+0CqMzCdQk6rX6t7ACft/TgoK5dL3v8un9seL6dL6F
	2MwAjlAmJgLyw7cm/66ELalcJRkbkjo2dzWjyUHhwY091ueceyBU1ZtQC0JUH6X3L3mu
	YREbRY96n9LeBOy5xKTxYG4WL/tOBJH3Q2GhkTodZ9/reCnc20jOS3xLs4meDeS+uEVb
	teHpFH8V8FboHD8TU/ABVdZUyxGsfrCgh/3FhHSgvRm3qeSPicpIVhN06u8hO3XSdfLx
	c7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=brbFKfTTcApxC3M2dZQZVefxzLKC0AzposAV6eHh6PI=;
	b=RIYMo1/FTrffLQdPIbKq/T+Mjikaksplb6k7t3YEyo7BbuM942i1xCZbr+Gz1VgEqu
	wzVtapojTBxuMzKOJMjVtLcUSIQyWSEXPEL5jcVTtkw8d3rhW6npaufrPHx2PhQ9jH80
	WyOrwhjTY15uEAqp1/MGiTKrXf/m8+CVLJefiAYYW0LkmsJgjDR9jrpOln2y9C8xHeyw
	hHq74jrHcXINHH6kyWzGW4X8IZ1yoMX2vNGxTCym0J3YhWDvmT02ArPzd6tokrbwhwqH
	UwIWMUCqGItj6nF1NdZiknyYzT/u7UxdvZKeUAiukgfCTC6dFZlp8W7P2kcc/+KFKA1A
	0Z3w==
X-Gm-Message-State: APjAAAVxlc52PNPZRpt2mKkdi+QhQrOmC8Bif4D3n9a4F0TbfwQAdxQs
	Czb/D3A+fP+VCVg9XX6Vwp6fos8VCUEzzUxNu5qN8A==
X-Google-Smtp-Source: APXvYqzacQFxHsxsIkRjtMcLXB0wWO/1yBy/Bb7OsyrEV0J9+Vs1eCdYtjzrgwbvW86gOkwUsIgQ24zQVG7g6d69utU=
X-Received: by 2002:a5e:c744:: with SMTP id g4mr30158021iop.187.1563290131462; 
	Tue, 16 Jul 2019 08:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <emc0ba868c-6ea5-4403-85de-457b09e9cd3c@andys-imac.local>
In-Reply-To: <emc0ba868c-6ea5-4403-85de-457b09e9cd3c@andys-imac.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2019 16:15:19 +0100
Message-ID: <CAJTo0LYsz3J24YQgzRgJkFqFpQECG3p2dkwU=Oroja3J7XDo+A@mail.gmail.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Pre-installing node.js packages
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
X-List-Received-Date: Tue, 16 Jul 2019 15:15:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The proper way would be to write a recipe for each package you wish to add.

Ross

On Tue, 16 Jul 2019 at 16:04, Andy Pont <andy.pont@sdcsystems.com> wrote:
>
> Hello,
>
> Is there a way to add node.js packages into a build?  I=E2=80=99m trying =
to
> avoid having to include npm and compiler into my target image.
>
> -Andy.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

