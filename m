Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E99B8E002AC
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 04:53:25 -0700 (PDT)
Received: by qafk30 with SMTP id k30so3983942qaf.14
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 04:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7Ob/3pJNm/qr3cBK2cRUHowubvNcvLthgr7y2Nx+mRI=;
	b=rjQhmQkCD0iObF+/x450dKhPycDI88TASQmUSa8v4v+q0DU8O6LxKYHorkqG7evFo/
	gZ2YOVG/UHZRv8GIdP4H19/wT4LxGLMDkqz51OhMli+hx9p40WM5mAqf9fupfF0me5Ej
	vEj2jo4I7dmJzQAnvGBd0rPXDtCECCob+M4mM7toUae8fu+wM4aYq+GOs/sPihsaqVKx
	v7bp22vAycXCJmDa3d47UN9jDtjQ5+fT4GpKqCi8M/pj+VLBQOChjWvy0Pq47/JFc6VY
	TKefHUHUNCqm3213HblSD5dB3MB4Agjw4K6PZ6TL9hQR1rzxdtHMNecLR96sg2s8fplW
	udVg==
MIME-Version: 1.0
Received: by 10.224.39.147 with SMTP id g19mr6574345qae.46.1348055603043; Wed,
	19 Sep 2012 04:53:23 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Wed, 19 Sep 2012 04:53:23 -0700 (PDT)
In-Reply-To: <CAMKF1srM0n=OdWORA9RSRn7BNt8F2VtsYS_Cuntx7bBpoA5e-A@mail.gmail.com>
References: <CAB3sqtYJJFxPFNZZ1iR+paQD-AHO37=3_RXAsbVmkBQWHobp_Q@mail.gmail.com>
	<CAMKF1srM0n=OdWORA9RSRn7BNt8F2VtsYS_Cuntx7bBpoA5e-A@mail.gmail.com>
Date: Wed, 19 Sep 2012 12:53:23 +0100
Message-ID: <CAB3sqtb_QujO=j0nrSSC_EJt-rJNVVu5WZEf2pqMc0_LEx1TXg@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Autotools CFLAGS & LDFLAGS
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
X-List-Received-Date: Wed, 19 Sep 2012 11:53:26 -0000
Content-Type: multipart/alternative; boundary=20cf306f74d65b5eb204ca0ca773

--20cf306f74d65b5eb204ca0ca773
Content-Type: text/plain; charset=ISO-8859-1

CFLAGS_append and  LDLAGS_append worked for me

Thanks

On Wed, Sep 19, 2012 at 6:30 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Sep 17, 2012 at 6:55 AM, Tarek El-Sherbiny
> <tarek.elsherbiny@gmail.com> wrote:
> > Hi All,
> >
> > What is the easiest way to add nonstandard directory paths for libraries
> and
> > header files in a recipe that inherit autotools and pkgconfig?
> >
>
> Adding them to CFLAGS and LDFLAGS doesnt work ?
>
> > Regards,
> > Tarek
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--20cf306f74d65b5eb204ca0ca773
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

CFLAGS_append and =A0LDLAGS_append worked for me<div><br></div><div>Thanks<=
/div><div><br><div class=3D"gmail_quote">On Wed, Sep 19, 2012 at 6:30 AM, K=
hem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On M=
on, Sep 17, 2012 at 6:55 AM, Tarek El-Sherbiny<br>
&lt;<a href=3D"mailto:tarek.elsherbiny@gmail.com">tarek.elsherbiny@gmail.co=
m</a>&gt; wrote:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; What is the easiest way to add nonstandard directory paths for librari=
es and<br>
&gt; header files in a recipe that inherit autotools and pkgconfig?<br>
&gt;<br>
<br>
</div></div>Adding them to CFLAGS and LDFLAGS doesnt work ?<br>
<br>
&gt; Regards,<br>
&gt; Tarek<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--20cf306f74d65b5eb204ca0ca773--
