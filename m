Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72D9FE00524; Tue, 22 Jul 2014 09:19:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7227E00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 09:19:37 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id hi2so725605wib.17
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 09:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KqkCbk2a0L9wm1rxAj5WPndDCZ2HyT9owOJXELt2nik=;
	b=xyDj2Ekra3p6y/Utwi3J6Ex00OVDJgnywLHEEhWyOf1DTz4vW3vmSJs+RHEi219Lkx
	X+xGb5n7Q5HwK6C9aUmm6JBvMGeJni5YjMWtQmmXi5yylzy6U26Yi14S/R0SCNDjSHtA
	HY/SKdXpPMbyVV1iSvCStvQJL2s/z/8RBJmxQBYeGk6tgD40C0NhHp83zJTcAkOFZ39K
	J5eciHP6r8+slo3ZXhat16ts8ijk0uEk6jCUzrdlw+GIRMSWRqhEZnJd6mb7ctDcRkDU
	X6kRG8rZnCkcFCZTeWWgjBrczxqaYCwUsIek69E/FeUUdymk2+zrk9dt0CIHY+iQA+DO
	vEGg==
MIME-Version: 1.0
X-Received: by 10.194.100.34 with SMTP id ev2mr35003752wjb.76.1406045976088;
	Tue, 22 Jul 2014 09:19:36 -0700 (PDT)
Received: by 10.194.19.161 with HTTP; Tue, 22 Jul 2014 09:19:36 -0700 (PDT)
In-Reply-To: <CAGM0ZdRVPGNS-tJ__x4XeaivHmC-_wxq9Kj+NGt3ds0FZBD-OA@mail.gmail.com>
References: <CALkREYCJARja3TPwPR4Ck6wLrPa1Wmb2un3LBeKjt4PTszKo4Q@mail.gmail.com>
	<CAJTo0LYgQWCXJY1L7EhdP72oOyxVkigx1z8cdGoGBXOpWqcd1w@mail.gmail.com>
	<CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
	<CALkREYC-GA3RbBmrrkJZ4rX0Dn-Ss9LrdOwx14vxw5eBDYmZzw@mail.gmail.com>
	<CAGM0ZdRVPGNS-tJ__x4XeaivHmC-_wxq9Kj+NGt3ds0FZBD-OA@mail.gmail.com>
Date: Tue, 22 Jul 2014 18:19:36 +0200
Message-ID: <CALkREYCbBe5uN50SkPco2S=rAwc8hPTYackHWSnL5VSKWB2+7A@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to find the bb file from package name
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
X-List-Received-Date: Tue, 22 Jul 2014 16:19:41 -0000
Content-Type: multipart/alternative; boundary=089e0160aa3af1568e04feca96bd

--089e0160aa3af1568e04feca96bd
Content-Type: text/plain; charset=UTF-8

Oh sorry the link I sent was wrong. The correct one is
https://github.com/meta-qt5/meta-qt5/blob/daisy/recipes-qt/qt5/nativesdk-qtbase_5.2.1.bb

Manually searching the bb/inc file did not help until this point.

Now I enabled the build history (INHERIT += "buildhistory"
BUILDHISTORY_FEATURES = "image package sdk") and built the packages once
again. Then searched for the package name as shown below

cd build/buildhistory/packages
grep -nri nativesdk-libqt5core-dev .
./i686-nativesdk-oesdk-linux/nativesdk-qtbase/nativesdk-qtbase-tools-dev/latest:3:PKG
= nativesdk-libqt5core-dev

which shows that the yocto package is "nativesdk-qtbase-tools-dev", which
is provided by "nativesdk-qtbase_5.2.1.bb".

But I'm still not able to find out where in yocto PKG variable is
configured (which changes this rpm file name from the default one).



On Tue, Jul 22, 2014 at 5:50 PM, Bharath Chandra <ellurubharath29@gmail.com>
wrote:

