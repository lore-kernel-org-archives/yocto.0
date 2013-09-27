Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AEA4E01652
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 23:36:36 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id eh20so1804671lab.32
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 23:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Cz6pv1AFDgEHH3NTRxBTr0KH0TG7vmuYYHFEiJkfTs4=;
	b=yWM1eWz5CjFKpB0PbLvCJ48upxqpn3zqLKU84U1wsWOb/5zPbQ2n+u9RiMexyuZhEa
	WxDvPUdzuvBlaS6vDw/aamttjXM0rxZaD7SlsNIut7+ZLk0/UK3fRqsHYTj4W4ZPggpO
	HJdAIdDjAQ7K3HkPhFBdvJ7laE069gMrBXz0v2ZcKfyxXaiV3wgLcdUBDPHICwVqW7Z4
	c1E7sh14gVfHaw6tSRN6dhNHcHZ3LQmFG5gDt67O2wR954mDHQMGfgdcKpAJ9CJOfMBS
	a4eY3xrj0OOTfXexOlx3o7k9h9ylyEjdNqt+IFP74a8bNKnlRGlXq+RFBKvapMruKEN9
	wGeg==
MIME-Version: 1.0
X-Received: by 10.152.88.74 with SMTP id be10mr4323068lab.4.1380263794766;
	Thu, 26 Sep 2013 23:36:34 -0700 (PDT)
Received: by 10.114.62.115 with HTTP; Thu, 26 Sep 2013 23:36:34 -0700 (PDT)
In-Reply-To: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
References: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
Date: Fri, 27 Sep 2013 12:06:34 +0530
Message-ID: <CAE_REAvwOuPT9JLdrWmHkaETMCUHuPfaoj+JZ1HcYVeBKw39SA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: =?UTF-8?B?5pu55b+X56CU?= <czyhit@126.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to add a new bb(xerces-c)?
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
X-List-Received-Date: Fri, 27 Sep 2013 06:36:37 -0000
Content-Type: multipart/alternative; boundary=001a11c34e6c2ef58c04e757b589

--001a11c34e6c2ef58c04e757b589
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

You can look at
http://git.yoctoproject.org/cgit/cgit.cgi/experimental/meta-m2/plain/packag=
es/xerces-c/xerces-c_2.8.0.bb

//Gaurang Shastri



On Fri, Sep 27, 2013 at 11:05 AM, =E6=9B=B9=E5=BF=97=E7=A0=94 <czyhit@126.c=
om> wrote:

> Hello, everyone!
> I try to add a new bb(xerces-c) to my image, bb is as followings:
>
> DESCRIPTION =3D "Xerces-C++ is a validating XML parser written in a porta=
ble
> subset of C++."
> HOMEPAGE =3D "http://xerces.apache.org/xerces-c/"
> LICENSE =3D "Apache"
> LIC_FILES_CHKSUM =3D
> "file://src/xercesc/dom/DOM.hpp;endline=3D22;md5=3D9986d741cab88a8b7bc4a1=
9d3c1b8106
> \
> file://src/xercesc/parsers/XercesDOMParser.hpp;endline=3D21;md5=3D85be7b6=
e587aa51e4f30c262f1cd695e
> \
>
> file://src/xercesc/xinclude/XIncludeDOMDocumentProcessor.hpp;endline=3D23=
;md5=3D4236d3c0f2537b3df547a97d60f93dc0"
>
> PR =3D "r1"
>
> DEPENDS =3D "curl icu"
>
> SRC_URI =3D "http://mirror.bit.edu.cn/apache//xerces/c/3/sources/xerces-c=
-${PV}.tar.gz"
>
> SRC_URI[md5sum] =3D "6a8ec45d83c8cfb1584c5a5345cb51ae"
> SRC_URI[sha256sum] =3D
> "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
>
> inherit autotools
>
> S =3D "${WORKDIR}/xerces-c-${PV}/"
>
> EXTRA_OECONF =3D "\
> --enable-netaccessor-curl \
> --enable-transcoder-icu \
> --enable-msgloader-icu \
> "
>
> but when configure come into the error:
> ERROR: This autoconf log indicates errors, it looked at host include
> and/or library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was
> '/home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-=
poky-linux-gnueabi/xerces-c/3.1.1-r1/xerces-c-3.1.1'
> ERROR: Function failed: do_qa_configure
> ERROR: Logfile of failure stored in:
> /home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-p=
oky-linux-gnueabi/xerces-c/3.1.1-r1/temp/log.do_configure.19932
> ERROR: Task 5
> (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/recipes-hc1200=
/xerces-c/
> xerces-c_3.1.1.bb, do_configure) failed with exit code '1'
>
> who can show me how to port the autotools-based project? Thanks.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c34e6c2ef58c04e757b589
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>You can look at <a href=3D"http=
://git.yoctoproject.org/cgit/cgit.cgi/experimental/meta-m2/plain/packages/x=
erces-c/xerces-c_2.8.0.bb">http://git.yoctoproject.org/cgit/cgit.cgi/experi=
mental/meta-m2/plain/packages/xerces-c/xerces-c_2.8.0.bb</a><br>
<br></div>//Gaurang Shastri<br><div><br></div></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Fri, Sep 27, 2013 at 11:05 AM, =
=E6=9B=B9=E5=BF=97=E7=A0=94 <span dir=3D"ltr">&lt;<a href=3D"mailto:czyhit@=
126.com" target=3D"_blank">czyhit@126.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"line-height:1.7;font-size:14px=
;font-family:arial">Hello, everyone!<div>I try to add a new bb(xerces-c) to=
 my image, bb is as followings:</div>
