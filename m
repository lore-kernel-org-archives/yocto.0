Return-Path: <jon.szymaniak.foss@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32D2FE00950; Mon, 27 Aug 2018 20:18:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7FBE00939
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 20:18:37 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id l143-v6so83229vke.1
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 20:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:sender:from:date:message-id
	:subject:to:cc;
	bh=VgsbXlShTj0GSRlHoBUg29Fx/Yo2a5H3lAvmC35fP2c=;
	b=FIy2MNcOFX+3iDWPnEfzd9ooyZYqUieNATzTNjMMYPB38LYR80LrDfZ9RTJoLZGpPk
	vTtHwJ3Qs6LO+si90TWNUzQ1T10mTn2yyVJkKxtBQX1RmYWDcx0wxvLHKnmSZDcJ9nuB
	tUDhP9XBcRZRG+OIdRfp7DIQeIGkl5/AWenaj6mpFJZJvPbzxmoiQ3rAo4uKRXLytbMK
	8+9Jt0I2pSJMZCTCUNqmpziUJCheNq98UpW83UNWBKn60MiysbaTDiUydSSSQ5VKy+f3
	mD+fEsEQIuqwGxxoc7CeS/fFtP7V7EXUA63WFpmVn6Hx39jOUIwwe0BQJK007edgQXXy
	8PYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
	:date:message-id:subject:to:cc;
	bh=VgsbXlShTj0GSRlHoBUg29Fx/Yo2a5H3lAvmC35fP2c=;
	b=LBxFz+FioT5OylYjSMa1wF/rlxwyi4veEJi7jTNG8J828Ma6dfq8DnjftUKg0jxYgI
	+tsyhLRt3EH/xLgbnOup5EdoP93qvze9WjcgL4c4o0u3OKcz9XE7lENpFW0Qx0YGMnhX
	9KpkE6OtlDwunJvm7RNKCWudHneencmBChHgZB96VeqRBzdF7dHQfRoI5LcMTjmUwpXH
	P9doD8zY0oAAlrcYpvkYl6Di6fnKGo26bjHvZOv8Yzi+RrP4c/YBiUIHTT51EegMBNQ1
	YojwLscm7fIlHDuLYO+RH0njYLBojU1wxIfC0cDEF+jjBUpJBWVz07cEpBdRzn2DDy7j
	+1IA==
X-Gm-Message-State: APzg51CKfR5Ycojwej9TGo+QfdTFx9jRIPRqJ1/jWw9F8ojMr5EQOrMo
	CYCkLQJII6YU4kulx/9QSriTehM+vZd024DSdN4=
X-Google-Smtp-Source: ANB0VdZ0HQEcMUJorPn0Fmmoe+gttPy8iD/x1dP8M5y8qVywpLGDrXFotHuTHGFTN6sJpYdeLEoFo94YQ2cxQ4YMb30=
X-Received: by 2002:a1f:fd4:: with SMTP id
	203-v6mr2480029vkp.118.1535426316737; 
	Mon, 27 Aug 2018 20:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAPC-RGmuQF54sdp8q6LLzt1VxhyoZFpeV63RQ6ot_GQoRe3=uQ@mail.gmail.com>
In-Reply-To: <CAPC-RGmuQF54sdp8q6LLzt1VxhyoZFpeV63RQ6ot_GQoRe3=uQ@mail.gmail.com>
Sender: jon.szymaniak@gmail.com
X-Google-Sender-Delegation: jon.szymaniak@gmail.com
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Mon, 27 Aug 2018 22:18:25 -0500
X-Google-Sender-Auth: 7PQ8IOnbHTJ_9YYK2J5W75SceWg
Message-ID: <CAPxrFVmyG=jgYNN0jMGQ1MTmjvFMpPmLhrpvhJWrCTUJd8rXjg@mail.gmail.com>
To: bryan.fishell@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Tracking changes in image
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
X-List-Received-Date: Tue, 28 Aug 2018 03:18:45 -0000
Content-Type: multipart/alternative; boundary="000000000000301e6f0574764c90"

--000000000000301e6f0574764c90
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 27, 2018 at 10:13 Bryan Fishell <bryan.fishell@gmail.com> wrote:

> Hi,
> I want to be able to track different parts of my image, accessible from
> within userspace so I can programmatically (via an environment variable or
> something) what version of my patches have been applied. Ultimately, I want
> to be able to answer questions from the field to know 'what changed' in a
> deployed image. Is there already a method to do this? For example, our
> project has u-boot, a zImage and rootfs. Is there a way to tell the patched
> version (from my layer) for each of those so I can connect what is in the
> field to what is in my layer in version control?
>
> Thanks in advance
>
> --
>

Take a look at the documentation for the Build History feature. I think
that may be a good starting point for you.

https://www.yoctoproject.org/docs/2.5.1/dev-manual/dev-manual.html#maintaining-build-output-quality

Ultimately, the Build History provides you with the "what changed" in terms
of build artifacts, which you can then trace back to individual packages
and recipes.

On the other hand, version control of your own Yocto/OE layers (which has
nothing to do with build history) should capture the "why was X changed".
 Of course, this requires that your organization uses version control in a
disciplined manner for any layer metadata they maintain.

Between these two, you should be able to develop a pretty clear picture of
the "what and why" with respect to changes in an image.

--000000000000301e6f0574764c90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On Mon, Aug 27, 2018 at 10:13 Bryan Fishell &lt;<a hr=
ef=3D"mailto:bryan.fishell@gmail.com" target=3D"_blank">bryan.fishell@gmail=
.com</a>&gt; wrote:<br></div><div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">Hi,=C2=A0<div>I want to be able to track =
different parts of my image, accessible from within userspace so I can prog=
rammatically (via an environment variable or something) what version of my =
patches have been applied. Ultimately, I want to be able to answer question=
s from the field to know &#39;what changed&#39; in a deployed image. Is the=
re already a method to do this? For example, our project has u-boot, a zIma=
ge and rootfs. Is there a way to tell the patched version (from my layer) f=
or each of those so I can connect what is in the field to what is in my lay=
er in version control?</div><div><br></div><div>Thanks in advance</div></di=
v><div dir=3D"ltr"><div><br></div></div>
-- <br></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Take a lo=
ok at the documentation for the Build History feature. I think that may be =
a good starting point for you.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><div><a href=3D"https://www.yoctoproject.org/docs/2.5.1/dev-manual/d=
ev-manual.html#maintaining-build-output-quality" target=3D"_blank">https://=
www.yoctoproject.org/docs/2.5.1/dev-manual/dev-manual.html#maintaining-buil=
d-output-quality</a></div><div><br></div><div>Ultimately, the Build History=
 provides you with the &quot;what changed&quot; in terms of build artifacts=
, which you can then trace back to individual packages and recipes.=C2=A0 =
=C2=A0</div><div><br></div><div>On the other hand, version control of your =
own Yocto/OE layers (which has nothing to do with build history) should cap=
ture the &quot;why was X changed&quot;.=C2=A0 =C2=A0Of course, this require=
s that your organization uses version control in a disciplined manner for a=
ny layer metadata they maintain.</div><div><br></div><div>Between these two=
, you should be able to develop a pretty clear picture of the &quot;what an=
d why&quot; with respect to changes in an image.</div><div><br></div></div>=
</div></div>
</div>

--000000000000301e6f0574764c90--
