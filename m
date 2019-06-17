Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9188E00D44; Mon, 17 Jun 2019 05:12:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.176 listed in list.dnswl.org]
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED2AE008F2
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:12:35 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id a21so9045350ljh.7
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BTrWSYbxm/VoCv5uXh8wVU4xX54PqBQ2j/XhnvKc4y4=;
	b=VF8t67xd4P6vL2sK5qtyE748s57uJP837o7AYK5KQBRNLuq+p2Og1Kr4TbnlVfSg28
	ddyWVH8eKmjATHrzvOJweGy/eIOIs6Z1FKBkUhRBkMyW7pTcxbQBoACodWVCptk1CUNg
	F1S6AiTUFE9KP6xvzEtxExEMStSKYdfNwm1Xr3BRhsRiirloiyme1Pav2FwFyOBepuis
	42uSeBXJcKg8IdSUdUY8yQE/sHQxhTyQfCtmWO4KY3aEwL3N+Qbf316YZs1HPjUe1V8n
	Jvlbq39r4Q6Jj1BNS9DavEFfbq7M3dHHXvmA93fdlQ6vrcwB7rhtFAcZd613kL4n+YTZ
	f2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BTrWSYbxm/VoCv5uXh8wVU4xX54PqBQ2j/XhnvKc4y4=;
	b=ONHNzFHjdeW6QIvhW56c85tFZUzk16F8/ze7ZtyWQkzkuBlOveqYePqSOrLLAXBdDr
	q4yqKSpyN8xTGm/gO/mG8xARXXd08NzibiatdZX1V/rIBKgOVRtR54kiufTT53yLSlqp
	d/wrZRVRQjaWvJvU1RbG2HALPtrvQortJMtTrIeaRV0E3FQnQ3TB6dFCZqOJC2cvh3S1
	tOM6xhTNUCxerMM07NpQb2TBCxuUrawNyd2Kuq3vQwEuuG2FCmZBLFKei8G++USHIPBp
	RZBndvAG5gmoLPkO+Wt+tuXzgXseAPN3my8YwDN1+SduvxamaQ9Tub9oPpJv/2EUPJML
	Lxrw==
X-Gm-Message-State: APjAAAV3JHupb+rHKbDVlz21qF4uAPdlhFaRcvXUFwmK5H0r2Pj2Lc23
	LmGKKbZJ7jbeJJ+5AtuBT0KDb9nk2ZnJvuFCwwJGWQ==
X-Google-Smtp-Source: APXvYqwC9AHVVpvnMH2wUH66vKxX4yjErEyfCyWMPa50SfU2kV6Y6YnK/cD/cbbMFQg1obNS0szphG+QAD14q92Hzb4=
X-Received: by 2002:a2e:5302:: with SMTP id h2mr6880076ljb.47.1560773554433;
	Mon, 17 Jun 2019 05:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCCPCnnTmwtr6p=nZ1Z2CG=Ohq8JHzuGTcWZx-ZYrkxGA@mail.gmail.com>
	<CAJTo0Laj3JiNaQTEg6sx=3xgJ3UM464XEqc+31opRvKYXaLV_Q@mail.gmail.com>
In-Reply-To: <CAJTo0Laj3JiNaQTEg6sx=3xgJ3UM464XEqc+31opRvKYXaLV_Q@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 17 Jun 2019 14:12:23 +0200
Message-ID: <CAAx3WaDpj9CA9wYxApVEQaDZj9h2SJpq_nKQMG4Pnv5buLakgg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Share SSTATE_DIR between instances
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
X-List-Received-Date: Mon, 17 Jun 2019 12:12:35 -0000
Content-Type: multipart/alternative; boundary="0000000000004971ac058b83e9fe"

--0000000000004971ac058b83e9fe
Content-Type: text/plain; charset="UTF-8"

Cool, thanks!

Gabriele

Il giorno lun 17 giu 2019 alle ore 14:03 Burton, Ross <ross.burton@intel.com>
ha scritto:

> It's always a good idea to share sstate between builds.
>
> Ross
>
> On Mon, 17 Jun 2019 at 12:32, Gabriele Zampieri <gabbla.malist@gmail.com>
> wrote:
> >
> > Hi all,
> >
> > is it a good idea to share the SSTATE_DIR between a docker container
> (used with GitLab pipelines) and the local bitbake instance? They both work
> on the same MACHINE.
> >
> > Gabriele
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004971ac058b83e9fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Cool, thanks! <br></div><div><br></div><div>Gabriele<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">Il giorno lun 17 giu 2019 alle ore 14:03 Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; ha scritto:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">It&#39;s always=
 a good idea to share sstate between builds.<br>
<br>
Ross<br>
<br>
On Mon, 17 Jun 2019 at 12:32, Gabriele Zampieri &lt;<a href=3D"mailto:gabbl=
a.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; is it a good idea to share the SSTATE_DIR between a docker container (=
used with GitLab pipelines) and the local bitbake instance? They both work =
on the same MACHINE.<br>
&gt;<br>
&gt; Gabriele<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000004971ac058b83e9fe--
