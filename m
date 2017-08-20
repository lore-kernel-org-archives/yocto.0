Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D12AE00C43; Sun, 20 Aug 2017 06:45:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4058EE00851
	for <yocto@yoctoproject.org>; Sun, 20 Aug 2017 06:45:44 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id 76so22915733ith.0
	for <yocto@yoctoproject.org>; Sun, 20 Aug 2017 06:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Gw8JsTxr5OufAYS5gdHjsh0N/YtiDZoFVH3iZvcbZNA=;
	b=wLHb/exS6G2HWqeQurag1tjgWbq6fCDzmCsZSOny5cEd35XHD8bkgXkvLstiLCfMn5
	5GnsB3J36Dk/ft7fgHJXOBPlsNDC7gZHYO1NmaWaeeMFeDKwm5nTsg1o+OsW9ENddwrs
	y6DLlQjTt9ijTNh36BDmSbPn3xt7+vSdqUdYbzt5T4qe1CyOFEioa/LUMa5le7xpK6sZ
	LaWG0iLO/bdjhjIWtJqNdYDl7hg173ivLM1XbXAVhpwKAnp50vKN3qvJcFljGPodkwIy
	32pBF1+FV9uYyZbZFf2sa1kS6zutZFFRRz4deQA0ctpLC7TnDS9eaq4ukwIvcaU9pbxd
	C8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Gw8JsTxr5OufAYS5gdHjsh0N/YtiDZoFVH3iZvcbZNA=;
	b=Uc27orkn6trVvyXzQJprY/ef4GK1G33WTguXA1FZVqaSAsRjCi0T+xZuuY7V1xlX1p
	IrkmVDMBg926N0Rnwp1b6W/DBY0Jh6Cp8ghVaB1eAnYDLpLGziUMTrfUwNz90MDtlKHU
	nfSr2zU1WqZ5GuAy+A4Uru5d6IAYENCxzx2Xe6efSfN1hVrGbzK6fUye/TVJCAoMWGEX
	7Ov53bBm4bGjLFxAugSwdmlb7qXH932nqKWGXczzXS248R4XDTaHzEMjA34a02faW4Ap
	KhUDbtOkA1ngq/iLYREwn9wNqOdOCss6aOgGCbcqLaruACeMTiij6lxMNqkKl+NJJ3jL
	JiAA==
X-Gm-Message-State: AHYfb5jQiHQdOcHhXyZfmdj/apWpuE1JAgiwXYHu5lwBE/mvF/Kvv0F6
	aYZwqIhrEE/13ovtxk+0m7J4S/2I4Pp85cs=
X-Received: by 10.36.4.144 with SMTP id 138mr3932031itb.142.1503236744209;
	Sun, 20 Aug 2017 06:45:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.200.71 with HTTP; Sun, 20 Aug 2017 06:45:13 -0700 (PDT)
In-Reply-To: <HE1PR10MB0361BD38AEF95892C9F42822C3810@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>
References: <HE1PR10MB0361BD38AEF95892C9F42822C3810@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Sun, 20 Aug 2017 16:45:13 +0300
Message-ID: <CAHiDW_EW5m3hvHa-5dxatAKy9=6QfSh2XdmBnnPkb8ca6UyKcQ@mail.gmail.com>
To: Fabian Knapp <knapp@ambibox.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raw copy lots of files to rootfs via recipe
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
X-List-Received-Date: Sun, 20 Aug 2017 13:45:46 -0000
Content-Type: multipart/alternative; boundary="001a114089d627063905572f9470"

--001a114089d627063905572f9470
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 19 August 2017 at 20:11, Fabian Knapp <knapp@ambibox.de> wrote:

> Hi,
>
>
>
> I have to copy a complete file structure to my rootfs which also contains
> .sh and .js files Makefiles and so on. However, I only want to =E2=80=9Er=
aw=E2=80=9C copy
> these files to /xyz to my rootfs.
> I tried to cp -r via do_install() and added the files to my FILES_${PN}
> but I get an error: =E2=80=9Ano package provides /usr/local/bin/node-benc=
h=E2=80=98 that
> indicates that this is not a raw copy as wanted.
>

cp is just cp, that is not likely to be the problem. Would you mind pasting
the full error message with any relevant context?

I'm going to guess that this is something in the packaging system (rpm?)
looking into scripts and adding whatever is in the shebang  into runtime
dependencies of the package during do_package(). Do you have
"#!/usr/local/bin/node-bench" in one of your scripts? If yes, can you
either avoid that or make sure something installs the correct binary into
the correct place?

Jussi

--001a114089d627063905572f9470
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
9 August 2017 at 20:11, Fabian Knapp <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:knapp@ambibox.de" target=3D"_blank">knapp@ambibox.de</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_275809791565734028WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have to copy a complete file structure to my rootf=
s which also contains .sh and .js files Makefiles and so on. However, I onl=
y want to =E2=80=9Eraw=E2=80=9C copy these files to /xyz to my rootfs.<br>
I tried to cp -r via do_install() and added the files to my FILES_${PN} but=
 I get an error: =E2=80=9Ano package provides /usr/local/bin/node-bench=E2=
=80=98 that indicates that this is not a raw copy as wanted.<br></p></div><=
/div></blockquote><div><br></div><div>cp is just cp, that is not likely to =
be the problem. Would you mind pasting the full error message with any rele=
vant context?</div><div><br></div><div>I&#39;m going to guess that this is =
something in the packaging system (rpm?) looking into scripts and adding wh=
atever is in the shebang =C2=A0into runtime dependencies of the package dur=
ing do_package(). Do you have &quot;#!/usr/local/bin/node-bench&quot; in on=
e of your scripts? If yes, can you either avoid that or make sure something=
 installs the correct binary into the correct place?</div><div><br></div><d=
iv>Jussi</div></div></div></div>

--001a114089d627063905572f9470--
