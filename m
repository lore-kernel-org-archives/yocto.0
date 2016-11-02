Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FF5AE00A64; Wed,  2 Nov 2016 13:11:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D7EE00912
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 13:11:48 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id p16so15964051qta.0
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 13:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3nR/8EipXmsajVtDKksxDZ2ofcsEOHxuUo7Cj6gH4WA=;
	b=wv80Zx/QK3PjezXnEfNRk3jNiBQrCgQcJuKLBB1bMsPfE18DYeFFvOxUkyTnDs5zZW
	4ppsA1MdKjOC6G5xCCUQ1CQzTcuC0l3+tO1+blPbbYfKcYTaXxwQlUPfPK2ar5kMtdvs
	NU/JbR6tkOE6I1gQ/34DnntaPmBP4CJ/y1sDrjRDg5kZmW6h2sqED70oOQPqq2j10eIh
	75z4FNoR6P4JwaiczsV4HYislwBbBFAbYxVk+pV/XxGncXI/dWfOe4+EHyzyDIdTWbrY
	bYkS8WmCvXSQN6denxZ0JPJl7+xgYGSm2PtAnJgaCAN9o0bvqYfCcNWEwiG4KhC97Pb5
	zHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3nR/8EipXmsajVtDKksxDZ2ofcsEOHxuUo7Cj6gH4WA=;
	b=NtvtcXz72wfFW6nBfvPERFQsw6ntDZ3ljlyTsIwVIESlQQ/tmwdQZXdgA+ITZZ00Ew
	7YF8L2cISGGy6dSGwYvwKkyzTdL/MS8sG8O95SZtklgKXTykO4y7fUrz+33UWJBwXo38
	ycv+8fqlA3TzuqmmdtE+XbFSU9edVPCv/4FOPMvEC0GMOkYxlvvkBqNPKVJWfVaySYO9
	9+WJg5xlWkDB03m/cPK5V3eH1J4co+6xPPI4U3jj8Nbkw0uHNhUMVppZ+wRYYlsGyemX
	Veq7d81xQI8tPvE259+hqPUaO9yQ8y0gGevhGWIaEhCSvtl94l2HLqc1taKjTFVnKRyr
	oQIw==
X-Gm-Message-State: ABUngvfDr2xG5ki2mXj12x6tWRrwCsuHaCkrfxLWyVm2RZucsObGR5WUogOXCJpzANKR8Bzhdz7OcSi2aB1sS20t
X-Received: by 10.237.61.210 with SMTP id j18mr4428097qtf.137.1478117508155;
	Wed, 02 Nov 2016 13:11:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Wed, 2 Nov 2016 13:11:27 -0700 (PDT)
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE7881@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE761C@CHN-SV-EXMX05.mchp-main.com>
	<3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
	<CAF3SDA4-sC=YKc_oCWeDoPjyn6krPQWTSXgbmgqgw+pn3CrKdQ@mail.gmail.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE7881@CHN-SV-EXMX05.mchp-main.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Nov 2016 20:11:27 +0000
Message-ID: <CAJTo0LauG7iBY9JFfaawSerFFcXU34JTKmzx7+nGr537grhynw@mail.gmail.com>
To: Swapna.Gurumani@microchip.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Wed, 02 Nov 2016 20:11:50 -0000
Content-Type: multipart/alternative; boundary=001a11401094029ff60540570d7c

--001a11401094029ff60540570d7c
Content-Type: text/plain; charset=UTF-8

On 2 November 2016 at 20:00, <Swapna.Gurumani@microchip.com> wrote:

> Thank you so much for your help. My .bb file now looks like as attached.
> Did your tar file have .a and .so?? I am getting errors because of them.
> Can I force the do_package_qa to skip?
>
>
You might find this document useful:
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries

Ross

--001a11401094029ff60540570d7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 November 2016 at 20:00,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Swapn=
a.Gurumani@microchip.com" target=3D"_blank">Swapna.Gurumani@microchip.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal"><span style=
=3D"font-size:11pt;font-family:calibri,sans-serif;color:rgb(31,73,125)">Tha=
nk you so much for your help. My .bb file now looks like as attached. Did y=
our tar file have .a and .so?? I am getting errors because of them. Can I f=
orce
 the do_package_qa to skip? <u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>You might find this docum=
ent useful:=C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndTrick=
s/Packaging_Prebuilt_Libraries">https://wiki.yoctoproject.org/wiki/TipsAndT=
ricks/Packaging_Prebuilt_Libraries</a></div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a11401094029ff60540570d7c--
