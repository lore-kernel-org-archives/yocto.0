Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 745E6E002AB
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 05:40:28 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so10498219lbo.35
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 05:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=KCPP0tbGbJZHfXP/20y9utjdwtaJYL+it3TIa5GBuK8=;
	b=1AFTyRmJOFbFwiS02Gt37pVel/D01bwD7rF4TIMBNlc1vFrUIYUXH+aif/lCdKpyWA
	0CsKKQowhMW2OOWsKd0A46+hNYqG9HD7gn5zp/U4vPOBJD9b2Uv23slUesGPHL9WJDY7
	f947Wvy0sdUSJUvdj3h+rSKzSVNU+wXoFda/Y1EEAlW5/v37mK7ibWFedwndPx078Tie
	nggIYW85hFiecyHTJ4bxV1s3c5bskPyp2BXLFAISAA7R5NG83t/+GyUmZ3pbN2whzTJn
	xDL/tmraqUXZeW5PeafwIkUtkaDCSfVlMZVZaLdjTyatb1DvkRI9+vafe4pyDp8ViW38
	QIPA==
MIME-Version: 1.0
Received: by 10.152.104.240 with SMTP id gh16mr14818396lab.56.1354023627099;
	Tue, 27 Nov 2012 05:40:27 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Tue, 27 Nov 2012 05:40:26 -0800 (PST)
In-Reply-To: <20121127113952.06050a25@eb-e6520>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<20121127113952.06050a25@eb-e6520>
Date: Tue, 27 Nov 2012 08:40:26 -0500
Message-ID: <CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Nov 2012 13:40:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 27, 2012 at 5:39 AM, Eric B=E9nard <eric@eukrea.com> wrote:
> I confirm the problem when following this procedure step by step.


Thank you, Eric, for the confirmation.

Just to clarify for anyone following along: the problem isn't with
bash or trace-cmd themselves. If I perform the same steps but use
'bash' first, then 'trace-cmd', adding 'bash' succeeds but later
adding 'trace-cmd' causes 'trace-cmd' to fail in the same way 'bash'
did when it was added second.

