Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57865E00B8F; Tue, 23 Jul 2019 13:22:55 -0700 (PDT)
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
	*      [209.85.222.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
	[209.85.222.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A85E00B8F
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 13:22:53 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id 8so17519108uaz.11
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 13:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=es568nykRz53kKuyJVN+nakzkltmCa4E6GH0O9w9cyc=;
	b=TklzmwPkJ4Q0HTGSbDv1TVPsMh+JpEu4L/MYpvkaOGXEwP7uQIZvchsrdxGHf5rClm
	AB8sRADmKSp67MELkCi1/x+DJ9qrgg50nKi7Dx1O8iBPytv2s3Tpdfdg8NSNVfnGHJuv
	AHUt6abKTt5SFZ/z6kwtOfXzVStXPr52X0xBGytTc+UzqkwhXOFU8gcHMgSVFe+aoMb4
	fpNFGOe55BOXhLJWxkdPH6i6qjGqH+Kf6hBjlIqaWQj52sEdacflxEkpaOdJAH0xaXhQ
	XA4JOPHpczoWl7JArn+OE/tiFgCejhpTtLEwFNi7p3ELsWeGfivrlXMOVFgCBZU8wMby
	zymQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=es568nykRz53kKuyJVN+nakzkltmCa4E6GH0O9w9cyc=;
	b=bMA5yaHDI2gXRVYMLm8xkt+DsiFmeDJRG8tSXqWs69gVumM3rUQHQ8KJu8tCxW56xe
	ktbwaP1K44vv9JUCbTAvo08fR9m/y/sB8feSCLDmIuHs++eNkT84ouRFG0txTGB0Egs/
	ugEzIP1jQ1BnGKZ4KXRCcTn90tgUM7GEuqskT0tp+y6Zrj4ZAvn4zAAdDYkZzQyyZPxv
	sP/WpoMVnv7qtCAVUijumtEXBTNL11pJFgPlm1GbnQi9hQ6Aqa+YnxMdQSCEItyLHz0l
	p1rFKRqGkHU1iP5PlTE3u5LBDK84fjRjnrhNjBqW5OdRDT3PRH1/3LXKqwR0wVG2T0KI
	xQ5w==
X-Gm-Message-State: APjAAAXWBR3/KjNggoxZf78D8CJy3lFDlu3fFKscUhzCSmuiLx1QCTUJ
	pl0pOmJT+Y/XwV2cRAAqmNa0eO4qLeu/lTnA7Q8=
X-Google-Smtp-Source: APXvYqzR3eP3go1VeAi+1Xe8qD/gk9YmqhHapE0r7N2mjgAZ536HIxiryGEchSIJR++EVKcaClwdLP2G1sgGZkVShLA=
X-Received: by 2002:ab0:760e:: with SMTP id o14mr31311303uap.93.1563913372778; 
	Tue, 23 Jul 2019 13:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <006d01d5417e$e1c31180$a5493480$@gmail.com>
In-Reply-To: <006d01d5417e$e1c31180$a5493480$@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 Jul 2019 23:22:41 +0300
Message-ID: <CANNYZj9n2q1udd4Rg_sGrh=8u-S4_mg+cRx3k1m5i-ZFHZXFGw@mail.gmail.com>
To: sjolley.yp.pm@gmail.com, Yocto discussion list <yocto@yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Joshua Watt <jpewhacker@gmail.com>
Cc: Lieu.Ta@windriver.com
Subject: Re: [OE-core] Yocto Project Status WW30'19
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
X-List-Received-Date: Tue, 23 Jul 2019 20:22:55 -0000
Content-Type: multipart/alternative; boundary="0000000000000b43dc058e5ef5eb"

--0000000000000b43dc058e5ef5eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 23 Jul 2019 at 20:49, <sjolley.yp.pm@gmail.com> wrote:

>
>    - There are patches available which enable runqueue optimisations
>    based on output comparisons of tasks. This removes the need to run lat=
er
>    tasks if the output is unchanged and is based upon the previous hash
>    equivalence server work. This feature should be a significant win for =
the
>    users and is now working to a level where we=E2=80=99ll likely make th=
is a key
>    feature of the next release.
>
> This is going to be awesome! Maybe this achievement should get wider
exposure via a LWN article? (provided they accept the submission)

Alex

--0000000000000b43dc058e5ef5eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 23 Jul 2019 at 20:49, &lt;<a href=
=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><d=
iv class=3D"gmail-m_-7111157689397501626WordSection1"><ul style=3D"margin-t=
op:0in" type=3D"disc"><li class=3D"MsoNormal" style=3D"color:black;vertical=
-align:baseline"><span style=3D"font-family:Arial,sans-serif">There are pat=
ches available which enable runqueue optimisations based on output comparis=
ons of tasks. This removes the need to run later tasks if the output is unc=
hanged and is based upon the previous hash equivalence server work. This fe=
ature should be a significant win for the users and is now working to a lev=
el where we=E2=80=99ll likely make this a key feature of the next release.<=
/span></li></ul></div></div></blockquote><div>This is going to be awesome! =
Maybe this achievement should get wider exposure via a LWN article? (provid=
ed they accept the submission)</div><div><br></div><div>Alex=C2=A0</div></d=
iv></div>

--0000000000000b43dc058e5ef5eb--
