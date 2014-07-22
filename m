Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C6CE00524; Tue, 22 Jul 2014 10:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B852E00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 10:43:28 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id p10so9586455wes.2
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 10:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=V89b2HV6Y7hn3HyB9ApzZbaeZOE5wggUsoN3r+GZkds=;
	b=Z4EFAPnF5cJtWkZug8qHwYCAKiQwfqmsCuCtTkVsADc4B5eDzXIBikFhNuEoI7halF
	YAFWv2IMkWXwgr/wTcwJo2gR6WqBQnz2+F1L2OklO5TvkikPmv62i5w5MP2qGm2IItgt
	BpqyabGsDPPF9Gmtyl+YWqUXgIScvShSXOHrIiCHB1PnoZlpQRn7Aw+3kxnn2HcKQtGz
	QrWhee6V7wxz6Z2kHNafz71csbYjqSXUTawn3usW46A7F/9XOrzIQVB942HcN1rLMmZI
	kfLP45gtZOBZDWP/LCjFk3rfJgBW5d6rC3ekO5FT0q1hXmEH5nmgr1BPdgsdWd1QY4u1
	PS5A==
MIME-Version: 1.0
X-Received: by 10.180.79.202 with SMTP id l10mr16692421wix.18.1406051007096;
	Tue, 22 Jul 2014 10:43:27 -0700 (PDT)
Received: by 10.194.19.161 with HTTP; Tue, 22 Jul 2014 10:43:27 -0700 (PDT)
In-Reply-To: <CALkREYCHzyJW9F9=dxEC3EuktCqOLBN2LwShkhtF-NteWyfLnA@mail.gmail.com>
References: <CALkREYCJARja3TPwPR4Ck6wLrPa1Wmb2un3LBeKjt4PTszKo4Q@mail.gmail.com>
	<CAJTo0LYgQWCXJY1L7EhdP72oOyxVkigx1z8cdGoGBXOpWqcd1w@mail.gmail.com>
	<CALkREYBqgZpGr-wkFX2Qiw0kanTtg0mEGfq2cJ9=KfG4CrBC0A@mail.gmail.com>
	<CALkREYC-GA3RbBmrrkJZ4rX0Dn-Ss9LrdOwx14vxw5eBDYmZzw@mail.gmail.com>
	<CAGM0ZdRVPGNS-tJ__x4XeaivHmC-_wxq9Kj+NGt3ds0FZBD-OA@mail.gmail.com>
	<CALkREYCbBe5uN50SkPco2S=rAwc8hPTYackHWSnL5VSKWB2+7A@mail.gmail.com>
	<CAJTo0Lb04W409SOt=vofjPyS1xu5AQisY6_f+pEmaJPDgHhkFg@mail.gmail.com>
	<CALkREYCHzyJW9F9=dxEC3EuktCqOLBN2LwShkhtF-NteWyfLnA@mail.gmail.com>
Date: Tue, 22 Jul 2014 19:43:27 +0200
Message-ID: <CALkREYCtEsp9+Y1dhgWSeUBFexhUVgfq_ayN=eChyWD-2GJJkQ@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Tue, 22 Jul 2014 17:43:39 -0000
Content-Type: multipart/alternative; boundary=f46d04428684d06ed804fecbc258

--f46d04428684d06ed804fecbc258
Content-Type: text/plain; charset=UTF-8

I would like to generalize my last question

A yocto PACKAGE, <yocto package> generates an rpm package, <rpm package>
with are different names due to an inherited class setting "PKG
<http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PKG>"
variable.

When I try to add such a package to "TOOLCHAIN_HOST_TASK", it throws
following error during populate_sdk

Error: <yocto package name> not found in the base feeds (i686_nativesdk
noarch any all ).

Does anybody have a clue how to fix this?



On Tue, Jul 22, 2014 at 7:14 PM, Anooj Gopi <anoojgopi@gmail.com> wrote:

> This package (nativesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm) is not
> installed in my sdk sysroot. So I need to add it to TOOLCHAIN_HOST_TASK and
> see if it gets installed into my sdk sysroot
>
> But it fails with below error:
> Error: nativesdk-qtbase-tools-dev not found in the base feeds
> (i686_nativesdk noarch any all ).
>
> Any idea what is the problem here?
>
>
>
> On Tue, Jul 22, 2014 at 6:26 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 22 July 2014 17:19, Anooj Gopi <anoojgopi@gmail.com> wrote:
>> > But I'm still not able to find out where in yocto PKG variable is
>> configured
>> > (which changes this rpm file name from the default one).
>>
>> Packages containing libraries get renamed through debian.bbclass.
>>
>> I'm not sure why you need to know the recipe name for adding packages
>> to a SDK though.
>>
>> Ross
>>
>
>

--f46d04428684d06ed804fecbc258
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I would like to generalize my last question=
<br><br></div>A yocto PACKAGE, &lt;yocto package&gt; generates an rpm packa=
ge, &lt;rpm package&gt; with are different names due to an inherited class =
setting &quot;<a href=3D"http://www.yoctoproject.org/docs/current/ref-manua=
l/ref-manual.html#var-PKG">PKG</a>&quot; variable.<br>
<br></div>When I try to add such a package to &quot;TOOLCHAIN_HOST_TASK&quo=
t;, it throws following error during populate_sdk<br><br>Error: &lt;yocto p=
ackage name&gt; not found in the base feeds (i686_nativesdk noarch any all =
).<br>
<br></div>Does anybody have a clue how to fix this?<br><div><br></div></div=
><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jul =
22, 2014 at 7:14 PM, Anooj Gopi <span dir=3D"ltr">&lt;<a href=3D"mailto:ano=
ojgopi@gmail.com" target=3D"_blank">anoojgopi@gmail.com</a>&gt;</span> wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>This package (nat=
ivesdk-libqt5core-dev-5.2.1-r1.i686_nativesdk.rpm) is not installed in my s=
dk sysroot. So I need to add it to TOOLCHAIN_HOST_TASK and see if it gets i=
nstalled into my sdk sysroot<br>

<br></div>But it fails with below error:<br>Error: nativesdk-qtbase-tools-d=
ev not found in the base feeds (i686_nativesdk noarch any all ).<br><br></d=
iv>Any idea what is the problem here?<br><br></div><div class=3D"HOEnZb">
<div class=3D"h5"><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Tue, Jul 22, 2014 at 6:26 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

<div>On 22 July 2014 17:19, Anooj Gopi &lt;<a href=3D"mailto:anoojgopi@gmai=
l.com" target=3D"_blank">anoojgopi@gmail.com</a>&gt; wrote:<br>
&gt; But I&#39;m still not able to find out where in yocto PKG variable is =
configured<br>
&gt; (which changes this rpm file name from the default one).<br>
<br>
</div>Packages containing libraries get renamed through debian.bbclass.<br>
<br>
I&#39;m not sure why you need to know the recipe name for adding packages<b=
r>
to a SDK though.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--f46d04428684d06ed804fecbc258--
