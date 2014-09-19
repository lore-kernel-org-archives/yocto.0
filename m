Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6933DE0085F; Thu, 18 Sep 2014 21:46:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og110.obsmtp.com (exprod8og110.obsmtp.com [64.18.3.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9820E0076C
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 21:45:51 -0700 (PDT)
Received: from mail-lb0-f172.google.com ([209.85.217.172]) (using TLSv1) by
	exprod8ob110.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVBu0/m7NikwsPdiG55aOEBg6RnVOmMQz@postini.com;
	Thu, 18 Sep 2014 21:45:58 PDT
Received: by mail-lb0-f172.google.com with SMTP id p9so1833373lbv.3
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 21:45:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=YtWEyvrZMPi3beUiLgmCXj0c+QwKXhGPPTen+sYO0/c=;
	b=audJiF/qgyBXoAUQuppB1Q+NAoCDys5Ai5DXw/EZTlZ+X1vysHjp04dDpcwMSs/dl9
	16FJn/fvgYNHucWWe2UgMQDfwMHWEXTQVOrtdOZy1vfcJFUP7RjVbEz+NP05QwL5H5YK
	g/SplRssy01MA7855UHLjqCzFuj67wUDFiK2wKPyr2Eg03g1iB+1Zzn5LHb7NefC4hfx
	zoNHjQj/Xr6HyydLThimx9a5uS7a7WH3yb7ey3+t5tuNCug4H79/PMshuNleO++kACpQ
	DfhLb9Nrq82GCyZRFmEnAl2K9HxzYZQgpu9bie5lnGhmofARf5JZVCMRDcBKQRWeNTA6
	GWQA==
X-Gm-Message-State: ALoCoQlJfrAVAbjx9ee3PxFTDpggf8Je6WiY19iqMB9l8ka3zl3TRsX0180/CwAUhkPh+szKwwjQz7JQyIqJ6VOIh8GB/DVU0C7Qo1sOEBI62XInX9CDKPSTukve+VSAot3sqNfIV0mmTV21JfxIp/O41jpSqaCXgg==
X-Received: by 10.152.8.9 with SMTP id n9mr4212258laa.2.1411101949312;
	Thu, 18 Sep 2014 21:45:49 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.152.8.9 with SMTP id n9mr4212239laa.2.1411101948938; Thu, 18
	Sep 2014 21:45:48 -0700 (PDT)
Received: by 10.152.8.102 with HTTP; Thu, 18 Sep 2014 21:45:48 -0700 (PDT)
Date: Fri, 19 Sep 2014 12:45:48 +0800
Message-ID: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Fri, 19 Sep 2014 04:46:01 -0000
Content-Type: multipart/alternative; boundary=001a11c36748689a19050363c699

--001a11c36748689a19050363c699
Content-Type: text/plain; charset=UTF-8

Good day Yocto Community,

I have an ERROR when building my nativesdk recipe:

ERROR: Nothing PROVIDES 'nativesdk-krb5' (but
virtual:nativesdk:poky/meta/recipes-support/curl/curl_7.32.0.bb DEPENDS or
otherwise requires it).

Haven't seen a DEPENDS for krb5 in curl and openssl recipe.
Is there any update on curl recipe to fix this?

Thanks,
Joseph

--001a11c36748689a19050363c699
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto Community,<div><br></div><div>I have an ERR=
OR when building my nativesdk recipe:</div><div><br></div><div>ERROR: Nothi=
ng PROVIDES &#39;nativesdk-krb5&#39; (but virtual:nativesdk:poky/meta/recip=
es-support/curl/<a href=3D"http://curl_7.32.0.bb">curl_7.32.0.bb</a> DEPEND=
S or otherwise requires it).</div><div><br></div><div>Haven&#39;t seen a DE=
PENDS for krb5 in curl and openssl recipe.</div><div>Is there any update on=
 curl recipe to fix this?</div><div><br></div><div>Thanks,</div><div>Joseph=
</div><div><br></div><div><br></div></div>

--001a11c36748689a19050363c699--
