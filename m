Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E06DE007EC
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 02:23:27 -0800 (PST)
Received: by mail-qc0-f177.google.com with SMTP id m20so18628172qcx.36
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 02:23:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Zd2JCte0p3RZ1nRxqqzqMVbt4PPkUWkQ6REMF3L6i8s=;
	b=KkLEaZqwrxFtRSR3f7pB4lKpP59CYlJrjFpYAeI1r7UCGsLJrurLML00Nc6jyIuguC
	eJJS7SFgrC2SltGuBSBkVoSWxVrGLymHQpZVvvV7YjhnvM+gWllk7CHlCG/XZMbXfhZ+
	BErBh7syO+gA8tSvOQj+luJ7DgHJbUAgyvvmVrVslRxz9qmvSHWxO+cORTSK6ag4OdAU
	nqiHF3oaFizLNykyJZ1lNhIttegY+8qbICLvLHsaRa2IqmEi4RT0n130h4NJEgNXFQMw
	cYfoT1nl+qEksep8BgLjvewKOVOui7GYzgQbBzcUsWtKVl5waZi0D76fnNx2rja7m/Ah
	HcHQ==
X-Gm-Message-State: ALoCoQnpI5hSjINELmedsAqI7nJwHiTyBi/0Gz9hT1ngioUBNkWK+nsDcsbHSyMG7GG1thYVkMv8
X-Received: by 10.224.13.203 with SMTP id d11mr13406090qaa.26.1389090206255;
	Tue, 07 Jan 2014 02:23:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Tue, 7 Jan 2014 02:23:06 -0800 (PST)
In-Reply-To: <CAJGS5=H1s=xK2CHzjMq4qPDvy3V29sFqcn3fep0_ZT2d3WGUuQ@mail.gmail.com>
References: <CAJGS5=H1s=xK2CHzjMq4qPDvy3V29sFqcn3fep0_ZT2d3WGUuQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Jan 2014 10:23:06 +0000
Message-ID: <CAJTo0LaFxcXzuAWHNeWc085e-nxA1z77tNy4kkWntzur3eBBkA@mail.gmail.com>
To: Bill Martin <billmartin544@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eglibc's iconv (version 2.17) command in Yocto Dylan for x86 target
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
X-List-Received-Date: Tue, 07 Jan 2014 10:23:31 -0000
Content-Type: text/plain; charset=UTF-8

On 7 January 2014 03:31, Bill Martin <billmartin544@gmail.com> wrote:
> I'm using Trousers and tss on my Yocto target build. I attempted to make a
> call to tspi_tpm_collateidentityrequest and this requires a UNICODE string
> in UTF-16 form. The preceding call to iconv fails when I try to convert from
> ASCII to UTF-16. I tried variations of the UTF-16, based on iconv --list.
>
> I know this command works on other Unix-based systems. I tried on three
> different machines running Ubuntu and can convert from ASCII to UTF-16.
>
> Rather than modify all the TrouSers code and force it to only use UTF-8, I
> wonder if anyone here has a patch for eglibc that would allow iconv to
> convert to UTF-16?

Can you check that your image contains the eglibc-gconv-utf-16
package, as the character set converters are split into separate
packages and only installed on request.  You probably want to add a
runtime dependency on that package to trousers.

Ross

