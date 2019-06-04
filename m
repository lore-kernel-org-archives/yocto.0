Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1072CE00D4C; Tue,  4 Jun 2019 11:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C5AE00CF4
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 11:37:32 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id r21so8051885otq.6
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2019 11:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HtKK0VIRNYCKS7jrhH7vDuXRw2VwvdbToBcfTDkoSpw=;
	b=t+tBQjy0kVbZ/wVPfWvVNUEt/1eVnSkutN60OLmmlfNIW4UwlYL73PR5Fwd54jML5v
	fOMXCrNU+PYBmbIyWyMGBi10JdalY9MwF79Zo4u7fTVh0FNFs28gQPTwrpk8DLhZZSpw
	rLOjgk9FmorKiDo/6koJLXNHo5pTm8m3d3le/tqG7YS10Mzd7lN+iZszIvTucEVvc2CF
	hVurXUSMYHva+z5BaOcw7kDRJyTjmzj0Ybh3MQcv1J38aFUheXViSKzuLRbDozKPgy73
	WoyaQSzXh/qyu5EIdZG8RJ9emQCjQFOwjFhsVZhFEnCHZyoEKAIxP/EIpiWWNfPYI1sx
	f5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HtKK0VIRNYCKS7jrhH7vDuXRw2VwvdbToBcfTDkoSpw=;
	b=PcAECxco4IgRwg6eKllfPia/c7lqfgTkPNqQrpd/4yr28di8m9isOTt3WOMQV/0DSc
	41tuT9VpTB7h+xJbRh+EhGl4QaJXeJmY5VKxUlYKXNwwnKcnk3hviScEdPN6789BRt1N
	rurXObJA2zlhQdoVj5zvhjQKd0uJWbDj9endQeSRn/Wae4i7nRQvcgxqwFZcR6seUJcI
	fsZ/w/yhYIsLWY7JsTC0TOA77wZEoY3XO+gY5TJNvme7xXE8UzaDM4S1H2JYkr312knu
	DlC8Rl0o5/KwVxgE/ly7JJZsbGpBXOMTWxxTGhO49XQoQs4hFf+cpZt1WoUWqCl0VLp9
	/gcg==
X-Gm-Message-State: APjAAAXq2OlNnytsOXUPwXvLzfi6D1MwI58EFWkNJomOF8zTHe1kpELZ
	MusHoIrO9CbHHDxbj0pf+AJM1kGbzrlvcgB8AXJYeA==
X-Google-Smtp-Source: APXvYqwIi9oNuiFzWu3VnrkDmvVxcC6xaCC1Kg+LhAoPlWUOnF15IASdqGPoTNG16+uegWQRTY01ZA4YEFg9zaJBHkI=
X-Received: by 2002:a9d:5f05:: with SMTP id f5mr1358825oti.167.1559673451917; 
	Tue, 04 Jun 2019 11:37:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190531093143.r6ernips6l3yoevp@qschulz>
	<20190604151155.vwoppnn6qlw3jyap@qschulz>
In-Reply-To: <20190604151155.vwoppnn6qlw3jyap@qschulz>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Jun 2019 20:37:18 +0200
Message-ID: <CANNYZj9BzxqGVK959nddQeEquD6j553F4_Yra3vguZjnLzC4zQ@mail.gmail.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Issue with INCOMPATIBLE_LICENSE
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
X-List-Received-Date: Tue, 04 Jun 2019 18:37:33 -0000
Content-Type: multipart/alternative; boundary="0000000000001135e3058a83c63c"

--0000000000001135e3058a83c63c
Content-Type: text/plain; charset="UTF-8"

On Tue, 4 Jun 2019 at 17:12, Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Why do we filter INCOMPATIBLE_LICENSE to have only SPDX licenses or
> their aliases (my understanding of respectively SRC_DISTRIBUTE_LICENSES
> and SPDXLICENSEMAP)?
> Is this actually expected?
>
> If it is, can we please actually document it?
>
> Also, how should one add a custom license? I could find this[3]
> discussion on the ML but nothing "official". Can we document it? I
> wouldn't know today what to do without having to read the source code
> and the licensing is critical to most companies.
>

Sending patches is far more efficient than asking questions; generally,
everyone is busy with their own problems. If you see a deficiency, and have
a clear idea how to make it better, please do contribute improvements.

Alex

--0000000000001135e3058a83c63c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, 4 Jun 2019 at 17:12, Quentin Schulz &lt;<a href=3D"mailto:qu=
entin.schulz@streamunlimited.com">quentin.schulz@streamunlimited.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Why do =
we filter INCOMPATIBLE_LICENSE to have only SPDX licenses or<br>
their aliases (my understanding of respectively SRC_DISTRIBUTE_LICENSES<br>
and SPDXLICENSEMAP)?<br>
Is this actually expected?<br>
<br>
If it is, can we please actually document it?<br>
<br>
Also, how should one add a custom license? I could find this[3]<br>
discussion on the ML but nothing &quot;official&quot;. Can we document it? =
I<br>
wouldn&#39;t know today what to do without having to read the source code<b=
r>
and the licensing is critical to most companies.<br></blockquote><div><br><=
/div><div>Sending patches is far more efficient than asking questions; gene=
rally, everyone is busy with their own problems. If you see a deficiency, a=
nd have a clear idea how to make it better, please do contribute improvemen=
ts.</div><div><br></div><div>Alex<br></div><div>=C2=A0</div></div></div>

--0000000000001135e3058a83c63c--
