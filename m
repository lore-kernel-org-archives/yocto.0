Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF17DE00CBC; Tue, 22 Jan 2019 09:18:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59948E00C62
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 09:18:08 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id m6so18025609oig.11
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 09:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=zenCf0K8tOfppmGfFfveSEanJkytZZTxKPEAZ4M480M=;
	b=i4+/4UL6C8dj8+JUvVP8eKkd44GE2Uh5xLF1tmVGvIhSaDUSeWbfYVWlZBu1hx/HT8
	qxfs9D0f2M/XYRvWH/7OBh77qghMMtFFdNa3VHS5yhTPg2sFJbkIHQg45hYKQxWQ3/pr
	+55cADl49kM495u6HeX0XSnEnvy9I4lcqc5RBGJ+UKtEC4tiY01fFkzcYtlJGSxmnUsD
	po1gc3hTvOrXXFe/kTg/BZNMjobHdKP8g3gZXkbyMPiWweGPpU5cjuRj7F0jvdmsSwCB
	Yiksxar7iSOFoVcBrOOP4pHTV86+YeQfZA32BWXoxn8LAtT7bahHsh2vJOBJTf7Z2Pk8
	n/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=zenCf0K8tOfppmGfFfveSEanJkytZZTxKPEAZ4M480M=;
	b=B789IJ6g45QgQzKJiFAcI+w0/gsQW89BVS8pWmX0lD1AIO3jOJgAQklnWWXw1o4gRu
	i+H9dOoiXUNrNPCRwbenZgegck7Kugt7iMfYEeo8aKp1BPcTb0nCRG5TyRGnyxz4dnsV
	MHMxYv2ukfiyhMbUh0uOEaP+wyZL1so7lfdDJ04PaNCXrtNS8Em4mDCumIRigCehjLzw
	1LYi9WjMZ4Ymcy/jyhYa1AdnOJ163XI5TFSRkWG6UcQPoFRb0luQhoG4NGW8fqFVeeLX
	GT2/1rC9uScEYcCVhb6oFYmqvGmy23Rknixujr+2ydmygbCfr13FjYvlHtzd1t4h4pDg
	YThw==
X-Gm-Message-State: AJcUukcOF7lUCriWobb0MKu7LIQxVDlwY5OkGzoNXzH5wlJWSlL5LNTS
	VvYORbodxlD8saKAMar9aWm+d9RB+93fjWOZQg8=
X-Google-Smtp-Source: ALg8bN4dA6ZRAUobz9k4DOYhYzMcEe1yAQG68Mg34YlayXvLPUWAzclsf6vkgSmkS5gXcEN6G3LRFTR/FMYGYfSJq7s=
X-Received: by 2002:aca:b7c2:: with SMTP id h185mr9124231oif.298.1548177487605;
	Tue, 22 Jan 2019 09:18:07 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
In-Reply-To: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Jan 2019 18:17:56 +0100
Message-ID: <CANNYZj-9Dv8_pfjo_dWnkhtonnhePvOs2v5wq5980ARuCU452w@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Tue, 22 Jan 2019 17:18:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 22 Jan 2019 at 17:59, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
> I am struggling with a recipe which more or less just downloads binaries =
and creating a package. We have previously been using ipkg but now we have =
switched to rpm in our builds. One of the binaries in the packages is a lib=
rary let's call it libx_media_1.0.so. This library is part of the package t=
hat the recipe is producing. The library is placed under /usr/lib/. When bu=
ilding the image I am getting the following error
>
> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
> .....
> ...
> Error:
>  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media, b=
ut none of the providers can be installed
>   - conflicting requests
>   - nothing provides libx_media_1.0.so()(64bit) needed by x_media-1.0-r44=
.imx8mq
>
> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>
> Here is the output from running the command file on the library
>
> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64, ver=
sion 1 (SYSV), dynamically linked, stripped
>
> I have also verified that the library is part of the produced rpm so that=
 is not the issue.
>
> Dose anyone have any suggestion on how to debug this problem? Because I a=
m out of ideas

Can you:
- show how you did the verification of the rpm?
- copy-paste the recipe

please?

Alex

