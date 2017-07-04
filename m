Return-Path: <prasoonkumar1295@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0D1AE00BB6; Tue,  4 Jul 2017 04:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prasoonkumar1295[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9114E00AE4
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 04:50:16 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id k3so10490066ita.3
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 04:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yHrfQB+dzxgzE9saMiLxfci34/NsxaITAw5OGywLa9I=;
	b=jyysbey6vdHngg4CjAwOif1nY2v+7W0/OaPVlYBYsFxYF8k8/MjRVnzt3tA6n3k6TA
	1zrkjxl/7y7O6Eg0Mc3IyBYmYuusYhMEGg/x7pQO4JL0vAXdB5rhXfOuixHbKNcoiGAR
	Wx0rV0y/lyiBZMUB+vi89rFDRi/pexC1yS6EEGatlHSKr7/4BAFErQ6k0CA8zmMh5L8f
	JDyO5ivLedjJ+HRBYNpLGQ5vkT9jNtG7K5Vny/85ZlytDaGT4E/gDQLGu8y78gDBKRqq
	n4Daqvulb+17277QfNDo/1R6hv7yD/onyEYKXI0Kjjv5mr9nn0WNbTdEF4KqIRL38Dyz
	nISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yHrfQB+dzxgzE9saMiLxfci34/NsxaITAw5OGywLa9I=;
	b=ZdfJv2mVuP63FUO9ltlpSed34qhPYWr5jFzJcnwWvNPobGRw+Z4Zu9AhQk5JXckWBU
	2QFoWRFiWpZmq3xybdke7h4s+vOjhmOA/eEaZlaKGAntROzFz1cPjESz2GfZCQ4YAcaF
	9XLyQGSoSunfpiKjEXgTqSYXbQnO6rVuW5OdnhykBguUIXbEs9ZzNCEt9qhj/Qe14qqF
	gX2/xF3rVnGmJOIkOow+vQz4/s6hiGWFp7rfT9FZ5SeJYX645kIC9cxn+EJccRsMK3iQ
	6qlsl0HV7LSXk89ojlaC768UtvQGoMSE9dWWjwmBVrjoquP1xA40yV26ATf5pkrKdxHX
	FcIw==
X-Gm-Message-State: AKS2vOzCgV1HkPeVHszToi+VI0Yvl03yh4NfJevK92B+wQVLgdm/WnmZ
	mG8/rA9u87bz3lr5aGyWpu/WRcvAJw==
X-Received: by 10.36.65.234 with SMTP id b103mr5911341itd.0.1499169015983;
	Tue, 04 Jul 2017 04:50:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.122.133 with HTTP; Tue, 4 Jul 2017 04:50:15 -0700 (PDT)
Received: by 10.79.122.133 with HTTP; Tue, 4 Jul 2017 04:50:15 -0700 (PDT)
In-Reply-To: <cc436872-9b62-ae76-a119-f3627beed148@gmail.com>
References: <CAGAEfx5_j17h=PGTKC4WT_qi+gUEqQU9E_w_7vzRE_0OPasuow@mail.gmail.com>
	<CAGAEfx4B_sEGMb-ie+Ti9JZzQ_COf8VF+9FdptsKNwvzLqscxQ@mail.gmail.com>
	<CAGAEfx7gZt_JSdmTwWi7H5C8_9Lu8y3MvHaFdW163VRveqdfZw@mail.gmail.com>
	<CAGAEfx5M6tzcfFxhHy-gY52Bm-eu6=ExTc-h=b1D_epTD45Ozw@mail.gmail.com>
	<CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
	<cc436872-9b62-ae76-a119-f3627beed148@gmail.com>
From: Prasoon Kumar <prasoonkumar1295@gmail.com>
Date: Tue, 4 Jul 2017 17:20:15 +0530
Message-ID: <CAGAEfx4AsGmxkZ=ZHorpJNYyaPCCzWowqf2d1MCc7xw=VnX3kw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to make changes and build u-boot source code in yocto
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
X-List-Received-Date: Tue, 04 Jul 2017 11:50:20 -0000
Content-Type: multipart/alternative; boundary="001a11c146a6a8008e05537c7ca2"

--001a11c146a6a8008e05537c7ca2
Content-Type: text/plain; charset="UTF-8"

It worked with devtool .

Thanks for the help.

On 04-Jul-2017 1:43 AM, "Khem Raj" <raj.khem@gmail.com> wrote:

>
>
> On 7/2/17 11:26 PM, Prasoon Kumar wrote:
>
> Hi,
>
> I am trying to make some changes in u-boot code and using bitbake u-boot
> to build. But it doesn't build.
> I also tried bitbake u-boot -c compile and bitbake u-boot deploy. This
> also didn't work.
>
> Can I Get some help on how to change and build u-boot.
>
>
> you should share more information about errors for someone to effectively
> help you.
>
>
> Thanks,
> Prasoon
>
>
>
>

--001a11c146a6a8008e05537c7ca2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It worked with devtool .=C2=A0<div dir=3D"auto"><br></div=
><div dir=3D"auto">Thanks for the help.</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 04-Jul-2017 1:43 AM, &quot;Khem Raj&qu=
ot; &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wr=
ote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class=3D"m_2199126870683967542moz-cite-prefix">On 7/2/17 11:26 PM,=
 Prasoon Kumar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">Hi,
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I am trying to make some changes in u-boot code
          and using bitbake u-boot to build. But it doesn&#39;t build.</div=
>
        <div dir=3D"auto">I also tried bitbake u-boot -c compile and
          bitbake u-boot deploy. This also didn&#39;t work.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Can I Get some help on how to change and build
          u-boot. <br>
        </div>
      </div>
    </blockquote>
    <br>
    you should share more information about errors for someone to
    effectively help you.<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto">Prasoon</div>
      </div>
      <br>
      <fieldset class=3D"m_2199126870683967542mimeAttachmentHeader"></field=
set>
      <br>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--001a11c146a6a8008e05537c7ca2--
