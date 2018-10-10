Return-Path: <irving@irving-st.id.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67002E0095C; Wed, 10 Oct 2018 05:49:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E18FFE006AF
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 05:49:30 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id a5-v6so2460544pgv.13
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 05:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=irving-st.id.au; s=googledkim1;
	h=sender:reply-to:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=XM2gId+ojmFtb6oVstfNaP9SjfeF1et8ocDN5qb8/zM=;
	b=TehalekKakrxHP49FqHBSYbXvfg5SjWuBajMqIfmhKuKnjsKKYhuIT5M6ziS7Adt20
	A8jhpsg9hHNPK9AfTbUpU3d4NPuj3G7+llXGuZIO4Rp5wdI7juxA5o1rYFEhymE+zjgy
	MOFf38H86et6Z/q2pzpS3GBGls67wcWr/vo+s=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ssfivy-com.20150623.gappssmtp.com; s=20150623;
	h=sender:reply-to:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=XM2gId+ojmFtb6oVstfNaP9SjfeF1et8ocDN5qb8/zM=;
	b=fjcpSUdjL+qgBSiwXp5lTBElkVvQEhXChqmLRu/6UeeWT1zjwCw65wsLtlXYLvoXAC
	/meWnaK7JLie5IBic34Me2CMS2b5nCXSOPA40d8Wya0hFKAHMCJwchEN8+ND7F57uUhJ
	7PuPOnmCu9eNWgScwMy+4fbv5t4zodPRZmlaRt4HidkVJFj39BPNHyESJNdFtFrKVY9r
	zffwaMXmo5a/RyVo5H5yk6jHK9SIDdsBgJMK+UQ1ap8huI3ZYlyNfYBdF6Vc2QaO6zMT
	NBqm5RvlI3tGoG+t9io+WzSdQWv+0BAH1Gn5AwHT8RRrj+zU+DYCzYDHu+FGpoAO2oEZ
	ouPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:reply-to:to:from:subject:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=XM2gId+ojmFtb6oVstfNaP9SjfeF1et8ocDN5qb8/zM=;
	b=gX8teeRIdDaYst5V+Y3Sz1vLQya0JlmxgloNNsqxoUQjKgqw4r9fnX/amOiB7uLTCf
	nsMtnOSMHup2dhtZxVitTcbYCHm58VN6w3wpp5c4PqLT7zhYGiiSmCRvT84QkE5O1lDI
	TKKk67l+3VYj2w5pMIrcpodbTGQqf4WzpDuZ59YfzIKXmNn46Czg6IwafkRmwVdVoRUE
	xQKxpC8FXO5JIxXf7HKCv1avu3Z8a8+Te57kNJ/m2y9+yu0u1BxO2cUGltUIS8rfLXIs
	fEQ3+6/JnaaBmOkDPoP/wwt5hY5e2r0Hui8AbSklhIGUar6W/7cu5NIrcy3HYqU8fetF
	AsAA==
X-Gm-Message-State: ABuFfoivb5COhbfDRmPvlcgOeG6Ey8jLxcC59Ysl3DxzOB06tQybF1K6
	9ftgXy9PLfKEZdXnjwGefxiAjQ6A+Dc=
X-Google-Smtp-Source: ACcGV635G8j6ZdnSCI62gyNM6GZRsn8Gt0HkB+nuerj9N4P70u0HcsIvg0Rissttxf6aFJGec7FK2Q==
X-Received: by 2002:a63:164d:: with SMTP id
	13-v6mr25639902pgw.103.1539175769659; 
	Wed, 10 Oct 2018 05:49:29 -0700 (PDT)
