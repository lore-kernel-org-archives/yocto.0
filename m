Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55984E0074C; Fri,  2 Sep 2016 10:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4AEEE006C7
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 10:49:21 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id v123so8274220qkh.3
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 10:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0N8zpfHXkHlhyMLOeODoLmphg56b5gNLIGWln/5ep6o=;
	b=D5sZXyclHgRp9/irXyrk4O4vWsxehecNlCxSO5/4mNgaDQYrzDy0uit4y/h45DNPFG
	ok1hb/I/CqoQGKJefPQ64lhQjaHS9FLKwMV2XJmnIGqyB0MCLG5VREctK0KAQyC7jZwi
	ALjQdSQcBi1hRsz4KEMZpSLQAkFtbSg0rz2tpYrZjade9uRJfINpqIeNaJ1tfwRR1onp
	ptXCQ0PKRIRz809/1tLVSnjd8744Bc8sG3WQHx77i+bVeauCmJKNznGwOy0p7YFLkqrY
	DpMCwYTWVTeltt7A/n7EJSvB8y+ngkfLTsNCYZK8zEDJXPMxNhHh9xu2Iyg85CQROBVw
	PxSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0N8zpfHXkHlhyMLOeODoLmphg56b5gNLIGWln/5ep6o=;
	b=mIxpitYzrWiJzyAC/LD32r8STluUR/9eAVvdv1iJ0o4sGXfaCqik7sJ0EpceLtUCPB
	KGILH0kVkTQyQXPbxx6mhOMvvRXPuFlwLU/kUXXNnWvTAQ5wKht2yWwP/9e/bvimSBx/
	epu21xROrBrrM9dJMJhlugdo0apZy/2abQ/fAzs2fuxFEWIf7s9uKKVHWDVj628T6sWT
	3Z71V8mMULTtI7yUB0RqwPncjVh5vh3Po0+wmLeuRXvUq9OyYjxVTdEWjmcXsKPet/Px
	ivrUz7/5s2jbgPhIod7fXYIQ7Sbsu/IJQFnVTsBpIOW7i6Ru8B8KNrqlCaGuCqs9fZ+F
	atXA==
X-Gm-Message-State: AE9vXwPsxf7F+IfJfERQAzIla2FfN9+C2XkyCvJyzdMC2upgmc69U4e4HRi3b2Y8r8ryCS62p7Pw3/gvIjWaGQ==
X-Received: by 10.55.143.134 with SMTP id r128mr25828153qkd.161.1472838560631; 
	Fri, 02 Sep 2016 10:49:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.53.83 with HTTP; Fri, 2 Sep 2016 10:49:19 -0700 (PDT)
In-Reply-To: <BY1PR15MB00382A430FB1BEE8F4140C39BCE50@BY1PR15MB0038.namprd15.prod.outlook.com>
References: <BY1PR15MB00382A430FB1BEE8F4140C39BCE50@BY1PR15MB0038.namprd15.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 2 Sep 2016 13:49:19 -0400
Message-ID: <CADkTA4NZakK7nNPAAN7SSmjAxk+8Fr+4Xe_P9xXYh0BLS1Y4+Q@mail.gmail.com>
To: "Clark, Mark A" <Mark.Clark2@nov.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Linux-yocto-rt-4.4.11
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
X-List-Received-Date: Fri, 02 Sep 2016 17:49:24 -0000
X-Groupsio-MsgNum: 31768
Content-Type: multipart/related; boundary=94eb2c083454385714053b89f3ae

--94eb2c083454385714053b89f3ae
Content-Type: multipart/alternative; boundary=94eb2c083454385710053b89f3ad

--94eb2c083454385710053b89f3ad
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2016 at 10:32 AM, Clark, Mark A <Mark.Clark2@nov.com> wrote:

> When building for core-image-rt I get the following error: Any insights
>
> meta-yocto-bsp    =3D "krogoth:7e11efef59c3102948d3eafe5b136c493deee3b5"
>
>
>
> NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.
> org/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D
> acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8
>
> NOTE: Preparing RunQueue
>
> NOTE: Executing SetScene Tasks
>
> NOTE: Executing RunQueue Tasks
>
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
> do_package_qa: QA Issue: Architecture did not match (3 to 62) on
> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa70_
> bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt3-yocto=
-preempt-rt
> [arch]
>
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
> do_package_qa: QA run found fatal errors. Please consider fixing them.
>
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
> do_package_qa: Function failed: do_package_qa
>
> ERROR: Logfile of failure stored in: /home/yocto/poky/build/tmp/
> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa70_
> bf2fbe7f2c-r0/temp/log.do_package_qa.5886
>
> ERROR: Task 61 (/home/yocto/poky/meta/recipes-kernel/linux/linux-
> yocto-rt_4.4.bb, do_package_qa) failed with exit code '1'
>
>
>

