Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E238FE00E46; Wed, 17 Jan 2018 22:05:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA55E008A4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 22:05:05 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id r78so20349662wme.0
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 22:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=foeeyFrzAbA0bGrBWd/LR+oyEu0lRN0WX6PhKCEVV8o=;
	b=u6sRjZ70hJ/RXLPwn7ErG2LFLHzC+iHDao1keVjOYre2MPzxdZA63uBlXa48CAR/LP
	SUmVA19uk3VUk9VflxU3Q7o/JSuAG49uiTZ/+coePzQ4g0NKDaQS2M8PU0VEE9V5EjYN
	Eo2KnXFZb+775djaHVLnIoyBkFJ/FEp1/VOwQur4vq0gjUVHOCvh6SbYcQ7xvGLVNZLg
	6UeWPS21II5kzDU1sq4SrftxN7dYgVLfiv0FAMeOyO653DnxQAp+4u+rcO4f+aDaRKgA
	ywa5BFI2iXgM0gJXzqGcqzhdiyTx05/Iv1B6IaqJzLAW1aTH9/VLR7JOvbTpPL/sFvQN
	nkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=foeeyFrzAbA0bGrBWd/LR+oyEu0lRN0WX6PhKCEVV8o=;
	b=b2Y+FWyg8/Xg2RTuvETLa4f67Fpz/eGUxBtepFAmKIZ8StDvCT4cW/Xm+G+Ie6tW2k
	XPwT5lmYrnHCocZOpSI77J+uEcMjiJNZQwz4oh+Iokn/ZFWv7IFyvQuakcTM8+ppLL23
	GYBPdz4j24/rH9Mv/JVqX4g8jJQLeTs4xX08xIvitR7fUnmRm+22qIzxq4u0Xf6usKQP
	mHLSc0w0DHtc6qQBwJx7miSaeUa4EQylm4ifoH4NN8ewkbOj1RB1rPYSynchT5zHhlkP
	jO0TM09acu8gxvOBkDfCrB4om8B1AwpbtSs0o5P43RPMtUPiX6O8gZ4mkH2uqL8SbO4L
	LKeQ==
X-Gm-Message-State: AKwxytewhonGbX5onXR6O6mcaXF+duHFDSIkwp64TQ562J7DfafcTwNR
	VjjAGtxnwGdrt5SZHdK6S5chKJOfFnL/iZiegMM=
X-Google-Smtp-Source: ACJfBovIbJoD/qJT38/Go7qXMn5qzeKb+khmibsYPdqj3GJCaQkWlGykHrgfuQm6mUUsGA2SpcJtEg+yhNmR2lFkq3g=
X-Received: by 10.28.154.67 with SMTP id c64mr4287142wme.125.1516255504235;
	Wed, 17 Jan 2018 22:05:04 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.223.149.145 with HTTP; Wed, 17 Jan 2018 22:04:43 -0800 (PST)
In-Reply-To: <f94fc2c7-032a-651a-a0d2-d5860f133b6c@balister.org>
References: <137d31ae-329e-53ff-f495-259168b787d5@balister.org>
	<CAGAf8Lws8HfvDvMvdpgXyTvKaVpmf5a1UUTbBc2OrTpw=mgPNA@mail.gmail.com>
	<CAHQecY5FEt0jMY97Cfq7tR4KAETqied0t3zfFgXw=J5YBSz53A@mail.gmail.com>
	<f94fc2c7-032a-651a-a0d2-d5860f133b6c@balister.org>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Wed, 17 Jan 2018 22:04:43 -0800
X-Google-Sender-Auth: rR4E8ZDRt7Wf5Piywj-vVtMBxU4
Message-ID: <CA+YB3rZ2ZthR+bV0RZR-Af4q4X1OhEWo4oy9YhizVbHDnw+=ug@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] OpenEmbedded developer meeting Sunday before ELC in Portland
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
X-List-Received-Date: Thu, 18 Jan 2018 06:05:06 -0000
Content-Type: multipart/alternative; boundary="001a114b458eb80258056306bea7"

--001a114b458eb80258056306bea7
Content-Type: text/plain; charset="UTF-8"

> We know. It is painful. YP Dev Day is the Thursday after, and I suspect
> we would lose people waiting until Friday.
>

SCaLE doesn't usually coincide the week before ELC, so this year was just
bad timing from the universe.

I propose we start with the board meeting at 9:30 and plan OEDAM to start
at 10:30 to enable people to get there. We can have lunch late and go until
6 if needed.

--001a114b458eb80258056306bea7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">We know. It is=
 painful. YP Dev Day is the Thursday after, and I suspect<br>
we would lose people waiting until Friday.<br></blockquote><div><br></div>S=
CaLE doesn&#39;t usually coincide the week before ELC, so this year was jus=
t bad timing from the universe.=C2=A0<div><br></div><div>I propose we start=
 with the board meeting at 9:30 and plan OEDAM to start at 10:30 to enable =
people to get there. We can have lunch late and go until 6 if needed.=C2=A0=
<br></div><div>=C2=A0</div></div>
</div></div>

--001a114b458eb80258056306bea7--
