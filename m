Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C50A5E00DE3; Mon, 15 Jan 2018 21:20:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D01FE00C02
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 21:20:37 -0800 (PST)
Received: by mail-lf0-f48.google.com with SMTP id m8so15837599lfc.6
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 21:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=qbthGgCjpRRMZUO1ts59y3AD3MtT1a8zTpt3XTD3EhQ=;
	b=A8gq1lxFLJRUbyDipIM60hTkJTn3AXA/7XCfNPmvfAiYZtfhDlXeS9SHTRvRefTa1S
	EticbXINjVv0oN4elFHl4/iHwvwSi0YBUjZdgL62jVtR5gvrW9Ed2tbNTtGjE/+rbt9a
	erJk7d1/fFba5UTV78R29RONysXdWHWaifLOjI+UQGoEpXzT9CdXQRhQXNS33AqnrQLo
	r7tQSffhA0Zam6m+SP+lJw+3rdgvaOBVCkK9RiPJTu5e3iihfjWw6pnxbu2eRfhiZEpL
	/vy07n3vFfFEHKqz1J792/D8RxRVsDqN3+DnxmadawrJtSNXNH30FzJYvvinnAXs6ECL
	kelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=qbthGgCjpRRMZUO1ts59y3AD3MtT1a8zTpt3XTD3EhQ=;
	b=sn500tbWZA6RCysNAKyi8fk6R2oZLAHvAYrYLGkuOw6wDKYxHz19QQ+/VlsftQji+x
	ZgcgrwthnvHYeHZPawfKCNe8yF3tCMvDnGJfw2bwSV91NQro5Fq/6MCL5Zz9+DylwbbW
	kNzrhsCfytjikq+C2QZImnCeJAXKSA7nEw7OYoQE+ebyM0efFZ8A6fqUUKKW0nLq6Sdq
	O0RttPQp3ywep4wSaJOslDD/mEryub09Z8NSKkP0IguSYQ2meoxfR9JgTTEFXgRbmN97
	koJqBqXUFajlfhaXMWvdZqnL3+s06Lz4rOy42yMBU6gTgv3Q73cRZVGARZHoueqUeDB3
	/qiA==
X-Gm-Message-State: AKwxytf/7ywva9MfG76tQISQqA8I4qCkoWKXoIr8SVrpCVNmZwjELKcx
	B7RoSCUBwBT2EA19VQqjZyKDC3dGk/MErifXGqwxfw==
X-Google-Smtp-Source: ACJfBosZ7JDF6mECFdO3ugQA5Gxy2878i1rUJMHKE/g31vZ6JK0fEH9f3vy4BkLaVYURcK40Wb8L6WIgzgSoPeU4sAY=
X-Received: by 10.25.42.197 with SMTP id q66mr11589621lfq.25.1516080036269;
	Mon, 15 Jan 2018 21:20:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.83.210 with HTTP; Mon, 15 Jan 2018 21:20:35 -0800 (PST)
In-Reply-To: <5e8d8895-3d01-02d9-2481-27f400834670@windriver.com>
References: <CACfi_Z1iHtpMLTNnQO=FPpFVu+ZYaXrRLVSk6HkrrsSbt+CBkA@mail.gmail.com>
	<CACfi_Z1-wtH0iVO6Q3vg2Q661tWSHF1ZFQuGU_QVyCtijxW58Q@mail.gmail.com>
	<5e8d8895-3d01-02d9-2481-27f400834670@windriver.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 16 Jan 2018 00:20:35 -0500
Message-ID: <CAHUNapS5pP1EHg0Qqxwx_J9Z5Ts3u+EvgEN34gGppp0ojLF8Cw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [poky] Fwd: How to make the os-release package work with local walltime instead of GMT?
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
X-List-Received-Date: Tue, 16 Jan 2018 05:20:38 -0000
Content-Type: multipart/alternative; boundary="94eb2c14aa280353bd0562dde498"

--94eb2c14aa280353bd0562dde498
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 11, 2018 at 12:26 AM, Robert Yang <liezhi.yang@windriver.com>
wrote:

> BUILD_ID = "${@time.strftime('%Y-%m-%d %H:%M:%S',time.localtime())}"
>

Brilliant! Why isn't this the default?

--94eb2c14aa280353bd0562dde498
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jan 11, 2018 at 12:26 AM, Robert Yang <span dir=3D"ltr">&lt;<a href=3D"=
mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">BUILD_ID =3D &qu=
ot;${@time.strftime(&#39;%Y-%m-%d %H:%M:%S&#39;,time.localtime())}&quot;<br=
></blockquote><div><br></div><div>Brilliant! Why isn&#39;t this the default=
? <br></div></div></div></div>

--94eb2c14aa280353bd0562dde498--
