Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01814E00C96; Wed, 11 Oct 2017 15:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D27CE00C7B
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 15:50:54 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id q124so3027660wmb.5
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 15:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PasMfQp+Ml5vsfvYaVy/mCNju4hkHIX039rPU5Nx1tk=;
	b=OsWW6kQ27EGQA5CJTF90lfW1bskNmiogg6m5cqhwziDFYwMPZEblzVmJbGpelipKS2
	XWbg8f4I6YDZeYBrc8n9WcxsLl5vQfuKplMFWaxKB7sQuVSmUi4jgZQomyvUfQowUC4m
	qiSpVf7J1qXJMd0TWdGw0+Ne/GNrLRWlpsWE+M2w2jku7w+C7nmEdw6gHpoaQX825GU6
	26B1JGdB3TlYAWLgqF+MLse2VpJUgGJeHzg8k+BGSUVBEmciPoWvTlcqzOiG+sRAF5A3
	U8wmUM4+SHXFvmux8KjlHke1iC3INGHKsmmGy6zlaOib3yfsmMrb4fN+m0p8WQ7PXP62
	/Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PasMfQp+Ml5vsfvYaVy/mCNju4hkHIX039rPU5Nx1tk=;
	b=abuN0UWSl7fTYjAXaYf1XvXq4GlIQpEgdAl45QUXuMiuHQzMUh/6rnzo+YUEPKRxEM
	0YS2oKcpO2necp2h1HxRbNa6Z3t6qIvUKBE6RU7Zl9tj+GL+buUuZd9mh6kxPghUaYFI
	muJa0ZP/jUB6J6qn815qCmlhG1eqEzshgGPxWXnjoIEwxiaEZlSnA0zM1Ez/CFr68p3E
	xVOnIOQTKqnYTfqOi5LgDbTqBTSlMauCpGpKczxEfj4ppO43hoeaV2+PJ1bbBg35gths
	ImHHjgQsgnfeiF7uDTaWD2Tqi9u8EhG9MsAmPRca/nPopZkBj9THYJpRla+OZMe8X17q
	rCjA==
X-Gm-Message-State: AMCzsaU5OUC8i+yx+WyC+WgVCmhR3BSlpB5/aKASoR8QW1lhvuiF1VEA
	D+wFSA4cR77BEAPInulid0r0HO525fanFgsbjy1Ylg==
X-Google-Smtp-Source: AOwi7QCgbj7VwBjOeLukpdNDr+O237gX2u6e3kuGjodrPs3tuplM7of8cBppYX80NKMSZmrQurGsPWVm3YKPSet8cxE=
X-Received: by 10.223.146.197 with SMTP id 63mr348689wrn.180.1507762253398;
	Wed, 11 Oct 2017 15:50:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Wed, 11 Oct 2017 15:50:52 -0700 (PDT)
In-Reply-To: <22dce152bf87dfcd65f1ec6461e3a9cede222248.1507606063.git.jackie.huang@windriver.com>
References: <cover.1507606063.git.jackie.huang@windriver.com>
	<22dce152bf87dfcd65f1ec6461e3a9cede222248.1507606063.git.jackie.huang@windriver.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 11 Oct 2017 15:50:52 -0700
Message-ID: <CAJ86T=Ut-afcE4XDOttFfv9Naz_n9buiqNw3A9pN4Bs6ripo=w@mail.gmail.com>
To: "Huang, Jie (Jackie)" <jackie.huang@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 2/2] cgl-common.inc: append SRC_URI for poky-cgl only
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
X-List-Received-Date: Wed, 11 Oct 2017 22:50:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 9, 2017 at 8:30 PM,  <jackie.huang@windriver.com> wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> Someone may want to add meta-cgl-common layer into their
> distro and only use some of the packages, but these kernel
> features will be also added by the bbappend and may cause
> unexpected issue, so change to append the SRC_URI for poky-cgl
> distro only.
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  meta-cgl-common/recipes-kernel/linux/cgl-common.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
> index 52cf773..362a7c4 100644
> --- a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
> +++ b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
> @@ -1,6 +1,6 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> -SRC_URI += "file://cfg/00001-systemtap.cfg \
> +SRC_URI_append_poky-cgl = "file://cfg/00001-systemtap.cfg \

Needs a leading space.

>              file://cfg/00002-oprofile.cfg \
>              file://cfg/00003-lttng.cfg \
>              file://cfg/00004-kgdb.cfg \
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

