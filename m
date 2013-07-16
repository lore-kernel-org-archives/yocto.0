Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8598FE013B0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 12:18:08 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c50so589112eek.11
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 12:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jtA1rd56ifjwg5WE1+O1J1Oed0OzxXbz0fqqif3s6tA=;
	b=V9UaROmI5Ro51R/KXGIFSAo4yl17cDFoihgTfq3Lg2Uao+gdc/DcCRfKNrXCWtSTIw
	+hTv3JDZocVpKnY3BmmjItsqTty/kTJ+YfkxPNCeejuQ//UuzQk0FRAHBLDAjAkFXBYu
	lFgLdDxX2qqkNowMMZhNkfFpqDHlfoY8r6ieVdEJqkeYmDEAHrbnKivzNPKnUQjXE8yO
	F7OXbHkoSwDOEsNn1ALs0jExRd70HL0dBnpPfC6k4/S0UM3gH7ZVV7clkAZukXVR0PTA
	wQb/Ira3KTsJQmZFTP0bjLbw8WjW/yILhkEjyUySsC6V6YvGhUEu8fVwNzCBv1KYyK3P
	knfQ==
MIME-Version: 1.0
X-Received: by 10.15.10.132 with SMTP id g4mr2956449eet.38.1374002287676; Tue,
	16 Jul 2013 12:18:07 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Tue, 16 Jul 2013 12:18:07 -0700 (PDT)
In-Reply-To: <5727572.3nCIyqyF5R@helios>
References: <CANwz6nzHiBrXscuZS2Y1xXUThiwyo4AT7bD90VfVsh=Lt_cfLQ@mail.gmail.com>
	<5727572.3nCIyqyF5R@helios>
Date: Tue, 16 Jul 2013 13:18:07 -0600
Message-ID: <CANwz6nx_=iOYF8H3nO3GbDhXU28vVew4giYOMqf=NQZPDgvg7g@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: zedboard & gnuradio
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
X-List-Received-Date: Tue, 16 Jul 2013 19:18:09 -0000
Content-Type: multipart/alternative; boundary=001a11c3f620473e0304e1a5d61a

--001a11c3f620473e0304e1a5d61a
Content-Type: text/plain; charset=ISO-8859-1

Paul,
I opted for options b.)  modifying
/home/vidal/POKY/build071613_zedboard/poky/meta-yocto/conf/distro/poky.conf
mvoing already-stripped from  ERROR_QA to WARN_QA .
Build is currently in progress.
My question will option a.)  need to be done to prevent this from occurring
in future releases.
Thanks not working with the variables would have made this extremely
difficult to find and fix.


On Tue, Jul 16, 2013 at 11:50 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Edward,
>
> On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:
> > ERROR: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
> > from qwt was already stripped, this will prevent future debugging!
> > ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
> > stripped, this will prevent future debugging!
> > ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was
> already
> > stripped, this will prevent future debugging!
>
> poky.conf now marks this QA issue as an error instead of a warning in
> order to
> pick up on quality issues when running builds. You can either:
>
> a) Fix the recipe so that qwt gets built without stripping its output
> binaries, or
>
> b) set your own value for ERROR_QA and WARN_QA so that "already-stripped"
> appears in WARN_QA rather than ERROR_QA
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c3f620473e0304e1a5d61a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Paul,<br></div>I opted for options b.)=
=A0 modifying /home/vidal/POKY/build071613_zedboard/poky/meta-yocto/conf/di=
stro/poky.conf mvoing already-stripped from=A0 ERROR_QA to WARN_QA .<br></d=
iv>
Build is currently in progress.<br></div>My question will option a.)=A0 nee=
d to be done to prevent this from occurring in future releases.<br></div>Th=
anks not working with the variables would have made this extremely difficul=
t to find and fix.<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue,=
 Jul 16, 2013 at 11:50 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Edward,<br>
<div class=3D"im"><br>
On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:<br>
&gt; ERROR: QA Issue: File &#39;/usr/plugins/designer/libqwt_designer_plugi=
n.so&#39;<br>
&gt; from qwt was already stripped, this will prevent future debugging!<br>
&gt; ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from qwt was =
already<br>
&gt; stripped, this will prevent future debugging!<br>
&gt; ERROR: QA Issue: File &#39;/usr/lib/libqwtmathml.so.6.0.1&#39; from qw=
t was already<br>
&gt; stripped, this will prevent future debugging!<br>
<br>
</div>poky.conf now marks this QA issue as an error instead of a warning in=
 order to<br>
pick up on quality issues when running builds. You can either:<br>
<br>
a) Fix the recipe so that qwt gets built without stripping its output<br>
binaries, or<br>
<br>
b) set your own value for ERROR_QA and WARN_QA so that &quot;already-stripp=
ed&quot;<br>
appears in WARN_QA rather than ERROR_QA<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11c3f620473e0304e1a5d61a--
