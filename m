Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68CDFE00D1E; Fri, 26 Apr 2019 20:29:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0825E00D11
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 20:29:28 -0700 (PDT)
Received: by mail-vs1-f66.google.com with SMTP id n17so3093722vsr.1
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 20:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hhsRGxvpdxod+v/p9aRkxblSQlX5o73Q+3bwLwI0MFc=;
	b=aC17cOcTHV2Px1TfxPMawreka9DDJgPY38DTJFN/q515zzJpqTuBZ1k5uYEsHjbbyx
	vonu+aVdBP4uftbA8OY/n095jody9gQPFTsKZ3+EMc83D3W9Qqy2dCgUK1yrO5Bd3JwV
	XjRveEDsTDJnJMZllefMRGaLHMbiX7DF3u+KniKUfRJ86kagFH7EuBP4jiCjDX33SwtI
	oTkc3INNt4oPOFHFLiPOOvFpOmm6zMsgqg1D7DRo2dE7bjb76x7+gGT24IFD6E/Fl472
	oTLOvB8YHdan8/gJsBXTSUfXWIdZ1orOXWhfr9KmAwuMRouVGArTLNgfTtoUtf4FlAft
	admw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hhsRGxvpdxod+v/p9aRkxblSQlX5o73Q+3bwLwI0MFc=;
	b=LUHkABOgvVakc8XUepmyWvJkmJnj+TO8iRoC5fE7BbSvmw5RaX5bijdIzJsaFkHC6z
	xCgiVsUOBSgxZ56JA8KbzuDDEDrXTkDEUsGYRI7fu7irRfP74LCNPH5punw1t5Y0uUfq
	tjK+PmSmUoNESkZ7oXYwmqV7vXHYeIpt/KhVT3m0p1tZ07bfLCph1STs6cYLuvQQXrR/
	dV4y7GTMSm6lNDl4RUeFY1i3Bvmf5CuxDSP9KWH/RmoIXoLYwTogktODFrLHaqhojJI+
	mlpJljuXUzd7KA/a5IIc46aZFUqYLSPkCe1KIB/Zz+u5W+lLuMP72dYngtJFf4AqhZtx
	ZJ2Q==
X-Gm-Message-State: APjAAAWQRerhaxJGRgUJqgfhiU4erjgeMxvbZV/hMsh4540KD+txESyv
	7GIjABb6uiuYZVx0lqsr17cowYR7CvyQ4S20JKE=
X-Google-Smtp-Source: APXvYqywaVvSkdWVC+xASYWbZk5x1QafekA5ktJywcsPc+VOsOnoFphAymA3JL0JLvXBTikcnQ+WVd/8VAtzU0Qk3lI=
X-Received: by 2002:a67:e88b:: with SMTP id x11mr113522vsn.95.1556335767852;
	Fri, 26 Apr 2019 20:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR04MB55626373DDB86D5E8B65596FFE3E0@DM6PR04MB5562.namprd04.prod.outlook.com>
In-Reply-To: <DM6PR04MB55626373DDB86D5E8B65596FFE3E0@DM6PR04MB5562.namprd04.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Fri, 26 Apr 2019 20:29:16 -0700
Message-ID: <CAB=6tBSJY-xDoFsz8gawrDYFkUOAzLyFAS1t9L6t4dnqnHW=Bg@mail.gmail.com>
To: "raja.g kumar" <rajakumar.g@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto System Requirement for developing OS
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
X-List-Received-Date: Sat, 27 Apr 2019 03:29:29 -0000
Content-Type: multipart/alternative; boundary="000000000000981a2805877aa8a0"

--000000000000981a2805877aa8a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It depends on a lot of factors. But for actually building yocto images... I
find that 1.5 gigs of RAM per CPU seems to be about right on the virtual
machines we use to build images.

..Ch:W..

On Fri, Apr 26, 2019 at 17:29 raja.g kumar <rajakumar.g@hotmail.com> wrote:

> Hi
> Can I know the RAM ,Disk space and processor requirement for developing
> the os with yocto for IoT ?
>
> Please suggest and it would be greatly helpful.
>
> Regards
> Rajakumar G
>
> Get Outlook for Android <https://aka.ms/ghei36>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--000000000000981a2805877aa8a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">It depends on a lot of factors. But for actually bui=
lding yocto images... I find that 1.5 gigs of RAM per CPU seems to be about=
 right on the virtual machines we use to build images.</div></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">..Ch:W..</div><div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 26, 2019 at =
17:29 raja.g kumar &lt;<a href=3D"mailto:rajakumar.g@hotmail.com">rajakumar=
.g@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Hi <br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Can I know the RAM ,Disk space and processor requirement for developing the=
 os with yocto for IoT ?<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Please suggest and it would be greatly helpful.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Regards <br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Rajakumar G<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
<div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-family:san=
s-serif;font-size:11pt;color:black">
Get <a href=3D"https://aka.ms/ghei36" target=3D"_blank">Outlook for Android=
</a></div></div></div><div><div dir=3D"auto" style=3D"direction:ltr;margin:=
0;padding:0;font-family:sans-serif;font-size:11pt;color:black">
<br>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challe=
nge anyone here to think of a question upon which we once had a scientific=
=C2=A0answer, however inadequate, but for which now the best answer is a re=
ligious one.&quot;=C2=A0 -Sam Harris</div></div>

--000000000000981a2805877aa8a0--
