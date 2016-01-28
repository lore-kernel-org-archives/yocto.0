Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2AB2E00852; Thu, 28 Jan 2016 10:34:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1FA9E00852
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:34:25 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id f81so63867386iof.0
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PlqF29MCA5dUhqlWVx0dav6BKAXhSm+ijb9I8OQR+Og=;
	b=Gn+Pf+YUYx3Uk7vNOcYY04LV8X/b6nzAoOzziItpyHfSs31UAVkYZnVIJSY587P1Nn
	Cq19Nx8Q3SRVXDLJRBTSJ5nnl6cT9D6nL1fZM4C30hzarDPe+2kei+qb2sjudQ1tD8mT
	+1IB7/uRwEHxOsAlkogUQz4gfFMF1OGIADIoGpu0ekMQCD5V66ZGO3KicFPwB1FQVVvi
	EfviEYUuDpafI0P6puNvuotX/a7yIKV4rDDKq/vNypPg+Ynx9fE0GXa7cDZVNh1zLWc3
	9iuQMkhjcVmaCj9+Evb6spoXhxrpaHU+nIeQ+aEpcCtdRdgGr7xEqJXuxXLEqr+1Ayxq
	1g7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=PlqF29MCA5dUhqlWVx0dav6BKAXhSm+ijb9I8OQR+Og=;
	b=kIAkKTy9KTz5tFbHRFHukIsUiUB01yMMp3tdy7YN+ycAeHAW32POdk6iNcH7jyogMv
	ZwWpXxzT8J7V0cU94pgH0rgmBE7KdR2e04mhk/J5nqfYrVpb4iTCuIIXNud00kbZDEJf
	xByxwFb2uDLrk7/p3zxFYkg2T72tleXtQ/wyuPNOElI3wK98TvRx1IVKPSo1T37xZO1I
	ureUjEvtjNvstJzoVk+fILPfFiYmOWEMkqkq0fs8/cj4RHIWpFfnx6i01XRxNSRd1tVE
	HeS22sENl9geQxbPHjN+PsTolTfTc+N7ZcZwrklyyV8Aq6KwwwfqHv9mD46AZzuX4p6N
	pwiQ==
X-Gm-Message-State: AG10YOR3FhThY7baWdtTrAWPXeQ3ZFpbDHk1AKTtWMT74fdPIrr/7OEwRZJgwoWjWMxPt8P+iTuvQsG+Sf76Gw==
MIME-Version: 1.0
X-Received: by 10.107.34.79 with SMTP id i76mr6326585ioi.195.1454006064760;
	Thu, 28 Jan 2016 10:34:24 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Thu, 28 Jan 2016 10:34:24 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Thu, 28 Jan 2016 10:34:24 -0800 (PST)
In-Reply-To: <3E827D2C-7068-45AF-8F8D-161B5BAEC08F@nathan.to>
References: <3E827D2C-7068-45AF-8F8D-161B5BAEC08F@nathan.to>
Date: Thu, 28 Jan 2016 13:34:24 -0500
Message-ID: <CAMKF1sp_Mm0-EAMrpWC-fOqv9e902spjYuchqazwO_9y+=g+wg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: yocto@yoctoproject.org
Subject: Re: sftp-server on qemux86-64 core-image-full-cmdline
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
X-List-Received-Date: Thu, 28 Jan 2016 18:34:42 -0000
Content-Type: multipart/alternative; boundary=001a11407528fdcedd052a692a8f

--001a11407528fdcedd052a692a8f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Look at build of openssh directory there must be a ipk with sftp name. Add
that name to IMAGE_INSTALL
On Jan 28, 2016 12:52 PM, "Nathan Sowatskey" <nathan@nathan.to> wrote:

> Hi
>
> I am using the Yocto Build Appliance to build an image using a profile of
> qemux86-64, and recipe of core-image-full-cmdline.
>
> I can, using a redirect, ssh to the VM when running on OSX. I also want t=
o
> use sftp to copy files to the image.
>
> The sftp server is configured in the ssh_config file to be at:
> /usr/lib/openssh/sftp-server.
>
> The /usr/lib/openssh directory does not exist.
>
> In the Build Appliance, I can=E2=80=99t see any package that will add the
> openssh-sftp package.
>
> I am at a loss as to how to add and/or enable sftp.
>
> Can anyone help please?
>
> Many thanks
>
> Nathan
>
> =E2=80=94
> Nathan John Sowatskey
> Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN
> nathan@nathan.to
> www.linkedin.com/in/nathandevops
> XMPP: nathandotto@im.koderoot.net
> Google: nathanjohnsowatskey@gmail.com
> Skype: nathan_sowatskey
> Twitter: NathanDotTo
> GitHub: https://github.com/DevOps4Networks
> http://www.kipling.org.uk/poems_if.htm
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11407528fdcedd052a692a8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Look at build of openssh directory there must be a ipk with =
sftp name. Add that name to IMAGE_INSTALL</p>
<div class=3D"gmail_quote">On Jan 28, 2016 12:52 PM, &quot;Nathan Sowatskey=
&quot; &lt;<a href=3D"mailto:nathan@nathan.to">nathan@nathan.to</a>&gt; wro=
te:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi<br>
<br>
I am using the Yocto Build Appliance to build an image using a profile of q=
emux86-64, and recipe of core-image-full-cmdline.<br>
<br>
I can, using a redirect, ssh to the VM when running on OSX. I also want to =
use sftp to copy files to the image.<br>
<br>
The sftp server is configured in the ssh_config file to be at: /usr/lib/ope=
nssh/sftp-server.<br>
<br>
The /usr/lib/openssh directory does not exist.<br>
<br>
In the Build Appliance, I can=E2=80=99t see any package that will add the o=
penssh-sftp package.<br>
<br>
I am at a loss as to how to add and/or enable sftp.<br>
<br>
Can anyone help please?<br>
<br>
Many thanks<br>
<br>
Nathan<br>
<br>
=E2=80=94<br>
Nathan John Sowatskey<br>
Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN<br>
<a href=3D"mailto:nathan@nathan.to">nathan@nathan.to</a><br>
<a href=3D"http://www.linkedin.com/in/nathandevops" rel=3D"noreferrer" targ=
et=3D"_blank">www.linkedin.com/in/nathandevops</a><br>
XMPP: <a href=3D"mailto:nathandotto@im.koderoot.net">nathandotto@im.koderoo=
t.net</a><br>
Google: <a href=3D"mailto:nathanjohnsowatskey@gmail.com">nathanjohnsowatske=
y@gmail.com</a><br>
Skype: nathan_sowatskey<br>
Twitter: NathanDotTo<br>
GitHub: <a href=3D"https://github.com/DevOps4Networks" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/DevOps4Networks</a><br>
<a href=3D"http://www.kipling.org.uk/poems_if.htm" rel=3D"noreferrer" targe=
t=3D"_blank">http://www.kipling.org.uk/poems_if.htm</a><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11407528fdcedd052a692a8f--
