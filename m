Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673E7E00C3A; Mon, 11 Sep 2017 04:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D53BAE00C01
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 04:01:47 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id 6so13546815itl.1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 04:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S8WCH908rlmi9jel8QDlHUqnNufJ2graxawNAwBGaeE=;
	b=zBfp20985eMCNWuup9zbb4ppjVCtmWMlojMl8E1FRizRSkHfjf3r2gvG1HRyx4SZ3V
	UaKYgYNfydrleoAyOe9V4iRJ/xZe7GoPxoTE9nSoX9KMCZiIWbwralR7/OzriWtiGnSU
	Rrlsab9tZe92WW7wICy+HMT7WHxVyhX4PyYGuH35Z15FGqgaPycUJ7GtrMZYyPYBwmwJ
	vBe2jgzA72JEfFrL6UJsKL1fH1+/CH2q37Oud3JXyVGuTvlrm8Ltpgm4xcxD108jykSl
	JoWcB2xrWKlemDWm9bzQCEg69jUhjD7+axwtxP2MrUOBmV/moZZQxyIqqxMGehsjx511
	BJ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S8WCH908rlmi9jel8QDlHUqnNufJ2graxawNAwBGaeE=;
	b=RC9CQXNU/BlLxjalBDKB5b1nojvLouFAvhOam77WVX+un9/NeSreuCLrDQWCw17ucj
	9EpYb+TvayU5nIQIrAPR0dR/ZfVEcBFDpB3nG5avdYA+lvDn4xThgUBqAb7tJq9MAS1p
	i3trc5+bGFSi3n7G5LKF7TOI3Uf/IkYf58fdpObMgNDcB1tFSqhD9i1vHvn99r6kHH5K
	4UWUtNFizumNzztaJckZXzUInUotVWg3jB/HBChn7bdbN4yc9RR3//KU+m/RRWvNF+oE
	E0Tp5DqGNebOBQaPAAdd13TY4Wm12kPWDmz3xbNhiuSUTyggVnoY4IklthXcvXI0lTMR
	y16w==
X-Gm-Message-State: AHPjjUhf/SWMk6pJAtCN3+McvShCGvoRZO66VqKC3HbZnFnk9ly2ri52
	tNJWS7qbZXPXd02+P6cGJdcm24kuXJZAS00GCBJHWA==
X-Google-Smtp-Source: AOwi7QAYc67qiYUMjXgG18kpMVLg0DHuUZSSK+G03XBKaf9057z/PeCzPKa7iV4d4a0btKJdJJ9yPfZtN2b4CfGKfS0=
X-Received: by 10.36.26.129 with SMTP id 123mr12169976iti.38.1505127707055;
	Mon, 11 Sep 2017 04:01:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Mon, 11 Sep 2017 04:01:26 -0700 (PDT)
In-Reply-To: <CAAhKrJ0Vcq=udaGzcWi5s4cMyxEnNoyXWoeYW+wJhzWD_zxM8g@mail.gmail.com>
References: <CAAhKrJ0Vcq=udaGzcWi5s4cMyxEnNoyXWoeYW+wJhzWD_zxM8g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 11 Sep 2017 12:01:26 +0100
Message-ID: <CAJTo0Laxp2ui6Sh8WdUVQxuGmEx+fuGaD_=yCHuFA30u--mZow@mail.gmail.com>
To: Dan Walkes <danwalkes@trellis-logic.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pyro openembedded gpsd update-rc.d problems with read-only-rootfs
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
X-List-Received-Date: Mon, 11 Sep 2017 11:01:48 -0000
Content-Type: multipart/alternative; boundary="001a114463ec5244c50558e7da98"

--001a114463ec5244c50558e7da98
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 10 September 2017 at 21:35, Dan Walkes <danwalkes@trellis-logic.com>
wrote:

> It looks like because the update-rc.d step fails this setup gets moved
> into a gpsd post install script, which won=E2=80=99t work because I=E2=80=
=99m
> configured to use a read only root filesystem.  So I need to find a
> way to keep the update-rc.d step from failing.
>

The recipe shouldn't invoke update-alternatives directly, but use the
update-alternatives class instead.

Ross

--001a114463ec5244c50558e7da98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 10 September 2017 at 21:35, Dan Walkes <span dir=3D"ltr=
">&lt;<a href=3D"mailto:danwalkes@trellis-logic.com" target=3D"_blank">danw=
alkes@trellis-logic.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">It looks like be=
cause the update-rc.d step fails this setup gets moved<br>
into a gpsd post install script, which won=E2=80=99t work because I=E2=80=
=99m<br>
configured to use a read only root filesystem.=C2=A0 So I need to find a<br=
>
way to keep the update-rc.d step from failing.<br></blockquote><div><br></d=
iv><div>The recipe shouldn&#39;t invoke update-alternatives directly, but u=
se the update-alternatives class instead.</div><div><br></div><div>Ross=C2=
=A0<br></div></div></div></div>

--001a114463ec5244c50558e7da98--
