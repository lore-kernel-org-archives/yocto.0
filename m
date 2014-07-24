Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BFF8E0078E; Thu, 24 Jul 2014 00:30:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og117.obsmtp.com (exprod8og117.obsmtp.com [64.18.3.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E90EE006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:30:21 -0700 (PDT)
Received: from mail-lb0-f176.google.com ([209.85.217.176]) (using TLSv1) by
	exprod8ob117.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU9C2Debfzd4OrfFgRCMAdPaJMq3sIB0t@postini.com;
	Thu, 24 Jul 2014 00:30:28 PDT
Received: by mail-lb0-f176.google.com with SMTP id u10so1963414lbd.35
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=g/JpjCHNL61qVlDJ0Uuj/JxejiSL31pjHS2b+10i5ro=;
	b=WKFubbDM9z+pQ7tsuQVIAapeAjE1qkMgYK42PzfdJhZJES8JTbYus8ujzn7EadwwXa
	AcLcfFWyn9nGosgpSan5vyne1GNllMAlNMYVt7cLhGSgcVTrR+ht02+hQ2VqiHkOQhwB
	T8tiJHr58XZd4dl8c9Uu9vjvrYMTMF6gFiX+OxgiNCu4W7b+qNiueISafGkakfdfDQW3
	W76lBQzDWhQCFEyQ5NLMP9K1Dhec3mBt9SqXql8T9bx8Mu5M0m5oCfdP/pRoiaFqz3GK
	Im14kKJ4jcG4n70hJaC5z25f6vyEL0Vgi+qNHQEqnQ6TSxTVngCrmOwEMDUhxLps6Ub0
	UiEQ==
X-Gm-Message-State: ALoCoQmD88Hn/6xof5+pJztmY3ubaFDmD6cUI48aqpEi4qHyi5QtVvGy0uobIy70reQSs+SvJ/ZbG76tvHNiOYMwkALG4Zzp4buc2S68XnFsIkKrarbH8hEjHezOQ+iiD7wFS0Ku4Cdw
X-Received: by 10.152.22.4 with SMTP id z4mr7429515lae.2.1406187020020;
	Thu, 24 Jul 2014 00:30:20 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.152.22.4 with SMTP id z4mr7429505lae.2.1406187019946; Thu,
	24 Jul 2014 00:30:19 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Thu, 24 Jul 2014 00:30:19 -0700 (PDT)
In-Reply-To: <CAJTo0LaOV7EJDuAnhzjbE+-e1R-75hCmrxB3FVm=yRWzwRLhMw@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
	<CAJrRHk6kFWpzUc+r4pd9xmZo+pn=f1a5R5oVtW1yLtqHurFMKg@mail.gmail.com>
	<CAJTo0LaOV7EJDuAnhzjbE+-e1R-75hCmrxB3FVm=yRWzwRLhMw@mail.gmail.com>
Date: Thu, 24 Jul 2014 15:30:19 +0800
Message-ID: <CAJrRHk6Ygt8Z2Nfr6r5B6WAhKU_ne8H-KcAG5mvV8R=FhgCevw@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Thu, 24 Jul 2014 07:30:31 -0000
Content-Type: multipart/alternative; boundary=089e0158b8e2cfeae604feeb6dcb

--089e0158b8e2cfeae604feeb6dcb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Ross,

I've mimic'd the bitbake.conf way of adding -staticdev. Apparently I got a
QA error stating that there are already multiple definitions of -staticdev
for my unit.

BTW, what's the purpose of ALLOW_EMPTY_${PN} =3D "1" and
ALLOW_EMPTY_${PN}-dev =3D "1"?

Really thank you for your help with this one.

- Joseph


On Wed, Jul 23, 2014 at 5:27 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 23 July 2014 10:23, Joseph Andrew de la Pe=C3=B1a <jdelapena@lexmark.c=
om>
> wrote:
> > Thanks for your reply Anooj. Apparently, based on my findings, the SDK
> > contains libraries that are "libtool archives", .la. For my part, I hav=
e
> > used .a only which is not "libtoolized". I'm finding a way how to make =
my
> > unit generate a libtool archive.
>
> In general you don't need libtool archives.  If you want .a files in
> the SDK for static linking then you want to add the recipe's
> -staticdev packages to the SDK.
>
> Ross
>

--089e0158b8e2cfeae604feeb6dcb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Ross,<div><br></div><div>I&#39;ve mimic&#39;d the=
 bitbake.conf way of adding -staticdev. Apparently I got a QA error stating=
 that there are already multiple definitions of -staticdev for my unit.=C2=
=A0</div>
<div><br></div><div>BTW, what&#39;s the purpose of ALLOW_EMPTY_${PN} =3D &q=
uot;1&quot; and ALLOW_EMPTY_${PN}-dev =3D &quot;1&quot;?</div><div><br></di=
v><div>Really thank you for your help with this one.</div><div><br></div><d=
iv>
- Joseph<br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">On Wed, Jul 23, 2014 at 5:27 PM, Burton, Ross <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@=
intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 23 July 2014 10:23, Josep=
h Andrew de la Pe=C3=B1a &lt;<a href=3D"mailto:jdelapena@lexmark.com">jdela=
pena@lexmark.com</a>&gt; wrote:<br>

&gt; Thanks for your reply Anooj. Apparently, based on my findings, the SDK=
<br>
&gt; contains libraries that are &quot;libtool archives&quot;, .la. For my =
part, I have<br>
&gt; used .a only which is not &quot;libtoolized&quot;. I&#39;m finding a w=
ay how to make my<br>
&gt; unit generate a libtool archive.<br>
<br>
</div>In general you don&#39;t need libtool archives. =C2=A0If you want .a =
files in<br>
the SDK for static linking then you want to add the recipe&#39;s<br>
-staticdev packages to the SDK.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--089e0158b8e2cfeae604feeb6dcb--
