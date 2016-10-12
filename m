Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2F0DE00DDE; Tue, 11 Oct 2016 20:48:08 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9723E00AC5
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 20:48:07 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id s8so1798974pfj.2
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 20:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=H4cCl33e6eV4GWGSfCZPq3Kwf8mqDw+2ji5rNZj4WoQ=;
	b=toDyrt72kWaNC4HafpyTtVS7rV6Jl2y/dmkWG2+WJY0CiKi5LmXsTs3wMJDLayu+aT
	gF0QWyXuMYomtVixsKFNR9ktT5SNAATYAgIio4uNV2U2DWkwOg2hDdr0Aza/Iu9H4rzc
	4ylDFbZSTIGT0mHh1b+QwaNHLd7dG6MmPzuAQATx3AaSXwNV+FEiiaKnscVM1BaF1VwO
	rOY59HgfZGfdvqh7E0i4A3d0rv+SKDGi2aBZqaMEmnsJVRfW5dNIzi1VwP6TDVkpkTPr
	7ju/nGMfmqowiXsyOr2dNvVeLOBfLLY1vlTfEimXk/yu7P5bzpkjjbD/TiWrrQqwWXuF
	OvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=H4cCl33e6eV4GWGSfCZPq3Kwf8mqDw+2ji5rNZj4WoQ=;
	b=AqdAxpz286N8AyiQW4Obc4nQEjG2AwFmaF1GKBgNknH1olV3BukmC008+Axg9wLGE1
	F65N8w6MfJz0YlCiOMEVNTK6Dfep1VTG29pBUax3T0/g67pgC2OOOlk8Hkd7MPM4QW0N
	+Xho2yzUK3KuLTpDFC7OWEOBC/i+EgoV+aNB/b9vS2CXoDSetfMudZEc9RsuAnAYTQ7o
	9ke5dB2tG34vYWec6YsfN2o716Sg1rCK2k3yIrlysSuGxNA+mam/j6/Y6jPCTn/pxTQH
	f824QM1kew4lrmRB2lwcSLbcOH1NseJsMVj7GIc3QlKanOTbIHhYVCxa36ox3IUN8+9Y
	L1xA==
X-Gm-Message-State: AA6/9RllY/t8/A/RaSnC9pq6ReE0ZDf1d5LGeZryCsDqvOdHceOxQznwKRxxyksGqxLVgQ==
X-Received: by 10.98.112.195 with SMTP id l186mr2028791pfc.35.1476244086852;
	Tue, 11 Oct 2016 20:48:06 -0700 (PDT)
Received: from [10.0.36.7] ([94.186.205.19]) by smtp.gmail.com with ESMTPSA id
	b83sm7680774pfl.41.2016.10.11.20.48.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Oct 2016 20:48:06 -0700 (PDT)
To: Mark Asselstine <mark.asselstine@windriver.com>, yocto@yoctoproject.org,
	sgw@linux.intel.com
References: <1476196245-14084-1-git-send-email-mark.asselstine@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <d6c130c7-6323-6b67-f8bc-7234153b6222@gmail.com>
Date: Tue, 11 Oct 2016 20:48:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1476196245-14084-1-git-send-email-mark.asselstine@windriver.com>
Subject: Re: [meta-security][PATCH] clamav: fixup improper quoting
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
X-List-Received-Date: Wed, 12 Oct 2016 03:48:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/11/2016 07:30 AM, Mark Asselstine wrote:
> Commit 217e06badb146539122732ab0eb27fd17cce09e5 [clamav: fix gcc 6.x
> build failure.] fixed a typo in "PACKAGECONFIG" (was missing the 'G')
> but unfortunately the PACKAGECONFIG string was incorrectly formed due
> to mismatched quotes. This caused a parsing error:
>
>    ERROR: Unable to parse .../meta-security/recipes-security/clamav/clamav_0.99.2.bb
merged.

Thanks,
Armin
>    ...
>
> Removed the unneeded quotes to fix the parsing issue.
>
> Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> ---
>   recipes-security/clamav/clamav_0.99.2.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
> index a2bab6d..3e5f36c 100644
> --- a/recipes-security/clamav/clamav_0.99.2.bb
> +++ b/recipes-security/clamav/clamav_0.99.2.bb
> @@ -54,7 +54,7 @@ PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr, --without-open
>   PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib, "
>   PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${STAGING_LIBDIR}/.., --without-libbz2-prefix, "
>   PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${STAGING_LIBDIR}/.., --without-libncurses-prefix, ncurses, "
> -PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/', '--without-systemdsystemunitdir', "
> +PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
>   
>   EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
>               --without-libcheck-prefix --disable-unrar \


