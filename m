Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D079CE00C09; Thu,  1 Nov 2018 08:49:05 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB30E00A0A;
	Thu,  1 Nov 2018 08:49:04 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id n26-v6so14562292lfl.1;
	Thu, 01 Nov 2018 08:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ur5tvb+wVM5ka1nQqR0wU03QMc8ES2MqyoiDDZFpN1I=;
	b=k/1topItkPxiYAMfZxIDbN3EPKlbaGOZVOgU8gFxZZ9gsRP1XWsnniwdoiQzss9aD0
	hIzODND07d6RYFqOwn7vuvy0cLMR1jw5/ds2oqsDGEZ+ZvNRUyDiByxDPWFkFwnpRw8L
	NGos/QgU9GgKmyLwsyOdJa6rOfhiWxTAtAxXLHl4dLold8f7ve1qYVZ7Be6k6Am+IJv4
	5/ptzebmrK9ysRPNSWOnnG5kt+R3MgQ6upVfQPx35TWnmBGEt9zQwvFbMRTZCuv8URuS
	fBfYkwL+mrOsEay1QrJXLEJZS3OEcNmjn2wSzs52OLiLhlNr1rj8X4aiaz9ALPulkKvj
	ALiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ur5tvb+wVM5ka1nQqR0wU03QMc8ES2MqyoiDDZFpN1I=;
	b=PAX6SUN2b/4dItkehZEyA/cb+3MFRk9xqR5N0yGR7GJF5vLC1Qd/fYN5ETb0uAA0Fz
	Z6Bw/tL/ur4AxYU9SuynDzne8SGoNIeZTSK/doesaEGQ/kJlVsUlr6FQghhCNHOvGmce
	RSQ3tfJzf0ZMAy6OjQbzIQvX9VqDVOp1CBrWBV0td8aMe0jhkz1jfljmDLQkQQNxowZl
	FTyXv/3z+6uQCHT0H+HK8fkXGC0YJYnRjbBsucdKFRh0y6o6ey7/G3SWsZYpczMagYOD
	4JIU9V1vSPwpsLtWw7R/0S8ChuESS9QE354FYADhvmwAWzuvYf01lzc2uWa/UzsN8X+6
	NJhA==
X-Gm-Message-State: AGRZ1gJxj/g5ubVKsrCw7S4jhwEax0F+fbFs9h5d+POTiRFCtD3oZDpp
	1nf1lxIb/ktujV5fgbOoTIQPNQ5p6+F5h29Vejk=
X-Google-Smtp-Source: AJdET5f2gnXYP8kKsijqhVn1NVdD8+JbHLyLBsNubfGxqL4Cz6uS72ih0jElOCu3Q7aGFjInVWCDCxRPZuRIP3y2Xuo=
X-Received: by 2002:a19:5f1e:: with SMTP id t30mr4588053lfb.76.1541087343013; 
	Thu, 01 Nov 2018 08:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <20181101140417.GA12376@linux-uys3>
	<6b8e3db1-d7f1-8abb-dc79-c3fa1c03b97d@gmail.com>
In-Reply-To: <6b8e3db1-d7f1-8abb-dc79-c3fa1c03b97d@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 1 Nov 2018 15:48:51 +0000
Message-ID: <CAHUNapQP5JxaGu9XnOdHAvJOS3LXYs=2u5Mumty9s_uSXZY=bA@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
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
X-List-Received-Date: Thu, 01 Nov 2018 15:49:05 -0000
Content-Type: multipart/alternative; boundary="000000000000a613f405799c5b1c"

--000000000000a613f405799c5b1c
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 1, 2018 at 3:32 PM akuster808 <akuster808@gmail.com> wrote:

> Trevor,
>
>
> On 11/1/18 7:04 AM, Trevor Woerner wrote:
> > Please see time indices: 12:13 and 16:45
> >
> https://docs.google.com/document/d/1YDAHjIOXCIgvSZVOKCYLxa8h26dkruX8zspoge7zCpk
>
> Could you please give us a day's notice the next time so we can properly
> set the perms for our minutes.
>
>
Will do, sorry!

--000000000000a613f405799c5b1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Nov 1,=
 2018 at 3:32 PM akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com">aku=
ster808@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Tr=
evor,<br>
<br>
<br>
On 11/1/18 7:04 AM, Trevor Woerner wrote:<br>
&gt; Please see time indices: 12:13 and 16:45<br>
&gt; <a href=3D"https://docs.google.com/document/d/1YDAHjIOXCIgvSZVOKCYLxa8=
h26dkruX8zspoge7zCpk" rel=3D"noreferrer" target=3D"_blank">https://docs.goo=
gle.com/document/d/1YDAHjIOXCIgvSZVOKCYLxa8h26dkruX8zspoge7zCpk</a><br>
<br>
Could you please give us a day&#39;s notice the next time so we can properl=
y<br>
set the perms for our minutes.<br>
<br></blockquote><div><br></div><div>Will do, sorry! </div></div></div>

--000000000000a613f405799c5b1c--