We fixed this on master (but on master, we thought it was due to my recent
kernel tools
changes), but this makes me think it is a delta in the QA checks as well ..
which may
have been backported to kergoth.

Is this a new error ? i.e. it used to work ?

The issue is that x86 defaults to 64bit, and this is a 32 bit build. We had
to force disable
it, to get the kernel to build 32bit.

The commit is here (on git://git.yoctoproject.org/yocto-kernel-cache
yocto-4.4 branch):

commit ff423148afe0b7e48ea8a8c0758391f9b4790912
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Mon Jul 11 13:40:13 2016 -0400

    common-pc: enforce 32 bit

    ARCH=3Dx86 defaults to 64 bit on modern kernels. So we need to
    explicitly disable 64bit in common-pc if we want a 32bit build
    (common-pc builds with ARCH=3Dx86, not ARCH=3Di386)

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:100644 100644 d6302a63dfaa... 70df605fe41c... M
bsp/common-pc/common-pc-cpu.cfg

And I'd bet that isn't in play on krogoth, since unless my -stable kernels
have come back,
the kernel-cache update wouldn't have either.

Bruce



> My local.conf contains the following 2 lines:
>
>
>
> PREFERRED_PROVIDER_virtual/kernel =3D =E2=80=9Clinux-yocto-rt=E2=80=9D
>
> COMPATIBLE_MACHINE_genericx86 =3D =E2=80=9Cgenericx86=E2=80=9D
>
>
>
> *Mark Clark*
>
> Embedded Software Engineer
>
> Embedded Software, Cedar Park, TX
>
> [image: Description: Description: Description: Description: National
> Oilwell Varco Logo Color CMYK.jpg]
>
>  Wellbore Technologies =E2=80=93 Dynamic Drilling Solutions
>
> Global Software Engineering
>
> Office: (512) 340-5435
>
> Mobile: (512) 736-9396
>
> *=E2=80=9COne Team =E2=80=93 Infinite Solutions=E2=80=9D*
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c083454385710053b89f3ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Sep 2, 2016 at 10:32 AM, Clark, Mark A <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:Mark.Clark2@nov.com" target=3D"_blank">Mark.Clark2@nov.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal">When building for core-image-rt I get the following =
error: Any insights<br>
<br>
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;krogoth:<wbr>7e11efef59c3102948d=
3eafe5b136c<wbr>493deee3b5&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">NOTE: Fetching uninative binary shim from <a href=3D=
"http://downloads.yoctoproject.org/releases/uninative/1.0.1/x86_64-nativesd=
k-libc.tar.bz2;sha256sum=3Dacf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef=
933128498c8910f8" target=3D"_blank">http://downloads.yoctoproject.<wbr>org/=
releases/uninative/1.0.1/<wbr>x86_64-nativesdk-libc.tar.bz2;<wbr>sha256sum=
=3D<wbr>acf1e44a0ac2e855e81da6426197d3<wbr>6358bf7b4e88e552ef933128498c89<w=
br>10f8</a><u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Preparing RunQueue<u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Executing SetScene Tasks<u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: linux-yocto-rt-4.4.11+<wbr>gitAUTOINC+6ec93aa=
a70_<wbr>bf2fbe7f2c-r0 do_package_qa: QA Issue: Architecture did not match =
(3 to 62) on work/genericx86-poky-linux/<wbr>linux-yocto-rt/4.4.11+<wbr>git=
AUTOINC+6ec93aaa70_<wbr>bf2fbe7f2c-r0/packages-split/<wbr>kernel-vmlinux/bo=
ot/vmlinux-4.<wbr>4.11-rt3-yocto-preempt-rt
 [arch]<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: linux-yocto-rt-4.4.11+<wbr>gitAUTOINC+6ec93aa=
