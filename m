Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55AE7E00E28; Thu, 15 Dec 2016 23:31:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E709E00E22
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 23:31:45 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id a197so20388514wmd.0
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 23:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=INzpFNSpt/pKX2ocesw5Dsa5WK1eplSBjLmeCj2j2Xo=;
	b=jeugn733N56h8ZejTejduXaa+1jbGPyHKRW9iytAUL8DN4npknJr4k82Sxvqw7pPu5
	dVdk2mI8E4+l+Iq9BgTPQF+SzvEUsAv3jHbaOZ2ADfocvRoYxAGAms5yrpm+22P0G8qE
	ZwK8JX2ehPM5HJmzLIV1HX23TDV9ZPdJKKI5UaD2aASVZS3TO/267CDMeG3TzkPwTd2l
	CN/jl02LbH/HJw3dBA1t1gg8rAECa6RBjj63z4K/PrUKUHzgqbAWRs6nw/fNhB6IbA9q
	7JeodpXdvurmXd6x2+P01sYUjPuHgFkvm23RtwE8D2dFdSdJN7FtISZoQAGzSSszZ+Hq
	9Q0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=INzpFNSpt/pKX2ocesw5Dsa5WK1eplSBjLmeCj2j2Xo=;
	b=f0S0SoL+gywOj6j228gyp3TO+AWb6A8WfLvP9jlFe/GwBSQOgcDYjzAMVFAVzg6wq2
	TM5e+0a1Wh0xZA3IykBEoLbvEv4Lbv1v2wIAsLqxPwFmK23gzHa5pmjZfNt92ve1WNsr
	06NpxfAdCjlpjP/BhNRTulLtqYfH+Mib3EhxSVhwxgy8w6mDTXuNOx3ExUmSJR15p1+U
	oKBpw+Le9xk0j750kYZgsIJMtOgpjRK65S+J+VitwI6iDcF9cBX2keFZxB9guvPcuDRy
	zi0iC9GSLCENQeGJnk4XoxRWlRKnV+TBe+wgkUqFIwgV3sYXQib0T6Yj6zD7Py1cT0jU
	hAMw==
X-Gm-Message-State: AKaTC01rzUtgayuu9YFMf32XmZkKb3HMxVPNBpF+n8M/rhYn3ieHpBzn1ldAYFEJ/EPXwQ==
X-Received: by 10.25.228.155 with SMTP id x27mr404409lfi.55.1481873504293;
	Thu, 15 Dec 2016 23:31:44 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	m81sm1104576lfd.45.2016.12.15.23.31.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Dec 2016 23:31:43 -0800 (PST)
To: yocto@yoctoproject.org
References: <1481871483-18552-1-git-send-email-kristian.amlie@mender.io>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <47cbfa36-82c0-6f77-dd4a-378a5f8d4416@mender.io>
Date: Fri, 16 Dec 2016 08:31:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1481871483-18552-1-git-send-email-kristian.amlie@mender.io>
Subject: Re: [PATCH v1] u-boot/beaglebone: Select Beaglebone Black target specifically.
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
X-List-Received-Date: Fri, 16 Dec 2016 07:31:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Oops, I should have submitted this to the poky list. My bad.

-- 
Kristian


On 16/12/16 07:58, Kristian Amlie wrote:
> The am335x_evm_config target has a subtle problem which is not present
> in the am335x_boneblack_config target: When booting from an external
> MMC card, the internal MMC is not accessible using the former target.
> 
> This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
> due to the addition of the CONFIG_DM_MMC option, and the
> am335x_boneblack_config target does not have this problem.
> 
> Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> index fc6a527..24a95b4 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>  
>  SPL_BINARY = "MLO"
>  UBOOT_SUFFIX = "img"
> -UBOOT_MACHINE = "am335x_evm_config"
> +UBOOT_MACHINE = "am335x_boneblack_config"
>  UBOOT_ENTRYPOINT = "0x80008000"
>  UBOOT_LOADADDRESS = "0x80008000"
>  
> 

