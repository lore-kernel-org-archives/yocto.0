Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAEE9E005B3; Mon,  2 Nov 2015 11:34:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB5EE0034B
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 11:34:31 -0800 (PST)
Received: by wmeg8 with SMTP id g8so67872809wme.0
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 11:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MVIHYT7AatMcawDYxwQjXGdECWj59DsPD4Z1wm1Byo4=;
	b=n55xep1NVyzsyHlgmv2NSeoijNRoAUuKsNjU+ZMkAhQl+v5dPBTdJZPIFteffEhc7/
	Q27ytbFvrYCUKr3JmI7BO+rSo6hmqGQ/RtEAi/3i3fR0GD6ar9e8k8l07GylXo5XBmWM
	CIf7SombWduvRlTo+oHVnAhhsaPEGNUG9fv9R5AZ9mns7yVVUVUWA6Xk5s3fybjMLJva
	pYIkvNrkY8wwp3n8WDv13pxKH2Yn3siNpeg4dLGPpymIvRg6vzqkXeslR0T0gVAZQbtm
	ZI6lslQM2DdsT9GTRPep/GPQfehmbiOaRhQ/VTPIsb0qsElTU5wRd/NHHkKQwNeC3vjq
	ef/w==
MIME-Version: 1.0
X-Received: by 10.28.87.67 with SMTP id l64mr14389164wmb.72.1446492870212;
	Mon, 02 Nov 2015 11:34:30 -0800 (PST)
Received: by 10.194.140.38 with HTTP; Mon, 2 Nov 2015 11:34:30 -0800 (PST)
In-Reply-To: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
References: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
Date: Mon, 2 Nov 2015 11:34:30 -0800
Message-ID: <CAJ86T=U7mmNmTRi5xHpy7C+XOAPuKiRyy=958YsGeQ3cnYap_g@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Roberto <ramatekd@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Create uncompressed rootfs
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
X-List-Received-Date: Mon, 02 Nov 2015 19:34:35 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 9:20 PM, Roberto <ramatekd@gmail.com> wrote:
> Hi,
>

Hi Roberto,

>
> I apologise if this is not the right channel for asking the following
> question. If so, please advise me on a more appropriate support channel.
>
>
>
> I am looking for the quickest workflow for debugging a recipe. I basically
> need to modify a recipe, deploy the entire distribution to the target board
> and test it.
>
>
>
> have come to the conclusion that the quickest way is to boot the target
> board through TFTP for the kernel and then mount the rootfs via NFS.
>
>
>
> In my view, the only issue of this workflow is that when I bitbake the image
> it creates a compressed rootfs that then I have to uncompress in order to
> provide the rootfs to the target board via NFS.
>
>
>
> Is there any way to avoid bitbake compressing the rootfs but rather having
> it uncompressed in some folders under tmp/deploy ?

See the "IMAGE_TYPES" variable for a list of rootfs types which are
supported. There's support for creating an uncompressed .tar file, but
I don't see any support for creating a rootfs directory under
tmp/deploy.

Depending on your work flow there are a few different solutions
though. You could extend
openembedded-core/meta/classes/image_types.bbclass to do what you want
(e.g. define a new image type or hack "IMAGE_CMD_tar" so that it also
untars rootfs.tar right after creating it). Or you could ignore OE's
image creation and manually copy or rsync your image's rootfs ( under
tmp/work/<MACHINE>.../<IMAGE>/.../rootfs ) to the directory exported
by your NFS server. Note that you probably shouldn't export
tmp/work/.../rootfs directly since when the target boots it will
create files owned by root, which will cause problems later if you try
to rebuild or modify the rootfs.

>
> Regards,
>
>
>
> Roberto
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

