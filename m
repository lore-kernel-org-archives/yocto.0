Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A84CE00CD9; Thu, 29 Sep 2016 05:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFCD4E00CB0
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 05:29:03 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id l16so45483833uaa.1
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 05:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bUCbIcHMnxKMuocdSiJPs0Sg6oYBmjkdNhbcgA6aZ1w=;
	b=E1AY7+I5+Bxt344CsI4vshXnQuQuI5g/RlhDiIpOXuyS31T7oCp+oX75Uk6IEmoDPN
	m5jrgWAw01Nnjh994YIshikm1182grQUK9sZpKwvw+FzPO6ABFlzCDG4w8OjQva7PIwZ
	0a3CYEHSB5728yMncx6D5cLfAb7gbjJsMbXKmBPZ0rjOBzGqQwudP3OWSwX3nfUwXFRj
	ZKpj2BvYNa/MRFVoORZQ396IlwsgpY262UH21IxKbHxvPvbqwdelDiDqok8nQQcv3fvX
	PKc1YbrnyfBN1oi17oe5ScGNM0CVI5pmS/XW4AWWRGRGcX7uJ5VljC1qGXyTxKUgI2n5
	BIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bUCbIcHMnxKMuocdSiJPs0Sg6oYBmjkdNhbcgA6aZ1w=;
	b=XG121GZdtzwAP0GJKxZaMFAqYjCdpgyUNw1OQpWWmZYSvF9CERp0DW+eM9lOSU3xy2
	0bWxKbZDm6bvoXugUC+hK7I8ccfAe+lkSuGAuVSlqWYOo/TYLUv7MEItLc245E6AbFHA
	CXe18WyvarYv5otCufWP/mXF1dirWOLAtmksYj+NV2+9oCUANBbLnkHIHfRn9IAfFo20
	lYHNJp9GybgYJP4D1scJyQU91Zup/l1FDVoZoh0Nh6YPJmJHZ+AdaAmMiRSkO7zoAXMv
	VqritFMFtWnf1U/v94jZmD471dZ1wSy7es7wPbWl/twI2RpJ2hjmLHMpFTHGSiDSAL/w
	GbBw==
X-Gm-Message-State: AA6/9Rkrp9K21d8SVKiQP/uycrdL+MM64gJihAbNXxMNhX0JYwqTJigxWnCKnPs5EhpqmuyJg5U6m355EAvJAw==
X-Received: by 10.176.85.92 with SMTP id u28mr686923uaa.13.1475152142196; Thu,
	29 Sep 2016 05:29:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.83.207 with HTTP; Thu, 29 Sep 2016 05:29:01 -0700 (PDT)
In-Reply-To: <c7f9192f-3477-b0fb-a6ca-8d12d3368c47@seldal.com>
References: <c7f9192f-3477-b0fb-a6ca-8d12d3368c47@seldal.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Thu, 29 Sep 2016 14:29:01 +0200
Message-ID: <CAEjjReLExjL7Xn=vqKo_=CzR3dR52D-UJG=+FONDxg5LJLoqew@mail.gmail.com>
To: Svein Seldal <sveinse@seldal.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Force nostamp from recipe
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
X-List-Received-Date: Thu, 29 Sep 2016 12:29:09 -0000
Content-Type: multipart/alternative; boundary=f403045dd8646ce6b6053da49fe1

--f403045dd8646ce6b6053da49fe1
Content-Type: text/plain; charset=UTF-8

Hi,

do_configure[noexec] = "1"



http://www.crashcourse.ca/wiki/index.php/BitBake_task_flags

On Thu, Sep 29, 2016 at 10:23 AM, Svein Seldal <sveinse@seldal.com> wrote:

> Hi
>
> I have a recipe using externalsrc, and with the version of poky I'm
> running, it nostamps do_compile.
>
> Can I force other nostamp tasks from my recipe? E.g. do_configure?
>
> I'm building this recipe for one MACHINE and then rerun the compilation
> for another MACHINE. The recipe is setup to build for tune, which is equal.
> The latter run fails linking because it's referring to the first machine's
> sysroot, not the second. This would have been fixed if the second run would
> call the do_configure task.
>
>
> Best regards,
> Svein
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045dd8646ce6b6053da49fe1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br><pre>do_configure[noexec] =3D &quot;1&quot;</pr=
e><br><br><a href=3D"http://www.crashcourse.ca/wiki/index.php/BitBake_task_=
flags">http://www.crashcourse.ca/wiki/index.php/BitBake_task_flags</a><br><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep =
29, 2016 at 10:23 AM, Svein Seldal <span dir=3D"ltr">&lt;<a href=3D"mailto:=
sveinse@seldal.com" target=3D"_blank">sveinse@seldal.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">Hi<br>
<br>
I have a recipe using externalsrc, and with the version of poky I&#39;m run=
ning, it nostamps do_compile.<br>
<br>
Can I force other nostamp tasks from my recipe? E.g. do_configure?<br>
<br>
I&#39;m building this recipe for one MACHINE and then rerun the compilation=
 for another MACHINE. The recipe is setup to build for tune, which is equal=
. The latter run fails linking because it&#39;s referring to the first mach=
ine&#39;s sysroot, not the second. This would have been fixed if the second=
 run would call the do_configure task.<br>
<br>
<br>
Best regards,<br>
Svein<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--f403045dd8646ce6b6053da49fe1--
