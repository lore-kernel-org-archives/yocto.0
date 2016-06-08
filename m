Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF1E2E00CE7; Tue,  7 Jun 2016 20:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EC1DE00CDE
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 20:20:25 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id z189so116413771itg.0
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 20:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=ocPu+syOAtQ+BXC1F+B7AeYVy4KmTkP7iPdcTnHHdIk=;
	b=FazyuzfDn8RcLbUngBRgr2JLfEegvIEklMjYlS9iCzQ4L1IeQVEFBazP+alSNKRNzL
	p3TovkRQArp1CuZ6bLxkN4R3aPGnU0WyQZJJWqC2pqskf+oHX+b7FBXnwy0hJq32z0+N
	GwpvO7qKDwfF0VOTV23w1yS0+rJ6XmgUj5/lDzpwNeKzwsR1r/prUrRzEsM5mF4F7M9K
	WrythOQKqJlRjV0LtbnBXuJROw23F1uVE7+LeOcrOyXmSzJv3gKwP48IgFGHOeJqY4xQ
	instOcu3yKd55H45y0BhBngZg00VTXWkV3e4BQRUTOdRpDZn3JxXkx3om2h7XvgHm0rj
	uNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=ocPu+syOAtQ+BXC1F+B7AeYVy4KmTkP7iPdcTnHHdIk=;
	b=XjoS6miZYxtb1VIYJrUKW97YK6lmzKywPMpCYSjquSKF+dgs5F0hXkvQh6dbCRTOdY
	Z3UOM0RdK2MSrl+I2ilAazM8VcM4am0PJPCVQE7V2MJ7x/gsdBizAji6kRNR3bzJFMR3
	NOCmMlzELdU3stMdqzkNwtnr2H8px2eoNHj6aoRWAveDyHGjcbFFt6dvDuEA4XqdEK5o
	RiPzPKXAWK8urrL7LeT3C2cJ3+/drHqF6nGAxrgS8E1Vw/4o/RgzFTPolsNKKa/SERqQ
	EL2SY5BlhrkTXXu6AWXsVfxGpNUcerHmB7iQRlnz7JOqevMfLlKe+jIu37k129Nz0b+x
	161w==
X-Gm-Message-State: ALyK8tJHWfS1ZkJqiKmFaqIf/QS9qzjmmXC6JCODcwfJVQWTA5Y3Cmjd+s9FA9DSzlAVvMJ1Bn2uz3y0aT3Cuw==
X-Received: by 10.36.123.4 with SMTP id q4mr824526itc.1.1465356024616; Tue, 07
	Jun 2016 20:20:24 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Tue, 7 Jun 2016 20:20:05 -0700 (PDT)
In-Reply-To: <57578904.80601@mlbassoc.com>
References: <57578904.80601@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 7 Jun 2016 20:20:05 -0700
X-Google-Sender-Auth: 9HW4JwDkNlKQj_jrRTVcghtVL-8
Message-ID: <CABcZANnSTiSdnREW6dy37TWjik2SoegrJfNj7fQyTODaFJHaxg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New warning
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
X-List-Received-Date: Wed, 08 Jun 2016 03:20:26 -0000
Content-Type: multipart/alternative; boundary=001a1145a778512b450534bbc9fb

--001a1145a778512b450534bbc9fb
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 7, 2016 at 7:55 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm seeing a lot of these:
>   NOTE: /local/poky-cutting-edge/meta-xyz/.../some-pkg_2.38.0.bb:
> base_contains is deprecated, please use bb.utils.contains instead.
>
> This is all well and good and I'll clean them up as I go.  That
> said, why is the same NOTE printed [at least] twice for every recipe
> even when the file contains 'base_contains' only once?
>

I haven't checked the code, but the most likely explanation is the error is
a parse or expansion time one, and bitbake parses the recipe anew when
running each task, after the up front parse which is used to generate the
runqueue. *shrug*. It's a downside of showing messages in anything but task
execution context.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1145a778512b450534bbc9fb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jun 7, 2016 at 7:55 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":vi" class=3D"a3s=
 aXjCH m1552df01b5bf3160">I&#39;m seeing a lot of these:<br>
=C2=A0 NOTE: /local/poky-cutting-edge/meta-xyz/.../<a href=3D"http://some-p=
kg_2.38.0.bb" rel=3D"noreferrer" target=3D"_blank">some-pkg_2.38.0.bb</a>: =
base_contains is deprecated, please use bb.utils.contains instead.<br>
<br>
This is all well and good and I&#39;ll clean them up as I go.=C2=A0 That<br=
>
said, why is the same NOTE printed [at least] twice for every recipe<br>
even when the file contains &#39;base_contains&#39; only once?</div></block=
quote></div><br>I haven&#39;t checked the code, but the most likely explana=
tion is the error is a parse or expansion time one, and bitbake parses the =
recipe anew when running each task, after the up front parse which is used =
to generate the runqueue. *shrug*. It&#39;s a downside of showing messages =
in anything but task execution context.<br>-- <br><div class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature">Christopher Larson<br>clarson at k=
ergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer=
 - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a1145a778512b450534bbc9fb--
