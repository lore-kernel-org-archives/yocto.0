Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4532E00E0F; Fri,  1 Nov 2019 06:25:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83FEE00E0B
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 06:25:05 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id l25so7541744edt.6
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 06:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9ixJ/lVlNqQD4wQnYhUCU88+eT1QUzFMKquNPwCsbCo=;
	b=bYo54CLOmrMd0SsDccCc5+Z2JKzFg+cl6JP3ludl4AgwM+5B78XULrMKM3fCgL+OHT
	6uxc2V4StbLwz+WiB8DTBYEo2O9w+nyX40H/zXaVZT+iKa5coAnc2dLE5C+uD+R8E1jp
	LsT8wJgZzUgHJSds6mLgiuHF+tKj3O+563qQ/BiwoftQCv2j/Yrv/LH2H6AhnbJOsyAq
	YiTjrIQsBlp0Lai+Y3Uk4NEy5IPZ/8X65Xmr7YLgZzIiYjRqiIxyev4LTBYlDp6UXckm
	eQiEJTvDNTKXKPRuAQupm2XymjaijqD+AU1sRp7wPKK6joaK0wOKXv8fAyDQn1zIEFtC
	nPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9ixJ/lVlNqQD4wQnYhUCU88+eT1QUzFMKquNPwCsbCo=;
	b=JANqVbCwMxKVwrfEuVsjSiw6YW9QtiTN4UsW4mqe8oRvrj7/GhXljvqMe0bbzAoq+G
	nfeJXjRvBJGUDbqPMPCVTdj8mahAhCLkwIfRf80rs3czhoHDjm7QqmGqoXAEPBm+eiC7
	tSpMgdyjW8C1f+t5/3IEoZ2J4iss++48JrRN6FPKycWeiolKDRQZJEIfkDMxWVQ3JURW
	Fuqh6G2XTbdCFXF66sn3y24MIDLlsIzaOBUAA4RWIUSd3pNlwgQoRdl1kQQQL9C3nxXt
	qqnO6bTJmbnTKkOYNcXCWH/ep5VUNMt6Bx4fiuqNnuSNlPeLUFDgL9QbAxjKIIZay6B7
	cI3w==
X-Gm-Message-State: APjAAAVSeLgDvUUsMBtOo7y82cOFNUWpkouZHHOpswyHx1+yWH2aedjI
	2YznrU8We0/aANtu0xjNLZFEscR3S9Ung3twXJo=
X-Google-Smtp-Source: APXvYqx72TrQt5kHfooBmNLvBRaHx4TA9DHUCICN7RhuAm4I7D0rFqb0Uf5RCCX0Pc/jUzmOJLYfUb2L9s2oop7I3go=
X-Received: by 2002:a05:6402:164f:: with SMTP id
	s15mr12437590edx.168.1572614705056; 
	Fri, 01 Nov 2019 06:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <02e3bc7898c8e67ff58c0a2c6816d7cb2b6fb0ef.camel@iki.fi>
In-Reply-To: <02e3bc7898c8e67ff58c0a2c6816d7cb2b6fb0ef.camel@iki.fi>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 1 Nov 2019 13:24:41 +0100
Message-ID: <CA+chaQddw2aLFfh3GkATAjuj6Y5O26BMaoGduAKJnPikjCv2Ew@mail.gmail.com>
To: Tanu Kaskinen <tanuk@iki.fi>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] How to contribute patches for qtwebengine in meta-qt5?
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
X-List-Received-Date: Fri, 01 Nov 2019 13:25:07 -0000
Content-Type: multipart/alternative; boundary="000000000000dd104b059648e450"

--000000000000dd104b059648e450
Content-Type: text/plain; charset="UTF-8"

This patch is already included in 5.13.2 upgrade (ready in zeus-next and
master-next branches), so you don't need to do anything.

Otherwise like Khem says, submit the change for meta-qt5 repository like
any other layer.

The meta-qt5/qt* repositories are used to maintain the patches, but usually
only me is updating them to keep in sync with meta-qt5 and then syncing
from them to meta-qt5 with git format-patch --no-numbered --no-signature
when doing bigger rebase like when upgrading to newer Qt version.

Regards,

On Fri, Nov 1, 2019 at 11:02 AM Tanu Kaskinen <tanuk@iki.fi> wrote:

> Hi all!
>
> The meta-qt5 readme says that contributions should be made by forking
> the meta-qt5 repository on GitHub, but when I look at the qtwebengine
> recipe, it looks like patches are pulled from
> https://github.com/meta-qt5/qtwebengine-chromium, and that repository
> looks like the patches are kept in a particular order so adding a patch
> at the top is perhaps not what I should do.
>
> It's not clear to me how I should submit a patch in this case. The
> patch in question would be a simple backport of this upstream commit:
>
> https://codereview.qt-project.org/gitweb?p=qt/qtwebengine-chromium.git;a=commitdiff;h=b84e8682b312fb16b16ffb9591415067ceae69f8
>
> It's needed for not breaking qtwebengine when upgrading PulseAudio to
> 13.0.
>
> --
> Tanu
>
> https://www.patreon.com/tanuk
> https://liberapay.com/tanuk
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000dd104b059648e450
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch is already included in 5.13.2 upgrade (ready in=
 zeus-next and master-next branches), so you don&#39;t need to do anything.=
<div><br></div><div>Otherwise like Khem says, submit the change for meta-qt=
5 repository like any other layer.</div><div><br></div><div>The meta-qt5/qt=
* repositories are used to maintain the patches, but usually only me is upd=
ating them to keep in sync with meta-qt5 and then syncing from them to meta=
-qt5 with git format-patch --no-numbered --no-signature when doing bigger r=
ebase like when upgrading to newer Qt version.</div><div><br></div><div>Reg=
ards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Nov 1, 2019 at 11:02 AM Tanu Kaskinen &lt;<a href=3D"mai=
lto:tanuk@iki.fi">tanuk@iki.fi</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi all!<br>
<br>
The meta-qt5 readme says that contributions should be made by forking<br>
the meta-qt5 repository on GitHub, but when I look at the qtwebengine<br>
recipe, it looks like patches are pulled from<br>
<a href=3D"https://github.com/meta-qt5/qtwebengine-chromium" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/meta-qt5/qtwebengine-chromium</a>=
, and that repository<br>
looks like the patches are kept in a particular order so adding a patch<br>
at the top is perhaps not what I should do.<br>
<br>
It&#39;s not clear to me how I should submit a patch in this case. The<br>
patch in question would be a simple backport of this upstream commit:<br>
<a href=3D"https://codereview.qt-project.org/gitweb?p=3Dqt/qtwebengine-chro=
mium.git;a=3Dcommitdiff;h=3Db84e8682b312fb16b16ffb9591415067ceae69f8" rel=
=3D"noreferrer" target=3D"_blank">https://codereview.qt-project.org/gitweb?=
p=3Dqt/qtwebengine-chromium.git;a=3Dcommitdiff;h=3Db84e8682b312fb16b16ffb95=
91415067ceae69f8</a><br>
<br>
It&#39;s needed for not breaking qtwebengine when upgrading PulseAudio to<b=
r>
13.0.<br>
<br>
-- <br>
Tanu<br>
<br>
<a href=3D"https://www.patreon.com/tanuk" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.patreon.com/tanuk</a><br>
<a href=3D"https://liberapay.com/tanuk" rel=3D"noreferrer" target=3D"_blank=
">https://liberapay.com/tanuk</a><br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000dd104b059648e450--
