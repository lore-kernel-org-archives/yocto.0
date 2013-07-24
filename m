Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0382EE01528
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 04:06:07 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz10so6685378veb.8
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 04:06:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=i2aIfwRqdqJns61sbcyFlkN8E6KTIKTZw7PqStiTGaQ=;
	b=VQX9e2TdV2n/ej0RSO9y5MOc+d9dfDxmI3iN7utWc3ZEj+3SHcIQwubNs9QeUDs3wG
	umzhxgs85YZsHhmxoBavK98OAJopX6SvMURqfTLg/rZ5eInl8SLNMfQuI03CBaHbtSYm
	axNUyHhIs2py5ZYtmT0fhrZ+HyxmsjL5dZKD8tEY8hauTUzEoi2sFGVtVxnSUOBB+QF8
	MldAkAYTTQn/2dO1BuMoQp8xkriCIAgSMebZG6b/8h+PRNXTusNnx+MaSGIxRV7WOAiE
	8Peh+i7bpuprFlW5nSiPgdgNiMieLvjdkrdrNDlQqABR6lw/DYKK1w1czvCMhitCQqHj
	SV5g==
X-Received: by 10.52.66.242 with SMTP id i18mr11279131vdt.3.1374663966440;
	Wed, 24 Jul 2013 04:06:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Wed, 24 Jul 2013 04:05:46 -0700 (PDT)
In-Reply-To: <1374163799-26984-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
References: <1374163799-26984-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Jul 2013 12:05:46 +0100
Message-ID: <CAJTo0LYYokaSA8RTn2YLZg26jadvh5yxhDhWrdKNCKxqrsimdg@mail.gmail.com>
To: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
X-Gm-Message-State: ALoCoQkvdCt6Zf4rZQW/5/JBYRbISPjwEr8wT9BTxhdQb4ga4epd50b7EKOVqC1VhXqsXyVdw0jC
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] package_reges.inc: Add/Update REGEX and PRSPV variable
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
X-List-Received-Date: Wed, 24 Jul 2013 11:06:09 -0000
Content-Type: text/plain; charset=UTF-8

Hi Emilia,

On 18 July 2013 17:09, Emilia Ciobanu
<emilia.maria.silvia.ciobanu@intel.com> wrote:
> +PRSPV_pn-unzip = "${@d.getVar('PV',1).replace('.','')}"

Looks good.

> +PRSPV_pn-docbook-sgml-dtd-3.1-native = "31"
> +PRSPV_pn-docbook-sgml-dtd-4.1-native = "41"

As discussed already, let's rename these files so the PV is in the
filename (i.e. docbook-sgml-dtd-3.1-native_3.1.bb) so these PRSPV
values can do the same as the zip recipes.

Ross

