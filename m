Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 718FFE00B01; Tue, 28 Mar 2017 01:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B98EE00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 01:39:29 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id r45so58055127qte.3
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 01:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rOGZc3cvTJBNW3IY458t2p7Mai2hum2aNaCHbjsA/rA=;
	b=CEwa+6SFOI/BrnMJCEGbhrgoUVp9ijVjh1ZIqLfyclVT3M+6NSwJDhmBO7WR60dNwo
	H6x91s0B3Rex4fhT8/9VEqvfQ9dNjtNcDH88+NGyzC2pZ6GZIhEDRMZmaYmDiMnASKMV
	tdgZWuwe35RBK2BcYTGDecBROOMzJkdD8j/nke15e/2IgJawnBuiT0baio0C4U6xDfiC
	YsObxsstQg3nKfRcInjp/ZibCIQM+FAbL+Eoiv5Jg67zZjhqoeNXKpP+Gq7XYsEn/xc4
	vS7fRrVi0nuI7VFVsyF/PeUUxtifPklXIi8Nh8RIkwpNphkstMktLteri+wS9uMfYqhF
	jASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rOGZc3cvTJBNW3IY458t2p7Mai2hum2aNaCHbjsA/rA=;
	b=Z9rNAYNUvg7VFe+3vsYbbMvD+WNaID7judM20ba4ve1jyCE77oujCG4es8J/nDQbNQ
	fpZjFUNWns3Clb3TeUyzzFR7fJxeqazUFH0wOEiu/PLt4IV/q4z0+RLWNyeWfog4HjSO
	DJawIvYsKGVqpHeF4VBnxE1GGWh7cWpe33mCQGZtUzg8HqVnjn5uZPH3MjFnhuiYNWrm
	MHWVNr6o6MpWZU7GJb7wRxRHhLQScINWIn90CTLp6DT1t5sYSIW6pcoIA/qUI6szrEMp
	PaZjQq6s/ZhxJTBgMIvgXwktJDD12Vp+abh7Dmg5V4uUm5P8DifBitRgBUykIHj4rVvs
	7VrA==
X-Gm-Message-State: AFeK/H0shk6jog1rOHSMlxIqgunSUrP8SLvoZT93LWs5dgKdTS57Z9m6H16qp5b0hUm50lvxaVIImyzoO2KX4Nao
X-Received: by 10.237.42.164 with SMTP id t33mr27173563qtd.105.1490690368979; 
	Tue, 28 Mar 2017 01:39:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 01:39:08 -0700 (PDT)
In-Reply-To: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
References: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 09:39:08 +0100
Message-ID: <CAJTo0LajEvXnv+_L-udEejKu6c56xOrKwekoNRNzn29R_ihqZg@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current situation with gobject introspection?
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
X-List-Received-Date: Tue, 28 Mar 2017 08:39:31 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe22ea581c054bc665b7

--94eb2c0cfe22ea581c054bc665b7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 28 March 2017 at 09:05, <colin.helliwell@ln-systems.com> wrote:

> So I wondered what the latest [krogoth] situation is =E2=80=93 am I likel=
y to be
> able to get this package to build, and where/how might I get started?
>
>
Krogoth (2.1) isn't the latest, that's Morty (2.2) released in October 2016
and next month Pyro (2.3) is being released.

Krogoth has support for gobject-introspection, and is covered in the
documentation:

http://www.yoctoproject.org/docs/2.2.1/dev-manual/dev-manual.html#enabling-=
gobject-introspection-support

Ross

--94eb2c0cfe22ea581c054bc665b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2017 at 09:05,  <span dir=3D"ltr">&lt;<a href=3D"mailto:colin.h=
elliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal">So I wonder=
ed what the latest [krogoth] situation is =E2=80=93 am I likely to be able =
to get this package to build, and where/how might I get started?<u></u><u><=
/u></p><p class=3D"MsoNormal"></p></blockquote></div><br>Krogoth (2.1) isn&=
#39;t the latest, that&#39;s Morty (2.2) released in October 2016 and next =
month Pyro (2.3) is being released.</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Krogoth has support for gobject-introspection=
, and is covered in the documentation:</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra"><a href=3D"http://www.yoctoproject.org/doc=
s/2.2.1/dev-manual/dev-manual.html#enabling-gobject-introspection-support">=
http://www.yoctoproject.org/docs/2.2.1/dev-manual/dev-manual.html#enabling-=
gobject-introspection-support</a><br></div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0cfe22ea581c054bc665b7--
