Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2505FE009D4; Tue, 22 May 2018 11:13:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.47 listed in list.dnswl.org]
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C37E6E00929;
	Tue, 22 May 2018 11:13:33 -0700 (PDT)
Received: by mail-pl0-f47.google.com with SMTP id c41-v6so11364064plj.10;
	Tue, 22 May 2018 11:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1ldzZL4iY+cLOulL7GfdljLOKnWSLZU2jX3q5cqJWQ8=;
	b=d85L/mSRzTtlzYfwgLr4aaj4tuXtnjjJdKP0VGi3NzxKls6YOwGDeguoJ4bbLfnR0x
	u1xcbJyXxI8gwmljPbGfNKi2k0XuIViUkQOqQknN6l0yU8x4X67S3rHnKRfz/kbceB+K
	RqYuA1LneK2Xf1Duvy9ZI16yqlXpW8IZo7i7juWjmaExtfbrmbgyUuYfwTuhkYtbSOBX
	MoMTo0NEScpedoJRt27QLqABUfZmUrC2uszVAydaTWl2/vwvknEPl43fF93MFRzy+afv
	U+tF8lW1w47B8mpo0ug4RCfIfKrsYe4fbr7m1m91XGKnK9HY0nB/AFYZhMVgakqs+uXB
	nvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1ldzZL4iY+cLOulL7GfdljLOKnWSLZU2jX3q5cqJWQ8=;
	b=TOWm7zQlcdojruPgU80InF1T/6u0UYnWxPDBkaGq5nUH/1J11fZT9tKPK2EOGcsnjv
	TylUfUjuf5HFB4iGuZWA7x3Z5Hm3BB97WkzlwwjpeW/x4IKCpJYuruDzQ0IoRn0NNxwP
	pvsN3UJmiX9WZJ767V4E4v5hk1emIapVNWcq8zXIokp54GIOXjJ3yuuPz56xpuh98dJc
	y6fPEJyh3oQiDtAQ1mqTYbn5MrioIrPJKqmDobDJWj+ZJofX7ZS+m4Sphr6WFy3pr0j+
	HDM4/z45hDd5Gk7hbB4yyM7t/AP+1Sqw1akb3GFdcU4QZHsS1AVjXxb26LPJSu0YtPWy
	ttoA==
X-Gm-Message-State: ALKqPweOOhujzURoF0KBow21zLzfGeq5/BUc7X5Gc6L1tvEmcdb/t/SH
	kAnB5AwophU/1YsigMfIdL3LS+GDZ+3oyWG0GY4=
X-Google-Smtp-Source: AB8JxZpsI5LxtEz9LgBug/07R7ncXnbf8EWbM78PJ9P88A72LEqHHM4kpFlTA2z8tvo/stukLt3T/vY/hOdRWmJOsrU=
X-Received: by 2002:a17:902:14d:: with SMTP id
	71-v6mr25696692plb.275.1527012813002; 
	Tue, 22 May 2018 11:13:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:8b91:0:0:0:0 with HTTP; Tue, 22 May 2018 11:13:02
	-0700 (PDT)
In-Reply-To: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
References: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 May 2018 14:13:02 -0400
Message-ID: <CAMKF1soptoUiZ+vJysm8gmabE_icQTO+Gbj4dSJJ6y_uq3rb8Q@mail.gmail.com>
To: techi eth <techieth@gmail.com>
Cc: yocto-builds@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto SDK & Toolchain Deploy Issue
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
X-List-Received-Date: Tue, 22 May 2018 18:13:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 22, 2018 at 12:23 AM, techi eth <techieth@gmail.com> wrote:
> I would like to use SDK=E2=80=99s & tool chain generated from Yocto to so=
me other
> PC. I see following difficulty while using.
>
>
>
> 1)      Path in environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi =
is
> hard code. Is it possible to have that is configurable.
>
> 2)      If I change path in
> environment-setup-cortexa8hf-vfp-neon-poky-linux- gnueabi script than als=
o
> it raise error while recognizing compiler.
>
>
>
> Please let me know hint for using tool chain generated from one machine t=
o
> other machine at any path.

I dont think these are reasonable ways of using SDK. The env script is prov=
ided
so you can have an environment to use the SDK correctly. I would recommend
that you look into the problem differently where you adopt the app framewor=
k
to use the environment given by SDK

