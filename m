Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 632C4E00CDC; Mon, 11 Sep 2017 05:46:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_IMAGE_ONLY_16,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.1 HTML_IMAGE_ONLY_16 BODY: HTML: images with 1200-1600 bytes of
	words
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF073E00BB1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 05:46:08 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id 108so14338275wra.5
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 05:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+uT3gw99L4lk9lIAULLt43lY0s1pvwli/UBPZbPGzWc=;
	b=dWdactDUwADAjh53p5kPR9btlun8T1cGhzKKC6Yrxn+tPoNjiY9bZx6JX6j3dwrZNK
	PaguR+LmCFZrE+6R3rALCZMwCBwQtkSdakMhGDXTC66NR85nFLKZqRooZmAmYzRjRnxe
	IsiQYy0n6X5n+/SogfmCJVC7t80E0fyG6PLcTTkZMlTzex2C/KZIj0SjhIFUjc3C6yIC
	Vd/wEPQ7zFwxVeRzVdHIdtgYCIR8CQJVr0eYeSWqC8AjBTvjsqSV4ELUwZJHZ1bButr0
	1ACDNtDS3aOo6TgX76KJIt7EogTQ7CrJuTo4wLDu41iu1aapABBZJ/UbwFNajCCYJ7mq
	ntqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+uT3gw99L4lk9lIAULLt43lY0s1pvwli/UBPZbPGzWc=;
	b=eyiSbA4+laqvbunrXHYb+NnqHNfFzLxOSVgch88SM6Q8WQAc9E+bTCHQQXRdCQ22ID
	O1R1V++a5D3MnYbFFiY3JumCgT5StjcsLA0RWFQiqiibfyV9pvyigYd1gjfAxibdPl9Y
	+8dl1jk9pyvC6Vr/iS+5p4r9ochaLT3+4xQ9No6kzpxkW5WBXR2uwJWtsmfact6NtyUg
	ne56GA81tJ5IGl3B7f+7HhXDI2GQKrxQCTB9TcaEkLQZ7D12SZ5rSltqkq8M1DTx632P
	wsk1dgcULzpmNsIcuC4zDK+eeZDla0PG6Gngq4bBUi4tM1RmT7/umcsgDmlJfaVDexgy
	SBSQ==
X-Gm-Message-State: AHPjjUjsPmjCrE2iH0JjrMp+aKnn1O3qbdvsBGJstWU0L3VpMLC3gsx9
	RfByskwbPcO9IXtTDzZcQ7Utdxm1YmUQ
X-Google-Smtp-Source: ADKCNb4PafgiuVWoGJEVK42rVlEMiBC+6wysErJzdMNQJAeX0jp7I5xLD8WNChnlw382vNtTbz5YcjkFbqt+Ccbog1s=
X-Received: by 10.223.145.199 with SMTP id 65mr9756980wri.166.1505133967697;
	Mon, 11 Sep 2017 05:46:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.178.206 with HTTP; Mon, 11 Sep 2017 05:45:26 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
In-Reply-To: <CABFXn3Ht3Gk7UoBjorALWY98x1wNuXAWVv2GpLu-iP-eCFysUw@mail.gmail.com>
References: <CABFXn3HvU4iNJ=GztVqe=yqMTwBS=hvbYXtXN=va0tLjdDEPqg@mail.gmail.com>
	<CAK18fxEwEQE-aNvpDdvWHQbzTb-c_vX9s9qN12gjMtcaYWEtkw@mail.gmail.com>
	<CABFXn3Ht3Gk7UoBjorALWY98x1wNuXAWVv2GpLu-iP-eCFysUw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Sep 2017 13:45:26 +0100
Message-ID: <CAK18fxG8vgJpioxCUpMahh40RtSNkEpRFc1Qp8O2QzQjNWAqjQ@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Could not inherit file classes/pypi.bbclass
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
X-List-Received-Date: Mon, 11 Sep 2017 12:46:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c0d2a927bfd650558e94fb9"

--94eb2c0d2a927bfd650558e94fb9
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 1:40 PM, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

> ok,thanks it is now building. i have another question, i don't need to use
> the meta-gstreamer1.0 layer if i will use the gstreamer in your multimedia
> layer with *IMAGE_INSTALL_append = gstreamer ?*
>

I personally haven't used that layer and the gstreamer is provided by poky:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-
multimedia/gstreamer .

--94eb2c0d2a927bfd650558e94fb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Sep 11, 2017 at 1:40 PM, yahia farghaly <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafarghaly@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_-63640353642=
9171441gmail-m_8712794603734169385mailtrack-img" alt=3D"" style=3D"display:=
flex" src=3D"https://mailtrack.io/trace/mail/9667a0b0d7b72042aeb9dd6bac9096=
228fd48734.png?u=3D1822760">ok,thanks it is now building. i have another qu=
estion, i don&#39;t need to use the=C2=A0meta-gstreamer1.0 layer if i will =
use the gstreamer in your multimedia layer with <i>IMAGE_INSTALL_append =3D=
 gstreamer ?</i></div></blockquote><div><br></div><div>I personally haven&#=
39;t used that layer and the gstreamer is provided by poky:=C2=A0<a href=3D=
"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-multimed=
ia/gstreamer" target=3D"_blank">https://git.<wbr>yoctoproject.org/cgit/cgit=
.<wbr>cgi/poky/tree/meta/recipes-<wbr>multimedia/gstreamer</a> .=C2=A0</div=
><div><br></div><div><br></div></div><br></div></div>

--94eb2c0d2a927bfd650558e94fb9--
