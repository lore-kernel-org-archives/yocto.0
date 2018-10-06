Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FAA9E00A0C; Fri,  5 Oct 2018 18:07:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 358B7E009CF
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 18:07:18 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id e22-v6so8694723qto.6
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2018 18:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=03+v4UK6fX37oGu2Ny+KoOwhNJXmrxTT0j6ZcPXe9Fc=;
	b=OdgYsyLImOkJZgDZgXgkPfXJMe20uYlRUX3q089rKN1qevhbGNClAjc1iQLJAfpZ1P
	99vfY724y6PjARGpIOKNRkdAlSQ0eg3qUfMqdp9HLYRGItbfkM/XZmv7k27XCHevM+fn
	Lw9YCTl7z6emGa9ZnhKzQ0Jy0fTF9rsYuFDQrMZin8kK0F8z692nBGzB1znZJktCPTcg
	GLse8yT7MFSbSEQotUXnuadG58JtA8Xj5Ur+0xcYrCwTL98YqMsS+hTX1gAXgk6hGhBK
	lLIpIt6/AQAMUWnOzU4b/n2X//GUuco2BI30EgTG2UQ3Prt2BlnkZTANbbJs2OmdHQCS
	F2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=03+v4UK6fX37oGu2Ny+KoOwhNJXmrxTT0j6ZcPXe9Fc=;
	b=AdbnXr66SgiXQh2/MpMZ1noSgbVxaYf1fOFAYn2eTixQWec7EpaxTpDVBKCmYi+rg2
	d1GxOaIpcG7DSi8CIWufIUPcfiaeYW+rKG4Np9b1qOX85OIkOrxnGIGVBRjZV4Vtn0bm
	LEZXFXhO93sGcj9fXIZR7dE3L9N78DSDrkvFI3h0qNYuJM33iOUEJPUPf1H7IIGdCR2n
	3sG5ERRwsOKO8zrZ+i0aExrsEIwjFlG3tcwCnqzcnSi53j/L0a2SO61LQsGygLnJASsH
	PtJDYslzPUIzwdvSYg44SdHB/qXn/ExFi2YLkZYx72Ggqbt+AEvefiqemUocUnaCPEcL
	WRgw==
X-Gm-Message-State: ABuFfogid62eEzifSm05GqvFlVYldcb9WskaPKZqRTr9UtONXWQ1Sh6e
	GnF7VwGXrKytOfSrtKUFE5QioYTKBrk6td3HShg=
X-Google-Smtp-Source: ACcGV63TGRdRszVUpzUlR8ouxn3fG9qB2DFvLXh76nkYBgDby4DBFxxwg3foz6AojMOcU+Ml/Uer0jDvhIo2Kzfv3jw=
X-Received: by 2002:ac8:4912:: with SMTP id
	e18-v6mr11681858qtq.34.1538788038147; 
	Fri, 05 Oct 2018 18:07:18 -0700 (PDT)
MIME-Version: 1.0
References: <CALbNGRRN7buT+0g7xQD_nqe=F80-sGjBuDwJs3hkSDG6K4aVuA@mail.gmail.com>
In-Reply-To: <CALbNGRRN7buT+0g7xQD_nqe=F80-sGjBuDwJs3hkSDG6K4aVuA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Oct 2018 18:06:51 -0700
Message-ID: <CAMKF1sqsOV05HjTzEWMbi4GQj5=crxjD_7ZuLFyNRwz8VE9E7g@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layerindex - actions required for deleted repos?
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
X-List-Received-Date: Sat, 06 Oct 2018 01:07:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 4, 2018 at 12:34 AM Andreas M=C3=BCller <schnitzeltony@gmail.co=
m> wrote:
>
> Hi,
>
> I am cleaning my github and want to remove some repos. One of them is
> meta-gumstix-community - it is not maintained any more.
> This layer is listed in layer-index. Will it be removed automatically
> or are there steps I have to take?
>

deleting is quite disruptive. Is it possible to archive it and that
should be enough for
poeple to know that its kind of dead repo.

> Thanks
>
> Andreas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

