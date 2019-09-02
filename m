Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A8DAE008E3; Mon,  2 Sep 2019 06:34:41 -0700 (PDT)
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
	*      [209.85.221.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
	[209.85.221.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53530E0074B
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 06:34:40 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 82so2891390vkf.11
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 06:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=85jsvwBqE8zjVJ+XW7PbtlZri2WrEaK2SQdWrvkMsS4=;
	b=hmOteM2FHxkqb/OpbC7mYtD/at4LsydMJ2CR6qhCPyNXoWhS6Xf/cXkjvxeLppGc1c
	yX+7uXksTFCFxeOh9WD/C8VKDX0rkMU/EPwK022MqeAylyJrX1SW2tzXozlTqGJgFL3m
	GdExA6YyBJK33cjTTv1oNhXoHrSBrnarF1AJ6UUVTO1CXLDNd++HmyZ5M30/0zYn16jL
	mUru5ye7V8mcQ53b9gO6elGtTPPXdTDA+1Rn1qplJ/v8FRD6jtdciI5vibc2/2o2CS6y
	hzQnh8mMNKVOfER6tco05vWqL9IAx9kx5nv/xJ9knVKugXe97diSAfePCKxy1MLfjzEP
	x5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=85jsvwBqE8zjVJ+XW7PbtlZri2WrEaK2SQdWrvkMsS4=;
	b=KbDKkppZtOqS51L8w9VJJxnprtUrBCuVHR3wC/M/PdIvoGeu/1v15X5n62wvFDYv1c
	j2ktWn/LNnQQW3TAQ628fCUfJHDCeIRx76TC5ljQV+yEyrlhd1WqOhPpYVUArXa2c2GY
	NgIYtv05pHKgBAy9xoyWQezmTGnD223jxHQPIgPpCvpd2IH8fOKWvXgyxyspqkzR198q
	t8MhTiQn4kCBptD/G9Y8f44dKX06wwRs7W21bdiWRnGyTlO/zRJ5T4gyKboiEGJkyswb
	OUJBYmy8nVVNcDzkSROr1MtkAI29KFLXZLjEG4UWZYIq4NrXc1p5/T0wIXpBU5tNv0jD
	qZQA==
X-Gm-Message-State: APjAAAWxzxQUjWzANyAQtmYvLAXZJzYQ+Rt4oabQ+OF9CIjp6YxWYimx
	Hx90ig5aq2VPiZ6lfnmDiByExu9BX5tp9wOV5YtYyQ==
X-Google-Smtp-Source: APXvYqy6tMlosmdjidA+lE24VT2zpImdTRlrka6jwY7FNK89L4RW/nwTXpik4X+bxzBSlFR/yAcId0/TPWqm9RB0RBs=
X-Received: by 2002:a1f:6681:: with SMTP id a123mr6988499vkc.81.1567431279555; 
	Mon, 02 Sep 2019 06:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
In-Reply-To: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 2 Sep 2019 15:34:28 +0200
Message-ID: <CANNYZj84SKy5dX+2ZEGDXxXf_qMBisfKaNzBHJPL+TtqKYwEqQ@mail.gmail.com>
To: Brian Silverman <bri@readysetstem.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Fetching Yocto layers
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
X-List-Received-Date: Mon, 02 Sep 2019 13:34:41 -0000
Content-Type: multipart/alternative; boundary="000000000000a0b9b20591920871"

--000000000000a0b9b20591920871
Content-Type: text/plain; charset="UTF-8"

On Mon, 2 Sep 2019 at 15:05, Brian Silverman <bri@readysetstem.com> wrote:

> The tags chosen above are based on what we test and ship.  So my issue is
> that someone has to correctly follow the above instructions for different
> versions of multiple layers if they want a reproducible build of a specific
> version of mylayer-image.
>
> Is there a canonical why to encode this information within my layer?
> Obviously I could script the above, store it in my layer, and have the user
> run that script.  But, that seems very unyocto-like.
>

At the moment Yocto project does not have an off-the shelf setup for
multiple layers. You are welcome to provide and maintain one, until then it
is indeed custom scripts, or tools like Google's 'repo', or maybe git
submodules could work.

Alex

--000000000000a0b9b20591920871
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 2 Sep 2019 at 15:05, Brian Silver=
man &lt;<a href=3D"mailto:bri@readysetstem.com">bri@readysetstem.com</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr">The tags chosen above are based on what we test and ship.=C2=A0 So my=
 issue is that someone has to correctly follow the above instructions for d=
ifferent versions of multiple layers if they want a reproducible build of a=
 specific version of mylayer-image.</div><div dir=3D"ltr"><br></div><div di=
r=3D"ltr">Is there a canonical why to encode this information within my lay=
er?=C2=A0 Obviously I could script the above, store it in my layer, and hav=
e the user run that script.=C2=A0 But, that seems very unyocto-like.</div><=
/div></div></div></div></div></div></div></blockquote><div><br></div><div>A=
t the moment Yocto project does not have an off-the shelf setup for multipl=
e layers. You are welcome to provide and maintain one, until then it is ind=
eed custom scripts, or tools like Google&#39;s &#39;repo&#39;, or maybe git=
 submodules could work.</div><div><br></div><div>Alex<br></div></div></div>

--000000000000a0b9b20591920871--
