Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 957DAE00DAF; Thu,  8 Aug 2019 02:46:07 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.46 listed in list.dnswl.org]
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
	[209.85.217.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35D18E00AE6
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 02:46:06 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id m8so62705522vsj.0
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 02:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cJI/brkXgeRzyRH/UjZazMt3P9qswRxFCcT/yPOxk5Y=;
	b=CbI/1q2gkY7xg/N4f5lf8fuIlz8OFzz2HlNyo0uPzdm1VKf9QO7GBxc6swRCxPdXGy
	3Fyh+E3Sex2FAvY/9KNe/60sFoiwWkdWq6CMTQeJAhk2Rmzm/CB8WDrcOmTWcb6IIIJb
	OUimFSuN5mTeSWEw1YYrerb+xavqXoD/frpSTB04+U8rIL/N4MgfsgS9avn5cFS615uh
	Q37lgYal8aoWGEN1Udq1+aU1tbQCKFW9eF9f1xHaQaUYg98Pblp133Lj6nyvEp13yzMc
	cFBCr9g3APzmSvEJpmfR/hPIbvU4AkwFu/BwBTy9/PZKOrCrV+4Dr1ztl7oX2J8/NRV4
	liug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cJI/brkXgeRzyRH/UjZazMt3P9qswRxFCcT/yPOxk5Y=;
	b=LmvJ8eXssUk9ZGPjJwrHWNRHbEVSv1OZLn8G8euByd0+ymhHPkX4c4cc+aYDHE8I4y
	v98zG0Kn8363XtwqEjR40TPx7v2/axZo3y06mE/DsbhvEIdH2IaQdoAsLcJmn+ja0P21
	i8Aiw5GBqlRAGk4vc6g8bTu5+2zfVHKf64+2LXjJa09/2t3mgfQ4GvwdLegypGwye8BR
	KtOnHxMy7X5L0tNAcb5gdbCT0bg5HcfUPY7iHqCz/p3lVjHM97zxBDphBZm7zQF5pJ5G
	sDbYXvM9PpqA5v3Y4JNKIQ9QyKYUuO7YjUQBSoTM5pnq5s22hHxT6zzfBfwYdEphwu9k
	uELA==
X-Gm-Message-State: APjAAAV22Mjk4t3TUN+ZGkjgffCynwfoA2B2ywTafPDwPHI0zFx9FdKu
	jDfjZj5Ulmu+KVSrFuC2zDP95YHONJ3wshRz/gk=
X-Google-Smtp-Source: APXvYqz2F73Pc6bVuesYdoNgXal/n498vSc49C8Qp0DXB/kNEhPtNPN+gKEPY2gen1HOwf0KKx7HchdD6K7eGKFwFok=
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr8762163vsn.94.1565257566453;
	Thu, 08 Aug 2019 02:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
	<CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
	<CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
	<CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
	<CANNYZj-ubZWmoSpmtUnyjOq=i7=HfSFLMqQTxzQ1pg+XeP+qqw@mail.gmail.com>
	<CAA=hcWSYFaSON77L3tOdkwP2S8NbSQ5jmTDXKPr4mPNajMSmDg@mail.gmail.com>
In-Reply-To: <CAA=hcWSYFaSON77L3tOdkwP2S8NbSQ5jmTDXKPr4mPNajMSmDg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 8 Aug 2019 11:45:55 +0200
Message-ID: <CANNYZj-GL+jYrpY4LXUAd+Ucnc5JeO78sDU1_DNFmm4gDOmmJA@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Thu, 08 Aug 2019 09:46:07 -0000
Content-Type: multipart/alternative; boundary="0000000000003b02fc058f97ed37"

--0000000000003b02fc058f97ed37
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Aug 2019 at 10:57, JH <jupiter.hce@gmail.com> wrote:

> Hi Alex, thanks for your response and kind help. I finally fixed it by
> adding a do_package_qa() in my bb file. What will be the consequence
> about it?
>

The consequences are that you have removed all of the standard quality
checks on your recipe, so it may break later (at installation or at
runtime) in various funny ways.

Also, this would be rejected in pretty much any code review.

Alex

--0000000000003b02fc058f97ed37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 8 Aug 2019 at 10:57, JH &lt;<a hr=
ef=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrote:<br=
></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi Alex, thanks for your response and kind help. I finally fixed=
 it by<br>
adding a do_package_qa() in my bb file. What will be the consequence<br>
about it?<br></blockquote><div><br></div><div>The consequences are that you=
 have removed all of the standard quality checks on your recipe, so it may =
break later (at installation or at runtime) in various funny ways.</div><di=
v><br></div><div>Also, this would be rejected in pretty much any code revie=
w.</div><div><br></div><div>Alex<br></div></div></div>

--0000000000003b02fc058f97ed37--
