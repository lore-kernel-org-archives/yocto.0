Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9442.1588690341054742274
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 07:52:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qye7hCQQ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: prashanth.vadde@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3AEBE01A1B; Tue,  5 May 2020 07:52:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (prashanth.vadde[at]gmail.com)
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81173E01A17
	for <yocto@yoctoproject.org>; Tue,  5 May 2020 07:52:20 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id r2so1445020ilo.6
        for <yocto@yoctoproject.org>; Tue, 05 May 2020 07:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=HlM7elOuUkebKdcDI6lAQtz8ZWdGqyzUe2s/Gr2N01w=;
        b=Qye7hCQQ0/H9wA1GMr9oBXP1OEvGa2kBLCBvt1TK9Mx6bw48zVQU3mRj4cwq6D/yOm
         vmvQggXP1R1nWN5cGlMGVImdaJabSF6Ukrob3YC2/y/mrn8zvynl3CV636cBRXFvgjWp
         9VYI7UVr5eqRiXHq0dW+GqUREQE5HBmopj314AAuUxEPrsjJWaTuu4ZpUzOUDmZ+JzPj
         dZYPJjlR0nKoyEnn2rwhTtPJJLLknu693kwgBwm3cXiZguyim3Na/lyJ5Xfz8e9tYpM2
         lhdQPmamyCxaKzWAehamgaQ4CZ2zMJmzTmiHGvvi/v0yaUHS0Ye9gbStWqRkYEYE5siy
         8drA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=HlM7elOuUkebKdcDI6lAQtz8ZWdGqyzUe2s/Gr2N01w=;
        b=DtYG8AqlfqzTsPPCV1lnNbDTIj5RYq6bMAjPlGlW74oD7q53KrPGqIakmeZSfFBLtN
         18XKhkfiKBM2gzwJH7MTO/V7v8qVz5KwS2XBBfKGSWrJEJtQfjcuN7qMnZEvs5hl71mr
         BZDtbKwAebcYUwcm2GNUpum/H+XeeV6H8jVR+fqtoG+9mHTd8hSLT8o8HYved5Zi/z3R
         JdZgaFFl5q1GdK3w7JTUWKkTxemYD/XrXN94UtiGB5UAk6rCL+SrwZG97Az89FCSo7s8
         qPOYQD+6ZYKnU48P9/uFpKuKGABfYNSJrQPSel2/DfztRDEGk33MzRQLZiDjSw/Jjk6/
         dLWg==
X-Gm-Message-State: AGi0PuZD4Cpm06pDCdo3kR5cXFteE3MWUIzcHCJMj9EFaiPpHODzPK9S
	9SURFTQ6wMTnIZP9qXtWzAn9wO0yOhUG3cWyHRV+eKCmczA=
X-Google-Smtp-Source: APiQypJiXRB70NhPpCeMXRGU2jw7rGojvaKCoyeIbUFFR5f4tkpIlnE1dzQAJHwAQSdhk/0jnMR58FSEQPSZC6r5388=
X-Received: by 2002:a92:bb01:: with SMTP id w1mr4185602ili.233.1588690339262;
 Tue, 05 May 2020 07:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAGskogRNKXgy2s39PZUqD-+M6VRsLykVS7YTp8WmRGz6n+F7Mw@mail.gmail.com>
In-Reply-To: <CAGskogRNKXgy2s39PZUqD-+M6VRsLykVS7YTp8WmRGz6n+F7Mw@mail.gmail.com>
From: prashanth.vadde@gmail.com
Date: Tue, 5 May 2020 20:22:07 +0530
Message-ID: <CAGskogT3dUtz_68XK0wzE9h2LXFgS+u-rteYn3No44CDpNK6Cw@mail.gmail.com>
Subject: Regarding gnutls package in meta-gplv2 layer
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000054737105a4e7cb12"

--00000000000054737105a4e7cb12
Content-Type: text/plain; charset="UTF-8"

Hi Team,
I am trying to avoid GPLv3 package of gnutls from default Thud release.

So I was checking the gnutls package from meta-gplv2 layer:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-gplv2/tree/recipes-support/gnutls/gnutls.inc?h=thud


But here as well I see that, this package is with GPLv3 license. Can you
please let me know, if I am missing anything here. If not, can you please
suggest if I have any alternate for GPLv2 version gnutls package.

Thanks & Regards
Prashanth Vadde

--00000000000054737105a4e7cb12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">Hi Team,</div><div dir=3D"ltr"><div>I am trying to avo=
id GPLv3 package of gnutls from default Thud release.=C2=A0</div><div><br><=
/div><div>So I was checking the gnutls package from meta-gplv2 layer:</div>=
<div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-gplv2/tree/r=
ecipes-support/gnutls/gnutls.inc?h=3Dthud" target=3D"_blank" rel=3D"norefer=
rer">http://git.yoctoproject.org/cgit/cgit.cgi/meta-gplv2/tree/recipes-supp=
ort/gnutls/gnutls.inc?h=3Dthud</a>=C2=A0</div><div><br></div><div>But here =
as well I see that, this package is with GPLv3 license. Can you please let =
me know, if I am missing anything here. If not, can you please suggest if I=
 have any alternate for GPLv2 version gnutls package.</div><div><br></div><=
div>Thanks &amp; Regards</div><div>Prashanth Vadde=C2=A0<br><br></div></div=
>
</div></div>

--00000000000054737105a4e7cb12--
