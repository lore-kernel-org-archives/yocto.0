Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B208FE00AE6; Wed,  2 May 2018 19:27:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 632F9E00A6A
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 19:27:42 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id z130-v6so23703666lff.5
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 19:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KiQX23b1iwc9oPMJFkgz2d07c4uaZVLTZuS7oMJzK60=;
	b=FJ+uBDaDDGCKynXJBOqIjioss2AyMNpb1bcJrKtcezeRjexExBqDRkp0TRtq/teq18
	rxvvk1Cvlyw1ycZYO1Go4QjhM2F+gAq+fbkZXSGBdAmZrcuQVeLd6UYfnjrU9/5+7QOo
	zjEgFdjnj7IABNvJfZkZ0kAoiIqIzXAxzbrzUCLFgtqKbHGEl4r66/kvDfYefoEawR/r
	9k0bBUzvpU0eE3UbO4brNzxdiJnFTwnHrbyJvoBvcGKMe2+r0QbyFeUi/sTBQCZiNzaB
	+ThnBU/I4+j907h+grugBYWJGGA9N2Q0J0uJjzmf9+xqookDhNP+tffy25ADNQrYq9fF
	Uhbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KiQX23b1iwc9oPMJFkgz2d07c4uaZVLTZuS7oMJzK60=;
	b=tox2APRTM8jbcxbXlI9X1ZX2TITqXq/fvbjU/LqYZ4+B51IC4WdrtT0GR0u0qIpzg5
	YoyNaiCWPldTfBzBrDTD6km0tnktBO+LFeEGYcahGWhqPpmASocuhS7ePBWj/3xYwXAi
	4BJf0bhUslv3odio3kj9KasuVvGwf4k5CkU2iMu3whZ8AON4jpKj2ooxjBmtRsP500Jr
	LmBjGx73m9jisOsZYcMvjWsaViMrEl+1ULoxDncqm12QTokG3nOvhlo9bHa02ImJD8+S
	f+m9ZAs2iC+g0NgWpLhsyyDeU95NZSr+P13ZyKKsy8CQet3bnlAF1YPlADAlVTI8nxwW
	qX4w==
X-Gm-Message-State: ALQs6tDbj4q3mm5hAcgMUuk/bE89/u5f5mij/vq9XQ/KZrw7F83QG74b
	ZaWkAmt6MM5AgPqrQwM+fqKQb+tQWpRPp+yLTM0=
X-Google-Smtp-Source: AB8JxZr16bBDocgS6ylZCUero4g6RRGq09t7oT1Vx89gmVdQe4xrD8hAQS0BbRxQlS1vg7KQu9eziaOQaFknqMYQ4kM=
X-Received: by 2002:a2e:9248:: with SMTP id
	v8-v6mr15441177ljg.133.1525314461864; 
	Wed, 02 May 2018 19:27:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.51.7 with HTTP; Wed, 2 May 2018 19:27:41 -0700 (PDT)
In-Reply-To: <CABatt_wvpD240n7FZpr6Q+fCVqSii84XN+swdhs6Gjd2jLAogQ@mail.gmail.com>
References: <CABatt_wvpD240n7FZpr6Q+fCVqSii84XN+swdhs6Gjd2jLAogQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 2 May 2018 22:27:41 -0400
Message-ID: <CADkTA4N_3gt_bpiijNdcPVy-HLYsa-fJy92xw4XY9Zp0yQ9DuA@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Can't compile out of tree kernel module when CONFIG_SYSTEM_TRUSTED_KEYRING is set in the kernel configuration
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
X-List-Received-Date: Thu, 03 May 2018 02:27:44 -0000
Content-Type: multipart/alternative; boundary="000000000000ab94e3056b43f266"

--000000000000ab94e3056b43f266
Content-Type: text/plain; charset="UTF-8"

On Wed, May 2, 2018 at 5:05 PM, Martin Townsend <mtownsend1973@gmail.com>
wrote:

> Hi,
>
> I get the following error when compiling a kernel module using the
> latest version of Rocko (The kernel is not linux-yocto but NXP's
> freescale linux-imx, maybe this could be a factor) :
>
> ERROR: kernel-module-driver-0.1-r0 do_make_scripts: Function failed:
> do_make_scripts (log file is located at
> /ws/yocto-rocko/build/tmp/work/mach_1717-linux-gnueabi/
> kernel-module-driver/0.1-r0/temp/log.do_make_scripts.23703)
> ERROR: Logfile of failure stored in:
> /ws/yocto-rocko/build/tmp/work/mach_1717-cwr-linux-
> gnueabi/kernel-module-driver/0.1-r0/temp/log.do_make_scripts.23703
> Log data follows:
> | DEBUG: Executing shell function do_make_scripts
> | make: Entering directory
> '/ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source'
> | make[1]: Entering directory
> '/ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-
> 1717/kernel-build-artifacts'
> |   HOSTCC  scripts/extract-cert
> | /ws/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-
> source/scripts/extract-cert.c:21:25:
> fatal error: openssl/bio.h: No such file or directory
> | compilation terminated.
> | scripts/Makefile.host:107: recipe for target 'scripts/extract-cert'
> failed
> | make[2]: *** [scripts/extract-cert] Error 1
> | /ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/
> kernel-source/Makefile:560:
> recipe for target 'scripts' failed
> |
>
> I checked the makefile and extract-cert is only compiled if
> CONFIG_SYSTEM_TRUSTED_KEYRING is set which we have.
>
>  I could install libssl-dev but it doesn't feel right installing this
> and it's not in the system requirements plus the file openssl/bio.h is
> in the recipe-sysroot-native directory of the kernel module WORK_DIR.
>

