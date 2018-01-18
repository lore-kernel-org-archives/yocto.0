Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1FE9E00E25; Thu, 18 Jan 2018 01:09:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F763E00D8D
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 01:09:42 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id f34so18811999ioi.13
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 01:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0pCW3fLU8h49NWJ4Bb0AIwVNx1+s7skAkAAl1RB78Bk=;
	b=wcO0IyWqwKBeiHPBl3EBoUvOjTaud236DtPVm8eZ9Un+8oCC3wOuJwUVs7IbfXSqZI
	DODyXegJu5I14+HKXLpYXHBBB9z872QrSBKake0jeuF7fVvGD4PmImcUqqsv1HAvbILz
	FCqSaJf4TRZbLdMwukk07j25TVXRv+/zGU5Tsw5eC5H97+WZs1xStH73ouQfDe3rBmgy
	ed8ttDnECb23pEnoKkxSwJqqSQPfM7Q/8Ux1ETRFUVc1GvQu0oPFfpLx/I9g0ADeAaQh
	WG/sdhkS211gpSAinm+IKbfCalnssm6QUvYemqfnTNWlwV4vTN9v0fS2S/R4DE+bi8oS
	gO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0pCW3fLU8h49NWJ4Bb0AIwVNx1+s7skAkAAl1RB78Bk=;
	b=ubm6F5SntNm0G/DzFbfR7o2KjpDJy6W61AImsiWNLLbP7UxknpqiM4zq0d5VFBgvH3
	ucpXox/CE4J+v0y61wL9Mgama6eHzjPZOlVHwu9sS/QfBN6zl573uR1qjhTly+j9Cr/L
	b5kNNRWc7isxkLzXtA5aoy3Dwk1Qz3oS3CLOK7BjA9Vp6odjO0982ktPC1l5U+hGxqz8
	B97PziVH56frE0h6BaFCWyJr8Y2f7B5rhBrcmxxOCGnOZPL29KcGA13bSIi6L/P5IW9M
	TZGMR3CusFCCuOoMH56n5WeQRiHH+HloE7hiVVCpkoig9rbOFMF3VmHq8mxvE6f8dhOI
	DUHA==
X-Gm-Message-State: AKwxytfQjJOOM/lJ5xPRLZxseKGz99fqzHYf1JgHkE7mqp8KrnNR+qok
	avNdQXErDJdAyvnA0vnwiCouUCoYKXHjdHIxMD5reA==
X-Google-Smtp-Source: ACJfBoszEF6qROynYeIWKyiRTlOEpGlZJ8GMuthYiTl/tXgaYZbVp6G7275M+U0cRn0KBtRTNn4CGVgKO00dWwD3KFI=
X-Received: by 10.107.9.154 with SMTP id 26mr28296989ioj.52.1516266582523;
	Thu, 18 Jan 2018 01:09:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.157.202 with HTTP; Thu, 18 Jan 2018 01:09:22 -0800 (PST)
In-Reply-To: <CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Jan 2018 09:09:22 +0000
Message-ID: <CAJTo0LbOoCFcoUMvwjm-pjKaDyTPeDB8GjknP2+WGC_=ztvRTQ@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>, yocto@yoctoproject.org
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 09:09:43 -0000
Content-Type: multipart/alternative; boundary="001a113ea2b6096846056309534d"

--001a113ea2b6096846056309534d
Content-Type: text/plain; charset="UTF-8"

On 18 January 2018 at 08:58, Andrea Galbusera <gizero@gmail.com> wrote:

> Looks like my first guess was not that bad. Reverting below commit,
> which switched to meson build system brought my build back to green.
> Also CC-ing the patch author who might suggest further investigations.
>

So you've implicated the Meson conversion.  Again I suggest approaching
upstream may be a better way to work this.

Ross

--001a113ea2b6096846056309534d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 18 January 2018 at 08:58, Andrea Galbusera <span dir=3D=
"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmai=
l.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Looks like my first guess was not =
that bad. Reverting below commit,<br>
which switched to meson build system brought my build back to green.<br>
Also CC-ing the patch author who might suggest further investigations.<br><=
/blockquote><div><br></div><div>So you&#39;ve implicated the Meson conversi=
on.=C2=A0 Again I suggest approaching upstream may be a better way to work =
this.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113ea2b6096846056309534d--
