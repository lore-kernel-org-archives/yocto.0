Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D889BE00CE6; Fri, 15 Mar 2019 07:32:57 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ED23E00754
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 07:32:57 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id n18so6192209ljg.11
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 07:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Mt9XT371MDU8TXkoMQmgxyMrRbWLVKNV0HfNfkOHL9I=;
	b=bPUKYsB+Lo/hohgMXxMJMOeok/nDZa/Ne3Q7pNja99UqCKdoVXAHSJ9T5otxOkjy0d
	K7CM1PGM3nXzHJ5uxW0Ejun5dKSRNqabTEdrKvlSID8lm8xam24LuXykjb5jFQZxH1cY
	jt2yPRVQiUnyQktvHCXUWFIBfySmUhivlT7uClaC7EiavafKs2uNUa7QHR3yaO+4eNcf
	5TE5o2fGsOwl0lwQ+Ex9b7jYaqm9cqqAVcdfq1hFk8GDJ/szkHxwPgPprR61XJOhAQb+
	mKwiddRugu7QohWAktyNGMYst2U5s5eP8Q1ymcnZPQrLfXRxmEVfA39VeAaJ3Jt9jxHn
	Ribw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Mt9XT371MDU8TXkoMQmgxyMrRbWLVKNV0HfNfkOHL9I=;
	b=OCWSjVAJQZVrlygycBHcojbwCTDvKHPyT54wb4jW2zcqunXju1OB+7bWXmx6cxv72c
	KwCIyLFEDWWxtxSMRVldSKyMT+KtiFyR25EGd6q3/O6ZurGo4GSAMTem3JxUdiW7F6l6
	HI1RdnGo88SO6JiNnAwD8gED+KVfSgn3j+cyrTFWDaTH7b++Tmt9mZSfjlubNCPvFc+c
	tqZj4j9NBO+NgsHXt4v4F2HoiHx2pR0LGhTohSeO26Yr+U+TMDn1df/g0RCSKTB1ruKs
	Q4M1dx3iL9vLZ06J0yCThzOLTHvqBZYPM6MmEbpFL5XNxp7f1JpCM46shlqJm+NfgoGm
	UTnQ==
X-Gm-Message-State: APjAAAXlT1aOTh1NW88GQoDfHmrc/ByJ8E5Ay1Roqi4E5zF4AFMBg4c/
	GDhb/971QF6dD4OtOWeOTq/fWw+tq6NZRrpcFnymWA==
X-Google-Smtp-Source: APXvYqw2tFB62ExNJdsMYI9ImQu1AyIT/LMuJVDK9meUYoocDvN8cqXCEMNED56BfkMvwdaPeJzwNQNWn9ggtG3bj/8=
X-Received: by 2002:a2e:3810:: with SMTP id f16mr2329966lja.119.1552660376131; 
	Fri, 15 Mar 2019 07:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190315142753.GA10387@linux-uys3>
In-Reply-To: <20190315142753.GA10387@linux-uys3>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 15 Mar 2019 10:32:44 -0400
Message-ID: <CAHUNapStG=ZLWwJ9o1n4piceS3ffspW=9uyZBDxf19-=r_93Cw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: OE Summit report from SCaLE17x
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
X-List-Received-Date: Fri, 15 Mar 2019 14:32:57 -0000
Content-Type: multipart/alternative; boundary="0000000000002d1b5e058422ea35"

--0000000000002d1b5e058422ea35
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 15, 2019 at 10:27 AM Trevor Woerner <twoerner@gmail.com> wrote:

> I'd like to thank the OE Board of Directors who
> gave me permission to create and run a mini-conference on their behalf.
>

... and provided funding!! (without which this event would never have been
able to happen) So thanks to the Board for the funding, and to everyone who
has contributed financially to OE who provide this funding.

--0000000000002d1b5e058422ea35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Mar 15, 2019 at 10:27 AM Trevor Woerner &lt;<a href=3D"mailt=
o:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">I&#39;d like to thank the OE Board =
of Directors who<br>
gave me permission to create and run a mini-conference on their behalf.<br>=
</blockquote><div><br></div><div>... and provided funding!! (without which =
this event would never have been able to happen) So thanks to the Board for=
 the funding, and to everyone who has contributed financially to OE who pro=
vide this funding. <br></div></div></div>

--0000000000002d1b5e058422ea35--
