Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1C02E0092E; Sun, 30 Nov 2014 20:45:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
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
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDB35E0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 20:45:35 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id rp18so8433761iec.25
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 20:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OuyJK/EOJjOrd9Th4Q9m1/qUkiRHF4rtklFJUZQWdXE=;
	b=JBSAUVJwM4YFHe2YjJInblx9t6DvYoFGYHEZumvzP2kOi9ks8irreH2vyIV7j9BBY9
	L7rQE2TIDkXkf0VGR2CB3rPZbRssIYUUq9pWI2R1EJxq4BReoJIgKhwMWlEmgeeO5see
	kP6oUkRjV+TuI6eJwmqF3VWv8/VvEX0K1xlVsEkPTxdE3VKgutjgLTQzqWzCgAjNZdKA
	2j68XYTwshlTkiuiFJRkr3UwJEd1TMD3v/B78hMGVO94+eLSph21a0ZD6MzjM+2zc/+T
	8L9R10URJ2lzMwxVLZQc5uN0qID4lI1ZP/lYbXUvJiXanlcpkvwdofbMV1MxzG0/1tq4
	Hjuw==
MIME-Version: 1.0
X-Received: by 10.43.119.131 with SMTP id fu3mr44732594icc.56.1417409134498;
	Sun, 30 Nov 2014 20:45:34 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Sun, 30 Nov 2014 20:45:34 -0800 (PST)
In-Reply-To: <547BE038.8030108@windriver.com>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
	<547ACF5C.8010403@windriver.com>
	<CAKGbVbuLb-fzeGp78NxWYysVru=cweptGcjq2AuzVath+DC57g@mail.gmail.com>
	<547BCC00.2070106@windriver.com>
	<CAKGbVbsNf6VbfcS+juDCiifr6Z0kYmyu32iNH=a9SOwt6248Dg@mail.gmail.com>
	<547BE038.8030108@windriver.com>
Date: Mon, 1 Dec 2014 12:45:34 +0800
Message-ID: <CAKGbVbvysuHY5V=0Fdu1X5FX1JPkYpF27X_GFPe54kRDOLdonw@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: When to create a new build directory for yocto?
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
X-List-Received-Date: Mon, 01 Dec 2014 04:45:44 -0000
Content-Type: multipart/alternative; boundary=bcaec517c9d8f69bac0509204704

--bcaec517c9d8f69bac0509204704
Content-Type: text/plain; charset=UTF-8

>
>
> It's possible that you are using (or might use) different layer
> configurations for different builds.
> One build might have a bbappend file that another build doesn't need.
>
Yes, you are right. I use different conf/bblayers.conf for different SOC.
But within the same SOC's different output
(board image, SDK), I just change MACHINE and SDKMACHINE. Is it safe to
build all outputs of the same SOC
in one build dir?


> Also, different builds may have different DISTRO_FEATURES.
> Thus, having different deploy directories is better. Otherwise, your
> package feeds might be broken. And you would suffer trying to maintain it.
>
You mean I can't build two output with different DISTRO_FEATURES in the
same build dir.
Any other config var? What about MACHINE and SDKMACHINE?

--bcaec517c9d8f69bac0509204704
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;paddi=
ng-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#000000"><div><br>
      It&#39;s possible that you are using (or might use) different layer
      configurations for different builds.<br>
      One build might have a bbappend file that another build doesn&#39;t
      need.=C2=A0</div></div></blockquote><div>Yes, you are right. I use di=
fferent conf/bblayers.conf for different SOC. But within the same SOC&#39;s=
 different output</div><div>(board image, SDK), I just change MACHINE and S=
DKMACHINE. Is it safe to build all outputs of the same SOC</div><div>in one=
 build dir?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><div bgcolor=3D"#FFFFF=
F" text=3D"#000000"><div>
      Also, different builds may have different DISTRO_FEATURES.<br>
      Thus, having different deploy directories is better. Otherwise,
      your package feeds might be broken. And you would suffer trying to
      maintain it.<br></div></div></blockquote><div>You mean I can&#39;t bu=
ild two output with different DISTRO_FEATURES in the same build dir.</div><=
div>Any other config var? What about MACHINE and SDKMACHINE?</div><div>=C2=
=A0</div></div></div></div>

--bcaec517c9d8f69bac0509204704--
