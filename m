Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A31D5E00C9C; Tue, 12 Apr 2016 05:08:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48279E00C00
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 05:08:22 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id f1so85870523igr.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 05:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=09PvPZn938NpsB2Xj1rVb3SBXQ7Ax+Lf6eH47VQC2yI=;
	b=fw8iWFfaLUuLR5meBp3yEAuugEvsnaKkuw3StYZZnqUdfYVxMegEZV+pnBqiXzPnmT
	Wra7XMDo0Jeph0G30gxmEZnXZKIKH97HgOfbTDSZ+3KTin2aKRRAv5lUcwEF3OQTG6dz
	xqAHVDN/qCVTbrq45hZKRJCDSq8ckK1xIukJnBAIcovO0lpyXmsgbP7EqFsj3ai2VtJZ
	lwKkaWQDGJJDoXEO+7gyAm33xiJhA7IdsKriZMZMl8SgKdsWec92SP4Ac96q/G6iYrNX
	D0uiqxjPdDsFBrjSpMosVfkfeLPcOB19LhEZSwdFcmv7bP2tkzeJKFbZNQMn+CRVnutZ
	viPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=09PvPZn938NpsB2Xj1rVb3SBXQ7Ax+Lf6eH47VQC2yI=;
	b=L56R7MPGUR86fNRhxGtQW+J0WNxOAql1FxSbNP2TDRzq/BMyuI0mv5Gi+b9HM0NsTN
	5yET2ttQVUadBnBLEP+tns4YJiENfpC0XXDYWBNLZm9wCV1hasFE3JdZjAKLtozoRFoA
	9JAffVfIM28GpAjY21Tg0Kvt48uF0YseyZAMDgHFFcCLssxU69fLIuGhrTNZoISMdBBd
	rWspAtfH2GJa0NLO9SCykioYQYLAQlP8uYXATQBusQfWHceZjt782G8f+YW2x9NzQVVQ
	4HRNLU/pJIPXT41pcDZV4uuzzB/6suWw6YZZ7J3ScurGWEhgNl/ZlGDJC2svYMBct0nq
	92UA==
X-Gm-Message-State: AOPr4FX/MyPUzsVB+b/hLtn4LkCbpvbT2PWo4WLykBgMqXVpmu6XK+tLtRbdfO3HCVHPM9MIvExt4/KAw0CW9kjD
X-Received: by 10.50.160.39 with SMTP id xh7mr3370263igb.64.1460462902169;
	Tue, 12 Apr 2016 05:08:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Tue, 12 Apr 2016 05:08:02 -0700 (PDT)
In-Reply-To: <1460461420-29917-2-git-send-email-jussi.kukkonen@intel.com>
References: <1460461420-29917-1-git-send-email-jussi.kukkonen@intel.com>
	<1460461420-29917-2-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Apr 2016 13:08:02 +0100
Message-ID: <CAJTo0Lb81zdOkuEJejbhqyU-AV3n7BnAqzx6FseUCzaf64Xhhg@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-wm][PATCH 2/2] keys: Grab all modifier combos
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
X-List-Received-Date: Tue, 12 Apr 2016 12:08:25 -0000
Content-Type: multipart/alternative; boundary=001a1135ee9a7defe105304884da

--001a1135ee9a7defe105304884da
Content-Type: text/plain; charset=UTF-8

On 12 April 2016 at 12:43, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Handle even the last combo, the one with all modifiers applied at the
> same time.
>

This and 1/2 both pushed to master, thanks Jussi!

Ross

--001a1135ee9a7defe105304884da
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 April 2016 at 12:43, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":v79" c=
lass=3D"a3s" style=3D"overflow:hidden">Handle even the last combo, the one =
with all modifiers applied at the<br>
same time.<br></div></blockquote></div><br>This and 1/2 both pushed to mast=
er, thanks Jussi!</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">Ross</div></div>

--001a1135ee9a7defe105304884da--
