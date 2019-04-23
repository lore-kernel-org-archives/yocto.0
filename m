Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F44FE00942; Tue, 23 Apr 2019 04:57:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2709BE0088B
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 04:57:24 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id j20so11526432lfh.2
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 04:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qn4bmX+UFW4G6l5Ncik26yUNLIAY188b8B0bk+S4uZA=;
	b=AvaTobeIjeCgQe1SbT5CaRxVwFqxVuOesdJP9jm5Abe1t8lFQaX7S6BS8GGiGmbpw/
	GNS3rc5VmCKdW4LrM47zqmjBAq+YYKzxVi7xA6Oh9qhD/2qvp3Cg2zj+pdrhoJTF9izF
	tHBlOiaxbdTG4fSfq8oG5kjRYrYssExQl550loyI+3lmq6f5/OuwGJM+z6zDzQyzJsRo
	Lg3l7F7w0YVQJHTAcICOxTqLpgy5Yk/KSZSIeJh9fLI17NSzCLPp8YGuKHuEY0+8nldb
	doXlwSrDTZ+uS5JUA1lKJYmQlZpeeIml24yf3ZYo6p3Sfb9ylIgReleeHOGGeqMHQNtq
	uA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qn4bmX+UFW4G6l5Ncik26yUNLIAY188b8B0bk+S4uZA=;
	b=InyUKGMp/xu1ZlzqCPbhrmslh081Gll/ckpOqAA32q0ZhbrwDA6nhatF8FCgu+Uj5K
	7s8JvKGCcmSBkTYBkqSIhe1bx72ImTALek/nJIJ3Tr7FqMFpEmP0ipxzUnh9ssoZ7MmN
	HW+KrEuhuOwvaSu17B1/slf50i34Yd/PzZCQ2FWQhjmMw+jeGi2tsq4Efb20HR5roaka
	1o3DkBsyL4eOK/qmvbGAUE4n4utWWZPVfvJI+Eq43ZRFjOSNZ6sTd6zMnPFuiyLwYD2n
	NewHLwnwPNhIl5rXv+tHOpVq3GR31yXafY93KMheft6gymRzSz6EoMSg5rXxu4bq9H2S
	h7ng==
X-Gm-Message-State: APjAAAUQrH3R8CpL/wKniVxXfZOclmUfsRD1PFn0EHBQrexmKNpLDai4
	8k3OLAqwf85RRHleimPI4MhuCSlv837+NtlYj3M=
X-Google-Smtp-Source: APXvYqw2T47+SZcovoy+eBYTvWWZ89Yw0McFyZtVuTQTrl0dXAj7im+g7INXPRgVd6zXDdqnniydb5cvhHe/hN35wcc=
X-Received: by 2002:a19:4c41:: with SMTP id z62mr13691786lfa.9.1556020642903; 
	Tue, 23 Apr 2019 04:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA_f9ePxLuPytZav9z=9qcJzTNHZKvoqfyPJd4LZxVzBgQ6BnQ@mail.gmail.com>
In-Reply-To: <CAA_f9ePxLuPytZav9z=9qcJzTNHZKvoqfyPJd4LZxVzBgQ6BnQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 23 Apr 2019 07:57:11 -0400
Message-ID: <CADkTA4ORqpSv_4iL=1J_HTdpGs3nck-zcgt+=RKOM_qXjKrtFw@mail.gmail.com>
To: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: How to remove packages from Image coming because of RDEPENDS
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
X-List-Received-Date: Tue, 23 Apr 2019 11:57:25 -0000
Content-Type: multipart/alternative; boundary="000000000000aefa6e058731496b"

--000000000000aefa6e058731496b
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 23, 2019 at 6:09 AM Priyanshu Sharma <
ms.priyanshu.sharma@gmail.com> wrote:

> Hi,
>
> How can we remove inclusion of any package which comes because some other
> package RDPENDS on it?
>
> For example, rpcbind recipe RDEPENDS on shadow and libpam packages,
> because of which if IMAGE_INSTALL+="rpcbind" is mentioned in recipe ( even
> though shadow and libpam are not added like this explicilty) , shadow and
> libpam packages get packaged in Image rootfs.
> This even includes any bin/sbin provided by shadow/libpam, even when they
> are not needed in rootfs.
>
> Is there an optimum way to control inclusion of RDEPENDS packages?
>

You need to somehow change the RDEPENDS via one of the mechanisms like
PACKAGECONFIG, or
by splitting the packaging into smaller, more specific sub-packages, etc.

If a package has a RDEPENDS on something else, you can't simply ignore it
or filter it out .. whoever
wrote the recipe is indicating that it is required at runtime. So if you
are saying that it isn't required at
runtime, you should be sending patches to the recipes (and using the
mechanisms like I mention
above) to explain why it really isn't a runtime dependency.

Bruce



> One way is to use ROOTFS_POST_PROCESS and remove specific files after
> do_rootfs task is done.
> But is there a way to remove entire package, instead of removing each file
> ?
>
> Warm Regards,
> Priyanshu Sharma
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000aefa6e058731496b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Apr 23, 2019 at 6:09 AM Priyanshu Sharma &l=
t;<a href=3D"mailto:ms.priyanshu.sharma@gmail.com">ms.priyanshu.sharma@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi,<div><br></div><div>How can we remove inclusion of=
 any package which comes because some other package RDPENDS on it?</div><di=
v><br></div><div>For example, rpcbind recipe RDEPENDS on shadow and libpam =
packages, because of which if IMAGE_INSTALL+=3D&quot;rpcbind&quot; is menti=
oned in recipe ( even though shadow and libpam are not added like this expl=
icilty) , shadow and libpam packages get packaged in Image rootfs.</div><di=
v>This even includes any bin/sbin provided by shadow/libpam, even when they=
 are not needed in rootfs.</div><div><br></div><div>Is there an optimum way=
 to control inclusion of RDEPENDS packages?=C2=A0</div></div></blockquote><=
div><br></div><div><div class=3D"gmail_default" style=3D"font-size:small">Y=
ou need to somehow change the RDEPENDS via one of the mechanisms like PACKA=
GECONFIG, or</div><div class=3D"gmail_default" style=3D"font-size:small">by=
 splitting the packaging into smaller, more specific sub-packages, etc.</di=
v><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">If a package has a RDEPENDS =
on something else, you can&#39;t simply ignore it or filter it out .. whoev=
er</div><div class=3D"gmail_default" style=3D"font-size:small">wrote the re=
cipe is indicating that it is required at runtime. So if you are saying tha=
t it isn&#39;t required at</div><div class=3D"gmail_default" style=3D"font-=
size:small">runtime, you should be sending patches to the recipes (and usin=
g the mechanisms like I mention</div><div class=3D"gmail_default" style=3D"=
font-size:small">above) to explain why it really isn&#39;t a runtime depend=
ency.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div=
><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>One way is to use ROOTFS_POST_PROCESS and remove specific f=
iles after do_rootfs task is done.=C2=A0</div><div>But is there a way to re=
move entire package, instead of removing each file ?</div><div><br></div><d=
iv>Warm Regards,</div><div>Priyanshu Sharma</div><div><br></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000aefa6e058731496b--
