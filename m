Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90055E006F7; Fri,  4 Jul 2014 03:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24C8E006F3
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 03:25:35 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id i50so1310328qgf.12
	for <yocto@yoctoproject.org>; Fri, 04 Jul 2014 03:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SRd2K4Yj4iUc4t115bShRVb8GmGpL1mBppCOVHtGRMM=;
	b=ikzSaqncTqwJQ4XXJiXlmPa+DfCDnFUSStzTYKdkO6d/YJgCqUTaOrWYFECjuvuvjL
	0MjeYNUU0lCOzXFkxsbt8bX7eH/57RajW8CVDVbPFPDonZM4TEf2TK/TlzIr/bTTaXSf
	VgYmlqIii+4ia1vwChiT+T0z8TGJ590wMIgW8+aMV5o2aV1YGuTQFWAdrFoHeMO6d170
	Udii8h59FaMowLqgNgusQcUsWGIuv5varaFclfmLonroxAX6XpSI1wQhKjTCHLxqGST3
	82ACc2nC5gUJuA12ltmPeF6VYHZbnFYYGa3OgLazT+Oa+ymmnkfUQo2UgqueZQubH88i
	nRCQ==
X-Received: by 10.224.161.129 with SMTP id r1mr15046500qax.86.1404469534366;
	Fri, 04 Jul 2014 03:25:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Fri, 4 Jul 2014 03:25:14 -0700 (PDT)
In-Reply-To: <53B68016.7000808@windriver.com>
References: <CAMCfZKF_XTjxmJ9Z59x9eQq2AG8339ibnHentOHkfd=F9A33vQ@mail.gmail.com>
	<53B68016.7000808@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 4 Jul 2014 07:25:14 -0300
Message-ID: <CAMCfZKFHPFrvMGWzrMqa=cD3ttcL4quz_ndL_KoenueUUWiL5g@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changing SysVinit default runlevel
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
X-List-Received-Date: Fri, 04 Jul 2014 10:25:36 -0000
Content-Type: multipart/alternative; boundary=089e01538694b1a06d04fd5b8b10

--089e01538694b1a06d04fd5b8b10
Content-Type: text/plain; charset=ISO-8859-1

Hi Robert,

On Fri, Jul 4, 2014 at 7:21 AM, Robert Yang <liezhi.yang@windriver.com>
wrote:

> On 07/04/2014 06:12 PM, Diego Sueiro wrote:
>
>> Folks,
>>
>> Despite of using ROOTFS_POSTPROCESS_COMMAND to change /etc/inittab, is
>> there
>> another method provided by build system to set the default runlevel.
>>
>
> Yes, I think so, you can edit:
>
> meta/recipes-core/sysvinit/sysvinit-inittab/inittab
>
> Or maybe a better way is add sysvinit-inittab_2.88dsf.bbappend to your
> local layer, and add another inittab to the layer, too.
>
> // Robert
>
>
Thanks for the suggestion. I think this method (bbappend) is better than
ROOTFS_POSTPROCESS_COMMAND.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--089e01538694b1a06d04fd5b8b10
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Robert,</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Jul 4, 2014 at 7:21 AM, =
Robert Yang <span dir=3D"ltr">&lt;<a href=3D"mailto:liezhi.yang@windriver.c=
om" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"">On 07/04/2014 06:12 PM, Diego Sueiro wrote=
:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Folks,<br>
<br>
Despite of using ROOTFS_POSTPROCESS_COMMAND to change /etc/inittab, is ther=
e<br>
another method provided by build system to set the default runlevel.<br>
</blockquote>
<br></div>
Yes, I think so, you can edit:<br>
<br>
meta/recipes-core/sysvinit/<u></u>sysvinit-inittab/inittab<br>
<br>
Or maybe a better way is add sysvinit-inittab_2.88dsf.<u></u>bbappend to yo=
ur<br>
local layer, and add another inittab to the layer, too.<br>
<br>
// Robert<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D""></div></blockquote></blockquote></div><div=
 class=3D"gmail_extra">

<br></div>Thanks for the suggestion. I think this method (bbappend) is bett=
er than=A0<span style=3D"color:rgb(80,0,80);font-family:arial,sans-serif;fo=
nt-size:13px">ROOTFS_POSTPROCESS_COMMAND.</span><br><br><br clear=3D"all"><=
div>

<div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueir=
o<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.co=
m.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaig=
n=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a>=
<br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--089e01538694b1a06d04fd5b8b10--
