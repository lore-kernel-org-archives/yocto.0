Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.17.1582148694004274000
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b7Jvginp;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E806E0174F; Tue, 18 Feb 2020 08:44:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.45 listed in list.dnswl.org]
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65EADE0174B
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 08:44:01 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id c7so7690466uaf.5
        for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 08:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/cu/W1XGJfkd2PnVSt5Wj9ms+pFkqZKvHZCJEWk79zA=;
        b=b7Jvginpyfp4FbKiFI9TB1t/eE4BprsrrO1Aa0Ekqz79+oal+e0a7lDhTP76g2T5/w
         vxR6bXLgjr9yLOit5TDD6NLSnMuoLaIdSjc9B/5PwCDr1btMghpSWHurjgU4hAohnAJ8
         Fvi3OZBZG8aUSGkT6lDABRbj2WC4mG89jps2FRir8swSB1Hn3dLmg7oSQg7MPAJj2g23
         K4Z4tPtAYKcJPJSVFDMzThS43731jjkT1eYcVABs8dO0cZ39a8sYZJdVRsCQ+yMhT0OH
         QqD4z547qfbWhyoPLScJgIChSqZFt06fQsEp7xJPlfZ7j80lSYbQ5TAlWvTmWo/ycTnZ
         Ulmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/cu/W1XGJfkd2PnVSt5Wj9ms+pFkqZKvHZCJEWk79zA=;
        b=F64c61FIhG5C8+8bJrxLsly7KNuTBayGMlM6SXp3AZ5knPuwQeggnmiyBRE6nyieFW
         Cp9pMcQzBm6a5VwOjPv1swJfshHDCBkxqF1Fknw+a5FJMy0XQtEV29kvCqgPh0UxasTB
         sgyuoQy9qkFO3jiqlZ0Xizt+YEHg/AI1OKWJJfXpJhmSM8CyI/PkLXyPLeNZf5ggH6O0
         WMwAON8MhFfKI1vcsBqMQQjI7Cl1na9tQxawrw/kHVqbO0A56Q1muLEhP4Oad4WREVUB
         RT9/V4WPks1JpsGoF2Ukbpp8n70/h1T0CQLHBfFUPrcOlcLp3NoIWX7Sgx4+2m3/AmEV
         yXzw==
X-Gm-Message-State: APjAAAX4ZrSWYFawMDvIYQUgBo0foQZ9KMbT2/o7zcA/gttHTZ8UNtlN
	c4xH2Dun8ARgYC8dETnTZ29QLEG/H2XXdkhraCFdQQ==
X-Google-Smtp-Source: APXvYqxVYFBK7dPWhRcfrH6T1+am885R+yegAS7jhEecjMCdBfzgBNypPX17wkrOg8dA5dWTweGZXil9RTACh+Clf0U=
X-Received: by 2002:ab0:7802:: with SMTP id x2mr11221066uaq.100.1582044240463;
 Tue, 18 Feb 2020 08:44:00 -0800 (PST)
MIME-Version: 1.0
References: <0b8a01d5e675$d2363e30$76a2ba90$@gmail.com>
In-Reply-To: <0b8a01d5e675$d2363e30$76a2ba90$@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 18 Feb 2020 17:44:24 +0100
Message-ID: <CANNYZj8GBXxLdM-TQ6TukuLMGPu167ZqL9f-nNmG21rrkMNJ_Q@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status WW07'20
To: Yocto discussion list <yocto@yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000f8cb95059edc6003"

--000000000000f8cb95059edc6003
Content-Type: text/plain; charset="UTF-8"

On Tue, 18 Feb 2020 at 17:10, <sjolley.yp.pm@gmail.com> wrote:

>
>    - With the git infrastructure issue updated, we now have centos8
>    workers added to the autobuilder.
>
> What are the current plans for centos 7?

Alex

--000000000000f8cb95059edc6003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 18 Feb 2020 at 17:10, &lt;<a href=
=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><d=
iv class=3D"gmail-m_-3817875072500115690WordSection1"><ul style=3D"margin-t=
op:0in" type=3D"disc"><li style=3D"color:black;margin-top:0in;margin-bottom=
:0.0001pt;vertical-align:baseline"><span style=3D"font-family:Arial,sans-se=
rif">With the git infrastructure issue updated, we now have centos8 workers=
 added to the autobuilder.</span></li></ul></div></div></blockquote><div>Wh=
at are the current plans for centos 7?=C2=A0<br></div><div><br></div><div>A=
lex</div></div></div>

--000000000000f8cb95059edc6003--