> Hi Anooj,
>
> I guess you are looking at a wrong version of the recipe file, you have to
> look into version number 5.2.1 and revision r1 as your package name is
> suggesting but the link which you have mentioned is for 5.3.1 . Kindly,
> have a look into correct version number of recipe file and if you do not
> find any package name in the recipe file then you can search in *.inc*
> files which are included in that recipe file.
> for eg :
>
> require qt5-${PV}.inc
>
> You have to check in qt5-5.2.1.inc file and see if any package is included with the name which you are searching for.
>
> Thanks & Regards,
> Bharath Chandra Elluru
>
>
>
> On Tue, Jul 22, 2014 at 6:52 AM, Anooj Gopi <anoojgopi@gmail.com> wrote:
>
>>
>> Yes I am trying to track down the recipe from the rpm file. In my project
>> yocto builds the rpm package
>> "nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm" (by
>> https://github.com/meta-qt5/meta-qt5) but it is not included in my sdk
>> sysroot image. So I would like to see how I could include this into my sdk.
>> For that I am tracing back the recipe which generated the rpm.
>>
>> I tried as you said:
>> From the source package name I can see it is from "Source RPM  :
>> nativesdk-qtbase-5.2.1-r1.src.rpm", which means bb file is
>> https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/qt5/nativesdk-qtbase_5.3.1.bb
>> Now this from the bb file content I can see this file provides multiple
>> packages, (for eg. nativesdk-qtbase-tools-dbg nativesdk-qtbase-tools-dev
>> nativesdk-qtbase-tools-staticdev nativesdk-qtbase-tool) but I still could
>> not find where it is configured to generate the package
>> "nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm".
>>
>> As Belen in his last mail, the tools like "Toaster" could confirm this
>> (by listing the packages generated from a bb file), but is there any way I
>> can do it in Yocto Project 1.5?
>>
>> Regards,
>> Anooj
>>
>>
>> On Tue, Jul 22, 2014 at 11:15 AM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> On 21 July 2014 16:39, Anooj Gopi <anoojgopi@gmail.com> wrote:
>>> > Could some one help me to understand how we could find the bb file
>>> which
>>> > generated particular package (rpm package for eg.)?
>>> > (In some cases the name of the package and recipe name differ
>>> drastically)
>>> >
>>> > Also is there any way to list packages (rpm) generated by particular
>>> recipe
>>> > (yocto package) easily. (without looking into the PACKAGES variable).
>>>
>>> It's probably best if you explain exactly what you want to do.
>>>
>>> If you want to work backwards from a RPM to the recipe, then binary
>>> RPMs have a Source RPM metadata field and the srpm is named after the
>>> recipe:
>>>
>>> $ rpm -qpi connman-tests-1.24-r0.15.corei7_64.rpm | grep Source
>>> Source RPM  : connman-1.24-r0.15.src.rpm
>>>
>>> Ross
>>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Thanks & Regards,
> Bharath Chandra Elluru.
> Contact Number:785-979-4875.
>

--089e0160aa3af1568e04feca96bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><br></div>Oh sorry the link I sent was=
 wrong. The correct one is <a href=3D"https://github.com/meta-qt5/meta-qt5/=
blob/daisy/recipes-qt/qt5/nativesdk-qtbase_5.2.1.bb">https://github.com/met=
a-qt5/meta-qt5/blob/daisy/recipes-qt/qt5/nativesdk-qtbase_5.2.1.bb</a><br>
<br></div>Manually searching the bb/inc file did not help until this point.=
<br><br></div>Now I enabled the build history (INHERIT +=3D &quot;buildhist=
ory&quot; BUILDHISTORY_FEATURES =3D &quot;image package sdk&quot;) and buil=
t the packages once again. Then searched for the package name as shown belo=
w<br>
<br>cd build/buildhistory/packages<br>grep -nri nativesdk-libqt5core-dev .<=
br>./i686-nativesdk-oesdk-linux/nativesdk-qtbase/nativesdk-qtbase-tools-dev=
/latest:3:PKG =3D nativesdk-libqt5core-dev<br><br></div><div>which shows th=
at the yocto package is &quot;nativesdk-qtbase-tools-dev&quot;, which is pr=
ovided by &quot;<a href=3D"http://nativesdk-qtbase_5.2.1.bb">nativesdk-qtba=
se_5.2.1.bb</a>&quot;.<br>
<br></div><div>But I&#39;m still not able to find out where in yocto PKG va=
riable is configured (which changes this rpm file name from the default one=
).<br><br> </div></div><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">
On Tue, Jul 22, 2014 at 5:50 PM, Bharath Chandra <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:ellurubharath29@gmail.com" target=3D"_blank">ellurubharath29@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div><font><span style=3D"font-family:comic sans ms,sans-s=
erif">Hi Anooj,<br><br>I guess you are looking at a wrong version of the re=
cipe file, you have to look into version number 5.2.1 and revision r1 as yo=
ur package name is suggesting but the link which you have mentioned is for =
5.3.1 . Kindly, have a look into correct version number of recipe file and =
if you do not find any package name in the recipe file then you can search =
in <b>.inc</b> files which are included in that recipe file.<br>

</span></font></div><font><span style=3D"font-family:comic sans ms,sans-ser=
if">for eg : <br></span></font><pre><font><span style=3D"font-family:comic =
sans ms,sans-serif"><span>require</span> <span>qt5</span><span>-</span><spa=
n>${</span><span>PV</span><span>}</span><span>.inc<br>

<br></span></span></font></pre><pre><font><span style=3D"font-family:comic =
sans ms,sans-serif"><span>You have to check in qt5-5.2.1.inc file and see i=
f any package is included with the name which you are searching for.<br>

<br></span></span></font></pre><pre><span><font><span style=3D"font-family:=
comic sans ms,sans-serif">Thanks &amp; Regards,<br>Bharath Chandra Elluru</=
span></font><br></span></pre></div><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote"><div><div class=3D"h5">On Tue, Jul 22, 2014 =
at 6:52 AM, Anooj Gopi <span dir=3D"ltr">&lt;<a href=3D"mailto:anoojgopi@gm=
ail.com" target=3D"_blank">anoojgopi@gmail.com</a>&gt;</span> wrote:<br></d=
iv></div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div><br></div=
><div>Yes I am trying to track down the recipe from the rpm file. In my pro=
ject yocto builds the rpm package &quot;nativesdk-libqt5core-dev-5.2.1-r1.i=
686_nativesdk.rpm&quot; (by <a href=3D"https://github.com/meta-qt5/meta-qt5=
" target=3D"_blank">https://github.com/meta-qt5/meta-qt5</a>) but it is not=
 included in my sdk sysroot image. So I would like to see how I could inclu=
de this into my sdk. For that I am tracing back the recipe which generated =
the rpm.<br>



</div><div><br></div><div>I tried as you said:<br></div><div>From the sourc=
e package name I can see it is from &quot;Source RPM=C2=A0 : nativesdk-qtba=
se-5.2.1-r1.src.rpm&quot;, which means bb file is <a href=3D"https://github=
.com/meta-qt5/meta-qt5/blob/master/recipes-qt/qt5/nativesdk-qtbase_5.3.1.bb=
" target=3D"_blank">https://github.com/meta-qt5/meta-qt5/blob/master/recipe=
s-qt/qt5/nativesdk-qtbase_5.3.1.bb</a><br>



</div><div>Now this from the bb file content I can see this file provides m=
ultiple packages, (for eg. nativesdk-qtbase-tools-dbg nativesdk-qtbase-tool=
s-dev nativesdk-qtbase-tools-staticdev nativesdk-qtbase-tool) but I still c=
ould not find where it is configured to generate the package &quot;nativesd=
k-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm&quot;.<br>



<br></div><div>As Belen in his last mail, the tools like &quot;Toaster&quot=
; could confirm this (by listing the packages generated from a bb file), bu=
t is there any way I can do it in Yocto Project 1.5? </div><div><br></div>



<div>Regards,<br>Anooj<br></div></div><div><div><div><div class=3D"gmail_ex=
tra"><br><br><div class=3D"gmail_quote">On Tue, Jul 22, 2014 at 11:15 AM, B=
urton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" =
target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div>On 21 July 2014 16:39, Anooj Gopi =
&lt;<a href=3D"mailto:anoojgopi@gmail.com" target=3D"_blank">anoojgopi@gmai=
l.com</a>&gt; wrote:<br>




&gt; Could some one help me to understand how we could find the bb file whi=
ch<br>
&gt; generated particular package (rpm package for eg.)?<br>
&gt; (In some cases the name of the package and recipe name differ drastica=
lly)<br>
&gt;<br>
&gt; Also is there any way to list packages (rpm) generated by particular r=
ecipe<br>
&gt; (yocto package) easily. (without looking into the PACKAGES variable).<=
br>
<br>
</div></div>It&#39;s probably best if you explain exactly what you want to =
do.<br>
<br>
If you want to work backwards from a RPM to the recipe, then binary<br>
RPMs have a Source RPM metadata field and the srpm is named after the<br>
recipe:<br>
<br>
$ rpm -qpi connman-tests-1.24-r0.15.corei7_64.rpm | grep Source<br>
Source RPM =C2=A0: connman-1.24-r0.15.src.rpm<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></div></div><br></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"=
#888888"><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Thanks &amp; Reg=
ards,<div>Bharath Chandra Elluru.</div><div>Contact Number:<a href=3D"tel:7=
85-979-4875" value=3D"+917859794875" target=3D"_blank">785-979-4875</a>.</d=
iv>
</div>
</font></span></div>
</blockquote></div><br></div>

--089e0160aa3af1568e04feca96bd--
