Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10155E0086B; Mon, 22 Sep 2014 06:16:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.38 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og119.obsmtp.com (exprod8og119.obsmtp.com [64.18.3.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C68DE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 06:16:25 -0700 (PDT)
Received: from mail-we0-f173.google.com ([74.125.82.173]) (using TLSv1) by
	exprod8ob119.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCAhKItEy5HY9CfQiRDcHqbBk7gQqKOV@postini.com;
	Mon, 22 Sep 2014 06:16:28 PDT
Received: by mail-we0-f173.google.com with SMTP id x48so1442301wes.32
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 06:16:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ak6l2xMICAsnCvnp81dVvankVdwb8GAbFmSG2hDp+3I=;
	b=bNMGdPt6KYbUmbtoOu+SiWOgQWPuQJuPlZR3h6OIntyqSJ6lphPSyWHhwTgQdy3K+f
	wxxcF445EbqxSMDVCmoXQyfvfcUrNEF5c/ovLzWxzzbBzwbgVfMFvsPCaGDEfQlBQGvg
	bt+EuQZ5AyRvCgXroD4YkHr3mX13NtBxaoGIzZZtq/vkCS+b8unYFAiOkB7YSvloBqkw
	Al1LgGTJk/ABtWzfKtC9X3gpDaCSJMeHrl7XwCu4L43h/9rvMfK1hh5gpvNp9bIRop9f
	efavvc+RpAgbDUJcVrFtSQ4XnULuAmi7/hWXs0xL5yo7vzKbYgbm6IKR6aHrMeTVeVSr
	vXqQ==
X-Gm-Message-State: ALoCoQn4DZbOl+2oTpPo6iXbXEmJ7oAhH/PEBzsKqXA+R98xP2h7MpR5uUSJ4sjpKCMh2CljRocb0+CbzW1iiDBnCFiZB6+6mkrzTreG8OzB3/K6lrv5iLbixHQDPl8z5OIgDKBdn8c6XPgF3iywYfjLhPrA9Cec9w==
X-Received: by 10.180.19.167 with SMTP id g7mr755854wie.19.1411391783413;
	Mon, 22 Sep 2014 06:16:23 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.180.19.167 with SMTP id g7mr755849wie.19.1411391783332; Mon,
	22 Sep 2014 06:16:23 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 22 Sep 2014 06:16:23 -0700 (PDT)
In-Reply-To: <CAJTo0Lba3u=9jxAaFG5yq3cGBJzf9fHkdYFB0koAqqeTXX0HkA@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
	<CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
	<CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
	<CAJTo0LaKrQmFh_SzprfhpMUBQ5zCuG2M6-tSHayW90NxdnkrbA@mail.gmail.com>
	<CAJrRHk71oTAv_Yko4m1_LAWP=cXJy-6jA93qiG40-xkb2-Z=mA@mail.gmail.com>
	<CAJTo0Lba3u=9jxAaFG5yq3cGBJzf9fHkdYFB0koAqqeTXX0HkA@mail.gmail.com>
Date: Mon, 22 Sep 2014 21:16:23 +0800
Message-ID: <CAJrRHk6hi6A=2ioDMGnfk4JQ0UAk5rJuSvuy4raZGw55rrkW2w@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 13:16:31 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5dffe2881b0503a74109

--bcaec53d5dffe2881b0503a74109
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Ross,

How about if I wanted to depend on krb5?

Thanks,
Joseph

On Mon, Sep 22, 2014 at 8:23 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 22 September 2014 13:14, Joseph Andrew de la Pe=C3=B1a
> <jdelapena@lexmark.com> wrote:
> > Certainly not. How can I get pass this?
>
> You use bitbake -e nativesdk-curl, search that for "krb5", and it
> should tell you where the krb5 dependency came from.  What you do then
> depends on what and how added that dependency.
>
> Ross
>

--bcaec53d5dffe2881b0503a74109
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Good day Ross,</div><div><br></div>How about if I wan=
ted to depend on krb5?<div><br></div><div>Thanks,</div><div>Joseph</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 22=
, 2014 at 8:23 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On 22 September 2014 13:14, Joseph=
 Andrew de la Pe=C3=B1a<br>
<span class=3D"">&lt;<a href=3D"mailto:jdelapena@lexmark.com">jdelapena@lex=
mark.com</a>&gt; wrote:<br>
&gt; Certainly not. How can I get pass this?<br>
<br>
</span>You use bitbake -e nativesdk-curl, search that for &quot;krb5&quot;,=
 and it<br>
should tell you where the krb5 dependency came from.=C2=A0 What you do then=
<br>
depends on what and how added that dependency.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--bcaec53d5dffe2881b0503a74109--
