Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13B86E00AE0; Wed, 19 Apr 2017 17:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
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
	*      [209.85.220.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E6E9E00ADD
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 17:37:08 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id d131so34252649qkc.3
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 17:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rmsGHpA4lojtGkXcBr1Q1arYpScyJ4kKRTnQ3s3tJ+g=;
	b=C0qIn5z+BVdAVVp45tIc8aWt8E7zJWSIblNYGr7M2UXr5km+CqT4BPPyf29NegTiSK
	gr33g/fpldCd+q5Ta9h/aN7gciKirYH3R1mBeTZxzCJmT8kOrGhQDP98dL/W6Xgq0P44
	pZ/r1IngE/C4OIPH+/Cl9sGIO8DvC5T5AvowBuxcWziXNQSxQbLJ6BLEOSRV1s3G51Kt
	fXByEtQ5FLLYcKwpG2NpxwgjxlOwnH6ZKzmlCvzk4M+NoC4eWXh2ddVxRtjE01g9n5jW
	lSlduu0QLrtiSdY72dOdMQDVi2wMrjJp7CUHSO4LZy3Vz6iIUhfi+L1bMOc0OTPRRYwJ
	zJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rmsGHpA4lojtGkXcBr1Q1arYpScyJ4kKRTnQ3s3tJ+g=;
	b=IGqyjwHu8OSx1sd1TQd8F5aHqemS3soOZW082/+z2eBrzVox9EAuSuXmKcgJe5VlzQ
	SUAaDj94RR7+lxU33bsNIWsJuAc5WMxkJvjAaQnJb1nMAtTfZY1iNPRc+bMY/B9ExgJG
	3DNERB3tKmG/Qs3XqU5w7fqPqfZuVki/ffbfQ2J5jGg/dyq/XYBw/dz/rtu77fDteqMw
	YoebQrGEgVC0vxAxM/INMWKqSFbZNN244+8Q12ohS5cYwcF/UAwnG5TMnirsh64Q6Db4
	OMPYDrdfzlbN1sMAZqoQBXLtQzKDIao6cGUxeLjwvje8NL+3MYk7X6xYoeH+nE1gauIX
	bKRA==
X-Gm-Message-State: AN3rC/5kIGP6i4cV/lfjuf1SSnm6m9eAA5tSUcEWr8uLYpHuOMmzKy9K
	ptiFEDtW4yIEBGavW/jL84tj1xcYUwWDfmU=
X-Received: by 10.233.216.65 with SMTP id u62mr5655514qkf.234.1492648627589;
	Wed, 19 Apr 2017 17:37:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.48.73 with HTTP; Wed, 19 Apr 2017 17:37:07 -0700 (PDT)
In-Reply-To: <CAHUNapQdc2a_uGDAsDdtBfkw+tg=q4rvJ9K0BFvaa58dzL+uAg@mail.gmail.com>
References: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
	<CAJTo0LZcB7++s9CZLSdnYe-UsrGd1gnHh_emaX4AZ-QtnJfozw@mail.gmail.com>
	<CAHUNapQdc2a_uGDAsDdtBfkw+tg=q4rvJ9K0BFvaa58dzL+uAg@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Thu, 20 Apr 2017 02:37:07 +0200
Message-ID: <CAOsmwBRPM7wt=ovbYg1pd+NJQY1PpaH=6onpgp4a_h5VBe4FGg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Share recipes
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
X-List-Received-Date: Thu, 20 Apr 2017 00:37:11 -0000
Content-Type: multipart/alternative; boundary=94eb2c043cc638d93c054d8e5755

--94eb2c043cc638d93c054d8e5755
Content-Type: text/plain; charset=UTF-8

yes, dyslexia is strong on me XD

2017-04-19 18:17 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:

> > On 19 April 2017 at 15:57, Alvaro Garcia <maxpowel@gmail.com> wrote:
> >> nvidia-propietary-driver
>
> prop*r*ietary?
> proprietary
>

--94eb2c043cc638d93c054d8e5755
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">yes,=C2=A0dyslexia is strong on me XD</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">2017-04-19 18:17 GMT+02:00 Trevo=
r Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" targe=
t=3D"_blank">twoerner@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><span class=3D"">&gt; On 19 April 2017 at 15:57, Alvaro Garcia &lt;<=
a href=3D"mailto:maxpowel@gmail.com">maxpowel@gmail.com</a>&gt; wrote:<br>
</span>&gt;&gt; nvidia-propietary-driver<br>
<br>
prop*r*ietary?<br>
proprietary<br>
</blockquote></div><br></div>

--94eb2c043cc638d93c054d8e5755--
