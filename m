Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98B95E00559; Tue,  8 Jul 2014 15:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F24FCE00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 15:32:57 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id tr6so875005ieb.8
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 15:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4LP0sCJ7LGoat/SIxuyHtmGW166uqgAtGHNsrM5bZ1U=;
	b=N3EdYO935WwjwZYygypw4TzBZxMbut6YgYCUd4DTLIEBKl75WmyCBD7HtxeYJ0TbNJ
	Kr4Vgjiloep9i+6IJMPJ+60B0sXI5QSEno019QAQjd5OxShDTAooI6zNBKOAqFfatyEk
	Jk6v56Guobienaz12JnWnK04SCYRUiCPzCyos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=4LP0sCJ7LGoat/SIxuyHtmGW166uqgAtGHNsrM5bZ1U=;
	b=FjJALEhu/219YwY9s3J8VHXGsvlCv2EQS+APNeq8djpF2qSVAAjJgIAd2mP7+piXxm
	1sNwOhDJ9S86XTQr5Hps3UWsLgyiEH7IfGjzP6hW8c5OnA4LbhAvPEtgAoOxXL8OsdBz
	EmoVqd2RwonROQ3blSnjoghBeBLcPpQDR1oGRQz+iEQMF+mF8Y8cIA2aZfkvhBGspSjU
	OYB1Ls0KYp8oDjUe4jRWlIDcMBYeVRs2yfuCjnRgY9Z/c33arl5FTidTz9Jx7wzQduoe
	C0Xwus83H9JDCnrjF74XGtIMc/NrL4hGDUKqvmYUV6ETWviPULyBDZzFPyHXIES89dVM
	/m+g==
X-Gm-Message-State: ALoCoQkOdT0wM1wKMoJnvcv/fSKLlk6GTF7sFPlIutEmOTjEN9r9FOd+jp+3dIHi2wqyp6Ktbo95
MIME-Version: 1.0
X-Received: by 10.42.100.74 with SMTP id z10mr17996978icn.22.1404858776816;
	Tue, 08 Jul 2014 15:32:56 -0700 (PDT)
Received: by 10.50.225.73 with HTTP; Tue, 8 Jul 2014 15:32:56 -0700 (PDT)
In-Reply-To: <2272823.5hcDOuHx1J@koontz>
References: <CA+gsK-qEG9_RLNx-iyA0C4j9ppYQT48gKXrgn=dktGw7j2bpgA@mail.gmail.com>
	<2272823.5hcDOuHx1J@koontz>
Date: Tue, 8 Jul 2014 15:32:56 -0700
Message-ID: <CA+gsK-qe_Gcq93dCw4CUN=sitzCSwMZ0vZvq2Hw2tJuqzz_7gA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: =?UTF-8?Q?S=C3=B8ren_Holm?= <sgh@sgh.dk>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: MIPI for Intel E3800 Bay Trail
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
X-List-Received-Date: Tue, 08 Jul 2014 22:33:11 -0000
Content-Type: multipart/alternative; boundary=20cf301b60155a203204fdb62cd2

--20cf301b60155a203204fdb62cd2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

S=C3=B8ren,

Thank you for your response. Yes, Bay Trail is essentially supported
however I do not know if there are any MIPI drivers available for that
platform.

MIPI stands for the Mobile Industry Processor Interface. The standard is
created by the MIPI Alliance (http://www.mipi.org). Intel Bay Trail E3800
chips support it and so do Freescale i.MX6. The standard defines multiple
interfaces. In this case it's mostly about the camera interface.

Thanks,
Rudi


On Tue, Jul 8, 2014 at 2:56 PM, S=C3=B8ren Holm <sgh@sgh.dk> wrote:

>
> I don't know what MIPI is but the Baytrail platform is supported from
> v3.13 as
> far as I remember.
>
> Tirsdag den 8. juli 2014 12:14:10 skrev Rudolf Streif:
> > This question is lesser a matter of YP but probably of upstream support=
.
> > Nevertheless, the YP kernel experts would certainly know. Which, if any=
,
> of
> > the YP kernels provide MIPI drivers for the Intel E3800?
> >
> > Thanks,
> > Rudi
>
> --
> S=C3=B8ren Holm
>

--20cf301b60155a203204fdb62cd2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span class=3D"">S=C3=B8ren,</span><br><br></div>Than=
k you for your response. Yes, Bay Trail is essentially supported however I =
do not know if there are any MIPI drivers available for that platform.<br><=
div><br>
MIPI stands for the Mobile Industry Processor Interface. The standard is cr=
eated by the MIPI Alliance (<a href=3D"http://www.mipi.org">http://www.mipi=
.org</a>). Intel Bay Trail E3800 chips support it and so do Freescale i.MX6=
. The standard defines multiple interfaces. In this case it&#39;s mostly ab=
out the camera interface.<br>
<br></div><div>Thanks,<br>Rudi<br></div><div class=3D"gmail_extra"><br><br>=
<div class=3D"gmail_quote">On Tue, Jul 8, 2014 at 2:56 PM, S=C3=B8ren Holm =
<span dir=3D"ltr">&lt;<a href=3D"mailto:sgh@sgh.dk" target=3D"_blank">sgh@s=
gh.dk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
I don&#39;t know what MIPI is but the Baytrail platform is supported from v=
3.13 as<br>
far as I remember.<br>
<br>
Tirsdag den 8. juli 2014 12:14:10 skrev Rudolf Streif:<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; This question is lesser a matt=
er of YP but probably of upstream support.<br>
&gt; Nevertheless, the YP kernel experts would certainly know. Which, if an=
y, of<br>
&gt; the YP kernels provide MIPI drivers for the Intel E3800?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Rudi<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
S=C3=B8ren Holm<br>
</font></span></blockquote></div><br><br></div></div>

--20cf301b60155a203204fdb62cd2--
