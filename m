Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B235DE00DA0; Tue,  5 Jul 2016 02:29:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0057E00D8D
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 02:29:47 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id h190so79382487ith.1
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 02:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d9aQC6IJ3RqiVrWdz+4S8noWmJCUF+lkJGgDnLW+7e4=;
	b=aXVEzhRcnL1FnVB/sHmRlA/Htx7r+Zvb8cQoeZZyl+9XCqyavKP6UOhAE51fyzO6O7
	gMvfdAzwrn8fNLfb/CR9C76knlLIZckndfqsc1opkE5Mbx/B30gTJP4AmwA+B28Mx3Z5
	4Zhx815H0l++JsTixGMhkFmGhHRN1bvyzvPhQqfLHrmFtU094HiYESCpNSPL+lWtGLmU
	W/LC/vK//KX9F+tFfl5c2fqPV/AxYtrBAzWvJ++y0/3jMIQeT5INxG5c31WvWdwMaw7A
	gvjQ6ZRUDu4MSKY88hE3m/wm7H/TxVOpto44RWrqo7QPkseSrtoMEjeSsKwtTcY6wuVL
	gfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d9aQC6IJ3RqiVrWdz+4S8noWmJCUF+lkJGgDnLW+7e4=;
	b=AW1SHd3lM/CDYvmpYEz2OSLqOGWaKr/tBlwkzVgFkwa4Rz+8UyWb7RONxv/b1FPOjc
	n40nCw9HezjPRAWCDkYIRN9zbM/Ig0vy26CG4espOASL02NRvVaX2+wHD8X6hO/YDXLi
	WtF+7NTyIfwNomi5JOZvU2SM6Pd8nmHmao3k/Na6Rw65n0AnIQqGKaaFWJ9q9oaOnMgW
	M+b8IrxDKsBA1aFAsDPpAEdepDD5TVUawWxfDYBpuvvUbLbehL6uzyDFCUt0XUYxQ5wx
	cr69bveP27o0Ze5og7sO65/Hk7A8Em3laXbM84HH8CGqRkrd4w92pDYz6jm4NQFpiPjK
	55gQ==
X-Gm-Message-State: ALyK8tKc9GNW9R4TsbnGYY15BpWG+pzn4+QvOfFI9zVKL+vVZ2dPqDU/ImaEfpUnmwbWvwHprVecp8P3PYTDgN0e
X-Received: by 10.36.57.70 with SMTP id l67mr12929983ita.22.1467710986536;
	Tue, 05 Jul 2016 02:29:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Tue, 5 Jul 2016 02:29:27 -0700 (PDT)
In-Reply-To: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Jul 2016 10:29:27 +0100
Message-ID: <CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
To: "Chandra Mishra (chanmish)" <chanmish@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 09:29:51 -0000
Content-Type: multipart/alternative; boundary=001a114a9c66fc71f20536e017eb

--001a114a9c66fc71f20536e017eb
Content-Type: text/plain; charset=UTF-8

On 5 July 2016 at 10:20, Chandra Mishra (chanmish) <chanmish@cisco.com>
wrote:

>  * -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -static -lnsl -lpthread
> -lm -lrt*
>
> *<TOOLCHAIN_PATH>/sysroots/corei7-64-poky-linux/usr/lib/../lib/librt.a(shm_open.o):
> In function `shm_open':                               *
>
> *<SDK BUILD
> PATH>/build/tmp/work/corei7-64-poky-linux/glibc/2.22-r0/git/rt/../sysdeps/posix/shm_open.c:35:
> undefined reference to `__shm_directory'               *
>

At a guess this is due to --as-needed dropping symbols as unused which then
are used, because --as-needed needs a sorted library list.  Either remove
--as-needed, or try reordering the libraries so that dependencies are in
order.

https://wiki.gentoo.org/wiki/Project:Quality_Assurance/As-needed#Importance_of_linking_order
has more context.

In this case I'd start with moving -lpthread to the end of the link line.

Ross

--001a114a9c66fc71f20536e017eb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 July 2016 at 10:20, Chandra Mishra (chanmish) <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:chanmish@cisco.com" target=3D"_blank">chanmish@cisco.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><p><span lang=3D"EN" style=3D"font-=
family:Calibri,sans-serif;color:rgb(61,61,61)">=C2=A0</span><strong><span l=
ang=3D"EN" style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)"> -=
Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -static -lnsl -lpthread -lm -=
lrt</span></strong><span lang=3D"EN" style=3D"font-family:Calibri,sans-seri=
f;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
</span><span lang=3D"EN" style=3D"font-family:Calibri,sans-serif;color:rgb(=
61,61,61)"><u></u><u></u></span></p>
<p><strong><span lang=3D"EN" style=3D"font-family:Calibri,sans-serif;color:=
rgb(31,73,125)">&lt;TOOLCHAIN_PATH&gt;/sysroots/corei7-64-poky-linux/usr/li=
b/../lib/librt.a(shm_open.o): In function `shm_open&#39;:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
</span></strong><span lang=3D"EN" style=3D"font-family:Calibri,sans-serif;c=
olor:rgb(61,61,61)"><u></u><u></u></span></p>
<p><strong><span lang=3D"EN" style=3D"font-family:Calibri,sans-serif;color:=
rgb(31,73,125)">&lt;SDK BUILD PATH&gt;/build/tmp/work/corei7-64-poky-linux/=
glibc/2.22-r0/git/rt/../sysdeps/posix/shm_open.c:35: undefined reference to=
 `__shm_directory&#39;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span></strong></p></blockquote></d=
iv><br>At a guess this is due to --as-needed dropping symbols as unused whi=
ch then are used, because --as-needed needs a sorted library list.=C2=A0 Ei=
ther remove --as-needed, or try reordering the libraries so that dependenci=
es are in order.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra"><a href=3D"https://wiki.gentoo.org/wiki/Project:Quality_Assuranc=
e/As-needed#Importance_of_linking_order">https://wiki.gentoo.org/wiki/Proje=
ct:Quality_Assurance/As-needed#Importance_of_linking_order</a> has more con=
text.<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">In this case I&#39;d start with moving -lpthread to the end of the link=
 line.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a114a9c66fc71f20536e017eb--
