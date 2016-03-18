Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60708E00C7C; Fri, 18 Mar 2016 08:26:42 -0700 (PDT)
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
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 281ADE00C29
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 08:26:37 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id m184so141685059iof.1
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 08:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1K4IuatiA4m/LD1y+H1jdaqZAq1czwzKwCpe4g4p8L4=;
	b=vrL5HDwvsyjdX5ZCik2kysXHjxVCJCeseSPzpItvtTR0w42ggljBdWJ7lwnmMhhHVR
	zBOEsiwkxzB7tlBThUFtqWQ4osByf6gCTPLuWgdWY7h/17c2aXOO5Cu9Z209VjmFSa51
	7xs4fO7aQSJCQq0FZJO5OULCLWJCK/XrUoir0UuxK9+AZKYT5Bl+EbgxTWYneR8aU0vZ
	UncUUV4uePEokhDLnz+9u6C52cMBVJOTlwazo1LCGRNdJTjr+ZYJNPiBMGULUxuLCXhY
	avyZprtBCJE9RElP/Fvtg32l2iUfQmj3LCq2uggX0IP5/4vFZswlCQp5aLAu5Lscrx5Q
	s7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1K4IuatiA4m/LD1y+H1jdaqZAq1czwzKwCpe4g4p8L4=;
	b=NL0Z7+JqyGOd04h74KlRdZnYWOFjQTIm6KnOvkYaAxiCezKv+xmMPAzLOeFnodAVFw
	3i/Qbc5LufYAXF1Oql/h2L1Yz1OgsIdhYWYyyBtlrftIDXGuiW4bhhoc4K/5vDtp1e7k
	cwpa0rv1d8rkqxIiN64cnnAYDktTc16PHCSkLblKumb511L0qgR5dYCTrpF0LU0BTCd6
	ijzNxFvqEd2SoQXE4ZGowpNm8bLbq6jfWKU8UqvhGZV5jT3sP43+WaI3W7z0f2f3rtPD
	PX5qMp2C3srDryQhnkHzA247gq+j6ilKLnt/mK1J85TnThkeqhAOXHhc/vlumPMrafmI
	5GFw==
X-Gm-Message-State: AD7BkJK4l8z71CM8AMqgaxuyU77LV1ETxQuNJSOqIHjLaCPfifXsqChZBkKEc/Fz1YmfKo9w9Cco89AehU0T2Kxo
X-Received: by 10.107.137.38 with SMTP id l38mr17875169iod.133.1458314796532; 
	Fri, 18 Mar 2016 08:26:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 18 Mar 2016 08:26:17 -0700 (PDT)
In-Reply-To: <1458313902-3214-1-git-send-email-jussi.kukkonen@intel.com>
References: <1458313902-3214-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Mar 2016 15:26:17 +0000
Message-ID: <CAJTo0LZQxG5HBj=M=eLFpSiom0XF88Ym4=Fv1gH-ZK5F9KpVuQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-wm][PATCH] ewmh: Fix data type of a few XChangeProperty calls
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
X-List-Received-Date: Fri, 18 Mar 2016 15:26:42 -0000
Content-Type: multipart/alternative; boundary=001a113ec5226b210d052e545f5d

--001a113ec5226b210d052e545f5d
Content-Type: text/plain; charset=UTF-8

On 18 March 2016 at 15:11, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> XChangeProperty documentation: "If the specified format is 32, the
> property data must be a long array."
>
> Using int can lead to bogus data being used on platforms where long
> actually is different from int.
>
> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
>

Pushed, thanks Jussi!

Ross

--001a113ec5226b210d052e545f5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 March 2016 at 15:11, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":15v" c=
lass=3D"a3s" style=3D"overflow:hidden">XChangeProperty documentation: &quot=
;If the specified format is 32, the<br>
property data must be a long array.&quot;<br>
<br>
Using int can lead to bogus data being used on platforms where long<br>
actually is different from int.<br>
<br>
Signed-off-by: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.co=
m">jussi.kukkonen@intel.com</a>&gt;</div></blockquote></div><br>Pushed, tha=
nks Jussi!</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">Ross</div></div>

--001a113ec5226b210d052e545f5d--
