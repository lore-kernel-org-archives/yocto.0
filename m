Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26963E0084F; Tue, 28 Oct 2014 07:29:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7F8E00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:29:10 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id tp5so771274ieb.15
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kZvOz/67p+1I5sloN3KXXJyNh3YFrYco7P/OqcR+588=;
	b=QnqQ/8yE/6a7C+mHrs42CG6Pe21nVzu2oigKOzOtD1k+i3pjY1XSFH6TPPeywFV1BR
	+bOJ9ZaFvz/gvM6MYE7EFtYUmbNTHClj2GDvKt4EVJ3KIzUNnyZgzxoV0cWE1kbXvDsM
	+8Qanqwjv3HWgzy1k4cMGIdD0ch7XL2d9paWwyvZMRi2pYKIvCkQGkYSrr8yfnxORsRW
	y4ldqCdCF9/DhJbopivYlg5b33ntYs3uu6XWMfomzc2gLKh5ztVu0laAKLqXMW0nzqi7
	MWEy0mJdQdPIKDJxHCf03lKhjSwV7MKunthML858vGYjCOlPQIiwNcBEZu3HchKbLisX
	yhBA==
MIME-Version: 1.0
X-Received: by 10.107.38.136 with SMTP id m130mr2950980iom.72.1414506550081;
	Tue, 28 Oct 2014 07:29:10 -0700 (PDT)
Received: by 10.50.169.2 with HTTP; Tue, 28 Oct 2014 07:29:10 -0700 (PDT)
In-Reply-To: <CAJTo0LaPX78AO1roHQL5zmVD9DMoxgh5RSnT2BSugzXtrmxWYg@mail.gmail.com>
References: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
	<CAMKF1sqjcM3OQVkgh-fxPEW007CAaAy7MzoP7Y2ZZ-Hi_3Z5Jg@mail.gmail.com>
	<CACjDgAMhqJMHpT++Lwpy4vkbeJQOZtOOGBgg1HMSf1=-kiSHtg@mail.gmail.com>
	<A8FC939F80655644A89BB21CCD3741E87C17AF@G08CNEXMBPEKD02.g08.fujitsu.local>
	<3204FE6663E1F14CAF4CA6928E60C85215BC1C1E@USSTLZ-PMSG012.emrsn.org>
	<CAJTo0LaPX78AO1roHQL5zmVD9DMoxgh5RSnT2BSugzXtrmxWYg@mail.gmail.com>
Date: Tue, 28 Oct 2014 07:29:10 -0700
Message-ID: <CAMKF1spU--wsgnB1o8BXEqP_1eu6FdcJBkyVAhHOd+=qfC4+3A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Tue, 28 Oct 2014 14:29:13 -0000
Content-Type: multipart/alternative; boundary=001a1140de66733e5305067c78ed

--001a1140de66733e5305067c78ed
Content-Type: text/plain; charset=UTF-8

On Tuesday, October 28, 2014, Burton, Ross <ross.burton@intel.com> wrote:

> Hi,
>
> It's probably a good idea to put this somewhere public, like a new layer
> on eg github, or add it to meta-oe.  Before then, I've some comments on
> your recipe:
>
>

There already is recipe for luajit in meta-OE


http://cgit.openembedded.org/cgit.cgi/meta-openembedded/tree/meta-oe/recipes-devtools/luajit/luajit_2.0.3.bb?h=master

Please search the layer index always before you write new recipes it can
save you time

