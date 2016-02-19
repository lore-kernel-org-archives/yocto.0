Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EEFCE00C7E; Thu, 18 Feb 2016 20:51:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65E2CE00C71
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 20:51:00 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id g6so30708957igt.1
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 20:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=jmBs5ftGK6sF5HqvEBzOh8T2dum62V6exduqLUAdx0c=;
	b=ta6kKEj38d3HdJxCh7XnJ14vHzsn3ZOS3sjeL1YbPn3ChP3iZlamIGmZAqxSZtxjZV
	Pt0XoGrWYvNl1hdKopfZjm4a5t8usVxw7e2GlyvkjqO1dLl+lfgmoZ0SPcFgAv0vxLSR
	O+3HfCHBxxHk6Weyi/2KC8BXCyTouUvfB4IHTuvCWdTrg8ms5exLz0FYVngkdMB818jh
	QPMIT00E/ORdFXJoQOn0+B6bpK5i86DWWuEadFJcD9bZz9fEX9tAA0RFJbD+HivIIOKY
	2e1ujrVCYLwWFhdvbX/aaXzR4pEIJooVkurnGbZPq24TKOIiC6SJN6t98jZLVEP7W6k9
	awZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-type;
	bh=jmBs5ftGK6sF5HqvEBzOh8T2dum62V6exduqLUAdx0c=;
	b=KQ9GuxnEHk7kNnSF2pqPP+jPGnRt4XavNWQH9AJN9d65AwpMf+BvCtE/Q2Wt7PlV9A
	3/pr7Etuup7Qs5mD82U6v4UFn0GY2aNuowv0IuZkdxIKdsG6dtzNHSw8VtKfH1zOpm5d
	p2qpreaeV4hw2KwDEKRIQ+oHrnc351Hb7qhVWkxtHAXLcDV7N3ihMorFWJmrIo5n0rPT
	86v36gQkBQXDA4R273oykgponRweuwjXLHIfwNlkOushNtSjT3ESZRsR3HCMcmMKtiFj
	rU88XtvU6XroFTYvxxVdMLsumx5uRWhKUAyiWAWmT/KCvOJTfYOrOpaLdEEVVlljxcdQ
	F3/A==
X-Gm-Message-State: AG10YORyKaSBtg0ilZUMFMmCc8pZUistkUsNmOR/nq5nqbEyPfHy+XWgCIDExeoKqBJHYp7ytnqXRFpMSc9Qag==
X-Received: by 10.50.64.179 with SMTP id p19mr7004716igs.25.1455857460021;
	Thu, 18 Feb 2016 20:51:00 -0800 (PST)
MIME-Version: 1.0
References: <CALLyC8SKmc0+7tMU8X6JwCriP9orCGvbVToFwgj6jytvpdd1GA@mail.gmail.com>
In-Reply-To: <CALLyC8SKmc0+7tMU8X6JwCriP9orCGvbVToFwgj6jytvpdd1GA@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Fri, 19 Feb 2016 04:50:50 +0000
Message-ID: <CABcZANnnUsryW0tPz5KckYtY4EDT80rqcJ_9Lrbd3=CtguQiww@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>, Yocto <yocto@yoctoproject.org>
Subject: Re: which package/recipe produces "ss" utility
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
X-List-Received-Date: Fri, 19 Feb 2016 04:51:02 -0000
Content-Type: multipart/alternative; boundary=047d7bd75cecbf8f3f052c183a42

--047d7bd75cecbf8f3f052c183a42
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 18, 2016 at 9:48 PM Vivek Per <pervivek@gmail.com> wrote:

>         Does any one know which package produces "ss" utility in yocto. i
> tried iproute2 reciepe which  is not present.
>

 iproute2 is in oe-core, look again.
http://layers.openembedded.org/layerindex/recipe/5516/

--047d7bd75cecbf8f3f052c183a42
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Feb 18=
, 2016 at 9:48 PM Vivek Per &lt;<a href=3D"mailto:pervivek@gmail.com">pervi=
vek@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr"><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Does any one know which package=
 produces &quot;ss&quot; utility in yocto. i tried iproute2 reciepe which =
=C2=A0is not present.</div></div></blockquote><div><br></div><div>=C2=A0ipr=
oute2 is in oe-core, look again.=C2=A0<a href=3D"http://layers.openembedded=
.org/layerindex/recipe/5516/">http://layers.openembedded.org/layerindex/rec=
ipe/5516/</a></div></div></div>

--047d7bd75cecbf8f3f052c183a42--
