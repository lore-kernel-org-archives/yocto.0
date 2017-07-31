Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB48E00C3C; Mon, 31 Jul 2017 06:14:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 822DEE00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:14:52 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id e124so223015404oig.2
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YdjgWi517qhcS7pCJpyQWY/83oynIV09cIi7ONhhWdQ=;
	b=PlyHqLcrexky/Sxf8ykwTtqPw7cOieBiFKq+COOO147W9u/E+ms2PGeVVkX+bXg7Pm
	+lJJetG+4ANyWcVxkRl6CDuYYgq1zcpS3+5z8m/oqV4rhwMpnfIWGQ0hfXej2zLALEf3
	jdt963g5z6Hgl/tV+ScrWTUdRuOhqnGELLtoBtNfZdIrxlb+R2BTmv7PjvzocsQJi1Ux
	SG32T2Oe2jHg33cfpbVu6OwifqW5rUoU78YKrZ2TE0nSIXnBkA1QZAg8NzaefZllP9oX
	/29JSxXcEI7FTOoOZPV07im3V/guSFA5OqYzhF/WxWiQrzPovKCTLncZnRb3qnuUs6s6
	yQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YdjgWi517qhcS7pCJpyQWY/83oynIV09cIi7ONhhWdQ=;
	b=IR8OodfvVD6RDGTpphh5cuSluu0eWdEsSN9uwnIUa1BjB8V8T6Ff9yPa9bNEWQfzoo
	ZETIuYyvf6UKcvolBTt/u2rLWsfm/lj9gZucXebfkJlDivYC5UiaYVqfoXBFTs1aRPZg
	MsvvZJgq077R68AKJsKwoW4ygngHBtxU+3aA8aAE95GWTOQ7guHJtEEaGFUD5jxMbYsY
	V1GaHoIb9pM8U9nUf38zcIUJvkUHlA0NH+nRuLJpX8GMMmkPi0XcOBkvUsoIHOP2iBOz
	IFAt8znDaRnG3ysCjdz6H+b7nhdzVZ/elR0siS9Ic/jXGiwcds9E6VY4GKkMeiUYeS9Z
	xqLA==
X-Gm-Message-State: AIVw111Xe0/9gD4dIjyA5zyqn9OlIaMZcUZt8dDe379K+6KJopLT/shI
	4CnvyHLZ4VCjBtZK7keLkTDgHwxJQA==
X-Received: by 10.202.198.199 with SMTP id w190mr13096803oif.93.1501506891624; 
	Mon, 31 Jul 2017 06:14:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.12.89 with HTTP; Mon, 31 Jul 2017 06:14:51 -0700 (PDT)
Received: by 10.74.12.89 with HTTP; Mon, 31 Jul 2017 06:14:51 -0700 (PDT)
In-Reply-To: <CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Mon, 31 Jul 2017 21:14:51 +0800
Message-ID: <CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Mon, 31 Jul 2017 13:14:53 -0000
Content-Type: multipart/alternative; boundary="001a1134fb24e73a6705559cd099"

--001a1134fb24e73a6705559cd099
Content-Type: text/plain; charset="UTF-8"

How can I see my branch?
On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:

> On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>
>> Is my auto make disabled with icecc ?
>>
>> How to make it enable ? thanks.
>>
>
> That's just a debug message.
>
> > | help2man: can't get `--help' info from automake-1.15
> > | Try `--no-discard-stderr' if option outputs to stderr
> > | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>
>
> That's the error your hitting.
>
> I think you need to update to the latest commit for the branch you're on,
> there was a problem with modern perl in help2man.  What release/branch are
> you using?
>
> Ross
>

--001a1134fb24e73a6705559cd099
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">How can I see my branch?</p>
<div class=3D"gmail_quote">On Jul 31, 2017 9:12 PM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt=
; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">On 31 July 2017 at 03:33, Riko Ho <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:antonius.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>=
&gt;</span> wrote:<div class=3D"gmail_extra"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Is my auto make disabled with icecc ?</p>
    <p>How to make it enable ? thanks.<br></p></div></blockquote><div><br><=
/div><div>That&#39;s just a debug message. <br><br>&gt; | help2man: can&#39=
;t get `--help&#39; info from automake-1.15<br>&gt; | Try `--no-discard-std=
err&#39; if option outputs to stderr<br>&gt; | Makefile:3687: recipe for ta=
rget &#39;doc/automake-1.15.1&#39; failed<br><br><br>That&#39;s the error y=
our hitting.</div><div><br></div><div>I think you need to update to the lat=
est commit for the branch you&#39;re on, there was a problem with modern pe=
rl in help2man.=C2=A0 What release/branch are you using?</div><div><br></di=
v><div>Ross</div></div></div></div>
</blockquote></div>

--001a1134fb24e73a6705559cd099--
