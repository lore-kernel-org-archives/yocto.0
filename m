Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A925E00E04; Tue, 12 Nov 2019 13:59:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markhawthorne172[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44547E00DCE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 13:59:50 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id a24so90219edt.0
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 13:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=6OqV9KuQDp3CqOiq1oTqlKX/WTKudkEnDv5QhfYY22I=;
	b=Dm3G/nxul8SyXDbcanCW+4jt7h6MflQB+fCxZh0XxeROYTuOWHG1j+DY6sfIOX+OPW
	5jsuuiDRf5WxTjyqM+Appkz3TJcdllw4suInHGtC2WHFQkUvlO3GJQgxy5uq72NZn+yt
	+CX9NarJTH+9McSYyKkPogRRysaXHYJBg3E7+CYXJlJ+yvhDeffRKKuSHNAaesygogcO
	vtRw1gBPiIs5B6GsdduVh11VGAWLiGY2hkqQXaY23OJVpQ5B2m/yImRHPI/dGGE/WOYU
	cJku/w1el1T7ITQctBMOFzpghUhc2tda7LyPjbs7aizmAbb0N21ghnP8OzD9EOsK56Wj
	Czjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=6OqV9KuQDp3CqOiq1oTqlKX/WTKudkEnDv5QhfYY22I=;
	b=r44vRiN57hF0HHeJpH2K13lutQMHY+5kqOi1i7qOn912lXBKJnddrYdHYh68rGJo96
	PH3PMdJXaqUXj7wC0ZJG47UHQH4KmiQ7WrqiiM+9J+Eh7w2Kk8zTMW+4/oEObzYwcZ7K
	iVPKPZ3X3iPIAHtfPq7kld1GLKkAkQsVog+jbd7rABPs6mri6TAoY75LM6CEPLDNWm7z
	Uv4QcstkyT03pbnfaqPfvuxXX/12RhBUdCuP1OVTe3XPX6a4qREDij2CzeMltIisvYCP
	em3RUvgwJBzpkvT9fUC1s9mgJI4bu5xGfgGGssSpzPtn1WBPnbdX/ui4UwIRhgPunnZs
	xgdg==
X-Gm-Message-State: APjAAAUIZKYbKMeZO3XDtYnv11ogEfUByQoNNG1ZH50H3Q3J8yER1UWR
	i20Q1Is0AncIpdvEYoDuQETkV8ZgV0u9qNK3aTUSbg==
X-Google-Smtp-Source: APXvYqxyI+O42HW7uVdAXQ+xePUsMZ6/rvOGhMGE3o9ZQo325G9hHcVW5lnFpvhWQ3pwaT3Yw6BnkE5oEYyDkAhlwqg=
X-Received: by 2002:a05:6402:1a50:: with SMTP id
	bf16mr35428040edb.116.1573595989233; 
	Tue, 12 Nov 2019 13:59:49 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
In-Reply-To: <20191112214154.GA32308@localhost>
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Tue, 12 Nov 2019 15:59:38 -0600
Message-ID: <CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: pkg-config not found
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
X-List-Received-Date: Tue, 12 Nov 2019 21:59:51 -0000
Content-Type: multipart/alternative; boundary="000000000000f555d005972d5d40"

--000000000000f555d005972d5d40
Content-Type: text/plain; charset="UTF-8"

Thank you. I have fixed this issue but the original pkg-config error still
persists.

On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote:

> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
> >...
> > DEPENDS_${PN} = "libpng freetype glm libegl libgles2 libspatialite"
> >...
>
> DEPENDS, not DEPENDS_${PN}
>
> cu
> Adrian
>
> --
>
>        "Is there not promise of rain?" Ling Tan asked suddenly out
>         of the darkness. There had been need of rain for many days.
>        "Only a promise," Lao Er said.
>                                        Pearl S. Buck - Dragon Seed
>
>

--000000000000f555d005972d5d40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you. I have fixed this=C2=A0issue but the origi=
nal pkg-config error still persists.</div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2019 at 3:41 PM Adrian =
Bunk &lt;<a href=3D"mailto:bunk@stusta.de">bunk@stusta.de</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Nov 12, 20=
19 at 03:06:25PM -0600, Mark Hawthorne wrote:<br>
&gt;...<br>
&gt; DEPENDS_${PN} =3D &quot;libpng freetype glm libegl libgles2 libspatial=
ite&quot;<br>
&gt;...<br>
<br>
DEPENDS, not DEPENDS_${PN}<br>
<br>
cu<br>
Adrian<br>
<br>
-- <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Is there not promise of rain?&quot; Ling T=
an asked suddenly out<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 of the darkness. There had been need of rain fo=
r many days.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Only a promise,&quot; Lao Er said.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pearl S. =
Buck - Dragon Seed<br>
<br>
</blockquote></div></div>

--000000000000f555d005972d5d40--
