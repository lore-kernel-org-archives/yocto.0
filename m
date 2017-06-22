Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 237FBE00B8B; Thu, 22 Jun 2017 05:40:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD44E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:40:10 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id v20so10486114qtg.1
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zWPg7Up6VsjHqBDtwch/tIyWON7wZ8UtrfVZq2X/rdc=;
	b=bbIpycNjHloJuCDnSMXNh46/PF9ZVxcU6r7aeN/N7Vq/kgTwsFEsl2j6cS5IfjkB5O
	Q4vNPgyJygPaiH/cV3dxOSNR4RJm2pEfn791t9Wk+eQEbys22Ynjw+3G58zHuE7m8/3E
	huQqn3MP1er2W5evixO3VsdcqIFJmGPtY1ofb++FHSVFy0SPRZsX2MiQDpN2dfSEqUCQ
	lnXk5TPrMMHAwUGMk4GYQlKDfER0j8xCuMwKbSrs/G2nKbamfK9XlBEIvDGgavrt2UGh
	jg0WFZE1KcKNoRsv7hqx6Zpx9aMBFHSUbcKRkz78elsJdQxZ4cKCNzU8jnyhShgMKEiF
	12zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zWPg7Up6VsjHqBDtwch/tIyWON7wZ8UtrfVZq2X/rdc=;
	b=FNV7cWwY5LgvFQZjv/4qExQSBRpBdZtcwHYhFlzDNhc1457PpSRl5dkXvihz/ZQIIt
	vlg756zW7MNoZwdAlLbmHZX3Bb+tnVOwC86ZE8Iy4sTnZwSzX15v/iCk+xYD9v6nWcA7
	rEFRkBAFfs7OeldYOK702Mk3p20kA/hS0dN2jHmPMCF+RNfVubJRLJeNQvZeOxbnofdD
	6bE9jnDxJN51Rzm4QBOqVgzOmrrjbir81m6Xx4tiEnwsCmddrWNpKdTVhdivtQzmlzk/
	IID1LUaJa5aJOm7EdheekAv7JRb7R14Lz58VJaypB3lhT8Z4zJzaCV8e4Z0jhTS82fB7
	AtYw==
X-Gm-Message-State: AKS2vOxSK66XL7/pTm1tlGytRiIO82b+YKhMBasI0YbNrCp0m74341fV
	md2C/ixuFRjUAMJuJbOE5UP+pTVnZtat
X-Received: by 10.237.49.41 with SMTP id 38mr2575716qtg.161.1498135209705;
	Thu, 22 Jun 2017 05:40:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 22 Jun 2017 05:39:49 -0700 (PDT)
In-Reply-To: <20170619102819.1181-3-git@andred.net>
References: <20170619102819.1181-3-git@andred.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Jun 2017 13:39:49 +0100
Message-ID: <CAJTo0LanGskUb8SMHChb-vD3eMRN==PkCSyHCid5YHqc=TiUFA@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][PATCH] grep: fix compilation with security flags enabled
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
X-List-Received-Date: Thu, 22 Jun 2017 12:40:12 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c955c00153b05528bc912"

--94eb2c0c955c00153b05528bc912
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 19 June 2017 at 11:28, Andr=C3=A9 Draszik <git@andred.net> wrote:

> From: Andr=C3=A9 Draszik <adraszik@tycoint.com>
>

All three applied, thanks.

Ross

--94eb2c0c955c00153b05528bc912
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 June 2017 at 11:28, Andr=C3=A9 Draszik <span dir=3D"ltr">&lt;<a href=
=3D"mailto:git@andred.net" target=3D"_blank">git@andred.net</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div id=3D":1np" class=3D"a3s aXjC=
H m15cbfe8679b486dd">From: Andr=C3=A9 Draszik &lt;<a href=3D"mailto:adraszi=
k@tycoint.com">adraszik@tycoint.com</a>&gt;<br></div></blockquote></div><br=
>All three applied, thanks.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--94eb2c0c955c00153b05528bc912--
