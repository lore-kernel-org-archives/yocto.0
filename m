Return-Path: <munoz0raul@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94F45E0161B
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 06:32:46 -0700 (PDT)
Received: by mail-bk0-f50.google.com with SMTP id mz11so952541bkb.9
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 06:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EJFMVokfYhF71fIJCluFYVTXxq8DCqsPgeLtKY88ZR8=;
	b=W0psiT4MXaEE5ndUSp2kSlnBcdZckBjYa5JeTYJ+vmZcoTUPxyz1ES+9jp8syICWdD
	T++GBdbe68AHHGiCeRZx2sLtE3G165Tk4OxTDsiZpBBSWC+sjX1WSJ4D1rah/ClRHryE
	RNs0rG05bwQuv9ct2dPZb6a4EW8ryYud1jv9dvSFGsKacvPQ4lZeUtgB0qN/iaWNtpus
	b+u0fb6t+lCNY+3mOBn1fOIb0KxoxfNS0YKX5t4qxEukbY2mqO2H5qbM404nuVGJP9iu
	gZKLNZrhylI4zlwP1ASHjafY37G/B/hKsbf8C/Tq1Ra5V13G1oUgySLizJUz2NshHMd1
	Bacw==
MIME-Version: 1.0
X-Received: by 10.204.61.195 with SMTP id u3mr1781138bkh.43.1380807165059;
	Thu, 03 Oct 2013 06:32:45 -0700 (PDT)
Received: by 10.205.19.197 with HTTP; Thu, 3 Oct 2013 06:32:44 -0700 (PDT)
In-Reply-To: <524D6529.90802@windriver.com>
References: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>
	<524D6529.90802@windriver.com>
Date: Thu, 3 Oct 2013 10:32:44 -0300
Message-ID: <CANmVirhtHb+fS=SSyMKu053DQq3tiTfX-V1nyA+ak44tFGdaPg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install Kernel Modules in rootfs
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
X-List-Received-Date: Thu, 03 Oct 2013 13:32:47 -0000
Content-Type: multipart/alternative; boundary=001a11c31f2093d53404e7d63822

--001a11c31f2093d53404e7d63822
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I think that I found my problem,

I tryed to use the kernel 3.8 before in this build system, but I decided to
go back to the 2.6.35.3.

But now I did bitbake -c cleanall virtual/kernel, I tryed to delete every
thing about kernel 3.8 but the modules that are instaled in my
/lib/modules/ still be the modules of kernel 3.8.

How I clean the modules and force to use no 2.6.35.3 again.

Which package or command do that?

Thanks for all Help.


On Thu, Oct 3, 2013 at 9:38 AM, Bruce Ashfield <bruce.ashfield@windriver.co=
m
> wrote:

> On 13-10-03 08:34 AM, Raul Rosetto Munoz wrote:
>
>> Hello All,
>>
>> I'm Trying to install the kernel modules inside my rootfs but I couldn't
>> find an especific information that help me to do that!
>>
>> I have in my /tmp/images/ the tgz with all the modules that I need.
>>
>> modules--2.6.35.3-r32.23-**imx28evk-20131002210958.tgz
>>
>> I just want that this tzg was extracted inside my rootfs /lib/modules.
>>
>> Please some one can help me with this?
>>
>
> Does your image type have a RDEPENDS on "kernel-modules", or do you
> have IMAGE_INSTALL_append =3D " kernel-modules", in your local.conf ?
>
> If you do either of the above, the entire set of built modules will
> be installed.
>
> You can also install / require individual modules via
> kernel-module-<module name>.
>
> The Yocto docs should have details on this as well.
>
> Cheers,
>
> Bruce
>
>
>> Thanks so much.
>>
>> --
>> *Raul Rosetto Mu=F1oz*
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproje=
ct.org/listinfo/yocto>
>>
>>
>


--=20
*Raul Rosetto Mu=F1oz*

--001a11c31f2093d53404e7d63822
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think that I found my problem,</div><div><br></div>=
<div>I tryed to use the kernel 3.8 before in this build system, but I decid=
ed to go back to the 2.6.35.3.</div><div><br></div><div>But now I did bitba=
ke -c cleanall virtual/kernel, I tryed to delete every thing about kernel 3=
.8 but the modules that are instaled in my /lib/modules/ still be the modul=
es of kernel 3.8.</div>
<div><br></div><div>How I clean the modules and force to use no 2.6.35.3 ag=
ain.</div><div><br></div><div>Which package or command do that?</div><div><=
br></div><div>Thanks for all Help.</div></div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Oct 3, 2013 at 9:38 AM, Bruce As=
hfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com=
" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
<div class=3D"im">On <a href=3D"tel:13-10-03%2008" value=3D"+13100308" targ=
et=3D"_blank">13-10-03 08</a>:34 AM, Raul Rosetto Munoz wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello All,<br>
<br>
I&#39;m Trying to install the kernel modules inside my rootfs but I couldn&=
#39;t<br>
find an especific information that help me to do that!<br>
<br>
I have in my /tmp/images/ the tgz with all the modules that I need.<br>
<br>
modules--2.6.35.3-r32.23-<u></u>imx28evk-20131002210958.tgz<br>
<br>
I just want that this tzg was extracted inside my rootfs /lib/modules.<br>
<br>
Please some one can help me with this?<br>
</blockquote>
<br></div>
Does your image type have a RDEPENDS on &quot;kernel-modules&quot;, or do y=
ou<br>
have IMAGE_INSTALL_append =3D &quot; kernel-modules&quot;, in your local.co=
nf ?<br>
<br>
If you do either of the above, the entire set of built modules will<br>
be installed.<br>
<br>
You can also install / require individual modules via kernel-module-&lt;mod=
ule name&gt;.<br>
<br>
The Yocto docs should have details on this as well.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
Thanks so much.<br>
<br>
--<br>
*Raul Rosetto Mu=F1oz*<br>
<br>
<br></div>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>*Raul Rosett=
o Mu=F1oz*<br>
</div>

--001a11c31f2093d53404e7d63822--
