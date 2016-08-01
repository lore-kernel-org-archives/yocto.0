Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA808E010A4; Mon,  1 Aug 2016 05:50:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91C66E0109D
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 05:50:06 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id r9so12698695ywg.2
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 05:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=sYrTEuzSVht0SEjKjKlMA/LVS/evJcIWncIt1uNt+Do=;
	b=R5dC0Cq9VAV71fNPOtukS28oztTBuxMLcc1JXrRDKNEkc+F5shqUwN7DdZCF3ftKuS
	PqjmrM98LL2mQuMsylzLLaYEH5ZyKdHTd1ZuP+rf0TyXw9MrzWJ+goBXWTu6Dupc36Gi
	2PjMum974LsRm9lLT3udxU4pq4ptEurZDRY4ELIGR1hd6Qpeact/imR7AKFFvOcP28EU
	UICHp8T5gJx1pQPwQBTR33XH/ZsfyF1Dv9vrIM1s+ubV7ctaS79Bj4bITI4VGEatOgYf
	f8An685KJ38OONnAlPZgD2LDfu//WhB2a9vnBHzKI5ELoXdoh518phAam5PV/AhJhWiH
	ZfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=sYrTEuzSVht0SEjKjKlMA/LVS/evJcIWncIt1uNt+Do=;
	b=PepWphzWnOTkyhectjuMl/8Wsxi6UQtX3HoFHE4cSK3mQHiemnl6OtQRM4WLgPBVSi
	GeUyH1wBLxCrsaDXDNg+z81QSRUg6g5095K62lJMQy0ZKDinWzDULDVl640Qa7ZCGm3U
	buRzDztxEjdxGM5J/fKTNBtXLEpN36dPwmOzqCiq7Nle5Cnz0SzB7DnMyRRCApa6X5KQ
	slK5P9+6TsGKyDELAjslI03e39twSCYAjzF4B58KpdU8GQvr/rFsSFOy30AjVMPU6Me5
	kXpniApyS/pBc0fqgyRiqx/5fodERcIiVDKL8NL1hEoQp/uRmbV0hX3RmsGLheywd5Es
	DbJA==
X-Gm-Message-State: AEkoout9CDfDyhrOnP/ifrf1Y01gQiFhgh2AdeAD1+fDZuDj2ZBabbO3PWuDBVhjymkBTR0RzbxjGPI/XazlEw==
X-Received: by 10.13.215.71 with SMTP id z68mr46183886ywd.293.1470055805624;
	Mon, 01 Aug 2016 05:50:05 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.132.20 with HTTP; Mon, 1 Aug 2016 05:49:46 -0700 (PDT)
In-Reply-To: <CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
References: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Mon, 1 Aug 2016 08:49:46 -0400
X-Google-Sender-Auth: eWdc8JMgrdHyhAHFwd4vWz-QpRA
Message-ID: <CAFrQVPPN3iVVakjYLGOBnP=rc5oeO40SfEV5s6tyE4jiN9Z_eA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Mon, 01 Aug 2016 12:50:09 -0000
Content-Type: multipart/alternative; boundary=94eb2c0775b81828e20539020ac8

--94eb2c0775b81828e20539020ac8
Content-Type: text/plain; charset=UTF-8

Well, that makes sense.  I'm just tripping all over this one.

On Mon, Aug 1, 2016 at 8:29 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 1 August 2016 at 13:01, Kyle Russell <bkylerussell@gmail.com> wrote:
>
>>  scripts/contrib/python/generate-manifest-3.4.py | 10 +++++-----
>>
>
> Sorry, but you need to edit the script and then run the script, so the
> patch contains both the script and inc file changes.
>
> Ross
>

--94eb2c0775b81828e20539020ac8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, that makes sense.=C2=A0 I&#39;m just tripping all ov=
er this one.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Mon, Aug 1, 2016 at 8:29 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1 August 2016 at =
13:01, Kyle Russell <span dir=3D"ltr">&lt;<a href=3D"mailto:bkylerussell@gm=
ail.com" target=3D"_blank">bkylerussell@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>=C2=A0scripts/contrib/python/<a href=3D=
"http://generate-manifest-3.4.py" rel=3D"noreferrer" target=3D"_blank">gene=
rate-manifest-3.4.py</a> | 10 +++++-----<br></div></blockquote></div><br>So=
rry, but you need to edit the script and then run the script, so the patch =
contains both the script and inc file changes.</div><span class=3D"HOEnZb">=
<font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--94eb2c0775b81828e20539020ac8--
