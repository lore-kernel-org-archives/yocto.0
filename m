Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 199B6E00830; Fri, 24 Oct 2014 04:12:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-yh0-f46.google.com (mail-yh0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68E0AE0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:12:23 -0700 (PDT)
Received: by mail-yh0-f46.google.com with SMTP id f10so267022yha.33
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s9pSNWX+XJdVUNUUV13Uw/eZP17RS4t2yGLR72s4PiE=;
	b=lji/olYgLxU7zKYs3KuYiitx2xY+LKA0Tjhpbu2C1LG38FjPZBrWmRbjmbUfS/Y+PO
	+5VOisQaTreq3iSG6hldoW3pypZXxn+sK/Pf9A3FAMbrebc2kC+pyqJYzf19nOt1imKM
	WKpQFxqz4wghgzdIaJM/xUVL2GBM7w9W7PsZUlt91zudjo7UO6TXJJuNGhveKcmzlOJJ
	ESHOB+yBd1wCbz8ZQB0QdBAbdh20BVrrKPm/eGPE2xE46XW59xHIE9JOMsShx5O5hgZR
	sXmB7dFXOxDdlQQ0auFxG5CCllKP/ct809+i7bzY6siubQwu6ki2EUvEb59DpgDAeloB
	Jlsg==
X-Gm-Message-State: ALoCoQmrfTCLYDVtx3JTeyuizq12FtotMvOUzxsYMPFfR2BDPqzmG5Dt7NflFv6KmWnF0s4SY1VN
X-Received: by 10.170.150.197 with SMTP id r188mr5733560ykc.1.1414149143460;
	Fri, 24 Oct 2014 04:12:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Fri, 24 Oct 2014 04:12:03 -0700 (PDT)
In-Reply-To: <802B8E31E3519842A6CEE1B497E861B164F20D@IRSMSX108.ger.corp.intel.com>
References: <5449BD8D.3070907@gmail.com> <1414139646.30118.4.camel@ted>
	<544A24BB.5020604@gmail.com>
	<802B8E31E3519842A6CEE1B497E861B164F20D@IRSMSX108.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Oct 2014 12:12:03 +0100
Message-ID: <CAJTo0LYXgprW_13tW-tUrObA4B0sLcTSSBFTiKiFWUpxrwzNoA@mail.gmail.com>
To: "Mihail, StanciuX" <stanciux.mihail@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	nick <xerofoify@gmail.com>
Subject: Re: Failing Build
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
X-List-Received-Date: Fri, 24 Oct 2014 11:12:26 -0000
Content-Type: multipart/alternative; boundary=001a1139bd3e5b11c60506294171

--001a1139bd3e5b11c60506294171
Content-Type: text/plain; charset=UTF-8

On 24 October 2014 12:00, Mihail, StanciuX <stanciux.mihail@intel.com>
wrote:

> Looks to me that the core-image-rt-sdk recipe includes both the rt-kernel
> and the normal kernel, and maybe it shouldn't?


FWIW, I appear to be able to replicate this with just core-image-rt.

Ross

--001a1139bd3e5b11c60506294171
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 October 2014 12:00, Mihail, StanciuX <span dir=3D"ltr">&lt;<a href=3D=
"mailto:stanciux.mihail@intel.com" target=3D"_blank">stanciux.mihail@intel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Looks to me tha=
t the core-image-rt-sdk recipe includes both the rt-kernel and the normal k=
ernel, and maybe it shouldn&#39;t?</blockquote></div><br>FWIW, I appear to =
be able to replicate this with just core-image-rt.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1139bd3e5b11c60506294171--
