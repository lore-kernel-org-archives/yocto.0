Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCF0EE00CED; Thu,  2 Jun 2016 06:24:51 -0700 (PDT)
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
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D50EE00CE1
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 06:24:50 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id z123so51071946itg.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 06:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Tgf65YHTlno9X40YIgo+bIDO1j+ndloP8F/l7f5B+JE=;
	b=aot7cxeMaH4Jm98IaolW7lORXqNJY03g8MsMxIqIaxfNAj/w6EA+deQ46LPTI+NBIw
	JG0w0uyO/b6wOhjugoVTYngrwx7/UKDPfpD06ObfAGesLfw+GnoPxzoBrAaCoKF2Kaix
	usE8H0Z/0DqH5t2fqQ8oUBGGCOeZA/w62lJ6lMls8jVQBMHzGNmR+4ugSqa1EGDDEhWv
	E7e+UGT7GfwxMN6eBhq+H/sj/+wUUAQ4GGWdndf6oxToQQ6Izgmz7RbfB1bNsldLQrpl
	kK6YW+NOTYV0YNb39Xp/wsqHnCjI3YHbeVS8NFNV/uS+36xqqAUT09s6G7t/58diKTtH
	YKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Tgf65YHTlno9X40YIgo+bIDO1j+ndloP8F/l7f5B+JE=;
	b=K4StVi8vIGyprb8u5oL3hCu9htU8ksOytSfJMUkmLVUv4EOQFMIPkz5aMZ6sfpR8wB
	Rvk++u6gbcswahYgYVu7I7jkvUPxtIDPVq//uf2gg/evuDmssZR7vjNx7KNZse+tFhN1
	IORKIjQvrdFCOX9i3fHVgX+SgozbJ+8RLofSRBUQdGtiBC7l1C4nkBZz87MJl/UiAEGv
	Qbexnj3IMRq2jI6hZi7NVhd/Ribn102WcbKXqFuFV1ka/PGLF2XkL04tRr0Q0aMCuv2b
	e6I8oGBpGeMkVTZOQKAuHsRZeklvRWbaFTihGKtLcSZp2Qz7Bx+ev/3yrWRVRA0gCBup
	ZT/w==
X-Gm-Message-State: ALyK8tJAt+wrGkxh99e1+Prm9Fntzc0ZLt1wx311aL/LqDBgiQqcudXySaW5NWZDbXbdj0jwHYznyqh//YeFHm20
X-Received: by 10.36.20.196 with SMTP id 187mr3268250itg.83.1464873890096;
	Thu, 02 Jun 2016 06:24:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 2 Jun 2016 06:24:30 -0700 (PDT)
In-Reply-To: <CAFBcLwKLUs8XQA5iWVT8Ssnn3bR9TZvWWem68ttmHB7X8vazEg@mail.gmail.com>
References: <CAFBcLwKLUs8XQA5iWVT8Ssnn3bR9TZvWWem68ttmHB7X8vazEg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Jun 2016 14:24:30 +0100
Message-ID: <CAJTo0LYjdE=NH0i7GvNrBGzsjA+3ob=QPi7Hzdc8_VAaMwwHSw@mail.gmail.com>
To: Alfonso Lima Astor <alfonsolimaastor@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dev package being pulled into RDEPENDS automatically
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
X-List-Received-Date: Thu, 02 Jun 2016 13:24:51 -0000
Content-Type: multipart/alternative; boundary=001a1143e3c0dcad5505344b87b9

--001a1143e3c0dcad5505344b87b9
Content-Type: text/plain; charset=UTF-8

On 31 May 2016 at 12:09, Alfonso Lima Astor <alfonsolimaastor@gmail.com>
wrote:

> Do you know where this rdependency could get pulled into? how could I
> remove it?
>

This can happen if the package generates unversioned libraries that look
like development symlinks (such as /usr/lib/libfoo.so), which by default
get packaged into foo-dev but as they're real libraries will result in
dependencies being added.

If this is the case then you just need to fix the packaging so the real
libraries are not in the -dev package.

Ross

--001a1143e3c0dcad5505344b87b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 May 2016 at 12:09, Alfonso Lima Astor <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alfonsolimaastor@gmail.com" target=3D"_blank">alfonsolimaastor@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":yu" class=3D"a3s aXjCH m1550683960633327">Do you know where this rdepe=
ndency could get pulled into? how could I remove it?<br></div></blockquote>=
</div><br>This can happen if the package generates unversioned libraries th=
at look like development symlinks (such as /usr/lib/libfoo.so), which by de=
fault get packaged into foo-dev but as they&#39;re real libraries will resu=
lt in dependencies being added.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">If this is the case then you just need to fix the=
 packaging so the real libraries are not in the -dev package.</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1143e3c0dcad5505344b87b9--
