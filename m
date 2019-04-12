Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 413CFE00994; Thu, 11 Apr 2019 19:16:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC69E00950
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 19:16:28 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id b74so4759212qkg.9
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 19:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IIqxzLczqXjZ8j0jE4GV+jCNJN4pgjH8e6dW8l7OGVo=;
	b=M/U+VKpGKzc2KSG9FAoYb65rbKYFcwWsWnLtY+R3owz7C4tjkO8AcS2n1JxwHorPk+
	CmKPsEEmdtQNJicmETRCcCKJR8uwFlj3nb/NpGqGPfzvY/WNBFFj7hFJcCeUdo0MowgX
	Tso/MTpTTOUxEt4EQuBaeK3g+AJdjxptJAWXpbjxj3rIqrjlxg5/OdRXCX/8/heI808m
	u/QrDsBbHSU2ZsWfbBtxzsq/3aS7/ZPGBMOPw7XEGj+d+qOoEZECD/rWumZT64Bt0R3B
	dx/RbilfkAW55G6Dw63Xl8QI14m7ohexOQ5uKepeIAMRnH35TxfYBvKmAtw12ZB9P0TM
	wfxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IIqxzLczqXjZ8j0jE4GV+jCNJN4pgjH8e6dW8l7OGVo=;
	b=ThuO75eeticgrON7r5LoydrTNrf0z/QYRzh32CzouCG9VTmdeYdzx3umWrey2Io8Rm
	YV8IzcKx/ZcRFExNcsk9M89X5A2C0sD9Dcz+H85Dq06IN8hAZvTFg3FRzMNB4K2OnBos
	LTiN2hUDUT9gTlo1rUftSQe72j6bD6qiTVunG78xK4ohEqY6TVVGcrLKcACd9b8E/abE
	Pbh0g2sj5sUFJgB+9eiHHgldQkgcUmwtblm6jQkXl+ntlsc8TNWUFJnd3VqARHrw4Jvy
	v5+SpJvL4FjaqTld41hAT6gC3sPWtZEusGdwuQBsOouXa2NQRUs0BaI4zRf0G2sRkF1i
	PChA==
X-Gm-Message-State: APjAAAXRpGGNYsylhlOphqq+4PNeIpaRBf8D6gyh5xcuMBwqyXdmWXwU
	A9kNWMLhmmsgIDCLRPefSA+yzdmZRjNSREt01kQ=
X-Google-Smtp-Source: APXvYqwDRf/4DL71YDkkzYw1oNm4mq47BnrfQnedRZ/BfrgnbfPqxDbOYE67/ZHMo5tgLsm7cm4K2ZkR4kKbhVaYx7w=
X-Received: by 2002:a37:7b02:: with SMTP id w2mr40841906qkc.225.1555035387739; 
	Thu, 11 Apr 2019 19:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
	<72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
In-Reply-To: <72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 11 Apr 2019 19:16:17 -0700
Message-ID: <CAMKF1sraewn-efkDqz=7oeys7Us18di85rP7uzTKuk+0Q3KEfA@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@yoctoproject.org
Subject: Re: Changing IMAGE_NAME [yocto krogoth]
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
X-List-Received-Date: Fri, 12 Apr 2019 02:16:29 -0000
Content-Type: multipart/alternative; boundary="000000000000e644ab05864be376"

--000000000000e644ab05864be376
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 10, 2019 at 2:49 AM Mauro Ziliani <mauro@faresoftware.it> wrote=
:

> Hi all.
>
> I need to change the default IMAGE_NAME of my image recipe.
>
> I make my image recipe as mysystem-image_1.0.bb and I'd like to produce
> and image (tar) with the name
>
> mysystem-image-1.0-<datetime>.tar
>
>
Isn=E2=80=99t time stamp part of the standard image you get out of build ?

>
> So I setup
>
> IMAGE_NAME :=3D "{IMAGE_BASENAME}-${PV}-${DATETIME}"
>
>
> I made some compilation of mysystem with the default IMAGE_NAME.
>
> Than I update the value of IMAGE_NAME.
>
>
> Now when I rebuild the image bitbke tell me
>
> ERROR: When reparsing mysystem-image_1.0.do_roots, the basehash value
> change from .... to ....
>
> If i restore the IMAGE_NAME to the default value this message disappear
>
>
> How can I change the IMAGE_NAME as I need and avoi this message?
>
>
> Best regards,
>
>   MZ
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e644ab05864be376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Apr 10, 2019 at 2:49 AM Mauro Ziliani &lt;<a href=
=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi all.</p>
    <p>I need to change the default IMAGE_NAME of my image recipe.</p>
    <p>I make my image recipe as <a href=3D"http://mysystem-image_1.0.bb" t=
arget=3D"_blank">mysystem-image_1.0.bb</a> and I&#39;d like to
      produce and image (tar) with the name</p>
    <p>mysystem-image-1.0-&lt;datetime&gt;.tar</p>
    <p></p></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Isn=E2=80=99t time stamp part of the standard image you get out of build ?=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFF=
FF"><p><br>
    </p>
    <p>So I setup</p>
    <p>IMAGE_NAME :=3D &quot;{IMAGE_BASENAME}-${PV}-${DATETIME}&quot;</p>
    <p><br>
    </p>
    <p>I made some compilation of mysystem with the default IMAGE_NAME.</p>
    <p>Than I update the value of IMAGE_NAME.</p>
    <p><br>
    </p>
    <p>Now when I rebuild the image bitbke tell me</p>
    <p><font color=3D"#3366ff">ERROR: When reparsing
        mysystem-image_1.0.do_roots, the basehash value change from ....
        to ....</font></p>
    <p>If i restore the IMAGE_NAME to the default value this message
      disappear</p>
    <p><br>
    </p>
    <p>How can I change the IMAGE_NAME as I need and avoi this message?</p>
    <p><br>
    </p>
    <p>Best regards,</p>
    <p>=C2=A0 MZ</p></div><div text=3D"#000000" bgcolor=3D"#FFFFFF"><p><br>
    </p>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000e644ab05864be376--
