Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A630E01690; Wed,  6 Jun 2018 10:46:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A2DE00DE3
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 10:46:18 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id d22-v6so8573341iof.13
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 10:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mjj4dKaezzM4E8RJbAJy/YUqIeVq9sIOgTLO26vJeVg=;
	b=BlkzgSJJy7KjEnw9K+mF5qSrN+58w0cMxAtoe9p9svjbzIT1jyNNdMWb9jJ6VULCxx
	Qe4d7I34Y6zW7sszdJXhCTIqprF8/X0GGreHvnthkJx2y6bk1hqgcTzYhNpv30KK4Faj
	cxQgyEExZS6wpS1ck3kmxu4bG02zU7I1RDWi7i4PHnHwsufgYa85fNvxxLUtGzb4W9HS
	yjeM8khS21fibUhvk6+M8Dy2qRoeyPplJRbLJPj6+DvnRcpFzvNywMqPjXuHZNagj1bH
	BT+iwImj8b/YSvFVPKa0ViCpZV9WwQ3FAFUxCKzyTolGW38iNT+Cz5z2dVLv0jgPszF+
	+g2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mjj4dKaezzM4E8RJbAJy/YUqIeVq9sIOgTLO26vJeVg=;
	b=uUx/tqmvHr3ezCGeK8kGaO8Bsy15g3kKz81gnNbMlGuR7CdrW5dh2dnU8/A6DahVnn
	QKTDyIS+1HBivtQDUkKSUu/bLT5fFWoacuKnzcWpnKxmIMO1Z44bQUlRj2vFWu1w+aYQ
	I8LSD0dYHTrxJxb/UDj2FSkLNs0zNY76w67WfsHP1qqEX+tz/2wX07/0LRa4myjl1vCM
	MG9CJMTeTC0fHcl7wbiE42i+Takw3QVfo7+fJfh9TC8ksmWrKUeICmKjndvsfiJLD11y
	E0TH8dYbbwFP3uJRQGSQSvbUc/k+7jTIc8cvEYIkENQjcIO1yCf51/FsqtDTJoQG+zGx
	aq2w==
X-Gm-Message-State: APt69E1U8ZldEa38JpEnTe4xSJupAkDuXgrGHOSOEb/c+p9CcUN0SXe6
	fjLrAtzrGsgqR/KuqccdoRHJMFbJkNtjty4f68s=
X-Google-Smtp-Source: ADUXVKL8W7MfRpnmOUz7zBfDwLzJYE1friWwhkkZrQv40c4+YTMKYnO5imnVixhftshyo/p95OYlFUDZmLCy4BY+oac=
X-Received: by 2002:a6b:6208:: with SMTP id f8-v6mr3828807iog.11.1528307178301;
	Wed, 06 Jun 2018 10:46:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:83c9:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 10:46:17 -0700 (PDT)
In-Reply-To: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
References: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
Date: Wed, 6 Jun 2018 10:46:17 -0700
Message-ID: <CAEKp-aZDWk-FhyVUgy9+TpeZkw2a=9XCBHbhHWOof-Y5d_PcWw@mail.gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gratitude
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
X-List-Received-Date: Wed, 06 Jun 2018 17:46:20 -0000
Content-Type: multipart/alternative; boundary="000000000000786eff056dfcbe02"

--000000000000786eff056dfcbe02
Content-Type: text/plain; charset="UTF-8"

Jefro,

I am very sorry to see you go. I have very much enjoyed working with you
from the beginning while still at the Linux Foundation. I cannot express
enough gratitude for all the valuable work you have done for this community
and for me personally by diligently reviewing the book and giving me tips.

Thank you so much. You will be missed.

Rudi

On Tue, Jun 5, 2018 at 11:42 PM, Osier-mixon, Jeffrey <
jeffrey.osier-mixon@intel.com> wrote:

> I have been the Yocto Project community manager for over 7 years now, and
> have had the pleasure of knowing or conversing individually with several
> hundred of you. It is with mixed feelings that I must announce that I am
> stepping down from my position as the YP community manager and the Advisory
> Board chair after 7 years, as I am taking on a new role in my job.
>
> I am very proud of the progress that the project has made, growing from a
> small set of build tools into an industry standard for building and working
> with embedded Linux-based operating systems, supporting upstream projects
> including the Linux kernel, hosting projects like opkg, and inspiring many
> very successful downstream projects, including AGL and OpenBMC among many
> others, and also supporting countless configurations of hardware among
> seven different architectures. We have also seen the community of users
> grow from fewer than 1000 in 2010 to a large city-sized community,
> estimated in the tens of thousands of developers.
>
> Please continue to participate, collaborate, and come together as a
> community! The Yocto Project is a success because every one of you
> participates.
>
> Jeffrey "Jefro" Osier-Mixon, Intel Corporation
> Open Source Community Ecosystem Strategist
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Rudolf J. Streif*

--000000000000786eff056dfcbe02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Jefro,<div><br></div><div>I am very sorry to see you go. I=
 have very much enjoyed working with you from the beginning while still at =
the Linux Foundation. I cannot express enough gratitude for all the valuabl=
e work you have done for this community and for me personally by diligently=
 reviewing the book and giving me tips.</div><div><br></div><div>Thank you =
so much. You will be missed.</div><div><br></div><div>Rudi</div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jun 5, 2018 at=
 11:42 PM, Osier-mixon, Jeffrey <span dir=3D"ltr">&lt;<a href=3D"mailto:jef=
frey.osier-mixon@intel.com" target=3D"_blank">jeffrey.osier-mixon@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I have been the Yo=
cto Project community manager for over 7 years now, and have had the pleasu=
re of knowing or conversing individually with several hundred of you. It is=
 with mixed feelings that I must announce that I am stepping down from my p=
osition as the YP community manager and the Advisory Board chair after 7 ye=
ars, as I am taking on a new role in my job. <br>
<br>
I am very proud of the progress that the project has made, growing from a s=
mall set of build tools into an industry standard for building and working =
with embedded Linux-based operating systems, supporting upstream projects i=
ncluding the Linux kernel, hosting projects like opkg, and inspiring many v=
ery successful downstream projects, including AGL and OpenBMC among many ot=
hers, and also supporting countless configurations of hardware among seven =
different architectures. We have also seen the community of users grow from=
 fewer than 1000 in 2010 to a large city-sized community, estimated in the =
tens of thousands of developers.<br>
<br>
Please continue to participate, collaborate, and come together as a communi=
ty! The Yocto Project is a success because every one of you participates.<b=
r>
<br>
Jeffrey &quot;Jefro&quot; Osier-Mixon, Intel Corporation<br>
Open Source Community Ecosystem Strategist<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><font f=
ace=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><div><fo=
nt face=3D"garamond, serif"><br></font></div></div>
</div>

--000000000000786eff056dfcbe02--