a70_<wbr>bf2fbe7f2c-r0 do_package_qa: QA run found fatal errors. Please con=
sider fixing them.<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: linux-yocto-rt-4.4.11+<wbr>gitAUTOINC+6ec93aa=
a70_<wbr>bf2fbe7f2c-r0 do_package_qa: Function failed: do_package_qa<u></u>=
<u></u></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/yocto/pok=
y/build/tmp/<wbr>work/genericx86-poky-linux/<wbr>linux-yocto-rt/4.4.11+<wbr=
>gitAUTOINC+6ec93aaa70_<wbr>bf2fbe7f2c-r0/temp/log.do_<wbr>package_qa.5886<=
u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Task 61 (/home/yocto/poky/meta/<wbr>recipes-k=
ernel/linux/<a href=3D"http://linux-yocto-rt_4.4.bb" target=3D"_blank">linu=
x-<wbr>yocto-rt_4.4.bb</a>, do_package_qa) failed with exit code &#39;1&#39=
;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0</p></div></div></blockquote><div><br><=
/div><div>We fixed this on master (but on master, we thought it was due to =
my recent kernel tools<br>changes), but this makes me think it is a delta i=
n the QA checks as well .. which may<br></div><div>have been backported to =
kergoth.<br><br></div><div>Is this a new error ? i.e. it used to work ?<br>=
<br></div><div>The issue is that x86 defaults to 64bit, and this is a 32 bi=
t build. We had to force disable<br></div><div>it, to get the kernel to bui=
ld 32bit.<br><br></div><div>The commit is here (on git://<a href=3D"http://=
git.yoctoproject.org/yocto-kernel-cache">git.yoctoproject.org/yocto-kernel-=
cache</a> yocto-4.4 branch):<br><br>commit ff423148afe0b7e48ea8a8c0758391f9=
b4790912<br>Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@win=
driver.com">bruce.ashfield@windriver.com</a>&gt;<br>Date:=C2=A0=C2=A0 Mon J=
ul 11 13:40:13 2016 -0400<br><br>=C2=A0=C2=A0=C2=A0 common-pc: enforce 32 b=
it<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 ARCH=3Dx86 defaults to 64 b=
it on modern kernels. So we need to<br>=C2=A0=C2=A0=C2=A0 explicitly disabl=
e 64bit in common-pc if we want a 32bit build<br>=C2=A0=C2=A0=C2=A0 (common=
-pc builds with ARCH=3Dx86, not ARCH=3Di386)<br>=C2=A0=C2=A0=C2=A0 <br>=C2=
=A0=C2=A0=C2=A0 Signed-off-by: Bruce Ashfield &lt;<a href=3D"mailto:bruce.a=
shfield@windriver.com">bruce.ashfield@windriver.com</a>&gt;<br><br>:100644 =
100644 d6302a63dfaa... 70df605fe41c... M=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 bsp/common-pc/common-pc-cpu.cfg<br><br></div><div>And I&#39;d bet=
 that isn&#39;t in play on krogoth, since unless my -stable kernels have co=
me back,<br></div><div>the kernel-cache update wouldn&#39;t have either.<br=
><br></div><div>Bruce<br></div><div><br></div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div><p class=3D"=
MsoNormal"><u></u></p>
<p class=3D"MsoNormal">My local.conf contains the following 2 lines:<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/<wbr>kernel =3D =E2=80=9C=
linux-yocto-rt=E2=80=9D<u></u><u></u></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_genericx86 =3D =E2=80=9Cgenericx8=
6=E2=80=9D<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"color:rgb(0,112,192)">Mark Clark<u=
></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(0,112,192)">Embedded Softwa=
re Engineer<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(0,112,192)">Embedded Softwa=
re, Cedar Park, TX<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;gill=
 sans mt&quot;,sans-serif;color:rgb(31,73,125)"><img style=3D"width: 2.552i=
n; min-height: 0.25in;" src=3D"cid:image001.png@01D204FC.E16B6FF0" alt=3D"D=
escription: Description: Description: Description: National Oilwell Varco L=
ogo Color CMYK.jpg" height=3D"24" width=3D"245"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;arial=
&quot;,sans-serif;color:rgb(31,73,125)">=C2=A0Wellbore Technologies =E2=80=
=93 Dynamic Drilling Solutions<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;arial=
&quot;,sans-serif;color:rgb(31,73,125)">Global Software Engineering<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(0,112,192)">Office: <a href=
=3D"tel:%28512%29%20340-5435" value=3D"+15123405435" target=3D"_blank">(512=
) 340-5435</a></span><span style=3D"color:rgb(0,112,192)"><u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(0,112,192)">Mobile: <a href=
=3D"tel:%28512%29%20736-9396" value=3D"+15127369396" target=3D"_blank">(512=
) 736-9396</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;times new roman&=
quot;,serif;color:rgb(0,112,192)">=E2=80=9COne Team =E2=80=93 Infinite Solu=
tions=E2=80=9D</span></i><span style=3D"font-family:&quot;times new roman&q=
uot;,serif;color:rgb(0,112,192)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature">&quot;Thou shalt not follow the NULL pointer, for chaos and mad=
ness await thee at its end&quot;</div>
</div></div>

--94eb2c083454385710053b89f3ad--

--94eb2c083454385714053b89f3ae
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D204FC.E16B6FF0>
X-Attachment-Id: cf45a09a453912d4_0.0.1

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

--94eb2c083454385714053b89f3ae--
