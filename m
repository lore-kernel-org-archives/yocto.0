Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDAA9E00C46; Tue,  6 Aug 2019 08:07:04 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.41 listed in list.dnswl.org]
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
	[209.85.222.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57F9AE00C22
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 08:07:04 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id 8so33762522uaz.11
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 08:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Izqyvv24oPJuVMdYnrIVksuFO0eQ5S1x9rR1IMGsdxw=;
	b=oGCluCJz7kEbSaeieYbaiq/frLOgH5b+BKsoPFiVYrnaTbXW/aNXGTWxUUmaeKyt7C
	3r6Ddn284xPKGAIaAtKylNcPq0TcU+v6+NetgSz/BCFJZzskteJgOJMf7Q1y9lYuUBzB
	sfviG92nxpFXtTrvngOiMJu366Dl7eKHjr0OhRWMWAjgJQNgBapwom1XhrjP16pwDQN1
	ii5PpERstiS6D57eLXEZODS/ZJtuFRFNd7P4gvPKkIF2D2wU7IzZOPJkkQrBmkjJx8Sy
	PfLPleR9rT4BEGrY5SwsAJoaUEOsMZWDRLkT02F7o0MmZeRwDDpOdnlvx/iT/+vJF5/P
	mmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Izqyvv24oPJuVMdYnrIVksuFO0eQ5S1x9rR1IMGsdxw=;
	b=qNf4gQU8oGZY+9PBl98GaIjgFftww/lfXdEI2HxxJcpBk9WqWtsIdeLk53LCEaiuaN
	yFchLlmJq/yQpmYP+Pxu1UKNmgg7bnkelxgp4aJ8eLYlDTi1FOZAdMCg8/vsdiVVhpBW
	cSbrWX157+w0KR4d8tgMW8UjXzihvEaNiVOyyz4jDzI7DrR7CJUhZzjjU7Sjb909l5CV
	gggM0BLGmBZ+m/y9wOVFV0wE9Mv9pUF9LE9sVWsKUP5I9xx0abUYNcmTeGqWU3AzERoz
	jNRjyR/6gVHqgMQhkOxF+nJIB65ycqhdkFzcFirERiGGeXjqyyWCXGQ9UvSPgo/lOarL
	CxrQ==
X-Gm-Message-State: APjAAAWwmWAvMMAo3x2AbA99+oFloty+4kC1HXkoVOiqYwyYBer6pPJo
	Ae19ng55SxhjEvuk2h/UviV0lDUQaW8EO0QUPVE=
X-Google-Smtp-Source: APXvYqzdab18n0z7+zci4EEY/HiG7dm1OWvRvGaWVAkPGc7t/ZQd4vPq5D4ORGOORGUbTNkrAg587Xj/SopoS+5h5iw=
X-Received: by 2002:ab0:e19:: with SMTP id g25mr2404303uak.71.1565104023543;
	Tue, 06 Aug 2019 08:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <051801d54bf9$ca5b7930$5f126b90$@gmail.com>
In-Reply-To: <051801d54bf9$ca5b7930$5f126b90$@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Aug 2019 17:06:52 +0200
Message-ID: <CANNYZj_Eie=FzjMHYwkMJchi1OjbTBkkS9CFjc+B9ca2yoiuyA@mail.gmail.com>
To: sjolley.yp.pm@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Reminder: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on the first Tuesday (PST)
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
X-List-Received-Date: Tue, 06 Aug 2019 15:07:04 -0000
Content-Type: multipart/alternative; boundary="0000000000005c2545058f742d2d"

--0000000000005c2545058f742d2d
Content-Type: text/plain; charset="UTF-8"

On Tue, 6 Aug 2019 at 03:53, <sjolley.yp.pm@gmail.com> wrote:

> Wiki: https://www.yoctoproject.org/public-virtual-meetings/
>

That page links a Google calendar, and the calendar is in many ways
mismatching what is listed on the page. Can you please re-create the
calendar?

Alex

--0000000000005c2545058f742d2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 6 Aug 2019 at 03:53, &lt;<a href=
=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-6442179665982099747Wo=
rdSection1"><span style=3D"color:rgb(31,73,125)">Wiki: <a href=3D"https://w=
ww.yoctoproject.org/public-virtual-meetings/" target=3D"_blank">https://www=
.yoctoproject.org/public-virtual-meetings/</a></span><span style=3D"font-si=
ze:12pt;font-family:&quot;Times New Roman&quot;,serif"></span><br></div></d=
iv></blockquote><div><br></div><div>That page links a Google calendar, and =
the calendar is in many ways mismatching what is listed on the page. Can yo=
u please re-create the calendar?</div><div><br></div><div>Alex<br></div></d=
iv></div>

--0000000000005c2545058f742d2d--
