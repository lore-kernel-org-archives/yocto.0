Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D08E01351
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 08:05:44 -0800 (PST)
Received: by mail-oa0-f45.google.com with SMTP id i4so7386111oah.32
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 08:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dPxsIAFpRtCaSSy+daEmjdjHdNOkssECPgb6EqbXAA4=;
	b=UmmQy9nGoxen4DCT2c5mB6DYHvvJqf232GAOYT0nOiG6RUxri2DjrYH1AXHGu/eyCc
	SJQ7nDkTbPqtzF7PF+kFdxQBSHyFlCSrwCwU7siYotsxhL4ZBY+iw97OluR/cvANtSPZ
	3Og3CmOyhj67nQP/qlxsFfG6YKuhvpAC1qpqlJOW97owSgyD91D3x0EVvJobNHb2QqFw
	N2uyIV0hu7BfbpHU2N7qCnbWyGvjLLIzEuYQbuUiQRijlKQD4sjUlcsSFZW1FF/gWRCb
	bbj8yVunw3suUsHdnLtdV1MOzOaoJsxxNGih7N8mOfvmArAQ82sgDTFWkULaOivWlMgZ
	uAXg==
MIME-Version: 1.0
X-Received: by 10.60.52.1 with SMTP id p1mr4752251oeo.41.1383581143848; Mon,
	04 Nov 2013 08:05:43 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Mon, 4 Nov 2013 08:05:43 -0800 (PST)
Date: Mon, 4 Nov 2013 17:05:43 +0100
Message-ID: <CAFyqS9pSWH5Lee1xTCKmj8gTLYrQRgk340a-UcYTjWsGj+wjfw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-openembedded/meta-oe and busbox issues in 'dora'
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
X-List-Received-Date: Mon, 04 Nov 2013 16:05:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. We get the below error when trying to build our image in Yocto
1.5 'dora'.

ERROR: No recipes available for:
  /home/poky/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1.20.2.bbappend
ERROR: Command execution failed: Exited with 1

We use the 'dora' branch also in meta-openembedded.
But busybox has been upgraded to 1.21.1 in Yocto. Is there some simple
way to workaround this issue (besides removing the busybox recipe from
meta-oe)?
I.e is there some clean way to tell bitbake that it is expected that
this specific recipe is missing?

Thanks.
Hans

