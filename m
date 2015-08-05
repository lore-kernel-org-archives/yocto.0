Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6208CE00AB4; Tue,  4 Aug 2015 19:04:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C31BE00AA2
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 19:04:01 -0700 (PDT)
Received: by pawu10 with SMTP id u10so22337097paw.1
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 19:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=GRubW6Jp192Gmbn/DFa3iLz+RkgBdIbHRjzAiK5hkSA=;
	b=tGo/T45RroxLRGDrr6LmAmjK81M0F4pm0a+jqtvDlVjm6AUg+t5C9MQ2IcFj6il7rA
	eVGGHGopBGFQM8rfzItUvt2lpfCVwasaABY/c4i1p/+CQE8Baza252ClT6sskVmNivDv
	huF/M08JBusKoAx+rXof2unOdSi1OMM6OTmQK2YTmQvk0CpCS9O8lNYYy6IZ3hOK9h7K
	tmS8jtPyI6uUEdcQ87eT7ng8W2q9w//y0gzXn34ae90EygFTaAcld4akfhtuZJJieFz9
	CYNrmUSMVl+Cf/J11V6DdVVu/bXfadBKmSiBnSaR4nt/Yyz11YLmsbEUX/uSM5XrGgSn
	p4Vw==
X-Received: by 10.68.65.77 with SMTP id v13mr14103227pbs.157.1438740240821;
	Tue, 04 Aug 2015 19:04:00 -0700 (PDT)
Received: from [10.5.7.175] ([223.196.115.131])
	by smtp.googlemail.com with ESMTPSA id
	i10sm740415pdr.78.2015.08.04.19.03.58 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Aug 2015 19:03:59 -0700 (PDT)
Message-ID: <55C16F0C.5020004@gmail.com>
Date: Tue, 04 Aug 2015 19:03:56 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1438641748-29395-1-git-send-email-thomas.perrot@tupi.fr>
In-Reply-To: <1438641748-29395-1-git-send-email-thomas.perrot@tupi.fr>
Subject: Re: [meta-security][PATCH] Corrects a typing error.
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
X-List-Received-Date: Wed, 05 Aug 2015 02:04:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


merged.

thanks,
Armin

On 08/03/2015 03:42 PM, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>   recipes-security/libseccomp/libseccomp_2.2.0.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/libseccomp/libseccomp_2.2.0.bb b/recipes-security/libseccomp/libseccomp_2.2.0.bb
> index bd970ed..3b6aa67 100644
> --- a/recipes-security/libseccomp/libseccomp_2.2.0.bb
> +++ b/recipes-security/libseccomp/libseccomp_2.2.0.bb
> @@ -30,7 +30,7 @@ inherit autotools-brokensep pkgconfig
>   PACKAGECONFIG ??= ""
>   PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
>
> -do_compile_appned() {
> +do_compile_append() {
>       oe_runmake -C tests check-build
>   }
>
>

