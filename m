Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D86EE003F9; Tue, 13 Jan 2015 08:42:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4779E003E3
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 08:42:12 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id v8so2839692qal.7
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 08:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=dsiv4NWyWb/nGF05Z6+1b2fYcaT96c8aegBnruRVCyE=;
	b=neXEJR7bk9CI06uXL518F8LqS9MzSSfKcPJzekm5atl5lEIak80U4qqmB4wjBi+9t1
	ZmT29PFZEnf7S9hraGHOxEmMTrx/91Kkd0SOUosmO2BflwdtUYCR1DFmLzVJIyOwcS+m
	r9G+A3Cd/jI8Id5ObcA75RdGSoXbnkOgHVxnS3gqtOc72xf02hmFYyJ6yngZQb60dijN
	MmmQ1d5OdOQqCY6BCJ+o87FTLdfBArzuprJukPs+0RRIFYg4thY/QZt18i7SuIsJsMY/
	Ay2RHPruTGbMLxHWo2zLxKO1E6dTMvUWectJZJipe85SUfRzRjC6yIvkeSUlYWhELcmH
	elLg==
X-Received: by 10.140.85.100 with SMTP id m91mr56795486qgd.7.1421167332546;
	Tue, 13 Jan 2015 08:42:12 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:8862:ec43:da6e:7aef?
	([2601:c:a700:272f:8862:ec43:da6e:7aef])
	by mx.google.com with ESMTPSA id
	y20sm18047421qgd.35.2015.01.13.08.42.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jan 2015 08:42:11 -0800 (PST)
Message-ID: <54B54AE1.2000008@gmail.com>
Date: Tue, 13 Jan 2015 08:42:09 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
 yocto@yoctoproject.org
References: <1421141130-10354-1-git-send-email-paul.eggleton@linux.intel.com>
In-Reply-To: <1421141130-10354-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: Re: [meta-security][PATCH 1/2] libseccomp: fix SRC_URI for multilib
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
X-List-Received-Date: Tue, 13 Jan 2015 16:42:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

merged.

Thanks,
Armin

On 01/13/2015 01:25 AM, Paul Eggleton wrote:
> ${BPN} should be used instead of ${PN} where you want the name without
> any prefix (and ${BP} is short for ${BPN}-${PV}).
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>   recipes-security/libseccomp/libseccomp_2.1.1.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
> index 5e0b962..0663656 100644
> --- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
> +++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
> @@ -4,7 +4,7 @@ SECTION = "security"
>   LICENSE = "GPL-2.0"
>   LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
>
> -SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${PN}-${PV}.tar.gz \
> +SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${BP}.tar.gz \
>              file://compiler.patch \
>              file://0001-tests-create-install-tests-target.patch \
>              file://0002-tests-install-python-tests-if-appropriate.patch \
>

