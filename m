Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49CC7E00B1B; Fri, 12 Apr 2019 06:40:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F04CCE00A84
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:40:56 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id y197so11106791wmd.0
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=r3K0uYbeR+W1YX9TVQSgS3/QMnfg5mptrzjBcwilAXg=;
	b=ctgKEGib5EAN5UMdkpUlVOsbzkS2FtOWwlh8mW6eBy4JuQYD9wReUDM2MbyY4hCC/8
	6e2R4bKGug3+Yki9Yp7aVx/w9UAAA5ymZQSGq95VECSszgWq2C/AWbufmTv7CbII5/jg
	+siyEPjlLCtZry2fRQ+aW6b0bQCTV3X1jOgl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=r3K0uYbeR+W1YX9TVQSgS3/QMnfg5mptrzjBcwilAXg=;
	b=rLzvSt7GtlMXigCu4vhg8xLz1YuaPlCAQQqMh3m/wdn15SilEmFysWkoYLmCdukpYx
	JJIEi+O27DTrhXcuLBGuNohsJBmM9pELiybHvHl3cKHZUuJtuhBpTRe+ZjDepqWx0MXa
	eIooXGPjVl9mHeM4A97daywOovsQw2Y3RInwIDvUkFufdgdQnhqPPWgsJY3+qgRdzEBj
	G2lmOfKmaLUfSihTvSFzMmhYTcjVghMQRzjBX0bSOFTXFDkTNPoGVvrnfd2on3nJEOO8
	7P31kqhA00olI9fba6euoD/9EQfEmKG73Rs4J0ldryNhAGFXIiBY1fM6gfueNTOuzmD9
	S/eg==
X-Gm-Message-State: APjAAAXosxJACNXB3763YHqauKCjdjQdoO4DVwnIl4rOKmU0vDJBwqr8
	TocY1CSM0T6aFWDTmnOift0uiA==
X-Google-Smtp-Source: APXvYqyxi8ZZ0Fbg9LQkMZ0piAsf6IVfhiXczutMQDDAe8ju52GEaU4de15PQQSUZE1Y5s2dsXBSuA==
X-Received: by 2002:a1c:be0e:: with SMTP id o14mr11148608wmf.118.1555076456093;
	Fri, 12 Apr 2019 06:40:56 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x18sm59342216wrw.14.2019.04.12.06.40.54
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 12 Apr 2019 06:40:54 -0700 (PDT)
Message-ID: <cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Eric Grunt <gruntblue@gmail.com>, yocto@yoctoproject.org
Date: Fri, 12 Apr 2019 14:40:53 +0100
In-Reply-To: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Fri, 12 Apr 2019 13:40:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-04-12 at 20:19 +0700, Eric Grunt wrote:
> Dependencies on other file system types for custom file system type
> 
> I'd like to add a custom fs type - a squashfs-xz on an ubi (instead
> of ubifs).
> For this purpose I created a new class, inherited image_types and
> added
> a dependency on squashfs-xz and also on squashfs-tools-native and
> mtd-utils-native:
> 
> inherit image_types
> 
> IMAGE_TYPEDEP_squashfs-xz-ubi = "squashfs-xz"
> 
> do_image_squashfs-xz-ubi[depends] += "mtd-utils-
> native:do_populate_sysroot"
> do_image_squashfs-xz-ubi[depends] += "squashfs-tools-
> native:do_populate_sysroot"
> 
> (full class file is attached to this mail)
> 
> But the dependency handling is not working corrently in my solution:

The dependency code is only triggered if the image type is in
IMAGE_FSTYPES. Did you add it there?

Cheers,

Richard




