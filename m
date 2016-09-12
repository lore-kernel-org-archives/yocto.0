Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E145BE0050B; Mon, 12 Sep 2016 08:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC57E00444
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 08:34:54 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id o3so13851170ita.1
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 08:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9te+OTo4D3eM2VEvlbxLuK+mXpvJMM/HAy762jaTzRM=;
	b=nqg9ndp9Ia+v24AwXLPWchkBDt+xO+Kf7/XuNM/t/6kvl+qhd3T0rI7poxU88yTXp5
	b+ljnF/PUcBGE9sWb30x5Ab2ZB563i4kOBCbR/Q7zxcBY/OZ8oo43XIc/69IFnkTcm2M
	uDn9NUzelVIlleRVY0mDgNgTBBGdo3BM4EwbxqZq471/aoDnP0hTzwrIibuJbOW6tvJ5
	9Q3BgJOj4KgeeOrTzc98XwirzgZkzHVITYMTEU5vYGokUnwMgP40O6P+JvVTda8MvpOf
	GS9YGNwO3vp2pp4DWF3uLFyGeFE5SQO/vbwynS/+frUO903lm6dALjc1keVVVPhjFEAR
	sJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9te+OTo4D3eM2VEvlbxLuK+mXpvJMM/HAy762jaTzRM=;
	b=fUIYQrJV3xKTv4ah4esLoXrh8PvMeBsbf3UdOibnFVLaokU0/x39F82dm0PPrXrI0I
	CfyGtAhg0ovapNjqBBw3s2uZ9LqTMnm+NXV0BXml2MnrmKbvQQHT5oKeul2pXapWbAHY
	pwpgMbtNvpSkja5xEjZuyxfO/VTK2pln7kPTKMEnklvqehN3ietWdLLPtzEq5K0bT/b9
	5//7C9Fn2f55tIHDGUAjvThHoqN55PxqS/aqQaJoenGXIeQn0oNQaMOQWeoB9tNh8xr5
	0109I4EaxXBOzpiEkXKbcim6o3qztX1ge8Z3wdbzTu9qHziqLK4mh2t4WfNvnannWd3V
	+qxA==
X-Gm-Message-State: AE9vXwOBnvU1Q+kSbEu0U2vkCVQyKhOzz12QYFhL0lmrd09t/0S6T51NFdfGucnl8qS9MttuGuV/ssvq5lsQKbA8
X-Received: by 10.157.17.203 with SMTP id y11mr21209429oty.188.1473694493707; 
	Mon, 12 Sep 2016 08:34:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Mon, 12 Sep 2016 08:34:33 -0700 (PDT)
In-Reply-To: <57D6C026.1050701@ti.com>
References: <CA+YB3raLEFHAECfBVAspQni9fG0_X0oTPM-Z_F64FzV6PuNdUw@mail.gmail.com>
	<57D6C026.1050701@ti.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Sep 2016 16:34:33 +0100
Message-ID: <CAJTo0LZv=DxdJOUUb3t0Wr4_gcD8mqL_-hu=bVsjUZh=n-mcLA@mail.gmail.com>
To: William Mills <wmills@ti.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: Subjects for YP Developer Day at ELCE
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
X-List-Received-Date: Mon, 12 Sep 2016 15:34:58 -0000
Content-Type: multipart/alternative; boundary=94eb2c192a56ce2033053c513c98

--94eb2c192a56ce2033053c513c98
Content-Type: text/plain; charset=UTF-8

On 12 September 2016 at 15:48, William Mills <wmills@ti.com> wrote:

> 5) Can Yocto [cross-]build snaps or flatpaks?
>

Just because it's interesting, note that the standard freedesktop.org
flatpak runtime is in fact bootstrapped through a custom OE distro.

Ross

--94eb2c192a56ce2033053c513c98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 September 2016 at 15:48, William Mills <span dir=3D"ltr">&lt;<a href=
=3D"mailto:wmills@ti.com" target=3D"_blank">wmills@ti.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":1q3" class=3D"a3s aXjCH =
m1571edf9fa8dc535">5) Can Yocto [cross-]build snaps or flatpaks?<br></div><=
/blockquote></div><br>Just because it&#39;s interesting, note that the stan=
dard <a href=3D"http://freedesktop.org">freedesktop.org</a> flatpak runtime=
 is in fact bootstrapped through a custom OE distro.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c192a56ce2033053c513c98--
