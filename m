Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5D35E013AE
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 19:34:07 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id 9so200633iec.5
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 19:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7xhhQB+8BQdKBpi7smCDV50r9+ZwusA6UPzsxGRcIKY=;
	b=vC5XTABaq93vFUZJBBA2IubWJlvwLAO5o8v2f5ZPO+uBsxLUM9bWpsKdlAdZT2wDW/
	40/3mG7/oIkGx5fkXZV260m1NfX9uhDjR644X94F8Qm6evNRrcvuPL4Ra1rCzIviQUBU
	wP6PNAwT+wVDH401ItkzvXkzWj+gsr3pKwQZxtfZ2nUG4lLVSA4F+7naNYkXvJrxwOVx
	Wqw4Z1g4zvrSzFh8OaRzJ3EeGDgdBY2GXSzL44arNv2f6oxZd6ZtNB5zAtAqyaRE3Sg4
	jtfhP3ub3VXMA7ABz7QolUkfaXMChv3xjb79orVtOiW7pHYCt3ujxnSSIgLFFbJdLuzU
	tKgw==
X-Received: by 10.50.65.9 with SMTP id t9mr119596igs.102.1371177247076; Thu,
	13 Jun 2013 19:34:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Thu, 13 Jun 2013 19:33:37 -0700 (PDT)
In-Reply-To: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
References: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Jun 2013 19:33:37 -0700
Message-ID: <CAMKF1so8hf_T5MF+HYYsq__MStgx_Avh=AwOJaXKA9xNFiD0cg@mail.gmail.com>
To: Ben Warren <Ben.Warren@spidercloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mkfs.ext4 in rootfs package
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
X-List-Received-Date: Fri, 14 Jun 2013 02:34:08 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 11, 2013 at 10:51 AM, Ben Warren <Ben.Warren@spidercloud.com> wrote:
> I'm using a custom image based on (copy/pasted from) 'kvm_image_minimal', and have added 'e2fsprogs' to the IMAGE_INSTALL string in the image descriptor file.

you need to add e2fsprogs-mke2fs

