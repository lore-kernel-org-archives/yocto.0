Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C97E6E00B8B; Sun,  4 Oct 2015 03:50:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96DB7E009D7
	for <yocto@yoctoproject.org>; Sun,  4 Oct 2015 03:50:27 -0700 (PDT)
Received: by igbni9 with SMTP id ni9so41230044igb.0
	for <yocto@yoctoproject.org>; Sun, 04 Oct 2015 03:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8A4p+/NfdXeLA1zl5SS38n3xMCD7j6MG1SNzRU5koik=;
	b=wC+PiccgInqZi6EsNtg2Yg1PlBt4ImAFTB59RXRjwcJiOsEVCQikgp2HrsnRCbTyGq
	cHc5jvtXGlTQNNhEhxftxJ4vzChgUnZqjgdqsrltruMJt7DtM/OcIWz7VMypT0O4+fRU
	IHBGamiZecFectWMtkgtEffE0CPBIufD8CYqkxmN0zlrJslX5VFEPeL8uUlq1SeRhrMC
	p6A/Mi01pnGQwsYhDaeh6qWo8eUpCKTWYMS/Ig3tUWxOMuAbtwKWf8HU1XQc71wEOvM8
	6vhWfMjK8eTwR473KBUYiaH36rtBKcHpCorWjjarO5QeOMrUfPLkUQnpynBbN7EnancI
	NZ/w==
MIME-Version: 1.0
X-Received: by 10.50.128.1 with SMTP id nk1mr1453747igb.64.1443955827447; Sun,
	04 Oct 2015 03:50:27 -0700 (PDT)
Received: by 10.36.98.143 with HTTP; Sun, 4 Oct 2015 03:50:27 -0700 (PDT)
In-Reply-To: <1443924933-29412-1-git-send-email-net147@gmail.com>
References: <1443924933-29412-1-git-send-email-net147@gmail.com>
Date: Sun, 4 Oct 2015 12:50:27 +0200
Message-ID: <CALbNGRT3tdQfngPbCxdt+rQZV-e1jeTVKfG6Yxz8EZqwCdaWoQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v3] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sun, 04 Oct 2015 10:50:31 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 4, 2015 at 4:15 AM, Jonathan Liu <net147@gmail.com> wrote:
> SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index d60a3e9..70e8bfe 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -12,7 +12,8 @@ SRC_URI += " \
>
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> -PV = "${LINUX_VERSION}+git${SRCREV}"
> +PE = "1"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
Doesn't PRServer takes care for things like these?

Andreas