I've run into this plenty of times with newer kernels (4.14+), which is why
all the linux-yocto recipes have:


DEPENDS += "${@bb.utils.contains('ARCH', 'x86', 'elfutils-native', '', d)}"
DEPENDS += "openssl-native util-linux-native"

As does my re-worked kernel-devsrc.

So yah, you can just add the dependency to fix the problem.

Bruce


>
>
> Any help would be greatly appreciated,
> Marin.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--000000000000ab94e3056b43f266
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, May 2, 2018 at 5:05 PM, Martin Townsend <span dir=3D"ltr">&lt;<=
a href=3D"mailto:mtownsend1973@gmail.com" target=3D"_blank">mtownsend1973@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi,<br>
<br>
I get the following error when compiling a kernel module using the<br>
latest version of Rocko (The kernel is not linux-yocto but NXP&#39;s<br>
freescale linux-imx, maybe this could be a factor) :<br>
<br>
ERROR: kernel-module-driver-0.1-r0 do_make_scripts: Function failed:<br>
do_make_scripts (log file is located at<br>
/ws/yocto-rocko/build/tmp/<wbr>work/mach_1717-linux-gnueabi/<wbr>kernel-mod=
ule-driver/0.1-r0/<wbr>temp/log.do_make_scripts.<wbr>23703)<br>
ERROR: Logfile of failure stored in:<br>
/ws/yocto-rocko/build/tmp/<wbr>work/mach_1717-cwr-linux-<wbr>gnueabi/kernel=
-module-driver/<wbr>0.1-r0/temp/log.do_make_<wbr>scripts.23703<br>
Log data follows:<br>
| DEBUG: Executing shell function do_make_scripts<br>
| make: Entering directory<br>
&#39;/ws/rufilla/yocto-rocko/<wbr>build/tmp/work-shared/mach-<wbr>1717/kern=
el-source&#39;<br>
| make[1]: Entering directory<br>
&#39;/ws/rufilla/yocto-rocko/<wbr>build/tmp/work-shared/mach-<wbr>1717/kern=
el-build-artifacts&#39;<br>
|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/extract-cert<br>
| /ws/yocto-rocko/build/tmp/<wbr>work-shared/mach-1717/kernel-<wbr>source/s=
cripts/extract-cert.c:<wbr>21:25:<br>
fatal error: openssl/bio.h: No such file or directory<br>
| compilation terminated.<br>
| scripts/Makefile.host:107: recipe for target &#39;scripts/extract-cert&#3=
9; failed<br>
| make[2]: *** [scripts/extract-cert] Error 1<br>
| /ws/rufilla/yocto-rocko/build/<wbr>tmp/work-shared/mach-1717/<wbr>kernel-=
source/Makefile:560:<br>
recipe for target &#39;scripts&#39; failed<br>
|<br>
<br>
I checked the makefile and extract-cert is only compiled if<br>
CONFIG_SYSTEM_TRUSTED_KEYRING is set which we have.<br>
<br>
=C2=A0I could install libssl-dev but it doesn&#39;t feel right installing t=
his<br>
and it&#39;s not in the system requirements plus the file openssl/bio.h is<=
br>
in the recipe-sysroot-native directory of the kernel module WORK_DIR.<br></=
blockquote><div><br></div><div>I&#39;ve run into this plenty of times with =
newer kernels (4.14+), which is why all the linux-yocto recipes have:</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br></=
div><div><div>DEPENDS +=3D &quot;${@bb.utils.contains(&#39;ARCH&#39;, &#39;=
x86&#39;, &#39;elfutils-native&#39;, &#39;&#39;, d)}&quot;</div><div>DEPEND=
S +=3D &quot;openssl-native util-linux-native&quot;</div><div><br></div></d=
iv><div>As does my re-worked kernel-devsrc.</div><div><br></div><div>So yah=
, you can just add the dependency to fix the problem.</div><div><br></div><=
div>Bruce</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
<br>
<br>
Any help would be greatly appreciated,<br>
Marin.<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature">&quot;Thou shalt not follow the NULL point=
er, for chaos and madness await thee at its end&quot;</div>
</div></div>

--000000000000ab94e3056b43f266--
