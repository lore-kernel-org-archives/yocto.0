Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99339E00873; Tue, 28 Oct 2014 00:48:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B3AE007A0
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 00:48:11 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id j107so66936qga.6
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 00:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4kSxL7Z9dblLX0NYlTQUfWM6d4AHWZ0FyBMGuUhSRGE=;
	b=OQZdHV/pweu6lYQgGbX3aUIT8GBOHOfYSmr/hjEkfEjsm2+V4faDD8B57eWPNbxfNV
	xSFHtYUzj54jpIU5OVdkwTYPmArSsEY0mSoN5CRxsvta/mWthBKBFAIuF/X40c2E4hEE
	l0jRkFTnaksO3JUxt1S4q7e+XG0/qFky9GfLzbnYj+3y23F5TPpomiBE7I/AZsxRIuQb
	kBIUNrsh0tnrjvv50baY2FZDyt+W1gWP4/wiWxq2wWvUmfxDWCgI8SSYN1vVg9wEZe8q
	hDAXn7E6QOgMHknKxA79xozcLDEwFJeYL1vfVymoYRNEciFG2Wi0F88X3kvOHiAwzwvM
	M6xg==
X-Gm-Message-State: ALoCoQm2WDBx3ovspkR1KtGt6vSlGo+zaNzQwElD1eUkVuP3TDZhGcUov9JJ/FQdoZ6TNzo2V9aX
X-Received: by 10.224.160.83 with SMTP id m19mr2260463qax.17.1414482491257;
	Tue, 28 Oct 2014 00:48:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Tue, 28 Oct 2014 00:47:51 -0700 (PDT)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C85215BC1C1E@USSTLZ-PMSG012.emrsn.org>
References: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
	<CAMKF1sqjcM3OQVkgh-fxPEW007CAaAy7MzoP7Y2ZZ-Hi_3Z5Jg@mail.gmail.com>
	<CACjDgAMhqJMHpT++Lwpy4vkbeJQOZtOOGBgg1HMSf1=-kiSHtg@mail.gmail.com>
	<A8FC939F80655644A89BB21CCD3741E87C17AF@G08CNEXMBPEKD02.g08.fujitsu.local>
	<3204FE6663E1F14CAF4CA6928E60C85215BC1C1E@USSTLZ-PMSG012.emrsn.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Oct 2014 07:47:51 +0000
Message-ID: <CAJTo0LaPX78AO1roHQL5zmVD9DMoxgh5RSnT2BSugzXtrmxWYg@mail.gmail.com>
To: Neil.Wu@emerson.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Luajit Compile Error
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
X-List-Received-Date: Tue, 28 Oct 2014 07:48:17 -0000
Content-Type: multipart/alternative; boundary=047d7bacb2aa6ee47e050676de41

--047d7bacb2aa6ee47e050676de41
Content-Type: text/plain; charset=UTF-8

Hi,

It's probably a good idea to put this somewhere public, like a new layer on
eg github, or add it to meta-oe.  Before then, I've some comments on your
recipe:

On 28 October 2014 01:40, <Neil.Wu@emerson.com> wrote:

> FILESEXTRAPATHS_prepend  := "${THISDIR}/${PN}:"
>
#FILESPATH := "${THISDIR}/${PN}"
>

You don't need to do this.


> FILES_${PN} += "/usr/share/* \
>         /usr/include/* \
>         /usr/share/lua/* \
>         /usr/share/luajit-2.0.2/* \
>         /usr/share/man/* \
>         /usr/share/lua/5.1/* \
>         /usr/lib/* \
>         /usr/bin/*"
>

Don't put headers into $PN.  The default FILES_${PN} covers most of those
paths too.


> S = "${WORKDIR}/${PN}-${PV}"
>

This is the default value.


> PARALLEL_MAKEINST="PREFIX=${D}/usr"
>
PARALLEL_MAKE="'PREFIX=${D}' 'CROSS=${TARGET_SYS}-'  'TARGET_SYS=Linux' "
>

PARALLEL_MAKE* are specifically for parallelism arguments to make (_MAKE
for build time, _MAKEINST for make install time).  Set all of these in
EXTRA_OEMAKE and it will get added passed automatically when you call
oe_runmake.  Does it really need different values for PREFIX at build and
install time?

Ross

--047d7bacb2aa6ee47e050676de41
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">It&#39;s probably a good idea to =
put this somewhere public, like a new layer on eg github, or add it to meta=
-oe.=C2=A0 Before then, I&#39;ve some comments on your recipe:</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=3D"gmai=
l_quote">On 28 October 2014 01:40,  <span dir=3D"ltr">&lt;<a href=3D"mailto=
:Neil.Wu@emerson.com" target=3D"_blank">Neil.Wu@emerson.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex"><div id=3D":1qy" class=3D"" style=3D"overflow:hi=
dden">FILESEXTRAPATHS_prepend=C2=A0 :=3D &quot;${THISDIR}/${PN}:&quot;=C2=
=A0</div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex"><div id=3D":1qy" class=3D"" style=3D=
"overflow:hidden">
#FILESPATH :=3D &quot;${THISDIR}/${PN}&quot;<br></div></blockquote><div><br=
></div><div>You don&#39;t need to do this.</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-lef=
t:1ex"><div id=3D":1qy" class=3D"" style=3D"overflow:hidden">FILES_${PN} +=
=3D &quot;/usr/share/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/share/lua/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/share/luajit-2.0.2/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/share/man/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/share/lua/5.1/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/lib/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/bin/*&quot;<br></div></blockquote><div><br=
></div><div>Don&#39;t put headers into $PN.=C2=A0 The default FILES_${PN} c=
overs most of those paths too.</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div =
id=3D":1qy" class=3D"" style=3D"overflow:hidden">S =3D &quot;${WORKDIR}/${P=
N}-${PV}&quot;<br></div></blockquote><div><br></div><div>This is the defaul=
t value.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204=
,204);border-left-style:solid;padding-left:1ex"><div id=3D":1qy" class=3D""=
 style=3D"overflow:hidden">
PARALLEL_MAKEINST=3D&quot;PREFIX=3D${D}/usr&quot;=C2=A0</div></blockquote><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pa=
dding-left:1ex"><div id=3D":1qy" class=3D"" style=3D"overflow:hidden">
PARALLEL_MAKE=3D&quot;&#39;PREFIX=3D${D}&#39; &#39;CROSS=3D${TARGET_SYS}-&#=
39;=C2=A0 &#39;TARGET_SYS=3DLinux&#39; &quot;<br></div></blockquote><div><b=
r></div>PARALLEL_MAKE* are specifically for parallelism arguments to make (=
_MAKE for build time, _MAKEINST for make install time).=C2=A0 Set all of th=
ese in EXTRA_OEMAKE and it will get added passed automatically when you cal=
l oe_runmake.=C2=A0 Does it really need different values for PREFIX at buil=
d and install time?</div><div class=3D"gmail_quote"><br></div><div class=3D=
"gmail_quote">Ross</div></div></div>

--047d7bacb2aa6ee47e050676de41--