<div><br></div><div><div>DESCRIPTION =3D &quot;Xerces-C++ is a validating X=
ML parser written in a portable subset of C++.&quot;</div><div>HOMEPAGE =3D=
 &quot;<a href=3D"http://xerces.apache.org/xerces-c/" target=3D"_blank">htt=
p://xerces.apache.org/xerces-c/</a>&quot;</div>
<div>LICENSE =3D &quot;Apache&quot;</div><div>LIC_FILES_CHKSUM =3D &quot;fi=
le://src/xercesc/dom/DOM.hpp;endline=3D22;md5=3D9986d741cab88a8b7bc4a19d3c1=
b8106 \</div><div><span style=3D"white-space:pre-wrap">		</span>file://src/=
xercesc/parsers/XercesDOMParser.hpp;endline=3D21;md5=3D85be7b6e587aa51e4f30=
c262f1cd695e \</div>
<div><span style=3D"white-space:pre-wrap">		</span>file://src/xercesc/xincl=
ude/XIncludeDOMDocumentProcessor.hpp;endline=3D23;md5=3D4236d3c0f2537b3df54=
7a97d60f93dc0&quot;</div><div><br></div><div>PR =3D &quot;r1&quot;</div><di=
v><br>
</div><div>DEPENDS =3D &quot;curl icu&quot;</div><div><br></div><div>SRC_UR=
I =3D &quot;<a href=3D"http://mirror.bit.edu.cn/apache//xerces/" target=3D"=
_blank">http://mirror.bit.edu.cn/apache//xerces/</a>
 c/3/sources/xerces-c-${PV}.tar.gz&quot;</div><div><br></div><div>SRC_URI[m=
d5sum] =3D &quot;6a8ec45d83c8cfb1584c5a5345cb51ae&quot;</div><div>SRC_URI[s=
ha256sum] =3D &quot;a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26=
d44968736&quot;</div>
<div><br></div><div>inherit autotools</div><div><br></div><div>S =3D &quot;=
${WORKDIR}/xerces-c-${PV}/&quot;</div><div><br></div><div>EXTRA_OECONF =3D =
&quot;\</div><div><span style=3D"white-space:pre-wrap">		</span>--enable-ne=
taccessor-curl \</div>
<div><span style=3D"white-space:pre-wrap">		</span>--enable-transcoder-icu =
\</div><div><span style=3D"white-space:pre-wrap">		</span>--enable-msgloade=
r-icu \</div><div><span style=3D"white-space:pre-wrap">		</span>&quot;</div=
></div>
<div><br></div><div>but when configure come into the error:</div><div><div>=
ERROR: This autoconf log indicates errors, it looked at host include and/or=
 library paths while determining system capabilities.</div><div>Rerun confi=
gure task after fixing this.=20
 The path was &#39;/home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/=
armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/xerces-c-3.1.1&#39;</d=
iv><div>ERROR: Function failed: do_qa_configure</div><div>ERROR: Logfile of=
 failure stored in: /home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work=
/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/temp/log.do_configure=
.19932</div>
<div>ERROR: Task 5 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc12=
00/recipes-hc1200/xerces-c/<a href=3D"http://xerces-c_3.1.1.bb" target=3D"_=
blank">xerces-c_3.1.1.bb</a>, do_configure) failed with exit code &#39;1&#3=
9;</div>
</div><div><br></div><div>who can show me how to port the autotools-based p=
roject? Thanks.</div></div><br><br><span title=3D"neteasefooter"><span></sp=
an></span><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c34e6c2ef58c04e757b589--
