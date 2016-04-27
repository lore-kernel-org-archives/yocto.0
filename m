Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B84DE00D7D; Wed, 27 Apr 2016 01:02:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0971AE00D79
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:02:31 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id u185so45535217iod.3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xzY107jOBTLu9LSJhH41o1pUGJuuyJozMAbT+OT/Jo4=;
	b=wpzQDB7KDjLicsSEDCPULhYN6dLGevMl67xPdHICD1EIJOrCPaLt/Xw8BiU2QIptsw
	35KD1B25ogH+MWU5pykEFfWOAJFM3mpmncZqUPenLOqlWC88vFnozVN+h2vPjFlW8sO3
	QixCcJlC02woh4oLGclnAsEWWuA6lkh6N6gv9Fel1oxdpljPu0aOjlArqhugMqmKsNg8
	+o9xG3Yatu05f6uz6J38mt65fuLj0XJL3avotvqZsOIskxAB4rquhyxM/rDyWnsioOXT
	rLD1mxJvGWqzuGoeIpvgno0VEeXZHwFgfvcEkWb72uF/fKYIAhYtg9wpXYsVYX7w50Rb
	XV/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xzY107jOBTLu9LSJhH41o1pUGJuuyJozMAbT+OT/Jo4=;
	b=b7+5PeeZAkRCUT0LyhaPrRMdfU+zjb74IjyrAcgEsF4fVCTMai3T/3Fb68MWkOsCsv
	f0Z08pPp4aRXH5HkZqw7KiY9Mow6Qcx3iVepi+o1hPifJLnzqL4hnqJzLWiVfu967oyQ
	VvSqxqxR1ImNRqI0X6lmZvIx0klIxThr3or1sHA9GUwu6PBEmqmaQpHZ5yTNMZfhfJd1
	2/Vl9WOL0pfQbS//dLozhlLSnMDEO8FlWf6BhfzM1arcyZNIJf6y2zlTSL5XL7aNwj2d
	Sd1aXNxoiytE+1DySv8vGqXYynD2HtUVejVPmYNPCufAzmZ8aQNKJFUZn44CgScD8ZOJ
	7kGw==
X-Gm-Message-State: AOPr4FV7d2kDv3afDmbhxr0somci5iWPlGxfhLTzQnw06TVK5jLCIMqq7MGCuwhSC31m1NEuWusv6YWyEaYPnQ0B
X-Received: by 10.107.179.136 with SMTP id c130mr8274655iof.99.1461744151369; 
	Wed, 27 Apr 2016 01:02:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 01:02:11 -0700 (PDT)
In-Reply-To: <CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 09:02:11 +0100
Message-ID: <CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Wed, 27 Apr 2016 08:02:36 -0000
Content-Type: multipart/alternative; boundary=001a1148578ce52413053172d4b0

--001a1148578ce52413053172d4b0
Content-Type: text/plain; charset=UTF-8

On 21 April 2016 at 04:06, Khem Raj <raj.khem@gmail.com> wrote:

> I have updated
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-6
>
> With few more patches added now. Most of packages in OE-Core are
> building fine except linux-yocto on mips and ppc
>

I threw this at the autobuilder.  Lots of c++ failures on various
architectures.

https://autobuilder.yoctoproject.org/main/tgrid, the row for SHA 91ef.

Ross

--001a1148578ce52413053172d4b0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 April 2016 at 04:06, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex"><div id=3D":3tq" class=3D"">I have updated<br>
<br>
<a href=3D"http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dk=
raj/gcc-6" rel=3D"noreferrer" target=3D"_blank">http://git.openembedded.org=
/openembedded-core-contrib/log/?h=3Dkraj/gcc-6</a><br>
<br>
With few more patches added now. Most of packages in OE-Core are<br>
building fine except linux-yocto on mips and ppc</div></blockquote></div><b=
r>I threw this at the autobuilder.=C2=A0 Lots of c++ failures on various ar=
chitectures.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra"><a href=3D"https://autobuilder.yoctoproject.org/main/tgrid">https://=
autobuilder.yoctoproject.org/main/tgrid</a>, the row for SHA 91ef.<br></div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div>=
</div>

--001a1148578ce52413053172d4b0--
