Return-Path: <ap.sihvonen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34E66E0091A; Fri, 13 Sep 2019 19:46:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55EB6E0082A
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 19:46:32 -0700 (PDT)
Received: by mail-pf1-f175.google.com with SMTP id w22so19212544pfi.9
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 19:46:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=0wPwNl5rhATRYRrnJcL7/Gy64LjWohN20aNH43H3AJA=;
	b=Gm0WbBNq/t9WVZ6oIs9q3Z/L+Sc/ngYccq8O/DTivP84sGKgHv/++N7TFLRF0GyIaS
	n59j1GILGsFxb8S3Xl4AE8rdhEgNcwzeuCwwYf2eaTpDCaJ7pf6CEljJZ3X/lMFFuEhC
	bjEszK3eB6EpSE7A2Eb3h3ifAToUp9NJkmzb47rHJfrvBWPXZbbcGtXsCDAC3H5fO/LE
	aX8YkeoUYM5HFvNBlifwz7aXzzQbVYkUWZRAv+Z802fnoJFMPvek3J6nkjBy3c9bSSDn
	EIgx5q2CrYXiFwTjZOxFrtWbJDhsNl0SrkCKg/vYuHtGPbsNiBiSpKH5o9B+HusiMbbo
	3n6g==
X-Gm-Message-State: APjAAAVR2KFiUnx/E/jAxPLWg7H2HBFO8IJsHiKGabPw8Rz6Qt4broT4
	py95NxAIfiqsA2sKVNtZuQ8FASyNCnWNoufN89iA+A==
X-Google-Smtp-Source: APXvYqytauptzL3XGcOAdNrdiwMEjfaOBItpNOtH/NqYdk9PDA0CAI0x2rfxGe8IzPk4GVvm97G6T/bOWuATuJ91urg=
X-Received: by 2002:aa7:8bcc:: with SMTP id s12mr59308716pfd.93.1568429191495; 
	Fri, 13 Sep 2019 19:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <c875b530-6d7e-96c8-f93a-fb6cf801b338@linuxfoundation.org>
In-Reply-To: <c875b530-6d7e-96c8-f93a-fb6cf801b338@linuxfoundation.org>
From: Ari-Pekka Sihvonen <asihvo@iki.fi>
Date: Sat, 14 Sep 2019 05:46:20 +0300
Message-ID: <CANbFEgR9wSP8ncDp26bUPzio506PDQhCXVR4C3JX-LupF743tw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Hi, I migrated from sumo to thud an I am having serious difficulties.
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
X-List-Received-Date: Sat, 14 Sep 2019 02:46:34 -0000
Content-Type: multipart/alternative; boundary="000000000000d0869505927a60d0"

--000000000000d0869505927a60d0
Content-Type: text/plain; charset="UTF-8"

i have raspbertyoi3 and I had working sumo build environment. When I
changed to thud all fell apart. I have custom config.txt and cmdline.txt
and at thud I have no possibility to make them custom the baking stops
whining that the file is already there. What evere I do Yocto complains.

Any ideas.

BR AP

On Sat, 14 Sep 2019, 02:12 Michael Halstead, <mhalstead@linuxfoundation.org>
wrote:

> This Sunday I will take the Mailman mailing lists offline for updates in
> preparation for the platform change. As part of the update I plan to
> change the list addresses to their new dedicated domain
> @lists.yoctoproject.org so we can start changing addresses in the
> MAINTAINERS files and elsewhere.
>
> Moderators, thanks for helping by clearing out the queues in advance. If
> you have outstanding moderation or trouble clearing your queue please
> reach out to me.
>
> I will send a follow up e-mail with a new time line for the platform
> change after these updates are in place.
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d0869505927a60d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">i have raspbertyoi3 and I had working sumo build environm=
ent. When I changed to thud all fell apart. I have custom config.txt and cm=
dline.txt and at thud I have no possibility to make them custom the baking =
stops whining that the file is already there. What evere I do Yocto complai=
ns.=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">Any ideas.=C2=A0</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">BR AP</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 14 Sep 2=
019, 02:12 Michael Halstead, &lt;<a href=3D"mailto:mhalstead@linuxfoundatio=
n.org">mhalstead@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">This Sunday I will take the Mailman mailing lists offline =
for updates in<br>
preparation for the platform change. As part of the update I plan to<br>
change the list addresses to their new dedicated domain<br>
@<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">lists.yoctoproject.org</a> so we can start changing address=
es in the<br>
MAINTAINERS files and elsewhere.<br>
<br>
Moderators, thanks for helping by clearing out the queues in advance. If<br=
>
you have outstanding moderation or trouble clearing your queue please<br>
reach out to me.<br>
<br>
I will send a follow up e-mail with a new time line for the platform<br>
change after these updates are in place.<br>
<br>
-- <br>
Michael Halstead<br>
Linux Foundation / Yocto Project<br>
Systems Operations Engineer<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>

--000000000000d0869505927a60d0--
