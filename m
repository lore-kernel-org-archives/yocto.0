Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8EB0E00D26; Fri, 29 Mar 2019 02:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC9EE0053F
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:50:19 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id d24so1422067otl.11
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+3zmcfO/69ys/rkYeSJImNE9Mk3JBNmVyEMLcS9pSMo=;
	b=DH3F7MNuoTEmQ66ELASXG6/xLGFn89efHUdBzWLJjGXAAIFn4ysvTRDdTQlhhQrEvS
	YWGmxpWs4A2ILptblNg4QjwImgejh90IzNAUhQTSliSMVwdw5+d7pozCs8H2yywcoAOb
	8TOtEOGo/QQ100HcvWQI5LN40gIw2U+Py9HTOVB9QIQPRjfFIug12tO/PUGtOpvAkkhn
	Xk3V1CAa+xCbk6XwyNi+DFZos54Lpjj1rrttGoP8Ex2Qw1FSirWBcDQvrd6tjUSrorxi
	XMuU7Bsw9+642zaGZMsWQSpx7gki+wUg78nlusrWvbI0Efd+7GCCSjQWQyQ0OiLnKoj1
	3WHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+3zmcfO/69ys/rkYeSJImNE9Mk3JBNmVyEMLcS9pSMo=;
	b=lcskwj/UtnqONSiqct+dR2/5Zh7CvrbxjY6viTxTfLioiTPLqjtEQdVoaHgp8r9noU
	dFC+peeBI/L0wPbBTjeRB6eV2XwMNgND0YAl9ghL9SH6/KasuQQk/LhWG/PH/r+6df/L
	2N8qNL7wLMW94khpQTMYgY+kjxMFM2UMu61589A77Nc9phnNVC0E+vtb1wKqGk6Q+1WO
	L97CAZrXG3dD4PfZQX4Ki4ssNPScwrKNp4rB6OPGo7caKwoiilomkQN2KHG4XdBPNUfD
	KCEo5PBrlG3elOkqa5d2ecUWyp6Lyy++waKweIyrZlqd7F9oOXIqsNnLx5AwRXsS93rU
	1GnA==
X-Gm-Message-State: APjAAAUJuw9f2eBFMsR/5Cn2iRK8qyDa6M4HUPBy8tlhhY7V0SAkZBur
	2RUpwZj94v6Kh26CCwppTWZE4JH3bFJ5obyXEmg=
X-Google-Smtp-Source: APXvYqzpGucbmFW4FuJgMkVpMdgrISyrvAlTDnP6HaxZT3CZgVB/Oz4oA18jpGGs1w2giLIBOrMbQDmeAYT+YNE7s9Q=
X-Received: by 2002:a9d:6950:: with SMTP id p16mr12721856oto.91.1553853018545; 
	Fri, 29 Mar 2019 02:50:18 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
	<CANNYZj_VMX8FdBhMCwvq_hMYNa3n_Ng-kMacAo4Eg1ug+VuPcQ@mail.gmail.com>
	<CANNYZj9vrTD_+ZAmpEU28TQ8-MwQ-aD6qAGpX_wSALpq6gpj+A@mail.gmail.com>
In-Reply-To: <CANNYZj9vrTD_+ZAmpEU28TQ8-MwQ-aD6qAGpX_wSALpq6gpj+A@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Fri, 29 Mar 2019 10:50:07 +0100
Message-ID: <CACKFPN3_mGg4fgCkOn_KWA3trR66WKay9148F5grke5DC7sJtA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 09:50:19 -0000
Content-Type: multipart/alternative; boundary="00000000000034237e05853899af"

--00000000000034237e05853899af
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

in this case the 3g is added by default from the poky distro in
the DISTRO_FEATURES_DEFAULT var in:
*meta/conf/distro/include/default-distrovars.inc*

And because the poky distro is the base distro for the image
this is inherited. Therefore it needs to be removed with the
DISTRO_FEATURES_remove unless there is another way,
which I'm not aware to easily remove/adjust without having
to create a new distro.

Regards,
Dimitris

On Fri, Mar 29, 2019 at 10:38 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You can do that using
>
> bitbake -e <image> and looking for how DISTRO_FEATURES is formed in
> the output of the command.
>
> Alex
>
> On Fri, 29 Mar 2019 at 10:37, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> >
> > On Fri, 29 Mar 2019 at 09:51, Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > > To do that, add this to your build/conf/local.conf file
> > >
> > >> DISTRO_FEATURES_remove = " 3g"
> >
> > This works around the issue after the fact. It's better to track down
> > where 3g is added in the first place, and adjust that.
> >
> > Alex
>

--00000000000034237e05853899af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Alex=
ander,<div><br></div><div>in this case the 3g is added by default from the =
poky distro in</div><div>the=C2=A0DISTRO_FEATURES_DEFAULT<b>=C2=A0</b>var i=
n:</div><div><i>meta/conf/distro/include/default-distrovars.inc</i><br></di=
v><div><br></div><div>And because the poky distro is the base distro for th=
e image</div><div>this is inherited. Therefore it needs to be removed with =
the</div><div>DISTRO_FEATURES_remove unless there is another way,</div><div=
>which I&#39;m not aware to easily remove/adjust without having</div><div>t=
o create a new distro.</div><div><br></div><div>Regards,</div><div>Dimitris=
</div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Mar 29, 2019 at 10:38 AM Alexander Kanavin =
&lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You can=
 do that using<br>
<br>
bitbake -e &lt;image&gt; and looking for how DISTRO_FEATURES is formed in<b=
r>
the output of the command.<br>
<br>
Alex<br>
<br>
On Fri, 29 Mar 2019 at 10:37, Alexander Kanavin &lt;<a href=3D"mailto:alex.=
kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; On Fri, 29 Mar 2019 at 09:51, Dimitris Tassopoulos &lt;<a href=3D"mail=
to:dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; &gt; To do that, add this to your build/conf/local.conf file<br>
&gt; &gt;<br>
&gt; &gt;&gt; DISTRO_FEATURES_remove =3D &quot; 3g&quot;<br>
&gt;<br>
&gt; This works around the issue after the fact. It&#39;s better to track d=
own<br>
&gt; where 3g is added in the first place, and adjust that.<br>
&gt;<br>
&gt; Alex<br>
</blockquote></div>

--00000000000034237e05853899af--
