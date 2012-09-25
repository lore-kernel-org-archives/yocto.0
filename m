Return-Path: <aalonso00@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A3C4E00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 12:53:46 -0700 (PDT)
Received: by ieak11 with SMTP id k11so7804415iea.35
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 12:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6UxtaRsQXQ7dDEo06tm5J4WluAKR9YLwQGduE7kehQ0=;
	b=XRwJxNrVyOo9lmyrNFSZUa5GhAq/fSzYHfqi91ygq1RCqrgDqp7lPT0b6/ca39PhjR
	bnHSTjxgi+Q7SPkgOQE1+BWx41OP2Gli9AT2zctBET6QMsoX19/Y38N21b6euBSzIm1y
	LZmHTBeTesh2S4U/p1TZOnzyd6hRNUvx/glDSQ7QKD71HdD3DX1iLt+IZu55as3q7Afw
	340Z88iSez5dfttwMvDIQFG1J+O4k4/7jody+vVAu7gRauHmSjyDLdLHHDNw7lHrxXeZ
	NxnZpEiD1zfzbT03ldrrSZvQCR48gzhOq/bKgQUjSfldRoQU1iUYU8Pc1ecsm0qHZeVB
	njgg==
MIME-Version: 1.0
Received: by 10.50.161.165 with SMTP id xt5mr9069449igb.61.1348602821636; Tue,
	25 Sep 2012 12:53:41 -0700 (PDT)
Received: by 10.64.166.66 with HTTP; Tue, 25 Sep 2012 12:53:41 -0700 (PDT)
In-Reply-To: <CAK18fxET+vOt6Sy56sggcc_8D09wdf7Q6ORrX5dLXNCy3JPXnQ@mail.gmail.com>
References: <yocto@yoctoproject.org>
	<1348091516-4221-1-git-send-email-aalonso@freescale.com>
	<CAK18fxET+vOt6Sy56sggcc_8D09wdf7Q6ORrX5dLXNCy3JPXnQ@mail.gmail.com>
Date: Tue, 25 Sep 2012 14:53:41 -0500
Message-ID: <CAAB-1ywsn2mpmVsg1DPC1Rb0qZO4-EExTL4WskhDFvRxxD5AgA@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Florin Ionut <florin.sarbu@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: imx6 meta-ivi support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Sep 2012 19:53:46 -0000
Content-Type: multipart/alternative; boundary=14dae934098b20732f04ca8c1056

--14dae934098b20732f04ca8c1056
Content-Type: text/plain; charset=ISO-8859-1

Hi Andrei,

I have write credentials to push this changes is ok that I pushed them?

Or is suppose that a meta-ivi maintainer to push them?

Regards
Adrian Alonso

On Wed, Sep 19, 2012 at 5:16 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Ack.
> On Sep 20, 2012 12:56 AM, "Adrian Alonso" <aalonso@freescale.com> wrote:
>
>> This patch series enables imx6 target support for meta-ivi based
>> on denzil branch.
>>
>> [meta-ivi][PATCH 1/3] pormap: append portmap.service
>> [meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service
>> [meta-ivi][PATCH 3/3] layer-management: fix machine search string
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--14dae934098b20732f04ca8c1056
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Andrei,<div><br></div><div>I have write credentials to push this changes=
 is ok that I pushed them?</div><div><br></div><div>Or is suppose that a me=
ta-ivi maintainer to push them?</div><div><br></div><div>Regards</div><div>
Adrian Alonso<br><br><div class=3D"gmail_quote">On Wed, Sep 19, 2012 at 5:1=
6 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan=
.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
<p dir=3D"ltr">Ack.</p><div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_quote">On Sep 20, 2012 12:56 AM, &quot;Adrian Alonso&qu=
ot; &lt;<a href=3D"mailto:aalonso@freescale.com" target=3D"_blank">aalonso@=
freescale.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">

This patch series enables imx6 target support for meta-ivi based<br>
on denzil branch.<br>
<br>
[meta-ivi][PATCH 1/3] pormap: append portmap.service<br>
[meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service<br>
[meta-ivi][PATCH 3/3] layer-management: fix machine search string<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Saludos<=
br>Adrian Alonso<br><a href=3D"http://aalonso.wordpress.com">http://aalonso=
.wordpress.com</a><br><br>
</div>

--14dae934098b20732f04ca8c1056--
