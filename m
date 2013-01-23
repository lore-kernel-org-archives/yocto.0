Return-Path: <peachj@lexmark.com>
Received: from exprod8og119.obsmtp.com (exprod8og119.obsmtp.com [64.18.3.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42F31E00294
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:46:09 -0800 (PST)
Received: from mail-gh0-f198.google.com ([209.85.160.198]) (using TLSv1) by
	exprod8ob119.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUQAT0PQSFZ2D8AtmIvaVEtx4Bw56ae67@postini.com;
	Wed, 23 Jan 2013 08:46:09 PST
Received: by mail-gh0-f198.google.com with SMTP id r11so4928999ghr.1
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:46:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=Y2Gl1jf/e1/suzMgGMPv1h74tUl0DSQazaghVD3CMHc=;
	b=QR92037QHpRZFHBnOh8EK1HNJOE5o7ivB3OplITtMSiuaE/MQKStVXpSXKDW1nD2pT
	l4wXIcMSJMqHWKKfvE7QHb28heXycrBiOSOHAs86+cRuIegi+MtARlTMwce4+Qfe0Hwz
	8zdabFYsSiBWzHTJ+QsWkedSl19ec5BU3UOSqfMJrr4ELy+/lzpdmI4XesZ1Y/SA8TSx
	oyJ38Fjeg0ttQ/+uZlVd6Rm3yrt3o4PxrGSIAmbbNnjT0JcXhncKTf9ZugpaWJUFPVTA
	GKCHYTMl+m5RdQpuk7+MAUVr9d8XHt6Dl4ncDuwhJr2Z3dm9wh0kQOR02cfMf5eFMUh7
	VJsA==
X-Received: by 10.224.60.12 with SMTP id n12mr2504173qah.23.1358959568247;
	Wed, 23 Jan 2013 08:46:08 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.60.12 with SMTP id n12mr2504162qah.23.1358959568090;
	Wed, 23 Jan 2013 08:46:08 -0800 (PST)
Received: by 10.49.50.97 with HTTP; Wed, 23 Jan 2013 08:46:07 -0800 (PST)
In-Reply-To: <51000BCC.2060302@linux.intel.com>
References: <51000BCC.2060302@linux.intel.com>
Date: Wed, 23 Jan 2013 11:46:07 -0500
Message-ID: <CA+QkY1DqMMM=eMNHESkBrBMrui1U01eAtudZRgB-zut0A=xD3w@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnWg6cepRCrCP+sYsY2uE9XfXPiar/Q9F0IHF/Bn6YndzNBO70eCH4ZPB90e05DBqA4jFJelv1HkGx26oeOjCf+sQ7ummEUm+pmIoqwymrg22KxcUTeNPIRXaVUzORF1K5oOYzKN2RVkVrPrlkrW+ckoRIwpGjp22usfG53btz7N1FaSfI=
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: SRC_URI checksums
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
X-List-Received-Date: Wed, 23 Jan 2013 16:46:09 -0000
Content-Type: multipart/alternative; boundary=20cf3074b1b251f78e04d3f76ecc

--20cf3074b1b251f78e04d3f76ecc
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 23, 2013 at 11:11 AM, Darren Hart <dvhart@linux.intel.com>wrote:

> What is the practice for SRC_URI checksums? I see many recipes with both
> md5sum and sha256sum. Is there a need to have both? Is one preferred
> over the other?
>
> Thanks,
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

I believe bitbake/Yocto will complain at you if you don't have both, but
I've always wondered this myself.  Since it's just an integrity check, I'd
think an md5sum would be sufficient and marginally faster than a sha256,
but if you wanted to be ultra paranoid, a sha256 would probably be good
enough.  The level of paranoia it would take to want to make both checks is
beyond what just about anyone would want, I'd suspect.  I'll append to the
original e-mailer's question: Should the default be to require both checks?
 Is there a simple way to turn off complaining about one check or the other
if you're not interested in running both?  Are both even run?  (I think
they both are...)

Kind regards,

Jerrod

--20cf3074b1b251f78e04d3f76ecc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Jan 23, 2013 at 11:11 AM, Darren Hart <span dir=3D=
"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com" target=3D"_blank">dvhar=
t@linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div =
class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">What is the practice for SRC_URI checksums? I see many rec=
ipes with both<br>

md5sum and sha256sum. Is there a need to have both? Is one preferred<br>
over the other?<br>
<br>
Thanks,<br>
<span class=3D""><font color=3D"#888888"><br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Technical Lead - Linux Kernel<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra" style=
>I believe bitbake/Yocto will complain at you if you don&#39;t have both, b=
ut I&#39;ve always wondered this myself. =A0Since it&#39;s just an integrit=
y check, I&#39;d think an md5sum would be sufficient and marginally faster =
than a sha256, but if you wanted to be ultra paranoid, a sha256 would proba=
bly be good enough. =A0The level of paranoia it would take to want to make =
both checks is beyond what just about anyone would want, I&#39;d suspect. =
=A0I&#39;ll append to the original e-mailer&#39;s question: Should the defa=
ult be to require both checks? =A0Is there a simple way to turn off complai=
ning about one check or the other if you&#39;re not interested in running b=
oth? =A0Are both even run? =A0(I think they both are...)<br>
</div><div class=3D"gmail_extra" style><br></div><div class=3D"gmail_extra"=
 style>Kind regards,</div><div class=3D"gmail_extra" style><br></div><div c=
lass=3D"gmail_extra" style>Jerrod</div></div>

--20cf3074b1b251f78e04d3f76ecc--