On 28 October 2014 01:40, <Neil.Wu@emerson.com
> <javascript:_e(%7B%7D,'cvml','Neil.Wu@emerson.com');>> wrote:
>
>> FILESEXTRAPATHS_prepend  := "${THISDIR}/${PN}:"
>>
> #FILESPATH := "${THISDIR}/${PN}"
>>
>
> You don't need to do this.
>
>
>> FILES_${PN} += "/usr/share/* \
>>         /usr/include/* \
>>         /usr/share/lua/* \
>>         /usr/share/luajit-2.0.2/* \
>>         /usr/share/man/* \
>>         /usr/share/lua/5.1/* \
>>         /usr/lib/* \
>>         /usr/bin/*"
>>
>
> Don't put headers into $PN.  The default FILES_${PN} covers most of those
> paths too.
>
>
>> S = "${WORKDIR}/${PN}-${PV}"
>>
>
> This is the default value.
>
>
>> PARALLEL_MAKEINST="PREFIX=${D}/usr"
>>
> PARALLEL_MAKE="'PREFIX=${D}' 'CROSS=${TARGET_SYS}-'  'TARGET_SYS=Linux' "
>>
>
> PARALLEL_MAKE* are specifically for parallelism arguments to make (_MAKE
> for build time, _MAKEINST for make install time).  Set all of these in
> EXTRA_OEMAKE and it will get added passed automatically when you call
> oe_runmake.  Does it really need different values for PREFIX at build and
> install time?
>
> Ross
>

--001a1140de66733e5305067c78ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Tuesday, October 28, 2014, Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It&#39;s probabl=
y a good idea to put this somewhere public, like a new layer on eg github, =
or add it to meta-oe.=C2=A0 Before then, I&#39;ve some comments on your rec=
ipe:</div><div class=3D"gmail_extra"><br></div></div></blockquote><div><br>=
</div><div><br></div><div>There already is recipe for luajit in meta-OE=C2=
=A0</div><div><br></div><div><br></div><div><a href=3D"http://cgit.openembe=
dded.org/cgit.cgi/meta-openembedded/tree/meta-oe/recipes-devtools/luajit/lu=
ajit_2.0.3.bb?h=3Dmaster">http://cgit.openembedded.org/cgit.cgi/meta-openem=
bedded/tree/meta-oe/recipes-devtools/luajit/luajit_2.0.3.bb?h=3Dmaster</a><=
br></div><div><br></div><div>Please search the layer index always before yo=
u write new recipes it can save you time</div><div><br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"=
gmail_quote">On 28 October 2014 01:40,  <span dir=3D"ltr">&lt;<a href=3D"ja=
vascript:_e(%7B%7D,&#39;cvml&#39;,&#39;Neil.Wu@emerson.com&#39;);" target=
=3D"_blank">Neil.Wu@emerson.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<div style=3D"overflow:hidden">FILESEXTRAPATHS_prepend=C2=A0 :=3D &quot;${T=
HISDIR}/${PN}:&quot;=C2=A0</div></blockquote><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-col=
or:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div style=3D=
"overflow:hidden">
#FILESPATH :=3D &quot;${THISDIR}/${PN}&quot;<br></div></blockquote><div><br=
></div><div>You don&#39;t need to do this.</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-lef=
t:1ex"><div style=3D"overflow:hidden">FILES_${PN} +=3D &quot;/usr/share/* \=
<br>
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
style=3D"overflow:hidden">S =3D &quot;${WORKDIR}/${PN}-${PV}&quot;<br></div=
></blockquote><div><br></div><div>This is the default value.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex"><div style=3D"overflow:hidden">
PARALLEL_MAKEINST=3D&quot;PREFIX=3D${D}/usr&quot;=C2=A0</div></blockquote><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pa=
dding-left:1ex"><div style=3D"overflow:hidden">
PARALLEL_MAKE=3D&quot;&#39;PREFIX=3D${D}&#39; &#39;CROSS=3D${TARGET_SYS}-&#=
39;=C2=A0 &#39;TARGET_SYS=3DLinux&#39; &quot;<br></div></blockquote><div><b=
r></div>PARALLEL_MAKE* are specifically for parallelism arguments to make (=
_MAKE for build time, _MAKEINST for make install time).=C2=A0 Set all of th=
ese in EXTRA_OEMAKE and it will get added passed automatically when you cal=
l oe_runmake.=C2=A0 Does it really need different values for PREFIX at buil=
d and install time?</div><div class=3D"gmail_quote"><br></div><div class=3D=
"gmail_quote">Ross</div></div></div>
</blockquote>

--001a1140de66733e5305067c78ed--
