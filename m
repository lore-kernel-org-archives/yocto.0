Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E43E004E5; Wed, 18 Jan 2017 08:24:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.169 listed in dnsbl.sorbs.net]
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D129CE0049D
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:24:06 -0800 (PST)
Received: by mail-ot0-f169.google.com with SMTP id 65so12238726otq.2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tTi0gTUYYlBmv9MxAhAH7wi1Z/DmZkylP3cjao95cic=;
	b=coPsmjeV65CReT+Ob3FBXl/+ihiwaJxussXkcbfrKT++WcXTGZp6fl9yRFft6mw2K9
	27IE9WblnffPZYbgEP59S+9DK/JqNHUjvRjELzz+vo6qsbN4aTI8+IBWgbxuz22JGktO
	Pz6KOyGLRRSmrGd0+C/bastxbE71R4P3IyIP5HnUBriye+2RRID66H2ck1+945zTETC+
	ONFIJZ2HePaUaRttBlmL8wdsk6Kea+zGVUGcjf6lE8edjU8VDqy3uCXb5bxd5y9my3Y8
	thqCK9RUL1hHqoUnnRHRKg8dPTRa/CVlJwq6CpfrYZ9KOiuyFw9ITEQnMFbf2pvc24e2
	r40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tTi0gTUYYlBmv9MxAhAH7wi1Z/DmZkylP3cjao95cic=;
	b=Uy64FFxM2aBFvdU/89wVd8bMiXolU79Y/qQB6qrye6vsQ5IGORT6W02bio6aWoCL+T
	5EL3SpVwz/OM8xnkJ1NQmcjSwqWCgy75N8XYjMocaPvoVkM3qIwIDjGKhWeL4j2n2pwD
	heS93qfRqwA/OWHWp2TKGQVedMWw6nc1ygrdWNWNXjEr54vmkD5c3xsSX0FSgvo3nZy1
	MQXSM5ZqOhOoRZM0DFrwGKkR7d+rz35FP5da1FwB9fBFARKrIWOmwt7lRLXMtYB7Csqd
	FXUN0btFFGQxE+2wHrwG/ko1tJrn9vi2yTpiT6xKN614t5ppU7sFz+QDZhwV0OvNedFf
	afOg==
X-Gm-Message-State: AIkVDXIOxjSAvNTq6TjXM7lfpqcLSR42mTTSHpQNmkaCNvZORIzVz4rcR7dNIv5NcvEQVR0NGZ0kdRG6LWjj+A==
X-Received: by 10.157.38.165 with SMTP id l34mr1898422otb.97.1484756645898;
	Wed, 18 Jan 2017 08:24:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Wed, 18 Jan 2017 08:24:05 -0800 (PST)
In-Reply-To: <20170118154024.GA31825@carbonA>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
	<d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
	<E4828DAD-529B-4C43-A13B-67096B6741EE@paulbarker.me.uk>
	<20170118154024.GA31825@carbonA>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 18 Jan 2017 17:24:05 +0100
Message-ID: <CAMjhiJiDszPCeLvBn1Hoopu99Ot5BGMm-7pFRUWv+TpQka9Cqg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto List <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Wed, 18 Jan 2017 16:24:08 -0000
Content-Type: multipart/alternative; boundary=001a113ce6fa7500d7054660d880

--001a113ce6fa7500d7054660d880
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 18, 2017 at 4:40 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
> Based we should only keep 4.4 and 4.10 (or 4.9).
>
> Ane comments before I proceed? :)
>
>
I think keeping 4.9 (Long Term Support kernel) for sure.

 Regards,

Leon.

--001a113ce6fa7500d7054660d880
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jan 18, 2017 at 4:40 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Based we should only keep 4.4 and 4.10 (or 4.9).<br>
<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Ane comments before I proceed? :)<br>
<span class=3D"gmail-"><br></span></blockquote><div><div><br>I think keepin=
g 4.9 (Long Term Support kernel) for sure.<br><br></div>=C2=A0Regards,<br><=
br></div><div>Leon.<br></div></div></div></div>

--001a113ce6fa7500d7054660d880--
