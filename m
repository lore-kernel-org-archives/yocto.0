Return-Path: <008dilip@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA5D6E00476
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 22:06:48 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id wo20so3708753obc.39
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 22:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6arBwuOJivzkdtuy/o2bJrW4+BMRA6YvdD/HL8NFp48=;
	b=U+o/uuU7tI7sklSBekzDKyIS31vOHI3DWF5e5BR9bvl4pcCNax03qIQLAwK5y6Y9YL
	D6Pyui+p0P3Zh3RVNk+FlD/okGswfDThQ2i028IfMk1p8s0nu6iRgeu55EhQaRiq0DV/
	np2oyZQgWVf9ork2H1JKq5wUhqDZw88UCVCTWePnKCUd38SAKi/Eeo1/BptMFMXA8Rae
	IOLeIYYZJCKpBbZqEPRCrbi7lXBUEKy0h34Rs8gBlxDA5rlEGFw35d9ngGEM+Ukn+5fu
	Z2HwShuiZwCFaEWXPpyGEUi4sbCqF3v1/VoZHCKju491rezHTqFpveJE4WDD0do538Ms
	w57A==
MIME-Version: 1.0
X-Received: by 10.182.72.234 with SMTP id g10mr23599801obv.21.1385359607327;
	Sun, 24 Nov 2013 22:06:47 -0800 (PST)
Received: by 10.76.177.34 with HTTP; Sun, 24 Nov 2013 22:06:47 -0800 (PST)
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B0A1BEEB4@IRSMSX103.ger.corp.intel.com>
References: <CABmxB3MGuNu-AppvDGujjgQFU9X5NAu9J2W269DGEK36B8wAeg@mail.gmail.com>
	<1FFB62CE8AEB0D4298B51122D8903E9619F95667@IRSMSX104.ger.corp.intel.com>
	<CABmxB3OHHvD7rf3WNDBLKrEO3OOBu1PNC8bRT1F2FhH_QgxpFA@mail.gmail.com>
	<33115ABC4887814E8A92A08FBC93416B0A1BEEB4@IRSMSX103.ger.corp.intel.com>
Date: Mon, 25 Nov 2013 11:36:47 +0530
Message-ID: <CABmxB3M9EwGTzWp0XDdwKHJ4288zf6mdVJUoN9ok5Pi1_1+fag@mail.gmail.com>
From: Dilip Kumar <008dilip@gmail.com>
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Tests in Yocto development environment block diagram
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
X-List-Received-Date: Mon, 25 Nov 2013 06:06:51 -0000
Content-Type: multipart/alternative; boundary=001a11c2e06447f2a504ebfa2b69

--001a11c2e06447f2a504ebfa2b69
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Dear corneliux

Thanks a lot for your response with clear and detailed information.

Regards

Dilip Kumar b


On Thursday, November 21, 2013, Stoicescu, CorneliuX wrote:

