Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC3AAE0059F; Tue, 31 Mar 2015 13:57:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D952E003A8
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 13:57:17 -0700 (PDT)
Received: by qgh3 with SMTP id 3so26262884qgh.2
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 13:57:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PZqfdLznB0CKt73pldtOvN6o0IMUQOEJ6E+9NJF6xRw=;
	b=JYnkEfifxGFJNYvk5bd45Ozg7xF4i3dtyx0/nj1l3yMhSJI88YtLtlksUd23B9L76D
	/S93aCQTCxntMJudmxGkPxAorFeD+6h5zW2w8gPLkDJmwa7waIqmpv5Xd5U8S0Akqa4H
	Em01giU9N2jqfWX4AZF2NvZrTwIedFxtxn8ebh+dt8LGzRaYTtybkz7Fxp6ZQbvC6NGQ
	s8K1Y9oJG1OvotJ/9gMRqrRC4MbnjcYHhWeNb9cB0jpTeD69cwbB7PlKkmy3l0o8YTaE
	DUhYvFkZdiEiYmvWV9N43kje+M2NKbAkRE9adZQYGgSsBDogFq18NnMy3qVbpZGYf2NU
	Rgkw==
X-Gm-Message-State: ALoCoQkNZ+CjTsI2R+TaliwY1W/4rHxAKmh93a4Lr6BIJWwSLKBfNiW0jned+lQLEaq2yMq/ppi2
X-Received: by 10.229.122.70 with SMTP id k6mr36422645qcr.27.1427835436610;
	Tue, 31 Mar 2015 13:57:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Tue, 31 Mar 2015 13:56:56 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1503311547440.7527@localhost>
References: <alpine.LFD.2.11.1503311547440.7527@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Mar 2015 21:56:56 +0100
Message-ID: <CAJTo0LaCy8iqppguUhU0Vb_nEFOpCyNtJFs9QBZ_pZf63cLhkQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what is the proper way to build with fedora rawhide/gcc-5.0?
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
X-List-Received-Date: Tue, 31 Mar 2015 20:57:22 -0000
Content-Type: multipart/alternative; boundary=001a1134a38eff61c505129bd7f6

--001a1134a38eff61c505129bd7f6
Content-Type: text/plain; charset=UTF-8

On 31 March 2015 at 20:54, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>   in any event, is there a *preferred* way to build using fedora
> rawide at this point?
>

Blimey, gcc 5 looks like a barrel of laughs.  Is installing gcc 4.x
alongside 5.0 possible, and then set BUILD_CC etc?

Ross

--001a1134a38eff61c505129bd7f6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 March 2015 at 20:54, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":25p" cla=
ss=3D"a3s" style=3D"overflow:hidden">=C2=A0 in any event, is there a *prefe=
rred* way to build using fedora<br>
rawide at this point?<br></div></blockquote></div><br>Blimey, gcc 5 looks l=
ike a barrel of laughs.=C2=A0 Is installing gcc 4.x alongside 5.0 possible,=
 and then set BUILD_CC etc?</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a1134a38eff61c505129bd7f6--
