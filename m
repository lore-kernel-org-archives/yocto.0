Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5C07E00D21; Thu, 20 Dec 2018 10:45:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.42 listed in list.dnswl.org]
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66796E00950
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 10:45:53 -0800 (PST)
Received: by mail-lf1-f42.google.com with SMTP id n18so2136645lfh.6
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 10:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Nz9X2JGajPJWxFgArv+xMeyJot0J3m1Y+UuP65tsPxo=;
	b=XwXLlo3jD3IW1opMbwDucUBN/BWor0gfsko1T7UOv/35QHRB+4CetqE8CSbw4rSaXw
	JtJGXLLFcfIUOE8Spk75PD+oeHHR2v3P0qsdrD5FWQv5qEAL/6mBR19WrJQVwgrBG3it
	eOoU3llPKlnQGEfDCXiHL9AArhPcf6jH3L0wZ/TTftccxuEomimPTzOmHhI5Tr7zt0ag
	IBxxPuvRPOTdwXMOXcgSyR4yRNVc87iZjyrQA7+5xW3CP9HsYxDISu2rrAOftG8T9dWd
	CU9Yz3cqBrL5LJdPAQVZyc/DYahSOeKEsh/24rYTNqJP5HAkRzWztDOJpxKE8eLF8x6K
	7vHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Nz9X2JGajPJWxFgArv+xMeyJot0J3m1Y+UuP65tsPxo=;
	b=WGQzR69sWAucrpLWwwicqjLplOKB2P0IbJxZM66Y/yzfSykXjF6HAWMFOTAhv/cyGQ
	LpwWUUqQaXC4vBGGK72URvxh3TCKmMUnWqgi2CtUqW/cEf/jdnyOthE0V6x2JO3DoGRd
	+y8cx6RnYYuL3lZ1ElVK5XJ5j17lDcvslYotmWEj44sEMQ+KBjX37TAa3+YHIME7ux6i
	5kjZ9jvnSZ0z6tsNc3kp2i071Kc1BdZO4LEw1pK9A5f9G5VygfU6r6hD3h4Dhjzt65SY
	UkFjXXzNj/zomN2TbtgkoJV7yJ6lH/5iGxhgoyuwElaCOAEg8GemIf/Vr8KyXAR3CiD/
	NjXQ==
X-Gm-Message-State: AA+aEWZ+xZKX19/TwFR9iC3X6LP3i96I7s/gMvWWDtta51vg06DzsbG9
	LK0GsysW8oPvFStSJHxw8/dM9XTn+EJPAfcaISBAbVsO
X-Google-Smtp-Source: AFSGD/WNKO6F2VPgcwljG+ikLi9okd2lCNgT/Hrfb/17NUnWoat6gFh9i//Emqa7u1Rih/y0J399l/r07N+uG6BgZjA=
X-Received: by 2002:a19:3809:: with SMTP id f9mr5150234lfa.148.1545331551878; 
	Thu, 20 Dec 2018 10:45:51 -0800 (PST)
MIME-Version: 1.0
References: <CAMd7AX8y4PXgn-1eajtG8CxB7+SjyzdYCokEvwg3PAE+5HzyiA@mail.gmail.com>
In-Reply-To: <CAMd7AX8y4PXgn-1eajtG8CxB7+SjyzdYCokEvwg3PAE+5HzyiA@mail.gmail.com>
From: A <aaron.biver@gmail.com>
Date: Thu, 20 Dec 2018 13:45:40 -0500
Message-ID: <CAMd7AX-iC4cx3ko0Y7Wjb_W7Cbgc+nf5NX6AkBQconxtMPZ4CA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Question about temporary directories
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
X-List-Received-Date: Thu, 20 Dec 2018 18:45:54 -0000
Content-Type: multipart/alternative; boundary="00000000000035c0c7057d788a72"

--00000000000035c0c7057d788a72
Content-Type: text/plain; charset="UTF-8"

In the absence of any wise counsel, I am currently having all of my recipes
install into a temporary directory I created on the build host's
filesystem.  Then, I have one of my recipes create the filesystem image
with the contents of that location.

I'm not sure how portable this is going to be.  It would be less annoying
if I knew of a predefined variable I could use in the recipe (so I don't
have to go outside the workspace), but they all seem to be recipe-specific
or target-specific.



On Tue, Dec 18, 2018 at 1:27 PM A <aaron.biver@gmail.com> wrote:

> I'd like multiple "helper" recipes to contribute files to a temporary
> directory on my build host, and then a final recipe to combine them into a
> compressed file.
>
> But I DON'T want the helper recipe's files to get installed on the target
> system.  My goal is to have them put into a jffs2 image, which will
> eventually get flashed onto a target partition using JTAG.
>
> So, I suspect I would have to fly under the radar in yocto, having the
> helper recipes install something into the host filesystem, then have the
> final recipe know about that location.
>
> Any advice how I can do this as "properly" as possible in yocto?
>
> Aaron
>
>

--00000000000035c0c7057d788a72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In the absence of any wise counsel, I am currently having =
all of my recipes install into a temporary directory I created on the build=
 host&#39;s filesystem.=C2=A0 Then, I have one of my recipes create the fil=
esystem image with the contents of that location.<div><br><div>I&#39;m not =
sure how portable this is going to be.=C2=A0 It would be less annoying if I=
 knew of a predefined variable I could use in the recipe (so I don&#39;t ha=
ve to go outside the workspace), but they all seem to be recipe-specific or=
 target-specific.</div><div><br></div><div><br></div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr">On Tue, Dec 18, 2018 at 1:27 PM A &lt=
;<a href=3D"mailto:aaron.biver@gmail.com">aaron.biver@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">I&#39;d like multiple &quot;helper&quot; recipes to contribute files t=
o a temporary directory on my build host, and then a final recipe to combin=
e them into a compressed file.<div><br></div><div>But I DON&#39;T want the =
helper recipe&#39;s files to get installed on the target system.=C2=A0 My g=
oal is to have them put into a jffs2 image, which will eventually get flash=
ed onto a target partition using JTAG.</div><div><br></div><div>So, I suspe=
ct I would have to fly under the radar in yocto, having the helper recipes =
install something into the host filesystem, then have the final recipe know=
 about that location.</div><div><br></div><div>Any advice how I can do this=
 as &quot;properly&quot; as possible in yocto?</div><div><br></div><div>Aar=
on</div><div><br></div></div>
</blockquote></div>

--00000000000035c0c7057d788a72--
