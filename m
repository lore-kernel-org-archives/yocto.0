Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46402E00B27; Thu, 13 Apr 2017 16:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CE3E00A16
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 16:10:11 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id v3so56785494qtd.3
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 16:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+tCltSomDuYSm7AmkdGOrIimiaRw0PLO6JGF8xZzn5I=;
	b=rzYQBEJbzYe1WY7+qvflwZfvjV61U/bHULCeime/9DtLQnEcCBBV5Hp9RmGslb8gRI
	aeES1lr4NGfRx2TBIGSbl9NbXoj31SkRQJShKyc5NluTe2wg7ZxU2AM2QzlWKcHoBnbd
	9gfey3JfdYE6K6SW+B11iH6aJfScZzUxGEtRv+sN3h/0uegZsPj12I67fWOqfRkxdHsv
	BzAN91WOSrgaBEHPZEtWZL2kNuzkObWjBrcshibmnRhQe6XwiRPYEgQg+KqUKZ51NE8k
	AVW+OQB6rWuwcrsmI5eBC0ivex8nEVc3rxUN5uI615ubwqBETlFogA8rCFoHoUDO1ktl
	jPLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+tCltSomDuYSm7AmkdGOrIimiaRw0PLO6JGF8xZzn5I=;
	b=tVd5B/NGoP6IrZXc04yNKzS3goFU498U+K9R8y98EtlWsyqByE3qKxeq9yohXW7YIJ
	O9HPpFayg8B/MlbMxbxUQENbxJCx4SUFmGI4Vj3JKXOg3v8aj7qKtkgal18VgdnMGvII
	2MQcODKlWQ00vVagpwx0G2tUdSluEoZiyNaU9yD9thguls092ZDcopIubh5Tst0l0ius
	QNZv3SCXEPBbRq+0xFKglKa6YAODtK+5kfm/XpSulww1sYcuCUHxZhGbniBnIIWK4zQs
	r04UhKcQHW1B5aFFd5vRHztnZVvF6tN6DD+vgC+nBU+GmWxv8286vUJIPiwJmfxiu8EO
	mYmw==
X-Gm-Message-State: AN3rC/6nlaCvFOZYZB4DeG5oHGtyHegRqmpDRYQIH99x1Y3TLWVHYU+j
	Y7cMNWr3sK5lrcb62Qj+jNMYeYt/ncGg
X-Received: by 10.237.42.164 with SMTP id t33mr5321761qtd.105.1492125011049;
	Thu, 13 Apr 2017 16:10:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 13 Apr 2017 16:09:50 -0700 (PDT)
In-Reply-To: <63327293-f410-0ef4-f64f-ccb8e1f77545@t-online.de>
References: <63327293-f410-0ef4-f64f-ccb8e1f77545@t-online.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Apr 2017 00:09:50 +0100
Message-ID: <CAJTo0LZdTsHP+hcSM74ELOfLqxhFWmunnr7SLFywCLokmmuKuw@mail.gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unpacking deb packages
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
X-List-Received-Date: Thu, 13 Apr 2017 23:10:15 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe223e9569054d146df3

--94eb2c0cfe223e9569054d146df3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 10 April 2017 at 14:32, Markus Volk <f_l_k@t-online.de> wrote:

> i=C2=B4m building  for x86_64 using the recent master branch and encounte=
r
> problems when fetching deb packages.
> With any .deb file inside SRC_URI the task do_unpack stops with this
> output:
>
> ... data.tar.xz && tar --no-same-owner -xpf data.tar.xz && rm data.tar.xz
> failed with return value 2
> if i  retry building the same recipe for 1-5 times without any change the
> task sometime completes without errors
>

My immediate hunch would be that it can't find a xz binary inside the
native sysroot as it hasn't been written in there yet.  Can you provide a
minimal recipe to test?

Ross

--94eb2c0cfe223e9569054d146df3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 April 2017 at 14:32, Markus Volk <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:f_l_k@t-online.de" target=3D"_blank">f_l_k@t-online.de</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":2cn" class=3D"a3s aXjCH=
 m15b58182a5a76c24">i=C2=B4m building=C2=A0 for x86_64 using the recent mas=
ter branch and encounter problems when fetching deb packages.<br>
With any .deb file inside SRC_URI the task do_unpack stops with this output=
:<br>
<br>
... data.tar.xz &amp;&amp; tar --no-same-owner -xpf data.tar.xz &amp;&amp; =
rm data.tar.xz failed with return value 2<br>
if i=C2=A0 retry building the same recipe for 1-5 times without any change =
the task sometime completes without errors<br></div></blockquote></div><br>=
My immediate hunch would be that it can&#39;t find a xz binary inside the n=
ative sysroot as it hasn&#39;t been written in there yet.=C2=A0 Can you pro=
vide a minimal recipe to test?</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></div>

--94eb2c0cfe223e9569054d146df3--
