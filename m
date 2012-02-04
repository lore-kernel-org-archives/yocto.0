Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FE4DE003E5
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 21:04:59 -0800 (PST)
Received: by lagw12 with SMTP id w12so3035169lag.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 21:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=D9nKuL04gHiJDaK0uIv4QsUxQVeC2dEA9M4DjZWdXHM=;
	b=gXBntuS7Lriml6GmaUffemdZrRdvCugEDyfdeNl5RqIGhHf9fgVWUNbrcmfshVSQlR
	HpmTK5vcLA5Wg2rAyvpfI8DjZ/k4gv6tsbiEChiQhUdX7KHyoOoh1/46TpzTkfLBfXU1
	dsk1IHhSmGDLd4xZteRuGYWd95Hj0kW9cNAYA=
Received: by 10.112.28.169 with SMTP id c9mr2547766lbh.42.1328331898227; Fri,
	03 Feb 2012 21:04:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Fri, 3 Feb 2012 21:04:28 -0800 (PST)
In-Reply-To: <CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
References: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
	<CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 3 Feb 2012 21:04:28 -0800
Message-ID: <CAMKF1sqcteBoCUatim7w=Sb0e0EMBxo57AwxYK8+KP_rUdfm5Q@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Task Build Issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Feb 2012 05:04:59 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 3, 2012 at 9:03 PM, Khem Raj <raj.khem@gmail.com> wrote:
> add ALLOW_EMPTY_ task-mytask-apps = "1" to your recipe

no space there so it should be

ALLOW_EMPTY_task-mytask-apps = "1"

