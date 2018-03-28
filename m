Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6938BE00C9B; Tue, 27 Mar 2018 23:48:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED9AE008D2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:48:42 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id j143-v6so1212900oih.11
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zkYBDGId/kRStnqhZ7eSZjWX90liQuzjQreUPJGp7+I=;
	b=YsRLxEj+4mTg7oIUnMEYhqBjTsu2uKdonkQG6jLLZXP2d6d+iJLswzWn8TtEzzQ9BJ
	Z3/ZGd31gT90xiDwOZAIBERlqVInh8iHvFeUZ9ucBvt5rCn2rqSryxdJ4eBFUs0agryi
	eVN/ykS1kpRsBhLdMyti19BiZYb8i/WffIOIBzDM1uIHxmkrOV3I6dUkq5KG1TMaZLR2
	P9rsBR0L8R+XI4Ul8mI1NOqd2Autr32AX4on+wvjg6Q99BwlbgwuYQSazV9k3IglbSgj
	5Maot6R3aXVIJuwGYSYjJpcvxxmJHp5koh92j8qUAwsFuIdxUOJ/gFw0JJG6Q6KaUVrJ
	dvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zkYBDGId/kRStnqhZ7eSZjWX90liQuzjQreUPJGp7+I=;
	b=Dcg8YNZk4AtgZjPQawjFWwFeMFx5V02i7zD0Qn9ThVbai7jnbfeiCN/UTKV0U8PFF2
	zULHZcvuUhOjrwfHN75QHkb0UnIBxg1dqRJuRAPCcNuBzXkriO4m/1puwvdys3vp6NQ2
	18xrffpp+AVvPLwx8vH6PkSIC2/Ky30nATJrPsBiY1XtsUrDalooeRslmb45z6H2jaxp
	P5RQkgazwQ4JAB+gs7GsIEAEn6gFrBzkGlp/8EMSIPebcPthex0DMztDVFt4JeWzJ9/3
	pF2GF4zE5cNPshQ7NVVyziltIHBusy7kgxBGD86/35Z2y0Gvkr2roZ8LK6Fy/mhE6Lgd
	QiKw==
X-Gm-Message-State: AElRT7Gy7N3fBL8GZI2dYYXGzIRuwusU8soTgQovoQ8b4/8fypVLvE8C
	jaBNJU+Y1qB3KJbetNHj8FCGNLU8cLQUNOYgNo8=
X-Google-Smtp-Source: AIpwx49uK9DB415f0NLI4PAUZMSbwWgW9FE+d0IzzQ6Hx7s4bS3PxbKCOt/zLD7OmNFcPmlamFvNZqA2qXApHFnxbdU=
X-Received: by 10.202.57.66 with SMTP id g63mr1263524oia.68.1522219721569;
	Tue, 27 Mar 2018 23:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <CALd6x_uezA39f9aRX_de7SrTCcdFUoLKW1_2URuVR_prMMhQsg@mail.gmail.com>
	<1521820243.3242.187.camel@gmail.com>
	<CALd6x_s20N1+cW6XmF0BE1g0UnONXq9i+m4_y5hVHg+Cic6gcw@mail.gmail.com>
	<1522160565.3242.241.camel@gmail.com>
In-Reply-To: <1522160565.3242.241.camel@gmail.com>
From: pawanKumar <pawan4749@gmail.com>
Date: Wed, 28 Mar 2018 06:48:30 +0000
Message-ID: <CALd6x_t74O2j8jR2=bANrofKzDJX5m9A5WEk9_0MFA52MDS=og@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
X-Mailman-Approved-At: Wed, 28 Mar 2018 04:00:53 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake failure:
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
X-List-Received-Date: Wed, 28 Mar 2018 06:48:43 -0000
Content-Type: multipart/alternative; boundary="001a113cc264c63c7d056873656a"

--001a113cc264c63c7d056873656a
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll look into it.
For yocto-2.5 M3 rc1 they have given as
bitbake -c fetchall core-image-sato
That means it is a failure.

On Tue, Mar 27, 2018, 7:52 PM Joshua Watt <jpewhacker@gmail.com> wrote:

