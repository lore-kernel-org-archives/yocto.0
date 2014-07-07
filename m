Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C02D5E00563; Mon,  7 Jul 2014 11:50:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9766DE002AA
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 11:50:05 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id j5so3977662qga.37
	for <yocto@yoctoproject.org>; Mon, 07 Jul 2014 11:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Q9c70gACwseNrQxK3taW9pSTXJxlZIyQUkISwzfb+G4=;
	b=SZUT1aVt4ybrmwcNW+ZXcQuOAfCKNs0km5HP9r6aYlwSHeYW5/qJuh6j06arYC70+2
	lmFz/StMG+WlwZdrshbunkH9QfzbEi43KL6gOLy+P6sG5I981X1b2VWufJkaowJT2Q7p
	yu+m01m7V3enUqdzaK4ztMVmQayDxQtwojSHoJQ4vS+tl7N3hbjk5Xz/kRcXgh0WFM/e
	IMyWQ9yGsBL0NiA70Tv91KWo7FMy/HgB98CF90PVAgDtTHqGnU13WjESeWkvxpsqlJ/1
	LL8WqrhvKns+T5B2Zg6AtzmGERxkra5GMFOzMsuHcBeH83i++k03qlpntZBi384UVSJa
	J+6Q==
X-Received: by 10.140.41.116 with SMTP id y107mr47310366qgy.78.1404759004983; 
	Mon, 07 Jul 2014 11:50:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Mon, 7 Jul 2014 11:49:44 -0700 (PDT)
In-Reply-To: <53BAA88E.8090703@mlbassoc.com>
References: <alpine.LFD.2.11.1407070907540.9045@localhost>
	<53BAA0C2.4000105@windriver.com>
	<alpine.LFD.2.11.1407070931480.9550@localhost>
	<53BAA88E.8090703@mlbassoc.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 7 Jul 2014 15:49:44 -0300
Message-ID: <CAMCfZKF_27COcGEnn=k4ZQfOOaQiqq+cvKby-7gm6haxjB1kGQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how many variations to build for a beaglebone black (BBB)?
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
X-List-Received-Date: Mon, 07 Jul 2014 18:50:10 -0000
Content-Type: multipart/alternative; boundary=001a11c125e87cb9c404fd9ef1d5

--001a11c125e87cb9c404fd9ef1d5
Content-Type: text/plain; charset=ISO-8859-1

Gary,

On Mon, Jul 7, 2014 at 11:02 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> The big thing missing from this version(*) is no cape support,
> so if you need an LCD display or CAN driver or ...,  you're not
> going to find it.  The meta-ti version does support those AFAIK
>
> (*) unless this changed in the last three weeks while I was on holiday :-)
>

meta-ti does not have support for cape manager. Just meta-beagleboard
included it for kernel 3.8.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c125e87cb9c404fd9ef1d5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Gary,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Mon, Jul 7, 2014 at 11:02 AM, Gary=
 Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":acj" class=3D"a3s" style=3D"over=
flow:hidden">The big thing missing from this version(*) is no cape support,=
<br>
so if you need an LCD display or CAN driver or ..., =A0you&#39;re not<br>
going to find it. =A0The meta-ti version does support those AFAIK<br>
<br>
(*) unless this changed in the last three weeks while I was on holiday :-)<=
/div></blockquote></div><br>meta-ti does not have support for cape manager.=
 Just meta-beagleboard included it for kernel 3.8.</div><div class=3D"gmail=
_extra">

<br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></d=
iv>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=
=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_med=
ium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blan=
k">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c125e87cb9c404fd9ef1d5--