>  Hello Dilip,
>
>
>
> I will try and answer as much as I can on behalf of Alex:
>
>
>
> We have 2 types of tests:
>
> 1)      Buildtime
>
> 2)      Runtime
>
>
>
> Each type of test has 2 main categories(from a QA point of view):
>
> -          Automated
>
> -          Manual
>
>
>
> Here is where you can find each:
>
>
>
> -          Automated Buildtime:
>
> o   Sanity tests(run for every build):
>
> =A7  In the Yocto sources: meta/classes/sanity.bbclass
>
> =A7  In the Yocto sources: meta-yocto/classes/poky-sanity.bbclass
>
> =A7  There are other many various sanity checks done explicitly throughou=
t
> poky. I do not have the knowledge to get in more detail on this though.
>
> o   We are working on a new feature that will add automated =93gray box=
=94
> buildtime tests: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740
>
>
>
> -          Automated Runtime:
>
> o   Automated image tests:
>
> =A7  Covers only QEMU(virtual) targets
>
> =A7  After building an image, if the correct configuration is set, it wil=
l
> boot up and tests will be run on it consisting of commands sent over ssh
>
> =A7  The tests can be found in the Yocto sources: meta/lib/oeqa/runtime/
>
> =A7  This uses the =91testme.bbclass=92 from /meta/classes/testme.bbclass
>
> =A7  More documentation on this feature can be found here:
> https://wiki.yoctoproject.org/wiki/Image_tests
>
> =A7  The test cases are also described in Testopia:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18
>
> =B7         Note that this source contains both manual and automated test=
s
>
> =A7  We are working on a new feature to expand these tests to BSP(hardwar=
e)
> targets: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1596
>
> o   Package testing
>
> =A7  Documentation: https://wiki.yoctoproject.org/wiki/Ptest
>
>
>
> -          Manual Buildtime:
>
> o   Can be found in Testopia:
> https://bugzilla.yoctoproject.org/tr_show_product.cgi
>
> =A7  At the moment the following buildtime products in Testopia contain
> tests:
>
> =B7         ADT:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D1
>
> =B7         Eclipse Plugin:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D5
>
> =B7         HOB:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D8
>
> =B7         OE-CORE:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D25
>
> =B7         Meta-Yocto:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D26
>
> =B7         Bitbake:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D9
>
> =B7         Build Appliance:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D28
>
>
>
> -          Manual Runtime:
>
> o   Covers BSP(hardware) and QEMU(virtual) targets
>
> o   Can be found in Testopia:
> https://bugzilla.yoctoproject.org/tr_show_product.cgi
>
> =A7  At the moment the following runtime products in Testopia contain tes=
ts:
>
> =B7         BSP:
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18
>
> =B7         Runtime(mostly performance and compliance tests):
> https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D34
>
> o   Note that this source contains both manual and automated tests
>
>
>
> I hope I did not miss anything and that I was clear in my description. If
> you need any more information, please don=92t hesitate to ask!
>
>
>
> Regards,
>
> Corneliu
>
> Romania Yocto QA
>
>
>
>
>
> Dear Alex,
>
> Thank you for your response.
>
> And I need to know one more thing whether these QA tests are done manuall=
y
> or it's automated during the build or its done separately by Yocto for
> particular distribution?
>
> Is there any Q
>

--001a11c2e06447f2a504ebfa2b69
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div>Dear corneliux</div><div><br></div><div>Thanks a lot for your response=
 with clear and detailed information.</div><div><br></div><div>Regards</div=
><div><br></div><div>Dilip Kumar b</div><div><br></div><div><br></div>On Th=
ursday, November 21, 2013, Stoicescu, CorneliuX  wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">Hello Dilip,<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">I will try and answer as much as I can on beh=
alf of Alex:<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">We have 2 types of tests:<u></u><u></u></span=
></p>
<p><u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&=
quot;sans-serif&quot;;color:#1f497d"><span>1)<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Buildtime<u></u><u><=
/u></span></p>
<p><u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&=
quot;sans-serif&quot;;color:#1f497d"><span>2)<span style=3D"font:7.0pt &quo=
t;Times New Roman&quot;">=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Runtime<u></u><u></u=
></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">Each type of test has 2 main categories(from =
a QA point of view):<u></u><u></u></span></p>
<p style=3D"margin-left:23.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Ti=
mes New Roman&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Automated<u></u><u><=
/u></span></p>
<p style=3D"margin-left:23.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Ti=
mes New Roman&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Manual<u></u><u></u>=
</span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">Here is where you can find each:<u></u><u></u=
></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p style=3D"margin-left:23.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Ti=
mes New Roman&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Automated Buildtime:=
<u></u><u></u></span></p>
<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Sanity tests(run for=
 every build):
<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">In the Yocto sources=
: meta/classes/sanity.bbclass<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">In the Yocto sources=
: meta-yocto/classes/poky-sanity.bbclass<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">There are other many=
 various sanity checks done explicitly throughout poky. I do not have the k=
nowledge to get in more detail on this though.<u></u><u></u></span></p>

<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">We are working on a =
new feature that will add automated =93gray box=94 buildtime tests:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740</a><u>=
</u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p style=3D"margin-left:23.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Ti=
mes New Roman&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Automated Runtime:<u=
></u><u></u></span></p>
<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Automated image test=
s:<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Covers only QEMU(vir=
tual) targets<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">After building an im=
age, if the correct configuration is set, it will boot up and tests will be=
 run on it consisting of commands sent over ssh<u></u><u></u></span></p>

