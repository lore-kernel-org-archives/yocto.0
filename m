Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19F8AE00A84; Mon, 12 Sep 2016 16:04:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04AA3E00A4B
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 16:04:13 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id f76so158590101vke.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 16:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=RnzEERXGP5eHk6lGZrSMV5Bl3CeyC4EFptqIvZDqvmE=;
	b=kTs9w2nDAeLYpnK95QfRY/4yFFtnttkBgBAqmYLlUoVD/zvBRePdtraK9fngeZwA97
	8TFP/H4fihIdq+8YknlKbFD8NDQEPkMnXLprFp4Wp6yjyQ9tV41D7aOr3o+hmKl+Y0V5
	+F29RSj6HyuGjk5ux4txhnvV0x285Agqwnc5uDwjOXX4FrKe4tf8twpcOLYn9SDqPf4r
	ga0z6oE03atRg/VSERfdCrD7yxrZc6QGZXK4yMvgpjb92e7kl0eUFzmFWhuICqJuEm3R
	bg37XeKHftlxcsZ14T5J586uW54EX2WzK+lj49vembuUaY/sEtanKvT5X+MKWJKxPulB
	knRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=RnzEERXGP5eHk6lGZrSMV5Bl3CeyC4EFptqIvZDqvmE=;
	b=N2RB5+E9DgC/BYNZ7QwroXIUAQ1ZU6ENf0plXbz1ZUuowd8JdWPeLd2WLQhmk5HtCY
	v5syZBbBZ6eOrOpF6rpHvRyHsLuhStMggzK0qokg9crjYZ6JKIWZxidYkWVuA04qXoFQ
	XxW/cUqGHd0HmQ2S0TBba3uyn2y9E3N8KM95J3MxzCFzZZQJGAiLVzL65cL/DIr3gjK+
	gW+ivR4UkN0M90ov/mrCPt+n1Fpf4wuhLZTw/cxwCOwd+4aPHz0YRPHQxtTDza8ZgAmH
	6WOzk9xUDqzWftu/uE88an01QtXok1/YYruONAM+nF8TAbAFcmtncceOkdpX8s9Jx4/c
	E0oA==
X-Gm-Message-State: AE9vXwNzS853ZchiCs8wpYBvqeItFpcT3XepuKFpZG3SlEITHsyNuhzOlgG3IvN+KlbB703gHUuaMGnjIg3V/Q==
X-Received: by 10.31.227.196 with SMTP id a187mr15126258vkh.89.1473721453114; 
	Mon, 12 Sep 2016 16:04:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Mon, 12 Sep 2016 16:04:12 -0700 (PDT)
In-Reply-To: <20160817045807.17275-1-raj.khem@gmail.com>
References: <20160817045807.17275-1-raj.khem@gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Tue, 13 Sep 2016 01:04:12 +0200
Message-ID: <CALbNGRS1JFJ68hvqE58YgiHYkvpECisiNECqMsuPSj2yW43Bow@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: exclude IMAGEDATESTAMP from signatures of do_image_rpi_sdimg
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
X-List-Received-Date: Mon, 12 Sep 2016 23:04:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 17, 2016 at 6:58 AM, Khem Raj <raj.khem@gmail.com> wrote:
> Fixes taskhash mismatch e.g.
>
> ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 78=
b2e0830a66052318e5e7ffffeba193 versus 4b9bbe5dba1b48cf5cb5ad365d991de9 for =
/a/builder/home/kraj/work/oe/openembedded-core/meta/recipes-core/images/cor=
e-image-minimal.bb.do_image_rpi_sdimg
> ERROR: Taskhash mismatch 78b2e0830a66052318e5e7ffffeba193 versus 4b9bbe5d=
ba1b48cf5cb5ad365d991de9 for /a/builder/home/kraj/work/oe/openembedded-core=
/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.=
bbclass
> index a04204a..62df0b3 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -74,6 +74,7 @@ FATPAYLOAD ?=3D ""
>  IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>  IMAGE_CMD_rpi-sdimg[vardepsexclude] +=3D "IMAGEDATESTAMP"
>  IMAGE_CMD_rpi-sdimg[vardepsexclude] +=3D "DATETIME"
> +do_image_rpi_sdimg[vardepsexclude] +=3D "DATETIME IMAGEDATESTAMP"
>
>  RPI_KERNEL_VERSION :=3D "${@get_kernelversion_file('${STAGING_KERNEL_BUI=
LDDIR}')}"
>
> --
> 2.9.3
>
I had this in my layer but it still fails sometimes for taskhash. I
simply removed stamp file to avoid this error [1]. Will anybody miss
stamp file?

[1] https://github.com/schnitzeltony/meta-raspberrypi/commit/202a132d68ea70=
722a93251d39e5cb75c073aabf

Andreas

