Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FF0DE00576; Tue, 22 Jul 2014 04:52:38 -0700 (PDT)
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
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8C69E0054C
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 04:52:30 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id n12so7729929wgh.21
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 04:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=xS6c49t6aK8mh5q5X9BQRsM+wzSF1vH0NFxdyy6V2N8=;
	b=JchecThckG1y/mu2rIocaedak2P7y0lv9VPXNUUhA98ZDkT0WXF4MUnWBvg5l4Lcj/
	a8snRryMCvB9k7Ud3f3Kt31LoSGgOUHkAQcZeAdXDLBurEkuSvciiWYWt+/vABqhElwj
	0hDRYz6qgvXdiO5myRQ3QvVMsOAetEoDuVcJWqxHZ/TVuLKT/Od+6S0YGg2qV+9KJBiq
	pc31WD2YsZuiDzm2dBH5ykT8BQfA3F5DQ+DVhX8U7c6i8/M8LTJTc1qLh1Pw8kArz/hv
	Mu5L2M1tjRnCTRrMtGSTE5uxKvChqy0J/LLKM0M368LMMFZjjrGj9xNxQZtWo34uqEXn
	TAeg==
MIME-Version: 1.0
X-Received: by 10.194.100.34 with SMTP id ev2mr32658209wjb.76.1406029949327;
	Tue, 22 Jul 2014 04:52:29 -0700 (PDT)
Received: by 10.194.19.161 with HTTP; Tue, 22 Jul 2014 04:52:29 -0700 (PDT)
In-Reply-To: <CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
References: <CALkREYCJARja3TPwPR4Ck6wLrPa1Wmb2un3LBeKjt4PTszKo4Q@mail.gmail.com>
	<CAJTo0LYgQWCXJY1L7EhdP72oOyxVkigx1z8cdGoGBXOpWqcd1w@mail.gmail.com>
	<CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
Date: Tue, 22 Jul 2014 13:52:29 +0200
Message-ID: <CALkREYC-GA3RbBmrrkJZ4rX0Dn-Ss9LrdOwx14vxw5eBDYmZzw@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to find the bb file from package name
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
X-List-Received-Date: Tue, 22 Jul 2014 11:52:38 -0000
Content-Type: multipart/alternative; boundary=089e0160aa3aac5f1404fec6dbaa

--089e0160aa3aac5f1404fec6dbaa
Content-Type: text/plain; charset=UTF-8

Yes I am trying to track down the recipe from the rpm file. In my project
yocto builds the rpm package
"nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm" (by
https://github.com/meta-qt5/meta-qt5) but it is not included in my sdk
sysroot image. So I would like to see how I could include this into my sdk.
For that I am tracing back the recipe which generated the rpm.

I tried as you said:
From the source package name I can see it is from "Source RPM  :
nativesdk-qtbase-5.2.1-r1.src.rpm", which means bb file is
https://github.com/meta-qt5/meta-qt5/blob/master/recipes-qt/qt5/nativesdk-qtbase_5.3.1.bb
Now this from the bb file content I can see this file provides multiple
packages, (for eg. nativesdk-qtbase-tools-dbg nativesdk-qtbase-tools-dev
nativesdk-qtbase-tools-staticdev nativesdk-qtbase-tool) but I still could
not find where it is configured to generate the package
"nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm".

As Belen in his last mail, the tools like "Toaster" could confirm this (by
listing the packages generated from a bb file), but is there any way I can
do it in Yocto Project 1.5?

Regards,
Anooj


On Tue, Jul 22, 2014 at 11:15 AM, Burton, Ross <ross.burton@intel.com>
wrote:

> On 21 July 2014 16:39, Anooj Gopi <anoojgopi@gmail.com> wrote:
> > Could some one help me to understand how we could find the bb file which
> > generated particular package (rpm package for eg.)?
> > (In some cases the name of the package and recipe name differ
> drastically)
> >
> > Also is there any way to list packages (rpm) generated by particular
> recipe
> > (yocto package) easily. (without looking into the PACKAGES variable).
>
> It's probably best if you explain exactly what you want to do.
>
> If you want to work backwards from a RPM to the recipe, then binary
> RPMs have a Source RPM metadata field and the srpm is named after the
> recipe:
>
> $ rpm -qpi connman-tests-1.24-r0.15.corei7_64.rpm | grep Source
> Source RPM  : connman-1.24-r0.15.src.rpm
>
> Ross
>

--089e0160aa3aac5f1404fec6dbaa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

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

<div>Regards,<br>Anooj<br></div></div><div class=3D"HOEnZb"><div class=3D"h=
5"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Ju=
l 22, 2014 at 11:15 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br>

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
</div></div></div><br></div>

--089e0160aa3aac5f1404fec6dbaa--
