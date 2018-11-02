Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B6EE00C10; Thu,  1 Nov 2018 19:27:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F52EE00A10;
	Thu,  1 Nov 2018 19:27:47 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id z80-v6so404428ljb.8;
	Thu, 01 Nov 2018 19:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OB6AVYbneTXXhfuNFlHSisnHONKjgmuzVNR3FiHsZoU=;
	b=TT4r7ydg8JuLvKmfmKzvrpnrZjC4cDjLtZl7WvCJBqKTJZkJ9ZGQKxgFZ9GH1ZwEKQ
	3YbajvtEMiMHPY9+lfaAe3DBE8s8TVKajzUFHEj6SYVKe4eWRCpQwDGbeSWRY7061Omp
	To1vgUwsl0t4B9vpL8BYMkz9eDXljd2Jt/IhEHt3ltAF6i7laOM4vbPgpAZJAD+bAfy5
	wYeEvoafy8kkYY6lFWNdguZfjDXKBMylhwMLdtX35sfxyTSzW6eEg88+hvVVpk3IHW1t
	ClRcYvmr+bKzMm5LkGv2LMv2s8ROrjFjB3VQihdN4TJ9PZ7t9fuz3t3hhARR62RxNLQ5
	JATg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OB6AVYbneTXXhfuNFlHSisnHONKjgmuzVNR3FiHsZoU=;
	b=Lt640nwppb71IaezvPqYysvPfBsjKHqgxGcfSBiJj2+KJtIp80CxA4XdUj5+lNDyO4
	MEXQWC1XYA6Uopasex5CkIJK04lRbuMZXrPhiOzER7ShcTkTQbe4cE7UJkBKZq5wGhzA
	OvkzSXT4ynyNJsOsTWU1colHUP7B8Cddx1TL/E/l9Z4/GNBilJJRtzM1eFh8BD70nn7m
	N4h8RA21YOLBA3fl0uNwjyEaYnlXIhzFgQ3Hxb57WLt8n8PswUwEqfnUyHtCZR/l7W+a
	NPsWY3BDDue1ukO1jNAmGMpm1psjvFEXY7aOE6x8yLutzC7JCEtwKYo4QSyk8U695l+l
	ZARQ==
X-Gm-Message-State: AGRZ1gLU4na4dUqnl2ml0aV4qTdXyw2mpl178y+J+V3YX7yhqT4kSyHh
	ge0+kCvMpzfQMhrt1GpkHxDmroF+P3U94l3iMrY=
X-Google-Smtp-Source: AJdET5eiaAVw66d1MlfdLiQixZWjncdfL/uMviBYTBsRimvedd14ZqKz4+vgeK3Kt8x5v0ZdovAKfTE8LsXRX3LFkh4=
X-Received: by 2002:a2e:63cd:: with SMTP id
	s74-v6mr6159137lje.117.1541125665794; 
	Thu, 01 Nov 2018 19:27:45 -0700 (PDT)
MIME-Version: 1.0
References: <20181101140417.GA12376@linux-uys3>
	<CAPoiz9y_prstnR5dsxHNwSk81ShLmkybEXySEESTgZrpgKXMcA@mail.gmail.com>
In-Reply-To: <CAPoiz9y_prstnR5dsxHNwSk81ShLmkybEXySEESTgZrpgKXMcA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 1 Nov 2018 22:27:32 -0400
Message-ID: <CAHUNapRrWkAGahwLgEzfbPSi2UhQCTqMSGQOAEp2Dxpi3MwRPA@mail.gmail.com>
To: jdmason@kudzu.us
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	yocto-advocacy@yoctoproject.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OEDAM @ SCaLE 2019
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
X-List-Received-Date: Fri, 02 Nov 2018 02:27:47 -0000
Content-Type: multipart/alternative; boundary="000000000000dd30af0579a54757"

--000000000000dd30af0579a54757
Content-Type: text/plain; charset="UTF-8"

Hi Jon,

On Thu, Nov 1, 2018 at 3:56 PM Jon Mason <jdmason@kudzu.us> wrote:

> I am planning on being at SCaLE (assuming the OEDEM happens there).
>
> Many corporate travel budgets are tied to presenting at conferences.
> So, if we could somehow get a track there (which might be too late in
> the game to do now), then we might be able to get enough people
> present to make it happen and pull in others whose budget is more
> flexible.
>

As it turns out, I'll be organising the YP/OE Miniconf that will most
likely be run on the Sunday. I was going to send out a separate email
discussing the Miniconf, but I guess now is as good a time as any :-)

While it's true that the CFP has closed for SCaLE, I plan to open my own
CFP specifically for the Miniconf, and I don't plan to close it until
closer to the conference itself. I want to encourage people to give talks
about current things, as such, having a CFP close this early wouldn't do.

We haven't decided on a format for the Miniconf, exactly, if we have
traditional talks, we'll have 6 sessions (2 before lunch, 4 after). But
depending on interest and what sort of proposals we get, we might do some
longer, some shorter talks.

 I hope this helps. Best regards,
    Trevor

--000000000000dd30af0579a54757
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jon,<br><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Thu, Nov 1, 2018 at 3:56 PM Jon Mason &lt;<a href=3D"mailto:jdmason@kud=
zu.us">jdmason@kudzu.us</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">I am planning on being at SCaLE (assuming the OEDEM happens there).<br>
<br>
Many corporate travel budgets are tied to presenting at conferences.<br>
So, if we could somehow get a track there (which might be too late in<br>
the game to do now), then we might be able to get enough people<br>
present to make it happen and pull in others whose budget is more<br>
flexible.<br></blockquote><div><br></div><div>As it turns out, I&#39;ll be =
organising the YP/OE Miniconf that will most likely be run on the Sunday. I=
 was going to send out a separate email discussing the Miniconf, but I gues=
s now is as good a time as any :-)</div><div><br></div><div>While it&#39;s =
true that the CFP has closed for SCaLE, I plan to open my own CFP specifica=
lly for the Miniconf, and I don&#39;t plan to close it until closer to the =
conference itself. I want to encourage people to give talks about current t=
hings, as such, having a CFP close this early wouldn&#39;t do.</div><div><b=
r></div><div>We haven&#39;t decided on a format for the Miniconf, exactly, =
if we have traditional talks, we&#39;ll have 6 sessions (2 before lunch, 4 =
after). But depending on interest and what sort of proposals we get, we mig=
ht do some longer, some shorter talks.</div><div><br></div><div>=C2=A0I hop=
e this helps. Best regards,</div><div>=C2=A0 =C2=A0 Trevor</div></div></div=
>

--000000000000dd30af0579a54757--
