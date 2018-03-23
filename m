Return-Path: <texier.pj2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A9F7E00C62; Fri, 23 Mar 2018 07:20:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (texier.pj2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D332E007DA
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 07:20:51 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id h76so3879754wme.4
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 07:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=z90CwrJMDg+FhA0TmHqI9qGvnWx4znPTlbf2B/Lad7A=;
	b=pTA41pbUMnizb7I3KHEdm9ypcVuL2ORIlweLyTDeIcS32NRBxsd3W11mO0rpEthkXd
	FKXK+vLOVtoQXnw95MzZpzn5dt5K6jmrVWQUL/WLf8y9m4UXIOMNluBrRdJv/xhKFWKc
	tku50iIId+hIqZ5Vp7YDUspm3qEKDj8OXvJGNDuC4VUWRqcpxnNm+DKgQsBAeloOPc+4
	MWCo6WudmNgwNiohW0Gh1LQZNfaL/0Ok9LvMGqynXYcHK5jesohQ3X9amSrKf4Y66jja
	MNrMKzLrn6r3pKzONhtU0Gn2y2CIcSJr65oYKvsbYfS4eMbbJnrVO9vhhsMGvG4Fac+9
	Ru+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=z90CwrJMDg+FhA0TmHqI9qGvnWx4znPTlbf2B/Lad7A=;
	b=C17E0wj/fV/br8qeepCe03m0sWgrSkrkD/tjnalKhdcDE9kxt2A0jTgECfVCG9nj0t
	4RB3R/2KPmz3/Izmpwzc+/Wr23mkDKCIlr4fG4GHqR0gxepW8MDHec43OcvEXs9hrK4g
	eEmeKzz0DbnhLiMSoRhXcEt9Y80LZfKRZtvzQNhfZa/DLYuG+vo/tO213TzgZv9Az7TH
	xRkvhiQJ6oJUSKBoBg8r1aFXLcUhXT4rWhaJwSTeqP3h2IU2H6gBEiBbjcr43Q54Mre7
	QoUSg8Gn3OqFX+0YZvx9iqQadbXDjMkYlGQf4zFIscQgBPgqPUWWy445SAx5Q45ffUR8
	C7vg==
X-Gm-Message-State: AElRT7HQygr9GrXoNnrN6Z8sgU2hpKz6SbBvgO67el3MJhyC+qprI7Zu
	bRNQbUPYk8ATB+pYe7XiTBRGhZUfBpEK7q7PTRp2Fg==
X-Google-Smtp-Source: AG47ELt2YszmGvN+EsK5T7g73vQu3MXlD8U20I3lSho7hnDZ6mA3cxEDiUQnl8L8i54yy+tmNdNXLEyWqijZWSd2Ovg=
X-Received: by 10.80.169.89 with SMTP id m25mr10779696edc.244.1521814851192;
	Fri, 23 Mar 2018 07:20:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.172.226 with HTTP; Fri, 23 Mar 2018 07:20:50 -0700 (PDT)
In-Reply-To: <1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
References: <mailman.7.1521745201.12814.yocto@yoctoproject.org>
	<1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
From: TEXIER Pierre-Jean <texier.pj2@gmail.com>
Date: Fri, 23 Mar 2018 15:20:50 +0100
Message-ID: <CALRtUqvUHaaEf-jOWmFHzotarYtOBrV0ZZf6kS8fgFaCNeM4AQ@mail.gmail.com>
To: Laurent JOLI <laurent.joli@kapelse.com>
Cc: yocto@yoctoproject.org
Subject: Re: Add lib to meta-qt5
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
X-List-Received-Date: Fri, 23 Mar 2018 14:20:53 -0000
Content-Type: multipart/alternative; boundary="94eb2c0de31c9e8c9f056815218c"

--94eb2c0de31c9e8c9f056815218c
Content-Type: text/plain; charset="UTF-8"

Hi Laurent,

The SDK is defined by the following packagegroup:
https://github.com/meta-qt5/meta-qt5/blob/jethro/recipes-qt/packagegroups/packagegroup-qt5-toolchain-target.bb
.

---
Pierre-Jean

2018-03-23 14:39 GMT+01:00 Laurent JOLI <laurent.joli@kapelse.com>:

> Hello,
>
> I'm working with an old version of YOCTO, jethro 2.0.
> And I want to produce an SDK of QT5, version 5.5.1.
>
> So, I add the layer meta-qt5 on YOCTO for build the following recipe :
>
> https://github.com/meta-qt5/meta-qt5/tree/jethro
>
> meta-toolchain-qt5
>
> My question is :
>
> How to add an lib ( libqt5declarative.so.5.5.1 for example ) on SDK of QT5
> ?
>
> thanks by advance.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0de31c9e8c9f056815218c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Laurent,<div><br></div><div><div>The SDK is defined by =
the following packagegroup:</div><div><a href=3D"https://github.com/meta-qt=
5/meta-qt5/blob/jethro/recipes-qt/packagegroups/packagegroup-qt5-toolchain-=
target.bb">https://github.com/meta-qt5/meta-qt5/blob/jethro/recipes-qt/pack=
agegroups/packagegroup-qt5-toolchain-target.bb</a>.</div><div><br></div><di=
v>---</div><div>Pierre-Jean</div></div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">2018-03-23 14:39 GMT+01:00 Laurent JOLI <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:laurent.joli@kapelse.com" target=3D"_blank=
">laurent.joli@kapelse.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div><div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:10pt;=
color:#000000"><div>Hello,<br></div><div><br></div><div>I&#39;m working wit=
h an old version of YOCTO, jethro 2.0.<br></div><div>And I want to produce =
an SDK of QT5, version 5.5.1.<br></div><div><br></div><div>So, I add the la=
yer meta-qt5 on YOCTO for build the following recipe :<br></div><div><br></=
div><div><a href=3D"https://github.com/meta-qt5/meta-qt5/tree/jethro" targe=
t=3D"_blank">https://github.com/meta-qt5/<wbr>meta-qt5/tree/jethro</a><br><=
/div><div><br></div><div>meta-toolchain-qt5<br></div><div><br></div><div>My=
 question is :</div><div><br></div><div> How to add an lib ( libqt5declarat=
ive.so.5.5.1 for example ) on SDK of QT5 ?<br></div><div><br></div><div>tha=
nks by advance.<br></div></div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0de31c9e8c9f056815218c--
