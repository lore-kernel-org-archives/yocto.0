Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E90AE00DB6; Wed, 17 Jan 2018 08:28:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E119E008A4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 08:28:19 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id o64so13526329oia.9
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 08:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8WG3M0d//f4rOY22DEyYOqJ0KjaVQf6hzo81XuaDMX4=;
	b=L/WAGqdL1npW9xzzUntrpE8V18MnSsuQxyLwJoS1rot80JMqKOX1fKxSGPaTH1sEw9
	G6ZlAtHvLpmoiVNyz7KPcepad6+Ea0lZc4VKNiWD/T0Fjj5Cmzm6Y/7te6OqGSetF8Sp
	vfBnnEEW8apVAMGVJvUEh3b9pmDfMR9GpjaTWDz27Mawp59cnz7wqNonHVwyZu0KLqAh
	Gn0YyvrHxhmE99lwxvitc21T+9MP9G45hVN43EM8l/8ICkXwHCygZEhQzJKDD0nbu7nW
	AUe+d8jLDp7yEsAyfgzymthMdndXNOEuC+n0GfLVcyntjTspGeXPGH6LRdw/sZMIZf1g
	4wbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8WG3M0d//f4rOY22DEyYOqJ0KjaVQf6hzo81XuaDMX4=;
	b=dc4CdSedLUN9QOgV9Cdk2zL+WtboXt9nzKuBmfjMTTbvKXKxfLR9PMentYCJH+QpXW
	4npTTYNd8kkxe5Q94ctKasKWnWbF7XSRy47vNsC8JdPfadY2FpPZwhmaVbJBCig7DcVF
	EfDOfyFGEuQ4Qwzggv1D9aIGaXX5yX3UgBKUVJmE4A5vvv5j0UcuEyeTKaA+LqdZtpxn
	tIBrE1tLOV60i5Oe2ewnacpPBMQUO99u7mzU7TJZuyYpBv+bejsdOXWQacW2397MOXcw
	K+Xs6bpnpAwz2E9L30mkYwS8Zsx5oTF4nogk5LrN2ANUC7n2Bq4HzfCEGYNCLkN+IQXv
	+Npw==
X-Gm-Message-State: AKwxyte9jYqjCrBufzRMoFIsaMIkkBTvFN8DDuDiECZeX0SEPx+WACQw
	ybA6h6LqztcHSn8GLXic4dOZyNN8LcCJOo9+t+0=
X-Google-Smtp-Source: ACJfBou8XLJUe/JLWoJojXgV/7aImSrv0g+JpR2L6Y/964bWa/nyaNNd5cMWw/WJRPVkj83Dk6PvSJZQTwmBBfTWQvs=
X-Received: by 10.202.5.5 with SMTP id 5mr1447497oif.110.1516206499340; Wed,
	17 Jan 2018 08:28:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.4.33 with HTTP; Wed, 17 Jan 2018 08:28:18 -0800 (PST)
In-Reply-To: <307dddf7-0406-5564-fd97-e507207c1a2c@3mdeb.com>
References: <CAE0QtjNmUFGm0o_w0Wd12=h6r=JeYp2dEh9PPtMSY_29U0ninA@mail.gmail.com>
	<307dddf7-0406-5564-fd97-e507207c1a2c@3mdeb.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 17 Jan 2018 11:28:18 -0500
Message-ID: <CAE0QtjPwWuj7qnXb5Btkov+AqJYW_q9CDWG7yOi_w5Av+N9RRg@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Editor (viewer) for device tree *.dts file? (I mean syntax highlighting)
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
X-List-Received-Date: Wed, 17 Jan 2018 16:28:21 -0000
Content-Type: multipart/alternative; boundary="94eb2c18d080cca6c20562fb55c4"

--94eb2c18d080cca6c20562fb55c4
Content-Type: text/plain; charset="UTF-8"

Thanks Maciej, vim works well as expected!





On Wed, Jan 17, 2018 at 10:46 AM, Maciej Pijanowski <
maciej.pijanowski@3mdeb.com> wrote:

> I'm just using vim for everything. It highlights dts syntax.
>
> On 17.01.2018 16:37, Jerry Lian wrote:
>
> Sorry that this question is not related to Yocto, but just wondering if
> anybody knows:
> * are there editors/viewers (with syntax highlighting) for device tree
> *.dts file?
>
> Thanks,
> Jerry
>
>
>
> --
> Maciej Pijanowski
> Embedded Systems Engineerhttp://3mdeb.com | @3mdeb_com
>
>

--94eb2c18d080cca6c20562fb55c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Maciej, vim works well as expected!<br><br><br><br>=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed,=
 Jan 17, 2018 at 10:46 AM, Maciej Pijanowski <span dir=3D"ltr">&lt;<a href=
=3D"mailto:maciej.pijanowski@3mdeb.com" target=3D"_blank">maciej.pijanowski=
@3mdeb.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I&#39;m just using vim for everything. It highlights dts syntax.<br>
    </p><div><div class=3D"h5">
    <br>
    <div class=3D"m_-8983823208581093881moz-cite-prefix">On 17.01.2018 16:3=
7, Jerry Lian wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>Sorry that this question is not related to Yocto, but
              just wondering if anybody knows: <br>
            </div>
            <div>* are there editors/viewers (with syntax highlighting)
              for device tree *.dts file? <br>
            </div>
            <br>
          </div>
          Thanks,<br>
        </div>
        Jerry<br>
      </div>
      <br>
      <fieldset class=3D"m_-8983823208581093881mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
    </div></div><span class=3D"HOEnZb"><font color=3D"#888888"><pre class=
=3D"m_-8983823208581093881moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"m_-8983823208581093881moz-txt-link-freetext" href=3D"http://3md=
eb.com" target=3D"_blank">http://3mdeb.com</a> | @3mdeb_com</pre>
  </font></span></div>

</blockquote></div><br></div>

--94eb2c18d080cca6c20562fb55c4--
