Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60C3AE00E07; Tue, 12 Nov 2019 03:23:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3750E00D8E
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 03:23:13 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id j4so1316386uak.12
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 03:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zgVwNhRyqK4PsexGQDMLEmZ/czVAL3xAYJsEqHm/Bq8=;
	b=K8+m0vGJoEZRDkfuqQ+fMJ0M6Jib37pt6WObYFZu8uR8X8WM0VxmSJ3K+KzQhNX0CE
	ji9fEZE2ROA5seR3ZO5VuMowdbb24AZb4G6Z7/TX2GxxwwAjFpFy/VQjTBDwDd9+4JG/
	RRQl2lkEp6SsaVYWawrFmGNKLQTKiVR8m1tntfUlIgIXJBC3sJrbcIbDm98L8TjMdkky
	ssjquOqBIwSWS4FAM0plyZPAOUDohEYj6vbeNKW892vSnxWgSGkvrE577TGGw1eM/8G7
	wCKbiZiTKF9yEzipIJYJ/H2H54oOdZrQWH+dAMJm8HlxHIAzWcPMTRBaN+PRO33XGB5v
	nOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zgVwNhRyqK4PsexGQDMLEmZ/czVAL3xAYJsEqHm/Bq8=;
	b=PLqDsFQ7mP8uFCXGbwqsB8jzydtXFnHgWNvPLBUC96wvbl5lFXE/BMD4BPilYgoK8E
	fwh24u2SGLabw9YwbibYmSe+Rzn1pxby+0t21q6f0W6E1Mbzs+FXP0d9LPHgweVX56hO
	oEAvZQhI5YTGyBlPIjO9Qh+E1bbyR2yj/yn3mZtl7E3X52PL3CitzWSKH6m1B0Tqjsz5
	1lS6p7cvjY/b96sBEWGNvtwtsfNPaX3zfI0ZzkXivqMfEQ+YVpVvmMAq/IhXNSv91x6D
	8uqCRODIqiSQ8S53PMqYwfVNvs8ARAAx2YTcysg3vhdSRx5Xgk7J+6KET+Q4GqF+neLn
	18fA==
X-Gm-Message-State: APjAAAXH7K6RSsnV09S8zE0ETRFWakTRgpgY3CsKrcO+6Sr919pBoGm3
	cNyFiyN1VAKL3PI889KQPbnsAOQ0alU/B81omIc+Vg==
X-Google-Smtp-Source: APXvYqyGa4fWrzEmHZf4xmA9kfsfatjxXqWkH4SbuYn1r3ThHeGS+r98UuJB1fsguSWgYoXu6Hz6BQxjaR7E7G52kNs=
X-Received: by 2002:ab0:1c06:: with SMTP id a6mr9845560uaj.93.1573557793236;
	Tue, 12 Nov 2019 03:23:13 -0800 (PST)
MIME-Version: 1.0
References: <1573516378223.29405@mediatek.com>
In-Reply-To: <1573516378223.29405@mediatek.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Nov 2019 12:23:01 +0100
Message-ID: <CANNYZj88oNBWrFYOBA65Ng5v_FMK99kkMLEKbYC7Xohdwc6C2g@mail.gmail.com>
To: John McGehee <John.McGehee@mediatek.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Public cloud provider for Yocto builds
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
X-List-Received-Date: Tue, 12 Nov 2019 11:23:15 -0000
Content-Type: multipart/alternative; boundary="0000000000004cabc805972479a5"

--0000000000004cabc805972479a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would have the following requirements for any provider you choose:

1. Having kvm enabled (for the purpose of running qemu tests in the cloud
with good performance)
2. NFS server as a service from the cloud provider (so you don't have to
set it up and maintain it yourself)
3. Ability to share directories to the public over http (for the purpose of
providing sstate cache to developers' local machines).

Alex

On Tue, 12 Nov 2019 at 00:55, John McGehee <John.McGehee@mediatek.com>
wrote:

> =E2=80=8BI am looking at building on a public cloud provider like AWS, Go=
ogle or
> Azure. Is there any cloud provider that is better than the others for Yoc=
to
> build and CI?
>
>
> Is there anything else that I should use to get the most our of
> cloud-based builds?
>
> *********** MEDIATEK Confidentiality Notice ***********
> The information contained in this e-mail message (including any
> attachments) may be confidential, proprietary, privileged, or
> otherwise exempt from disclosure under applicable laws. It is
> intended to be conveyed only to the designated recipient(s). Any
> use, dissemination, distribution, printing, retaining or copying
> of this e-mail (including its attachments) by unintended recipient(s)
> is strictly prohibited and may be unlawful. If you are not an
> intended recipient of this e-mail, or believe that you have received
> this e-mail in error, please notify the sender immediately
> (by replying to this e-mail), delete any and all copies of this
> e-mail (including any attachments) from your system, and do not
> disclose the content of this e-mail to any other person. Thank you!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004cabc805972479a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I would have the following requirements for any provi=
der you choose:</div><div><br></div><div>1. Having kvm enabled (for the pur=
pose of running qemu tests in the cloud with good performance)</div><div>2.=
 NFS server as a service from the cloud provider (so you don&#39;t have to =
set it up and maintain it yourself)</div><div>3. Ability to share directori=
es to the public over http (for the purpose of providing sstate cache to de=
velopers&#39; local machines).</div><div><br></div><div>Alex<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, 12 Nov 2019 at 00:55, John McGehee &lt;<a href=3D"mailto:John.McGehee@me=
diatek.com">John.McGehee@mediatek.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>=E2=80=8BI am looking at building on a public cloud provider like AWS, G=
oogle or Azure. Is there=C2=A0any cloud provider that is=C2=A0better than t=
he others=C2=A0for Yocto build and CI?<br>
</p>
<p><br>
</p>
<p>Is there anything else that I should use to get the most our of cloud-ba=
sed builds?<br>
</p>
</div>

<pre>*********** MEDIATEK Confidentiality Notice ***********
The information contained in this e-mail message (including any=20
attachments) may be confidential, proprietary, privileged, or=20
otherwise exempt from disclosure under applicable laws. It is=20
intended to be conveyed only to the designated recipient(s). Any=20
use, dissemination, distribution, printing, retaining or copying=20
of this e-mail (including its attachments) by unintended recipient(s)=20
is strictly prohibited and may be unlawful. If you are not an=20
intended recipient of this e-mail, or believe that you have received=20
this e-mail in error, please notify the sender immediately=20
(by replying to this e-mail), delete any and all copies of this=20
e-mail (including any attachments) from your system, and do not=20
disclose the content of this e-mail to any other person. Thank you!
</pre>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000004cabc805972479a5--
