Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5988CE0093E; Mon,  6 Jun 2016 16:52:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BEEDE00924
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 16:52:45 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id l185so9781325qkc.2
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 16:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9KyyuqH7b6dfCPJXgEFj1k0vIwG7xoFbX5flQRrf6ks=;
	b=zzaki6ZdDKNxze+DHjrnBxzfXnmTrvUe1O7swLCwoEdLFET+CV8Fb5tKelgOb+DtTl
	m1u5U1+FIY6YYAxhE6/cAxVZQX6gaz5PXOJIuRZBME/K/f1HUBKlSDqSCV6/ZKVaWpL8
	2ELwAvvARIUnYttTIGuRsPc5o797vB5AiDjFBfLR0osa5jbvoC2yD+0ZR5E2YHmrQj8A
	H6VmQNamo1qZKsapxYC46ZF2dOADQ9zN9k0KaZlzWgV2xLKwxDqSWjg0C6A/JX1CJxMb
	u+lMkunR4tI+G5do6wQPiNUV+jdzH0m96NnBDGBltKkSlzHu/z6G9PAibcr0nqapw4JC
	iryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9KyyuqH7b6dfCPJXgEFj1k0vIwG7xoFbX5flQRrf6ks=;
	b=SQEm+MDDbEhuuspHlb6pTStmgl8PhFGkeI1IWEXys1kQMa3XM+31YgzSs2MDg9Yckt
	jfCO3mP8bH/xvT3E2ts0YJhl9jggSsomK9icw84VtMc0nH5artj3m8KrKbpHH5SiyaZq
	Fhf7Ler8MApiefeOVRw6qG3GaWVXlHufPU61B6pzQRSsSjjsIBzA7ePY96IiOD2/HdEU
	zsO5Vxgk+uXur3FZV+8NU0pVg+9mpNKH3bP4bMQSNm6x/5Bmpb6VKfLEzRBaZ3QQAv7M
	2SWVKv0Y0B8/62AClAd2+kw/eEGA43txHwXiB2LV4BpppjXQyBUflUWRupxQRqJRuLvn
	h9sQ==
X-Gm-Message-State: ALyK8tLt4HudS2TWKKMEmfDgQrWSUy5QJ+EZLq1BBPJGvfpaLwsgMlkVVYk0Aq8+0ATS1wInmu8NY8F2Pmf1Ng==
X-Received: by 10.55.198.196 with SMTP id s65mr18042110qkl.119.1465257165274; 
	Mon, 06 Jun 2016 16:52:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.45.166 with HTTP; Mon, 6 Jun 2016 16:52:44 -0700 (PDT)
In-Reply-To: <CAGMdoFn3t_q76jEu61sh7oUYPmo45X9a+LCnQoNHnSA_BRbU7w@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
	<CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
	<CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
	<CAGMdoFn3t_q76jEu61sh7oUYPmo45X9a+LCnQoNHnSA_BRbU7w@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 6 Jun 2016 16:52:44 -0700
Message-ID: <CAGMdoFm_vAFois2YE4qxJPDEO9GXRysptFaaCToGP-coqh6V=A@mail.gmail.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, Diego <diego.ml@zoho.com>,
	yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Mon, 06 Jun 2016 23:52:49 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 6, 2016 at 3:06 PM, Edward Wingate <edwingate8@gmail.com> wrote:
> It seems I cannot just append to inittab using the echo statements
> because /etc/inittab is not part of this recipe. Must I duplicate
> inittab first in my imageX-inittab.bb recipes?

I modified the recipes to include their own copy of inittab:

LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=9bea9267288f79f074b2e000d3cf6412"
SRC_URI = "file://LICENSE file://inittab-imageX"
S = "${WORKDIR}"
DEPENDS += " sysvinit-inittab"

FILES_${PN} = "/etc/inittab"

do_install () {
    install -d ${D}${sysconfdir}
    install -m 0644 -D ${S}/inittab-imageX ${D}${sysconfdir}/inittab
}

Everything builds successfully, but the inittab in the final image is
neither image1-inittab's nor image2-inittab's.  It is still using
sysvinit-inittab's version of inittab.  What else do I need to do so
it will use my imageX-inittab.bb recipe's version?

Thanks for your help!

