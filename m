Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26747E00857; Wed, 28 Mar 2018 06:58:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85D63E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:58:15 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id n124so1426005vkd.6
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VgOrQ9vaP0g8VnXsI5bhp8/nTvw5whFXWNhtVklmWE0=;
	b=JnM49jPggEtPXJjSd1RU2nlXlWQoQffsk3Vs4YHSfzwQWIB1BOdFUZVnHy7F1zDyoI
	PsthcB2QeZ5bet94UcyLMfhtq4wXBOtRj4a7XgD3ZIm25qa5u4wnLKRrX1WOm45dZknE
	uLRplIEtdfTIj9YXJy8svn63PdNea8MBimVnhzSo/+DN4qjcpD+D8ciQ4Q1oVxED24Fp
	eUdk5prSDj+YNp7Ezb+acHtug5zqJ1LJT7Qp0EDJdviSLrZ9uyFOCMz6B4M/urITsEDG
	/bHiuIL7MgmqJBXKJwienGZJtKnee+d0ENUWAmkygX4LFa3TOPHkDcp2nd0yP060oUYK
	+yxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VgOrQ9vaP0g8VnXsI5bhp8/nTvw5whFXWNhtVklmWE0=;
	b=jC0dxAljnaTGyiRYFuaBRDzpU6p6GN/Rtr+f+ZO9GVAr7GWcqUwcpQqtPKYKWG8zUZ
	/C8PZo+ZEdsCMiaDRasWTh1ih9GNe+BsdFSAFhZhBM/mIBZpRnFHQXcI3w/jyslJaj4q
	TsDosqKAL0EYJd3eoqcXcQSQm8Cvvm5IYMU3esLXw2Ieq2POKndGW5PiqomJ4/8BK9xt
	49ORfo5+rZOuAExmmeivqMJ3lXlbRdTnqaiQtHCRBgY4uBz6hE1QszAeJ7AU/1Vnu8WB
	cqG36XIaaoR08OXMLBzi3C845kXkg2YKFpcrthv5VT/cwXbNRQLZW9PX+pX3rUavX1i2
	K7/w==
X-Gm-Message-State: AElRT7FKf/t3jZv7NkMdZuGinmAfD6JewtCvxG9fhNdswjSkX3Z6Iv5F
	YdmYc53Azy1d7dz0jROKxobxzbSgn0lnZhWHDzL5xA==
X-Google-Smtp-Source: AIpwx4+dM58QaEppWGSnJiddRtATdLEfprKkuEj2DtcSnLJM5dYTP87UIR6t9xaSfARrFvs8WH0CJFXAbV3IpVhMZHo=
X-Received: by 10.31.63.3 with SMTP id m3mr2290182vka.143.1522245494230; Wed,
	28 Mar 2018 06:58:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.96.145 with HTTP; Wed, 28 Mar 2018 06:57:33 -0700 (PDT)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <CAPyrkgw2+as+8wbiKdkZuHFpTJ=+GjHP3=E+Qo4EqKC7OQausA@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
	<CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
	<CAEhQi8=7+44c4ztcE0ZnO=J_nQO=FBVcEx71RNNqf6jun8U65g@mail.gmail.com>
	<CAPyrkgw2+as+8wbiKdkZuHFpTJ=+GjHP3=E+Qo4EqKC7OQausA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 28 Mar 2018 14:57:33 +0100
Message-ID: <CAK18fxHBomdRub=UJdSsfJBOHJsEvQ0KLMy-DN7L_--gW1s=ag@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 13:58:16 -0000
Content-Type: multipart/alternative; boundary="001a114daa2cf1eafc05687965c9"

--001a114daa2cf1eafc05687965c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

On Wed, Mar 28, 2018 at 2:40 PM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher <mans.zigher@gmail.com>
> wrote:
> > Hi,
> >
> > Thanks I will do that. But I have other layers that depend on the rocko
> of
> > meta-raspberrypi so I believe I will have to use the rocko at some poin=
t
> but
> > for testing I will try Morty. What is the reason for using Morty do you
> > know? Is rocko unstable?
> >
>
> Yea, we need to get this fixed in rocko. My test device for
> raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us
> out with testing here.
>
> Could you try out core-image-base built from master with just the
> required layers? If that works then a kernel/firmware backport is
> likely what's needed.
>
>
Today I will have 3b+ support PR to master. Afterwards we can start
backporting things as needed. I'm currently only interested in rocko but if
other people are willing to do it, we can PR stuff in older versions too.

--
Andrei Gherzan

--001a114daa2cf1eafc05687965c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi g=
uys,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">O=
n Wed, Mar 28, 2018 at 2:40 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.z=
igher@gmail.com">mans.zigher@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
</span><span class=3D"">&gt; Thanks I will do that. But I have other layers=
 that depend on the rocko of<br>
&gt; meta-raspberrypi so I believe I will have to use the rocko at some poi=
nt but<br>
&gt; for testing I will try Morty. What is the reason for using Morty do yo=
u<br>
&gt; know? Is rocko unstable?<br>
&gt;<br>
<br>
</span>Yea, we need to get this fixed in rocko. My test device for<br>
raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us<br>
out with testing here.<br>
<br>
Could you try out core-image-base built from master with just the<br>
required layers? If that works then a kernel/firmware backport is<br>
likely what&#39;s needed.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Today I will have 3b+ support PR to master. Afterwards we can=
 start backporting things as needed. I&#39;m currently only interested in r=
ocko but if other people are willing to do it, we can PR stuff in older ver=
sions too.</div><div><br></div><div><div style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial">--</div><span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline">Andrei=
 Gherzan</span><br></div></div></div></div>

--001a114daa2cf1eafc05687965c9--