> On Tue, 2018-03-27 at 09:19 +0000, pawanKumar wrote:
>
> Thanks for your tip.
> Can I use capital c in place of small c.
>
>
> Not quite sure what you mean. If you are trying to do:
>
> bitbake -C fetchall core-image-sato
>
> that doesn't work anymore AFAIK. I don't think there is currently a way to
> do a "force invalidate" (e.g. -f) with --runall, although TBH I'm not sure
> if 'bitbake -C fetchall' did that anyway. Perhaps someone more familiar
> with the recursive dependencies can chime in.
>
> However, I recently ran into a case where having -f apply to --runall was
> useful, so I have a patch in my contrib tree to add support for it. If
> that's what you're trying to do, I'm curious what the use case is? I
> haven't pushed the patch to the mailing list because I'm not sure if my use
> is actually valid.
>
>
> On Fri, Mar 23, 2018, 9:20 PM Joshua Watt <jpewhacker@gmail.com> wrote:
>
> On Fri, 2018-03-23 at 07:31 +0000, pawanKumar wrote:
>
> Hi team,
> When I tried to run (bitbate -c fetchall) it is giving error as
> "target do_fetchall is not found for image core-image-sato".
> How to over come this error.
>
>
> I believe fetchall was superseded by --runall. Try:
>
> bitbake --runall fetch core-image-sato
>
>
> Regards
> Pavan.
>
>

--001a113cc264c63c7d056873656a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks, I&#39;ll look into it.=C2=A0<div dir=3D"auto">For=
 yocto-2.5 M3 rc1 they have given as</div><div dir=3D"auto">bitbake -c fetc=
hall core-image-sato=C2=A0</div><div dir=3D"auto">That means it is a failur=
e.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 2=
7, 2018, 7:52 PM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jp=
ewhacker@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div><div>On Tue, 2018-03-27 at 09:19 +0000, pawanKumar wrote:</div><blockqu=
ote type=3D"cite" style=3D"margin:0 0 0 .8ex;border-left:2px #729fcf solid;=
padding-left:1ex"><div dir=3D"auto">Thanks for your tip.<div dir=3D"auto">C=
an I use capital c in place of small c.</div></div></blockquote><div><br></=
div><div>Not quite sure what you mean. If you are trying to do:</div><div><=
br></div><div> bitbake -C fetchall core-image-sato</div><div><br></div><div=
>that doesn&#39;t work anymore AFAIK. I don&#39;t think there is currently =
a way to do a &quot;force invalidate&quot; (e.g. -f) with --runall, althoug=
h TBH I&#39;m not sure if &#39;bitbake -C fetchall&#39; did that anyway. Pe=
rhaps someone more familiar with the recursive dependencies can chime in.=
=C2=A0</div><div><br></div><div>However, I recently ran into a case where h=
aving -f apply to --runall was useful, so I have a patch in my contrib tree=
 to add support for it. If that&#39;s what you&#39;re trying to do, I&#39;m=
 curious what the use case is? I haven&#39;t pushed the patch to the mailin=
g list because I&#39;m not sure if my use is actually valid.</div><div><br>=
</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex;border-left:2px =
#729fcf solid;padding-left:1ex"><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Fri, Mar 23, 2018, 9:20 PM Joshua Watt &lt;<a href=3D"mailto:jpewha=
cker@gmail.com" target=3D"_blank" rel=3D"noreferrer">jpewhacker@gmail.com</=
a>&gt; wrote:<br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex=
;border-left:2px #729fcf solid;padding-left:1ex"><div><div>On Fri, 2018-03-=
23 at 07:31 +0000, pawanKumar wrote:</div><blockquote type=3D"cite" style=
=3D"margin:0 0 0 .8ex;border-left:2px #729fcf solid;padding-left:1ex"><div =
dir=3D"auto">Hi team,<div dir=3D"auto">When I tried to run (bitbate -c fetc=
hall) it is giving error as</div><div dir=3D"auto">&quot;target do_fetchall=
 is not found for image core-image-sato&quot;.=C2=A0</div><div dir=3D"auto"=
>How to over come this error.</div></div></blockquote><div><br></div><div>I=
 believe fetchall was superseded by --runall. Try:</div><div><br></div><div=
>bitbake --runall fetch core-image-sato</div><div><br></div><blockquote typ=
e=3D"cite" style=3D"margin:0 0 0 .8ex;border-left:2px #729fcf solid;padding=
-left:1ex"><div dir=3D"auto"><div dir=3D"auto"><br></div><div dir=3D"auto">=
Regards</div><div dir=3D"auto">Pavan.</div></div>
</blockquote></div></blockquote></div>
</blockquote></div></blockquote></div>

--001a113cc264c63c7d056873656a--
