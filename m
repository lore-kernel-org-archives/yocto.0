Return-Path: <john.finley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1AB7E00B1B; Wed, 27 Sep 2017 09:21:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.finley[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D08BE009F5
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 09:21:04 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id 85so7870406ith.2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 09:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=55tCczm7jI+aui7MjiPlETKvYOgFB0DP/xXQ/9D3vUI=;
	b=er+dmOKtfNwcrolhSIqdEBN91t2K0GzKCIocn92ctXPYOE5V3e/BESrsQ/KpyQS6+2
	YfDVV50AnMGermpRxFdLl6SephYqFMi5coDEg/VxiBNBeQYBL7EHYyi6kEBPVueoIuKS
	IftrAlM0qND7FpWxRutio794dXHHMwRAyegLrRfLiL2IJGivRffePBkYxvfaFkVljmGB
	R7DdhC9apOUXeMsmQBGM3GWRJjW0OVYPtrVgMNNuyoqE7ceEv1vSCyDyWg2zqjfs5lu8
	ClzmZWNB+snCsyQfO+z3PV2UnZkEBw/ydAlyL9G6Vt1HO9BxO9tJsVGZaAJRjIjRf7Ef
	Iwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=55tCczm7jI+aui7MjiPlETKvYOgFB0DP/xXQ/9D3vUI=;
	b=jZfCBp9p3s2pdAaCeHa6085kdxkCZy1ETTOEK7ODOqJ4fewF5UrR+SMddboszEgYc+
	yPrHJhG+y5AJ57ghF6OVaB5RsgO1EhP17fBf91+DRye1o0ytPf+wyR9a1GXMyXTXrOB3
	xGBoahZaObSRPFxVanV7/K+/vXgCGOCr+qCR1eyeZ8cAGnISlIzMkguTREz4OIQwLhKe
	ceCPuASMhi3ZlDuAyNRt4zj+9BNjO1ICiaXyTfG8QrGdp6gvlzKwWtyv+wtVExLezP7x
	XGZyYTPZ2PPBHf/9/2176A+8F5+NrI3EWNlU1YGbCVWGtmDIiQxFCPSoHjER0YJ7Yya1
	jmtw==
X-Gm-Message-State: AHPjjUhbTCTnstZ2Fcdq/gg05FoEn0Pnlix/tekpsXLV03qpiZKuO+zV
	yIJL18xZ8vioc8T2jufIVgBhiDt/l7wZlEYhRcY=
X-Google-Smtp-Source: AOwi7QBbzN9J89ACdsG2lhXPfiZ4eUxu0OICQjzJIVTJyFFy2efONJAk/5HKAh54isfhX6OSrky96ELHJy47mw7QXbM=
X-Received: by 10.36.32.71 with SMTP id t68mr1454340itt.128.1506529264213;
	Wed, 27 Sep 2017 09:21:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.3.26 with HTTP; Wed, 27 Sep 2017 09:21:03 -0700 (PDT)
In-Reply-To: <6e5f6176b28d4d5397a7a7e36c40d4a9@HIBDWSMB02.ad.harman.com>
References: <6e5f6176b28d4d5397a7a7e36c40d4a9@HIBDWSMB02.ad.harman.com>
From: John Finley <john.finley@gmail.com>
Date: Wed, 27 Sep 2017 09:21:03 -0700
Message-ID: <CACwBRSC=TrjHrme9neN2wRoak9duR=mp5bfDZX2+GMYyYtbNgg@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: Re: want to execute a script having sudo : sudo cryptsetup
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
X-List-Received-Date: Wed, 27 Sep 2017 16:21:06 -0000
Content-Type: multipart/alternative; boundary="001a1147e89aa32683055a2e2d55"

--001a1147e89aa32683055a2e2d55
Content-Type: text/plain; charset="UTF-8"

Try making it so the user doing the build is not prompted for a password
when they do "sudo". I have this in my vm:
    john@vbox-ubuntu-16$ cat /etc/sudoers.d/john
    john ALL=(ALL) NOPASSWD: ALL
    john@vbox-ubuntu-16$
I don't know if that's all that's needed; I have to google it every time.

On Mon, Sep 25, 2017 at 2:48 AM, Kumar, Shrawan <Shrawan.Kumar@harman.com>
wrote:

> Hello Team ,
>
>
>
> I am trying to achieve below from yocto , do we have a way  ?
>
>
>
>
>
> dd if=/dev/zero of=hello.enc bs=4k count=$400
>
> mknod /dev/loop_dev_0
>
> losetup /dev/loop_dev_0 hello.enc
>
> *sudo* cryptsetup --type=plain open /dev/loop_dev_0  plainMap < $2
>
>
>
>
>
>
>
>
>
> Thanks and Regards
>
> Shrawan
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1147e89aa32683055a2e2d55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try making it so the user doing the build is not prompted =
for a password when they do &quot;sudo&quot;. I have this in my vm:<div><di=
v>=C2=A0 =C2=A0 john@vbox-ubuntu-16$ cat /etc/sudoers.d/john=C2=A0</div><di=
v>=C2=A0 =C2=A0 john ALL=3D(ALL) NOPASSWD: ALL</div><div>=C2=A0 =C2=A0 john=
@vbox-ubuntu-16$=C2=A0</div></div><div>I don&#39;t know if that&#39;s all t=
hat&#39;s needed; I have to google it every time.</div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 25, 2017 at 2:48 AM=
, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=3D"mailto:Shrawan.Kumar@harm=
an.com" target=3D"_blank">Shrawan.Kumar@harman.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_7332210310540792190WordSection1">
<p class=3D"MsoNormal">Hello Team ,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to achieve below from yocto , do we have=
 a way =C2=A0?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">dd if=3D/dev/zero of=3Dhello.enc bs=3D4k count=3D$40=
0<u></u><u></u></p>
<p class=3D"MsoNormal">mknod /dev/loop_dev_0<u></u><u></u></p>
<p class=3D"MsoNormal">losetup /dev/loop_dev_0 hello.enc<u></u><u></u></p>
<p class=3D"MsoNormal"><b><u><span style=3D"background:yellow">sudo</span><=
/u></b> cryptsetup --type=3Dplain open /dev/loop_dev_0 =C2=A0plainMap &lt; =
$2<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks and Regards<span class=3D"HOEnZb"><font color=
=3D"#888888"><u></u><u></u></font></span></p><span class=3D"HOEnZb"><font c=
olor=3D"#888888">
<p class=3D"MsoNormal">Shrawan<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</font></span></div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1147e89aa32683055a2e2d55--
