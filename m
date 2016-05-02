Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C5CE00C7C; Mon,  2 May 2016 14:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE294E00C5B
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 14:38:17 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id u185so5830018iod.3
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 14:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=AxkIXoQScf6LRvbqh2IdtYCNa3XXPv30FaZLefnMoq8=;
	b=aWHMvnHW/tJfyGgAaSvLXk4Lzvko/Ac8z3W1xncDN2Mr/kw36Mf+xw3rbRmrXNgkwp
	a0USysmBwypkCHzdnt9ge/mf3RIbc+eBqNmOTnvVEgl7UPHRkpKWm0ultT4dETKhhYyg
	g/4kOplcIrw3uctrRAvoigNuaHzVxW86ser7M1WIeihoIPj8yvG5NFxhW28j8vbfP/KZ
	86o6ibHG3Ux+kyJOLuoRCmA3Kf0A7RD+25PRIWrVNIVuH5wyJsBsrthmtpChVkyePKIf
	mlmkMUGQfM8T40PP5OQ6Byz0wtjQonpV/94/+QdcyylgmSjrb5EBX8IXtVGToaOHNJXz
	b3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=AxkIXoQScf6LRvbqh2IdtYCNa3XXPv30FaZLefnMoq8=;
	b=Vwx5UZgBRLO1jIVg0GSiXlKqAiP/YSW0RFcJUUgV6pMMQRa8BWXf42QPECjy8CZ9TP
	wamOhOr7UFbbsP7eRYVYK4RfQF+oPmZLwEkx6+o0YKpimoryuMVYzG/BjvZQEXl34Uuj
	q4uerMkslbKtUAjP4998AH4sWhKmKemoZ18bZjLIHshQvzedfmMRgXEoDoU+S7hzTpt6
	qwVhEcdLTzaP7dsxUv86ATd0+PDD3eZZglyMNDVTskgU91SQSoL+Xi/bQxkXPk6x28EG
	rbb7KDqvqi4FuLTibgmcZDaLFIZHJ3G7Y7xo93GrpE3kKfWLdbeJk8Ca6TW3WI4SMTXX
	WOjQ==
X-Gm-Message-State: AOPr4FVlK530l6czlxgwHCROY92vd0NKQJ71JqBQomL3anbwWI3LCIwDxWwozfyH+gy93zgh2+Fkabn63LM+Tg==
MIME-Version: 1.0
X-Received: by 10.107.162.84 with SMTP id l81mr45798231ioe.47.1462225096929;
	Mon, 02 May 2016 14:38:16 -0700 (PDT)
Received: by 10.79.81.67 with HTTP; Mon, 2 May 2016 14:38:16 -0700 (PDT)
Date: Mon, 2 May 2016 16:38:16 -0500
Message-ID: <CAOsp8o9u4CdCgH4SruASbyvKY_iDbG07wgPECg5ntSE5mSTTqg@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Build toolchain only (crosstools substitute?)
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
X-List-Received-Date: Mon, 02 May 2016 21:38:19 -0000
Content-Type: multipart/alternative; boundary=001a11402f867bfaee0531e2cf00

--001a11402f867bfaee0531e2cf00
Content-Type: text/plain; charset=UTF-8

I have been a few months out of researching Yocto, so I'm having trouble
caching it all back in (a lot to absorb!). Excuse me if this is answered
clearly in the documentation (I glanced around and I know you can build
relocatable toolchains, etc, but I suppose I'm asking more of a
philosophical question).

I have long-term plans to change our distribution at work over from a
custom distribution to one built by Yocto - but this is a few months to a
year out.

In the mean time, we need a new toolchain simply to update our glibc and
gcc packages. I understand that yocto 2.1 can build gcc 5.3 w/ glibc 2.23
support. I was wondering if this would be considered an appropriate
exercise to use the yocto framework to build solely a toolchain to be used
with a custom distribution (understanding that the custom distribution
would have to be modified to source and use the new toolchain).

We typically use crosstools to generate the toolchain, but it is a bit
outdated and only builds gcc 5.2 (which has some bugs that were fixed in
5.3). Essentially I want to use Yocto recipes as a substitute for
crosstools-ng.

Thoughts on this? Terrible idea? Decent idea?

Thanks,
Michael

--001a11402f867bfaee0531e2cf00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have been a few months out of researching Yocto, so I&#3=
9;m having trouble caching it all back in (a lot to absorb!). Excuse me if =
this is answered clearly in the documentation (I glanced around and I know =
you can build relocatable toolchains, etc, but I suppose I&#39;m asking mor=
e of a philosophical question).<div><br></div><div>I have long-term plans t=
o change our distribution at work over from a custom distribution to one bu=
ilt by Yocto - but this is a few months to a year out.</div><div><br></div>=
<div>In the mean time, we need a new toolchain simply to update our glibc a=
nd gcc packages. I understand that yocto 2.1 can build gcc 5.3 w/ glibc 2.2=
3 support. I was wondering if this would be considered an appropriate exerc=
ise to use the yocto framework to build solely a toolchain to be used with =
a custom distribution (understanding that the custom distribution would hav=
e to be modified to source and use the new toolchain).</div><div><br></div>=
<div>We typically use crosstools to generate the toolchain, but it is a bit=
 outdated and only builds gcc 5.2 (which has some bugs that were fixed in 5=
.3). Essentially I want to use Yocto recipes as a substitute for crosstools=
-ng.</div><div><br></div><div>Thoughts on this? Terrible idea? Decent idea?=
</div><div><br></div><div>Thanks,</div><div>Michael</div></div>

--001a11402f867bfaee0531e2cf00--
