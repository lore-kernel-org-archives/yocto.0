Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9478DE0077E; Thu, 14 Apr 2016 09:25:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 759A8E00527
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 09:25:44 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id ui10so96070850igc.1
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 09:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HdYA6rDyXdLx9K4Q+oqkxep4nWq2jCWvvIeXDyRlijc=;
	b=mrcYCRF5xhuE3hoWF5A3jlt6mTmU6Kw6/rkDlQp8UK1UdNiLfT/CYcLbAUtr2DFywe
	WzieuAMQbkn5JNeGbpKhpk/kKDqoS6rG95es8t9yeVmpdxsjT7yXUOggd+bYaESpM6VX
	NJ7q3UHkBud58v6NjqMW6tccvdeemhtIDO2G6cHrjptnp0OdE1TeQUenn/baTShCgH4t
	Txgax/MicN6cnbXgRlYebMmehNQO98utDkdhWshqk7MM07wo4LWENwU7rGS21qqpJkIM
	ixrGjLCy2+Sc3AbANOXVAK9erDVXkqlFtgOeFDpO5rkOaT5KjI7bjjYrhUTfGcQTTZ11
	7c+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HdYA6rDyXdLx9K4Q+oqkxep4nWq2jCWvvIeXDyRlijc=;
	b=eu9ngasDk+tOwXBiWdtgg71mGgB3FocZaViMejSKrVBJA9NbcpnQZPDdzN8qD+Qo8y
	EfKGMyRbWhz1ag3IW8C9snU+Okk2XzyI/Imv5tX+SUpFzMvccwIqT5wWH9zRk4j7hQQ9
	OiCBIILYSbZ6RTxxlERV2bZmpULOV+E4LF3IH7DT2MgCnb24KvehdHhR/0TpNnxJ6anp
	bVes1CTe6vY1mvfhhz0pLetxfdEhkpaW4lf86c0ZLYgB6p+92jq8Ntv5651zr0cUp9l+
	6qJ84K77cUZLxE5YeerXCFWZJ/dI+7AoiyWuAbCLoxDPkgsAGLCmIHoWBFidXriyqisZ
	3dZQ==
X-Gm-Message-State: AOPr4FWiiF2sQbMifNVLmy5rguZwPAL8M6a1gI6iPg0MhPt8i3nlgoBKAH8yIH041SV1E5/QzMYgXlKqbaDi93tV
X-Received: by 10.50.67.113 with SMTP id m17mr17154820igt.52.1460651143918;
	Thu, 14 Apr 2016 09:25:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Thu, 14 Apr 2016 09:25:24 -0700 (PDT)
In-Reply-To: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Apr 2016 17:25:24 +0100
Message-ID: <CAJTo0LYoTANyh5sdgb_ru8JkjKCQ1S0RkyXLfaKmgu+fb8MTow@mail.gmail.com>
To: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake -c clean for all recipes
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
X-List-Received-Date: Thu, 14 Apr 2016 16:25:46 -0000
Content-Type: multipart/alternative; boundary=047d7bd753ea931404053074583e

--047d7bd753ea931404053074583e
Content-Type: text/plain; charset=UTF-8

On 14 April 2016 at 12:18, Vajzovic, Tom <Tom.Vajzovic@irisys.co.uk> wrote:

> What command can I use to do the equivalent of running "bitbake -c clean"
> (or cleanstate etc) for all recipes that have previously been run?
>

The easy answer here is rm -rf tmp/.  What do you actually want to do?

Ross

--047d7bd753ea931404053074583e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 April 2016 at 12:18, Vajzovic, Tom <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Tom.Vajzovic@irisys.co.uk" target=3D"_blank">Tom.Vajzovic@irisys.co.u=
k</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4b5" =
class=3D"a3s" style=3D"overflow:hidden">What command can I use to do the eq=
uivalent of running &quot;bitbake -c clean&quot; (or cleanstate etc) for al=
l recipes that have previously been run?<br></div></blockquote></div><br>Th=
e easy answer here is rm -rf tmp/.=C2=A0 What do you actually want to do?</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--047d7bd753ea931404053074583e--
