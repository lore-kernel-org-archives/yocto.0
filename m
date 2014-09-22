Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35026E0086B; Mon, 22 Sep 2014 05:14:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og104.obsmtp.com (exprod8og104.obsmtp.com [64.18.3.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3707EE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:14:16 -0700 (PDT)
Received: from mail-we0-f171.google.com ([74.125.82.171]) (using TLSv1) by
	exprod8ob104.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCASlxw28WNw75mubE6kMApgF7uBtUo5@postini.com;
	Mon, 22 Sep 2014 05:14:17 PDT
Received: by mail-we0-f171.google.com with SMTP id k48so2773455wev.30
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:14:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Nqdtc4LvPeqU7+BBB782rN8Cgk+UvNxa2vcM3Pt2PQY=;
	b=T6bTfoB+cDvYpjZkqr99VxFjgxzx4Mb0FfIrztKq32WgycPalpQ162BUIG+47//WOR
	5YArgbszPsCvXbDAp89hbWYHTGfqptjdwxQoP4YiTMos5RUTR0SsAqS1D8Qx5MjOH1Qb
	Txpi7kaxtA1Di6XDxfW2JdoIXsRPgNrsE9Oy+VGmTJ9LIQpLfRSVKFW2IjmGZ4XBEGCi
	ACpjNxgIKPG/jCFyAr04botW0DPQqKGGuLkhS8fHw56jUvQmS4gbC/kKfLJ6Y4J60N39
	VfwIGTzmsmyq3IUQsOJdapKseu7Pkb+3489V3U7Kpunu6mcC3bNVTExfj7kzem/W1gAX
	LdYQ==
X-Gm-Message-State: ALoCoQkBWx+nSd+eMCXtDqv2bjcYgFdfQ81vx7SMHM1x/4YT0tQLIwztgLvLtaW6FuvRyY5JOlu8KwMH3dd9C/1XQrKnExnphyjJmH0OKlzC3+VIwIza4ZVNQa0fg77RKqFwE+8BfTqMsIJ+oKrOBEBTLl22l7glzA==
X-Received: by 10.180.184.39 with SMTP id er7mr14681197wic.16.1411388054677;
	Mon, 22 Sep 2014 05:14:14 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.180.184.39 with SMTP id er7mr14681172wic.16.1411388054424;
	Mon, 22 Sep 2014 05:14:14 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 22 Sep 2014 05:14:14 -0700 (PDT)
In-Reply-To: <CAJTo0LaKrQmFh_SzprfhpMUBQ5zCuG2M6-tSHayW90NxdnkrbA@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
	<CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
	<CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
	<CAJTo0LaKrQmFh_SzprfhpMUBQ5zCuG2M6-tSHayW90NxdnkrbA@mail.gmail.com>
Date: Mon, 22 Sep 2014 20:14:14 +0800
Message-ID: <CAJrRHk71oTAv_Yko4m1_LAWP=cXJy-6jA93qiG40-xkb2-Z=mA@mail.gmail.com>
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
X-List-Received-Date: Mon, 22 Sep 2014 12:14:18 -0000
Content-Type: multipart/alternative; boundary=001a11c357689fe5050503a663af

--001a11c357689fe5050503a663af
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Certainly not. How can I get pass this?

On Mon, Sep 22, 2014 at 8:11 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 22 September 2014 13:05, Joseph Andrew de la Pe=C3=B1a
> <jdelapena@lexmark.com> wrote:
> > Yes, our recipe is depending on curl. The dependency chain is
> > (nativesdk-our_unit, nativesdk-curl, nativesdk-krb5).
> > The recipe needed curl for certain functions. It works perfectly for
> native
> > but when it comes to nativesdk, there is the disconnect. Why is krb5 no=
t
> > seen in sdk but no error is seen for native?
>
> Okay, different question.  Do you want and need your curl to depend on
> krb5?
>
> Ross
>

--001a11c357689fe5050503a663af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Certainly not. How can I get pass this?</div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 22, 2014 at 8:11 P=
M, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.c=
om" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On 22 September 2014 13:05, Joseph Andrew de la Pe=
=C3=B1a<br>
<span class=3D"">&lt;<a href=3D"mailto:jdelapena@lexmark.com">jdelapena@lex=
mark.com</a>&gt; wrote:<br>
&gt; Yes, our recipe is depending on curl. The dependency chain is<br>
&gt; (nativesdk-our_unit, nativesdk-curl, nativesdk-krb5).<br>
&gt; The recipe needed curl for certain functions. It works perfectly for n=
ative<br>
&gt; but when it comes to nativesdk, there is the disconnect. Why is krb5 n=
ot<br>
&gt; seen in sdk but no error is seen for native?<br>
<br>
</span>Okay, different question.=C2=A0 Do you want and need your curl to de=
pend on krb5?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c357689fe5050503a663af--
