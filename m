Return-Path: <rob.woolleywr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 238D6E00A16; Thu, 13 Apr 2017 07:09:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0F68E007B5
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 07:09:10 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id y18so4011328wmh.0
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 07:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=9tuSJETc+QzqmAqGlBuvh25i+ZKOjfS/F0XFYeFLD5U=;
	b=tRpp0zO6/gWj//ojncEyWrl/hbevBRmlCYog7GxHB5Th2wz6rw5rZkWu8ysa/NA/0v
	yyWEzwbbONMyCg7DJUXfCr2/cEtwyXl8ZDHwZEYOuiiWoKm6YDSZf73wUSeHuDk8aiFE
	ZJkkhAXh6lBmstxb6EExv8VFk2PYoX2jYabHizCiW33bcat6ikS8hwkqWvtcbq1LaQPc
	P9iUkh1oXN1K+1kOqBz2V7HUoBQF29yud3tIJGLqpXY+emjHsLKZPFnp3WvirGKHtHrK
	cZbELQr2BpRqksye5BnvmPYuDYb68nKlIdReDpp//jw07+wFx15MwvYG4JP2m2T9ei1G
	Cb9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=9tuSJETc+QzqmAqGlBuvh25i+ZKOjfS/F0XFYeFLD5U=;
	b=Kd29KikaWXAVBGV7s+7ltrnDsJKzK7DcPl9GrP02KxaauQ6nelkmMn/EES6x9inptL
	QMC3P7aET3VUjFbfZgB8RcjP0qx3IWYPk8Y++il1+T0w1GfC7HspXDYQp2qdMVi1YmKc
	2YCplAHWn3es/U7dqG2ASEwrCd7DOjFoo9JCmJEMGUbDIPNJbt6FYhoazxWvpZmvO8/e
	lxLNevWD98JtsRG93NS4FeldFOOzBOI+L4m/ReXU3t6MEtJw3vk4lyOzt/q9rH54DUuB
	Iavi+S5lHZEV2ec/pNfqZ8FTySAlQpoZqMexY98Avzk7rAM/dBrAm04G6eKIsIUXWY9q
	m1bw==
X-Gm-Message-State: AN3rC/6vxzkD8yK3m1LsC4iOMWJ1zYvUYImMNBq+Ges9fnHGsYsSWuBG
	znVEBt2mg1+jYlaeuzfpN/LjGLiLj8Jq
X-Received: by 10.28.66.211 with SMTP id k80mr3372581wmi.5.1492092549411; Thu,
	13 Apr 2017 07:09:09 -0700 (PDT)
MIME-Version: 1.0
Sender: rob.woolleywr@gmail.com
Received: by 10.28.31.88 with HTTP; Thu, 13 Apr 2017 07:09:08 -0700 (PDT)
In-Reply-To: <20170406184420.55160-1-rob.woolley@windriver.com>
References: <20170406184420.55160-1-rob.woolley@windriver.com>
From: Rob Woolley <rob.woolley@windriver.com>
Date: Thu, 13 Apr 2017 10:09:08 -0400
X-Google-Sender-Auth: 1zqNQY2n6u5DQajea0fY9pXrIZE
Message-ID: <CAGAhMBzMeWRxf7JRON29g1XCO1NiW4CS1G-Mo5Z609r-9H6WjQ@mail.gmail.com>
To: andrei@gherzan.ro, Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 0/3] pitft: Add support for pitft35r
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
X-List-Received-Date: Thu, 13 Apr 2017 14:09:12 -0000
Content-Type: multipart/alternative; boundary=94eb2c069d42615c1e054d0cde52

--94eb2c069d42615c1e054d0cde52
Content-Type: text/plain; charset=UTF-8

Hi Andrei,

Does this patchset look okay?

Are there any further changes you would like me to make?

Regards,
Rob

On Thu, Apr 6, 2017 at 2:44 PM, Rob Woolley <rob.woolley@windriver.com>
wrote:

> As requested, I have split the patch into separate commits for:
>
>   1. dtbo inclusion
>   2. rpi-config changes
>   3. Documentation commit
>
> I ordered them this way in case a user ever walked through the
> commits in the git tree.  This way the prerequisites are present
> before the feature is advertised in the documentation.
>
> Hope this works for you.  Let me know if there are any additional
> changes that need to be made.
>
> Regards,
> Rob
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c069d42615c1e054d0cde52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andrei,<div><br></div><div>Does this patchset look okay=
?<br><br>Are there any further changes you would like me to make?</div><div=
><br></div><div>Regards,<br>Rob</div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Thu, Apr 6, 2017 at 2:44 PM, Rob Woolley <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:rob.woolley@windriver.com" target=3D"_bl=
ank">rob.woolley@windriver.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">As requested, I have split the patch into separate commits fo=
r:<br>
<br>
=C2=A0 1. dtbo inclusion<br>
=C2=A0 2. rpi-config changes<br>
=C2=A0 3. Documentation commit<br>
<br>
I ordered them this way in case a user ever walked through the<br>
commits in the git tree.=C2=A0 This way the prerequisites are present<br>
before the feature is advertised in the documentation.<br>
<br>
Hope this works for you.=C2=A0 Let me know if there are any additional<br>
changes that need to be made.<br>
<br>
Regards,<br>
Rob<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c069d42615c1e054d0cde52--
