Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82247E00BDF; Thu,  8 Jun 2017 04:53:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1031EE00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 04:53:04 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id u19so37930322qta.3
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 04:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2YJ1XO+rF+bfCeQmsgGSq8yw0LZ9a5YvjlnCzb9chDM=;
	b=jzK/Ae+JGbedjCjvofWDpkAknmcTSH/CxFhQko8pVsMW1IqT5/fCA2hI+bOxO4olmQ
	1TSUqfJlzhkj3ALofWYUUmPUzQdyb+qiF60EFckC026c3ymqZ50NI6MKeAuIWujbJ3L9
	E+qsZJqwoXp8hgUOjX6E4bAVd9q6sllz6KFXHhtiyfZefdbtMF2DvedkP1g4/RxbF2tJ
	krg1w6lSOBs4yw7i98gDKn9hDfQIH93M2HjAdCaAGseUD3ery8KGc6vRpi0Np7Ux9ssZ
	V6ui5o5PSPd89K8ci91nH1FEC+eZeBcDi039/lrM2et29GL3GqRSwCB/9yG+shOJL19w
	pNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2YJ1XO+rF+bfCeQmsgGSq8yw0LZ9a5YvjlnCzb9chDM=;
	b=AOInAb47h9xfOAlM2Dq+aiEzv1MOG/Xgz2Z2Ckk3dmD18f0rrouejnRej9hMvVg5B3
	D4e8QvSBXQI+ZoAAPkCityQn68RxdzqPZVQ0mpeIMOoV9LJrdYnV4OyQqMC9/FnmdVO8
	MkIlYe4xZUYgF/3/vEyETDwsmTtqQeDfkL+UHxXxmLwDxFalHoVyuJIoGQfCmjjXK4z0
	eGCv4RmgwtD9erWbsFpv65GOsu6GQQizsv+OQVziu+kD0Ue8TOw3TeOA8O1pvvxKClmI
	VFsIQkyGSBAl34fEBKry9Bq1WYHdKKCmUceDdF/tbDFvWawcUMUNwUziOBlUpMKEkR4y
	vWJg==
X-Gm-Message-State: AODbwcDL3P2Rl8VjQyacRY1KhxXw/OaNekHfgZvB3MBG1YlxdrxQTc2U
	S0ZZ9vulfCMpu7RTPP1vn9pAYmnI5snW
X-Received: by 10.237.49.8 with SMTP id 8mr34454881qtg.161.1496922783868; Thu,
	08 Jun 2017 04:53:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 8 Jun 2017 04:52:43 -0700 (PDT)
In-Reply-To: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
References: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Jun 2017 12:52:43 +0100
Message-ID: <CAJTo0LZysn_2MJO9ffhKBrweHC6i+cDnYn0unSqRB_P549D0cg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's up with python3
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
X-List-Received-Date: Thu, 08 Jun 2017 11:53:06 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c9b1cca1d520551717e7b"

--94eb2c0c9b1cca1d520551717e7b
Content-Type: text/plain; charset="UTF-8"

On 8 June 2017 at 08:28, Gary Thomas <gary@mlbassoc.com> wrote:

> I've listed all the recipes used in my build (from bitbake -g =>
> recipe-depends.dot)
> and sucked out the ones that claim to depend on python3.  I don't see why,
> for
> example, python(2) depends on python3?
>

I'm 90% sure that this all comes through opkg-utils being the provider for
update-alternatives.

You could verify this by disabling the python PACKAGECONFIG in opkg-utils.

Ross

--94eb2c0c9b1cca1d520551717e7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 June 2017 at 08:28, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":7c" class=3D"a3s aXjCH m1=
5c869b9f43a41a9">I&#39;ve listed all the recipes used in my build (from bit=
bake -g =3D&gt; recipe-depends.dot)<br>
and sucked out the ones that claim to depend on python3.=C2=A0 I don&#39;t =
see why, for<br>
example, python(2) depends on python3?<br></div></blockquote></div><br>I&#3=
9;m 90% sure that this all comes through opkg-utils being the provider for =
update-alternatives.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">You could verify this by disabling the python PACKAGECONFI=
G in opkg-utils.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Ross</div></div>

--94eb2c0c9b1cca1d520551717e7b--
