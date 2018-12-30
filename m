Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D69E6E00CA4; Sun, 30 Dec 2018 03:28:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58EE3E00C49
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2018 03:28:54 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id n10so15310015vso.13
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2018 03:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4DRZ8M9MdEhMQOB9W3hHJCB9KBK80a6nlMgq+LnXo9M=;
	b=SISfx/jPQscb/lPQBeUsJIMLEWvMOZ1Doj/5kPXCCtwywnsjy47xtCUe88d/52dLFP
	jasBjvWIPyMgCTJ9+pe1JOZO37h+G8/2wy4fN8eWuNsPfcyWafCMphLITfs1F0iZNvq9
	m0XY//qWDQgZcnuuJdj0y2hNpjQx0uEh2J6cEWXY+yPP/utUjh0E44oVRwYFV7M568zb
	UqpAdEl7OkWbu8lRBGZBEmVpJ0hgcDJHhTFdAtqwzqIuGHB7N0bB32SmYR5x1eRMcgam
	M/1WA1HdsX8i5TKBwj+9f6rcnJP28TxXvzK9V/21ShNK1oCqNBSMKfhp+uvmQDMiRVrQ
	sP9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4DRZ8M9MdEhMQOB9W3hHJCB9KBK80a6nlMgq+LnXo9M=;
	b=DQEb9Iya/aTxXWX2CZADeIFgRLeQLQ9Gaee/QodUMYPsD6zpOceTv+bflqUrRzi7A/
	jEDc1gpy7mxJ3GrBEb18h/nYvNTVTYMYYgJ5C3LsRXLLqUhEx5ZxdcjXZAt3MkgpkHV+
	dyjhqEKtEbh5Rc5DDhWJCel3uxiFfkFvJZn4SLrGPtE5ZUf4ZOBk48zPSRJLmhZ7xFE8
	2LaGJO6BANL76+snM0/MK4dSeYOaOiEZvPVEf2bLE0JBmj3/ZeHbEU/nm0haO6Lc6DU9
	85Hw9PnIc1jko6yxXbSVLGvobzTos11bC1gBkB97JYZU3yQ5K9lpSagNoRBeqLa3y89a
	UtXQ==
X-Gm-Message-State: AA+aEWYI4bw7R5kmzJ1fQrETfYZOZsul2AsrJjvYkH07RHQD/4SHRSLP
	ntzlHWod/eRwwfbmpW7MiYus2Pc2sysezk7v4s0=
X-Google-Smtp-Source: AFSGD/V/PMkYdJ8xp/06X7lbsdL+QcfpJhAVHmI1AkKVNDCEVpKp1kx1kMEhBet/TPLrIgFQjBEJWs5DIA7gAlzPgzU=
X-Received: by 2002:a67:c202:: with SMTP id i2mr12395426vsj.11.1546169333387; 
	Sun, 30 Dec 2018 03:28:53 -0800 (PST)
MIME-Version: 1.0
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
	<20181024234913.GA11980@deserted.net>
	<8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>
In-Reply-To: <8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sun, 30 Dec 2018 12:28:42 +0100
Message-ID: <CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
To: Sinan Kaya <okaya@kernel.org>
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Sun, 30 Dec 2018 11:28:55 -0000
Content-Type: multipart/alternative; boundary="000000000000e11922057e3b9914"

--000000000000e11922057e3b9914
Content-Type: text/plain; charset="UTF-8"

Are there any news about this? Also for thud branch.

Il mar 30 ott 2018, 14:46 Sinan Kaya <okaya@kernel.org> ha scritto:

> On 10/24/2018 7:49 PM, Joe MacDonald wrote:
> > Hey all,
> >
> > I just thought I should quickly follow up on this.  I have a change set
> > ready that includes tagging and a minor tweak for sumo, integration of
> > the current outstanding patch list and a tag for thud and a couple of
> > additional things (possibly) for post-thud.  I'll send out a set for
> > sumo and maybe an additional one for thud/post- possibly tomorrow or
> > after I get home on Friday.
>
> Thanks, we are looking forward to see it on yocto.
>
> >
> > -J.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e11922057e3b9914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are there any news about this? Also for thud branch.=C2=A0<div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">Il mar 30 ott 2018, 14:46 Sinan Kaya &l=
t;<a href=3D"mailto:okaya@kernel.org">okaya@kernel.org</a>&gt; ha scritto:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On 10/24/2018 7:49 PM, Joe MacDonal=
d wrote:<br>
&gt; Hey all,<br>
&gt; <br>
&gt; I just thought I should quickly follow up on this.=C2=A0 I have a chan=
ge set<br>
&gt; ready that includes tagging and a minor tweak for sumo, integration of=
<br>
&gt; the current outstanding patch list and a tag for thud and a couple of<=
br>
&gt; additional things (possibly) for post-thud.=C2=A0 I&#39;ll send out a =
set for<br>
&gt; sumo and maybe an additional one for thud/post- possibly tomorrow or<b=
r>
&gt; after I get home on Friday.<br>
<br>
Thanks, we are looking forward to see it on yocto.<br>
<br>
&gt; <br>
&gt; -J.<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000e11922057e3b9914--
