Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E25FE00576; Tue,  8 Jul 2014 03:27:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E9D3E004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 03:27:44 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id at20so1977810iec.20
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 03:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=IvuQalcCf/464oEnGXFZEp3xqbBHqiu24nT2NNoToqc=;
	b=c/WITZD29AFyGSlwqsMumKpFLnhqeMUgyAGx9xIWTgUSNtloQHwwvZ7xIYxhLy5TJx
	VameZ8pKH0Hd8sde3BK2DD+wuIW7xHdJuVmzpJDrEJjUpiHe+y6+681QAtO1UF9r4hLU
	lfj02y4X7qP1MVJ76K9fTRsYUlPbLZGDq1R+X2IbFt8Bb1EbVdMPYAQ2lS3Eec6Ul7zw
	GafoJhYGt/TADXdWxBm2sBoHjIMM6a3whlb9lgJc7dHX5ImFt9PdZGtl+5tEkyeCjA50
	8L9yFCAnvz3JQwaS97fKM0CQulo1ZO1JOkq5Qneye2IAyPHKtOufwqV9q2Nx56WcYz9N
	6Anw==
MIME-Version: 1.0
X-Received: by 10.50.80.17 with SMTP id n17mr2770600igx.22.1404815264313; Tue,
	08 Jul 2014 03:27:44 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 8 Jul 2014 03:27:44 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 8 Jul 2014 03:27:44 -0700 (PDT)
In-Reply-To: <20140707195511.GA50424@sestofb10.enea.se>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
Date: Tue, 8 Jul 2014 15:57:44 +0530
Message-ID: <CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "Maxin B. John" <maxin.john@enea.com>
Cc: yocto@yoctoproject.org
Subject: Re: Aarch64 support
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
X-List-Received-Date: Tue, 08 Jul 2014 10:27:55 -0000
Content-Type: multipart/alternative; boundary=089e014949b4cdf96a04fdac0a9c

--089e014949b4cdf96a04fdac0a9c
Content-Type: text/plain; charset=UTF-8

Hi Maxin,

Thanks for your suggestion for the same.
But that git repository for meta-aarch64 is not working.

Thanks and regards
Atul
On 8 Jul 2014 01:25, "Maxin B. John" <maxin.john@enea.com> wrote:

> Hi Atul,
>
> On Tue, Jul 08, 2014 at 12:41:22AM +0530, atulkumar singh wrote:
> > Hi All,
> >
> > Is there support for Aarch64(64 bit ARMv8) available right now?
> Yes. Aarch64 support is available in meta-linaro/meta-aarch64
> URL: http://git.linaro.org/?p=openembedded/meta-linaro.git
>
> > If so then what i need to mention as a MACHINE in local.conf.
> You can choose between:
> 1. genericarmv8b - generic armv8 big endian machine
> 2. genericarmv8 - generic armv8 machine
>
> > Please let me know with your valuable suggestion if any.
> Please use http://layers.openembedded.org/
> to search Machine/Layers/Recipes supported by OpenEmbedded.
>
> > Thanks and regards,
> > Atul
>
> Best Regards,
> Maxin
>
>

--089e014949b4cdf96a04fdac0a9c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Maxin,</p>
<p>Thanks for your suggestion for the same.<br>
But that git repository for meta-aarch64 is not working.</p>
<p>Thanks and regards<br>
Atul</p>
<div class=3D"gmail_quote">On 8 Jul 2014 01:25, &quot;Maxin B. John&quot; &=
lt;<a href=3D"mailto:maxin.john@enea.com">maxin.john@enea.com</a>&gt; wrote=
:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi Atul,<br>
<br>
On Tue, Jul 08, 2014 at 12:41:22AM +0530, atulkumar singh wrote:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Is there support for Aarch64(64 bit ARMv8) available right now?<br>
Yes. Aarch64 support is available in meta-linaro/meta-aarch64<br>
URL: <a href=3D"http://git.linaro.org/?p=3Dopenembedded/meta-linaro.git" ta=
rget=3D"_blank">http://git.linaro.org/?p=3Dopenembedded/meta-linaro.git</a>=
<br>
<br>
&gt; If so then what i need to mention as a MACHINE in local.conf.<br>
You can choose between:<br>
1. genericarmv8b - generic armv8 big endian machine<br>
2. genericarmv8 - generic armv8 machine<br>
<br>
&gt; Please let me know with your valuable suggestion if any.<br>
Please use <a href=3D"http://layers.openembedded.org/" target=3D"_blank">ht=
tp://layers.openembedded.org/</a><br>
to search Machine/Layers/Recipes supported by OpenEmbedded.<br>
<br>
&gt; Thanks and regards,<br>
&gt; Atul<br>
<br>
Best Regards,<br>
Maxin<br>
<br>
</blockquote></div>

--089e014949b4cdf96a04fdac0a9c--
