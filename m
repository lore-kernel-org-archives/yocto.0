Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC309E00D75; Thu, 14 Dec 2017 00:41:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f194.google.com (mail-yb0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA1BE00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:41:26 -0800 (PST)
Received: by mail-yb0-f194.google.com with SMTP id x83so2879642ybg.8
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ljqn5MbU7x53+KX2mcrZ0mqxMwDRsiObeYXkzNi7bVA=;
	b=bocJnkUohy5PHfpxVTqERQ12ZD6PbqdtAKEqOHXcCFjdCoXRoLI3K/tH79QAd8SDKq
	rm0O4C5xm8oyt8Em0V+QA59C41fgRXHUYCpVhd+tPpEF20RP+FY0PNVO+p9c6Ao1/TYL
	WGCx7gEffiwFpYGfgVP+nY2Xj0EaW2s8l9YqfwnGkzhSCzEvjerBMnqKwnxOkjEouHHW
	1Pv61NCzoy+U7z/jkk4rCPdTqqf3u6xYXOfPvJqLg41E5xXnzzFLn9oevSPup7qMmABc
	eUdOZPUnnDapLCpe5QIYCrTGDTYbVVc+a5SW16EYnb8va2o8ARrsR0ZZ3bjzPX7vyjxQ
	LFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ljqn5MbU7x53+KX2mcrZ0mqxMwDRsiObeYXkzNi7bVA=;
	b=pdki3/pCF9hmDgcjNzGEgm1vtsLr5yHejiACi7eLjN4Qa7/HAG8OJ4XFPmUWPcptAA
	srL9lUuysnpEq5P8mnTOj7JRO5BvwiFy8JxmFc/smQxAwxhmWzu2iEMGqwqz27VBspia
	3kcAMlhpNW4jzO8ERfYRwnUvJwnXK/Gx8LlqVClSDD5ez20k/XJWydHnWritRQvj0TDB
	texxS5+WaijciIV4IkzLZFqsvHFou4Qfcn3clxeLvIdOVbuPuQV9PD+2I4+AcvL1QbD4
	zKpB6ZvJKs4W14UcvGoxtpiscR5FiAV3Qeo2aGVEhabQE4emyoJMKxRlEUOE/B5dVD6d
	IBXw==
X-Gm-Message-State: AKGB3mKsZxPG54BeCbD2Off/dLwpbSVEUKSZI5xKdE847bMC7yMlsqca
	X8pyoS/FUJKCU8bLGDkugZSekf52Z36Xq4ihflM=
X-Google-Smtp-Source: ACJfBotZvyBYJRNuGZF7lt9nNjuTu7xyONnQuCuY1HtY0w6I+FNuBRNEDt94r2moc6CQIBPP5xO1t6kJ7t3xw5/k9Ak=
X-Received: by 10.129.114.215 with SMTP id n206mr3532197ywc.360.1513240885933; 
	Thu, 14 Dec 2017 00:41:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.97.6 with HTTP; Thu, 14 Dec 2017 00:41:25 -0800 (PST)
In-Reply-To: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 14 Dec 2017 09:41:25 +0100
Message-ID: <CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 14 Dec 2017 08:41:28 -0000
Content-Type: multipart/alternative; boundary="001a11473a62773bcd056048d978"

--001a11473a62773bcd056048d978
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hey guys,
>
> any body tried the real time kernel? I get an error, it is snot in the
> compatibility list.
> can we skip it?
>
> thanks
>
> --
>
Good news: I use RT kernel only together with VC4 graphics and have lots of
fun on PI2/3.
Bad news: As far as I know it is not in meta-raspberrypi but in my fork
[1]. There were attempts to land the RT-patches in meta-raspberrypi but
that was denied for huge patch size :(

[1] https://github.com/schnitzeltony/meta-raspi-light/tree/master/recipes-
kernel/linux

Andreas

--001a11473a62773bcd056048d978
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Dec 14, 2017 at 2:58 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"=
mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div><div><div>hey guys,<br><br></div>any body tried th=
e real time kernel? I get an error, it is snot in the compatibility list.<b=
r></div>can we skip it?<br><br></div>thanks<br></div>
<br>--<br></blockquote></div>Good news: I use RT kernel only together with =
VC4 graphics and have lots of fun on PI2/3. <br></div><div class=3D"gmail_e=
xtra">Bad news: As far as I know it is not in meta-raspberrypi but in my fo=
rk [1]. There were attempts to land the RT-patches in meta-raspberrypi but =
that was denied for huge patch size :(<br></div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">[1] <a href=3D"https://github.com/schn=
itzeltony/meta-raspi-light/tree/master/recipes-kernel/linux" target=3D"_bla=
nk">https://github.com/<wbr>schnitzeltony/meta-raspi-<wbr>light/tree/master=
/recipes-<wbr>kernel/linux</a><br></div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Andreas<br></div></div>

--001a11473a62773bcd056048d978--
