Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5DF7E00C7A; Thu, 27 Oct 2016 00:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2710FE00C0B
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 00:22:31 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id y2so40534195oie.0
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 00:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=Ah45u/6y8csy2t1SvlR3LGL9aFz7e7A0AP+R3wfXC8U=;
	b=WhrLUa20u6WfowSer2SOPPz/nlltskTw1XTsOCLMFtMfbYNwcZhxg1XsoYOJEK9/Du
	Ofjb6JhgnMKOvrvPNV472plewVNuyQz/dWmc22aBCNWm+7WZbr6gTK5JVAcpV6bDi9SC
	lgk+wDFWmPRLLUNx4McxSY5J9tYyCoTQDxCI6zBaVbXoR/3ZSGoe42biYIW3oba7ud5d
	A+9zBQVxd5rbr0Frsa4diVfUZ0azDVQDKIiI8pomqHMPPHKkvjjris1ztchkLoFvsR8C
	bJfleFQZkUd5Q4AD7fRAw4qnJpqtXHqGiu/s+DPfe2yQIHungq0ufgs+Ad8Mn+C82RGt
	/aRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=Ah45u/6y8csy2t1SvlR3LGL9aFz7e7A0AP+R3wfXC8U=;
	b=J+JNN2yKEkpR26TnsD/bqDv8j5exNEYm77lzLg8FN2cDHpeom+W67uymLv1xYEROWD
	ZhALldej0HN9mGl4gA4T8a1eCtaibcrYA+Ep+GNoW5S3dolZagx2362fX9k02aKVnx5Y
	9nAgIt9Bz2nyv0NePtTNHx3q/3uyGUvorwkoxJpxXszqzZL9M6OLUq3X9pz05ujuQ7Xd
	7H49Y8nUzg7pKuai1iY+TGMKaHzZBfx870K5V7MSYOV5R8XE/EvV0aLLDAHw8xR9hOgZ
	n6RaRCRwcYWgtpSQbhm2T5O0bSv8X0gb1azch15Fk5fiNgep03E1YS4T3PFAslUKffNi
	I1pA==
X-Gm-Message-State: ABUngvf6yEYj2DPVt3b5mk+Xf7Vj+iMcqbiq8H16EJos3eOLRbJ9aT/Rv13+YhS5VzAnWNMH
X-Received: by 10.107.128.28 with SMTP id b28mr6129349iod.134.1477552950782;
	Thu, 27 Oct 2016 00:22:30 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8EE13.dip0.t-ipconnect.de. [93.232.238.19])
	by smtp.gmail.com with ESMTPSA id j69sm551213itb.15.2016.10.27.00.22.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Oct 2016 00:22:30 -0700 (PDT)
Message-ID: <1477552947.2887.63.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Thu, 27 Oct 2016 09:22:27 +0200
In-Reply-To: <1477494038-2895-2-git-send-email-akuster808@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
	<1477494038-2895-2-git-send-email-akuster808@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] smack kernel: add smack kernel config fragments
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
X-List-Received-Date: Thu, 27 Oct 2016 07:22:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-10-26 at 08:00 -0700, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg | 2 ++
>  recipes-kernel/linux/linux-yocto-4.8/smack.cfg             | 8 ++++++++
>  recipes-kernel/linux/linux-yocto_4.8.bbappend              | 5 +++++
>  3 files changed, 15 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
>  create mode 100644 recipes-kernel/linux/linux-yocto-4.8/smack.cfg
> 
> diff --git a/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
> new file mode 100644
> index 0000000..b5c4845
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
> @@ -0,0 +1,2 @@
> +CONFIG_DEFAULT_SECURITY="smack"
> +CONFIG_DEFAULT_SECURITY_SMACK=y
> diff --git a/recipes-kernel/linux/linux-yocto-4.8/smack.cfg b/recipes-kernel/linux/linux-yocto-4.8/smack.cfg
> new file mode 100644
> index 0000000..62f465a
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-4.8/smack.cfg
> @@ -0,0 +1,8 @@
> +CONFIG_IP_NF_SECURITY=m
> +CONFIG_IP6_NF_SECURITY=m
> +CONFIG_EXT2_FS_SECURITY=y
> +CONFIG_EXT3_FS_SECURITY=y
> +CONFIG_EXT4_FS_SECURITY=y
> +CONFIG_SECURITY=y
> +CONFIG_SECURITY_SMACK=y
> +CONFIG_TMPFS_XATTR=y

Were these two files perhaps copied from
https://github.com/01org/meta-intel-iot-security/tree/master/meta-security-smack/recipes-kernel/linux/linux ?

Just wondering, they look, hmm, very familiar ;-)

Can you say a bit more about your plans regarding Smack support in
meta-security? A recipe for the userspace tool and the kernel config is
a start, but for a fully functional Smack-enabled image, the rootfs also
needs to be set up a bit differently.

I can imagine that it would be worthwhile to take more of the things
done in meta-intel-iot-security and then deprecate that layer.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




