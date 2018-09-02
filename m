Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8DCDE00805; Sun,  2 Sep 2018 07:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD1BE00708
	for <yocto@yoctoproject.org>; Sun,  2 Sep 2018 07:50:01 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id x197-v6so29578470oix.5
	for <yocto@yoctoproject.org>; Sun, 02 Sep 2018 07:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3xIXoAurBiGJuZ48EGHHkZAhev5CYZrjPCsLKHQN6Mk=;
	b=tdcsVoiQIP8W4A9auqbfFcqUCCEGNWG9XXUjik1wvk3t/V1eVCwYPA4TPdihGaKAgh
	efD72gz/KsuEhArjdb5UStJ96sl7Y8NNLQv6NhAboZXKa8X54ObejJuR3bo4s2pbFi22
	Glj0S3bzuUe+D/K9wdyH3FsIsuY5PSyhvDF25MFiv8P3XOFSAMoTDyU09H7zxJL4RmXK
	63FJR3PLCi3BVnOiGz/X6SAXEdW/P6mAed5xY7YDzozAg3QO90L6CFDxLyFXDDXzyQ4C
	3LxxFumBhZiY5hysOA96X/KEHFdtNgY08UVwema3p+h2CDQwPtoOQ7l1ii3cevVaPVWW
	oTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=3xIXoAurBiGJuZ48EGHHkZAhev5CYZrjPCsLKHQN6Mk=;
	b=ovBLjHfpbM6bC6iPuJDWEv0aiq4g8k6TEQFRRmmwSTZ5FFZjNBVUt9KgZL2Pc5WG3c
	Dx4/M1DCf4L1n97vl5X+qcHOwk7yQ2ubproYA6geTeKLh80WzCpzJ88ixScOh/DfvgAy
	HTrKdRGfbDfivXqiX/Tx38uLuP0w93oEI6FTM+kEN1XD8Z0UdUyik99Tonn52DI184op
	m082yeaZpZM6WvkJQwfTOeeRI3v00BTOeqPx6qsAkiot2bFriyNa94pR9nKa2CfDfxQz
	bTbFn9fCU4OFunAuRasf4DZrGoaiMU8X+P1L+hrMzYsZN9TBQA3ZQdSnBqq3EpB/VzxW
	JB4g==
X-Gm-Message-State: APzg51C4eG9J7qmnF0Wm3pRbpVyr5kxnZu8TChS+EYEiEl4A3JHjLKLJ
	RrrZJuYVhz7VZMl68RD1K36T9UEI
X-Google-Smtp-Source: ANB0VdZkoS4dFm1QU8QMhF4rP9mB2jj2UYgo5uUTKLPB16FcZWfm2eFqm04ViYCano1j2aSwW+Uk0A==
X-Received: by 2002:aca:f105:: with SMTP id
	p5-v6mr12110020oih.342.1535899800477; 
	Sun, 02 Sep 2018 07:50:00 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:c043:3fe4:1aa0:e88f?
	([2601:202:4180:c33:c043:3fe4:1aa0:e88f])
	by smtp.gmail.com with ESMTPSA id
	s65-v6sm8871275oia.46.2018.09.02.07.49.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 02 Sep 2018 07:49:59 -0700 (PDT)
To: Alex Kiernan <alex.kiernan@gmail.com>, yocto@yoctoproject.org
References: <1534184407-23219-1-git-send-email-alex.kiernan@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <ec128857-d8c9-a983-6422-ab801fb823dd@gmail.com>
Date: Sun, 2 Sep 2018 07:49:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1534184407-23219-1-git-send-email-alex.kiernan@gmail.com>
Subject: Re: [meta-security][PATCH] libseccomp: Drop RDEPENDS on bash
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
X-List-Received-Date: Sun, 02 Sep 2018 14:50:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 08/13/2018 11:20 AM, Alex Kiernan wrote:
> Commit ada3eee ("libseccomp: fix rdepends") added RDEPENDS on bash, but
> this is no longer needed, so drop it.
>
> Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>

merged
> ---
>
>  recipes-security/libseccomp/libseccomp_2.3.3.bb | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/recipes-security/libseccomp/libseccomp_2.3.3.bb b/recipes-security/libseccomp/libseccomp_2.3.3.bb
> index 8d58163..0a8a679 100644
> --- a/recipes-security/libseccomp/libseccomp_2.3.3.bb
> +++ b/recipes-security/libseccomp/libseccomp_2.3.3.bb
> @@ -38,5 +38,4 @@ do_install_ptest() {
>  FILES_${PN} = "${bindir} ${libdir}/${PN}.so*"
>  FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
>  
> -RDEPENDS_${PN} = "bash"
>  RDEPENDS_${PN}-ptest = "bash"