Received: from ?IPv6:2001:44b8:3152:ab00:50f3:4be3:6d8e:6fe9?
	(2001-44b8-3152-ab00-50f3-4be3-6d8e-6fe9.static.ipv6.internode.on.net.
	[2001:44b8:3152:ab00:50f3:4be3:6d8e:6fe9])
	by smtp.googlemail.com with ESMTPSA id
	u13-v6sm2737425pgp.18.2018.10.10.05.49.26
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Oct 2018 05:49:28 -0700 (PDT)
Sender: Irving Tjiptowarsono <irving@irving-st.id.au>
To: Yocto discussion list <yocto@yoctoproject.org>
From: Irving ST <irving@ssfivy.com>
Message-ID: <40fafb67-907b-3be5-aa51-d217a78a30b8@ssfivy.com>
Date: Wed, 10 Oct 2018 23:49:22 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: Steps to enable u-boot signed verified images?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: irving@ssfivy.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Oct 2018 12:49:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to make u-boot perform signature verification of fitImages. I
have problems getting it to work, and the documentation seems to be
scattered in different places on the internet (I found plenty
descriptions of the concept, but I haven't seen detailed step-by-step
instructions on how to actually do it).

This is on an NXP i.MX7 Dual chip, using yocto 2.5, linux-fslc-imx 4.9,
and u-boot 2017.07 with vendor-specific patches to enable hardware
support and the like.

According to:
-
https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/uboot-sign.bbclass
I set these variables in the machine config file :

    UBOOT_SIGN_KEYDIR
    UBOOT_SIGN_KEYNAME
    UBOOT_MKIMAGE_DTCOPTS
    UBOOT_SIGN_ENABLE
    KERNEL_CLASSES
    KERNEL_IMAGETYPE

According to:
-
https://github.com/u-boot/u-boot/blob/master/doc/uImage.FIT/verified-boot.txt
- https://github.com/u-boot/u-boot/blob/master/doc/uImage.FIT/signature.txt
- https://github.com/u-boot/u-boot/blob/master/doc/README.fdt-control
I added the following configuration in u-boot defconfig:

    CONFIG_SECURE_BOOT=y
    CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
    CONFIG_FIT=y
    CONFIG_FIT_VERBOSE=y
    CONFIG_FIT_SIGNATURE=y
    CONFIG_RSA=y
    CONFIG_OF_CONTROL=y
    CONFIG_OF_SEPARATE=y

This causes u-boot compilation failure, with the relevant line being:

| make[2]: *** No rule to make target 'arch/arm/dts/unset.dts', needed
by 'arch/arm/dts/unset.dtb'.  Stop.

If I added CONFIG_DEFAULT_DEVICE_TREE in u-boot defconfig, the
compilation failure goes away.
Am I correct that I need to provide the same device tree source to this
uboot config as the one I give to my kernel?
Or is there a way to not need to specify this config, considering the
only reason I enabled CONFIG_OF_CONTROL is because the current scheme in
yocto requires it?


Anyway, I tried setting this config to "imx7d-sdb" to see what happens,
and I got error from bitbake (relevant parts only):

    | uboot-mkimage: Can't open
/workdir/build/upstream/tmp/deploy/images/<my-machine-name>/u-boot.dtb:
No such file or directory
    | uboot-mkimage Can't add hashes to FIT blob: -5
    | WARNING: exit code 255 from a shell command.
    | ERROR: Function failed: do_assemble_fitimage (log file is located
at
/workdir/build/upstream/tmp/work/<my-machine-name>-poky-linux-gnueabi/linux-fslc-imx/4.9-1.0.x+gitAUTOINC+953c6e30c9-r0/temp/log.do_assemble_fitimage.883)
    ERROR: Task
(/workdir/upstream/meta-freescale/recipes-kernel/linux/linux-fslc-imx_4.9-1.0.x.bb:do_assemble_fitimage)
failed with exit code '1'


u-boot.dtb file is indeed not present on disk, so my next step is to
figure out why.
In the meantime, is there anything obvious that I am currently still
missing? I would be very happy if someone knows a good detailed guide to
implement this, since I have not found any.


Regards,
Irving

