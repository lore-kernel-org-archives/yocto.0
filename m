Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA988E00BA2; Mon,  3 Jul 2017 04:42:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58102E00B58
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 04:42:09 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id 32so140919539qtv.1
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 04:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i2S7XG6Ll8qJfwxGgcSWs8Wefl42g+xe947BT90MAio=;
	b=oTW1N2Gp1bRXbkAzWJOar6MfipV8eiU9rTlkxbAbmyTN32tcf4hvuhwu9wIerykXZW
	dvt9yg3h7kZcLiPdsDsJIS9WiaXJSxPGF+BgdA+ZrEggXe5+mEhH8hM4Nif/cqfmKa89
	7QAsrC6HVIt8FhcOuLBJ15EwW3kygcXlQgvlrucCYiIDL+zr6yOKb2PBXvIunLAbZd1H
	YcFFjuhAg9X/Rkf/CeqvKwn/zR9QxzLMd1zSSQwb13egKoKuXqkzYN7WzdToppajogJ4
	WZSA30T/4QpuNhnj/bm5Uel+Jr/Cz0eYLXdVt8WtTSnMCUCGJ2NdIU+51xlQWzXArx3u
	xllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i2S7XG6Ll8qJfwxGgcSWs8Wefl42g+xe947BT90MAio=;
	b=QNm8OFilO7Jd2Hi9a+z9iq5gkFPRMQDJ6PudBbnmL3yZJbqUKXbG5gLDP5eiZ2mdJi
	TUtJ5VOO10Ze9BJVE0uF2xUHFQY72nV8mUkH2rpSZB4s8gpZHZB1MxO/iyWbGvatlJDG
	YGfQ+nzDJoqxm40JfAxe7FCfTr/WpSKlU9HkTXRsl49qzgqxVAd8mO9SY7RHiIYK9D0M
	gBBYh68HF2X0D9W+Zp6dzjzjPpGYtG8WWviKdQZqBpGuRMd43tKFc44I8ED8Y9DL1SOr
	a8WVCoyuHpIOOwwPlNdMjlaZF8a5SyF6T2oHStqU8NK6cde7vkYm9MYLaCiNfRC/+nK/
	8g3g==
X-Gm-Message-State: AIVw110kbp1RN4U/dZ5QPeQv7hL+N+oDhMygnDknnX8vy8HbPGj53dPf
	ajqCpribQY0OROjZh22oY3VAJZnz12XC
X-Received: by 10.237.55.105 with SMTP id i96mr17530287qtb.139.1499082129122; 
	Mon, 03 Jul 2017 04:42:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Mon, 3 Jul 2017 04:41:48 -0700 (PDT)
In-Reply-To: <031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
References: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
	<031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Jul 2017 12:41:48 +0100
Message-ID: <CAJTo0LbvaAe4Q4fozdAgFKmbsBvQpNwnxuN2eOo=ByHaUmjj6A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 03 Jul 2017 11:42:12 -0000
Content-Type: multipart/alternative; boundary="001a113cd018cbc0d9055368414f"

--001a113cd018cbc0d9055368414f
Content-Type: text/plain; charset="UTF-8"

On 1 July 2017 at 15:53, Khem Raj <raj.khem@gmail.com> wrote:

> >  do_compile() {
> > -          ${CC} helloworld.c -o helloworld
> > +          ${CC} ${LDFLAGS} helloworld.c -o helloworld
>
> perhaps doing compile and link in two steps where CFLAGS and LDFLAGS are
> used would be clearer
>
> something like
>
> ${CC} ${CFLAGS} -c helloworld.c -o helloworld.o
> ${LD} ${LDFLAGS} helloworld.o -o helloworld


Yes, we're also missing CFLAGS and CPPFLAGS, so either throw them all in a
single call or do the two parts separately.

Ross

--001a113cd018cbc0d9055368414f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 July 2017 at 15:53, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:r=
aj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt;=C2=A0 do_compile=
() {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CC} helloworld.c -o helloworld<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CC} ${LDFLAGS} helloworld.c -o h=
elloworld<br>
<br>
</span>perhaps doing compile and link in two steps where CFLAGS and LDFLAGS=
 are<br>
used would be clearer<br>
<br>
something like<br>
<br>
${CC} ${CFLAGS} -c helloworld.c -o helloworld.o<br>
${LD} ${LDFLAGS} helloworld.o -o helloworld</blockquote></div><br>Yes, we&#=
39;re also missing CFLAGS and CPPFLAGS, so either throw them all in a singl=
e call or do the two parts separately.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a113cd018cbc0d9055368414f--