<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">The tests can be fou=
nd in the Yocto sources: meta/lib/oeqa/runtime/<u></u><u></u></span></p>

<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">This uses the =91tes=
tme.bbclass=92 from /meta/classes/testme.bbclass<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">More documentation o=
n this feature can be found here:
<a href=3D"https://wiki.yoctoproject.org/wiki/Image_tests" target=3D"_blank=
">https://wiki.yoctoproject.org/wiki/Image_tests</a><u></u><u></u></span></=
p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">The test cases are a=
lso described in Testopia:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_=
id=3D18</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Note that this sourc=
e contains both manual and automated tests<u></u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">We are working on a =
new feature to expand these tests to BSP(hardware) targets:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1596" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1596</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Package testing<u></=
u><u></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Documentation:
<a href=3D"https://wiki.yoctoproject.org/wiki/Ptest" target=3D"_blank">http=
s://wiki.yoctoproject.org/wiki/Ptest</a><u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p style=3D"margin-left:23.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Ti=
mes New Roman&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Manual Buildtime:<u>=
</u><u></u></span></p>
<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can be found in Test=
opia:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_product.cgi" target=3D=
"_blank">https://bugzilla.yoctoproject.org/tr_show_product.cgi</a><u></u><u=
></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">At the moment the fo=
llowing buildtime products in Testopia contain tests:<u></u><u></u></span><=
/p>

<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">ADT:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D1" =
target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_i=
d=3D1</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Eclipse Plugin:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D5" =
target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_i=
d=3D5</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">HOB:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D8" =
target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_i=
d=3D8</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">OE-CORE:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D25"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_=
id=3D25</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Meta-Yocto:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D26"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_=
id=3D26</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Bitbake:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D9" =
target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_i=
d=3D9</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Build Appliance:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D28"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_=
id=3D28</a>
<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p style=3D"margin-left:23.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Ti=
mes New Roman&quot;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Manual Runtime:<u></=
u><u></u></span></p>
<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Covers BSP(hardware)=
 and QEMU(virtual) targets<u></u><u></u></span></p>
<p style=3D"margin-left:59.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can be found in Test=
opia:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_product.cgi" target=3D=
"_blank">https://bugzilla.yoctoproject.org/tr_show_product.cgi</a><u></u><u=
></u></span></p>
<p style=3D"margin-left:95.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Wingdings;color:#1f497d"=
><span>=A7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">At the moment the fo=
llowing runtime products in Testopia contain tests:<u></u><u></u></span></p=
>

<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">BSP:
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D18"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_=
id=3D18</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:131.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:Symbol;color:#1f497d"><s=
pan>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=A0=A0=A0=A0=
=A0=A0=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Runtime(mostly perfo=
rmance and compliance tests):
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_id=3D34"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/tr_show_plan.cgi?plan_=
id=3D34</a>
<u></u><u></u></span></p>
<p style=3D"margin-left:167.25pt">
<u></u><span style=3D"font-size:11.0pt;font-family:&quot;Courier New&quot;;=
color:#1f497d"><span>o<span style=3D"font:7.0pt &quot;Times New Roman&quot;=
">=A0=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Note that this sourc=
e contains both manual and automated tests<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">I hope I did not miss anything and that I was=
 clear in my description. If you need any more information, please don=92t =
hesitate to ask!<u></u><u></u></span></p>

<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">Regards,<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">Corneliu<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">Romania Yocto QA<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p></p></div></div></div></div></div>
<p><u></u>=A0<u></u></p>
<p>Dear Alex,<u></u><u></u></p>
<p>Thank you for your response.<u></u><u></u></p>
<p>And I need to know one more thing whether these QA tests are done manual=
ly or it&#39;s automated during the build or its done separately by Yocto f=
or particular distribution?<u></u><u></u></p>
<p>Is there any Q</p>

</blockquote>

--001a11c2e06447f2a504ebfa2b69--
