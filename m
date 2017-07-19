Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E25AE00BC0; Tue, 18 Jul 2017 21:07:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DB35E00BC0
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 21:07:40 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id 5so23754827iow.0
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 21:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=rbPu9i4eGTcmau3DoK7a5i3ttemDUuQTJq9gDGNFAKY=;
	b=VDedO27MWwTDECMjl9Quhzv006DVjBLUMthNjwL/vH83OQMIZG1z2D2PJhNqGRmAia
	GRZMflHoMOEtzgW5UXib2jR5NUgzBNso2q2Xg4fT4JEGQowmVPIwpR5PgMXbeuIi39rH
	I9RcQbqwCZ2FMgSlG3WwKiFpfS/9yo/DubQMQs7zkrq8tlua1RtnMT2ud5k5pp94SCwb
	3CDW60BFrkgKuDQJdOJ13KnSFBC+XfHWC+oz5O8Nv5pWWeSMJXAZB9hhkF3c0/IFB3YI
	EE+2/soTTmXSBSi+pJg/nAWg7CxxsifNlqta54X+IOADUldTlRvR9hqRlw2SvmzI3e4u
	mFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=rbPu9i4eGTcmau3DoK7a5i3ttemDUuQTJq9gDGNFAKY=;
	b=mxiEIEhb8Sc5sewcPCdeWrIJfAa/cDIf2U1GR8sKUeSp0TMbcB3B2eU27M7zi1m1dk
	UtXhNLP+DMmgKqI5heyOC6TgmfpN3bs08QPY0XN4JYevwfRn3TPCT8KZqbw5nlISmhhQ
	M2pQVqF86sEQhNDhr8oj2a4ovtIf1ZuyaEyk1PC4BSDs/x+0c4O7hHhdjScJmdYP3dNv
	SHj1Di8wpOXQRBSz0vHgcXsw7dmASah3ZpsnwWFCg1zaS3vKgCOwXny+ZIRCS5PfNBXm
	5XmC8PIL8B3gD7GT2jnKf/Vb9pmr5+P5yXKQJ/eQ1fpAY1he4GxObb9VMj2F+YRH/4lD
	GRUg==
X-Gm-Message-State: AIVw111zGnfTXU4g+i/qKDhpMkC0gi6rnv9m06zZcnstsgcWrmDx4Giu
	w0nvFGTzlj3IGaSJBlR92fnYMEMMEEGw
X-Received: by 10.107.173.15 with SMTP id w15mr601473ioe.99.1500437259685;
	Tue, 18 Jul 2017 21:07:39 -0700 (PDT)
MIME-Version: 1.0
References: <5500469A22567C4BAF673A6E86AFA3A40295F0863A44@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F0863A44@IR-CENTRAL.corp.innerrange.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 19 Jul 2017 04:07:28 +0000
Message-ID: <CANx9H-A1FjvhvjQTvneTJdjOjez550jwx=LyD=x3fgeXHEg_yQ@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3-jinja2 missing package dependency
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
X-List-Received-Date: Wed, 19 Jul 2017 04:07:42 -0000
Content-Type: multipart/alternative; boundary="001a11446e9adf21b20554a3c5cd"

--001a11446e9adf21b20554a3c5cd
Content-Type: text/plain; charset="UTF-8"

Can you submit a patch please? Thank you!
On Tue, Jul 18, 2017 at 5:15 PM Craig McQueen <craig.mcqueen@innerrange.com>
wrote:

> For the python3-jinja2 package in meta-openembedded meta-python, it should
> also have a dependency on python3-numbers.
>
> I'm not sure if this dependency also applies for python-jinja2 package.
> I'm just using the Python 3 package.
>
> --
> Craig McQueen
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11446e9adf21b20554a3c5cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you submit a patch please? Thank you!<br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Tue, Jul 18, 2017 at 5:15 PM Craig McQueen &lt;<a href=3D"=
mailto:craig.mcqueen@innerrange.com">craig.mcqueen@innerrange.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">For the python3-jinja2 packag=
e in meta-openembedded meta-python, it should also have a dependency on pyt=
hon3-numbers.<br>
<br>
I&#39;m not sure if this dependency also applies for python-jinja2 package.=
 I&#39;m just using the Python 3 package.<br>
<br>
--<br>
Craig McQueen<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11446e9adf21b20554a3c5cd--
