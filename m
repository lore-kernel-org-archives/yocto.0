Return-Path: <djszapi@archlinux.us>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13627E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:28:26 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id 4so2784560pdd.20
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=GnRrB5Qa4LsZKwQ8JWwX0AM5XHmCDBCUFIMOOMvYtQw=;
	b=YevHJ7rcqIzfgEX3Oa4y7BDFTIzvAOhhkueNz1d6zskf8y7JNm4la48FtnEO2KRKiG
	khqwwQ2SRx1pWiNnBZxpo06rsdIBEHaFjwBlTW17kdp59V0kRvwJBrq0IEfRgOe9oHAb
	rC7Kcg49jUyLigUjnPo3Q/pwitktVSe3hptmPuuv7ZXtSluQYUoPf8Bq559E9MMFZJLc
	qg/PkUeJORg3x5D3wuMR5VAgiKG2Lj7b84Qv0PAIE5E16JC87qsDbU9CdoGEwXeJH5hO
	mvr6gudSE99sFFkbkqg6ZcEo0oZ3rgUTgEwjT3ypX3ReIVIFMGJsIDYawkJw2XmKGntd
	/6MA==
MIME-Version: 1.0
X-Received: by 10.68.25.102 with SMTP id b6mr52517836pbg.105.1374838106060;
	Fri, 26 Jul 2013 04:28:26 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Fri, 26 Jul 2013 04:28:25 -0700 (PDT)
In-Reply-To: <CAJTo0Lb2+bJpJf2O9Rzo51u=TzZ9-JMkBsKU5x-z3ot79F6VrQ@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
	<CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
	<CAJTo0Lb4bhnj5cwySn145dosZnGxubNS5B9P_LbOqrEii5ks1Q@mail.gmail.com>
	<CAOMwXhOdKmzX6aaM3H-FmD73CGXN45tMtZebbgzTfHGNU1Tpcw@mail.gmail.com>
	<CAJTo0Lb2+bJpJf2O9Rzo51u=TzZ9-JMkBsKU5x-z3ot79F6VrQ@mail.gmail.com>
Date: Fri, 26 Jul 2013 12:28:25 +0100
X-Google-Sender-Auth: oLattWsAm-MNwKMlTVXe6WbgFkc
Message-ID: <CAOMwXhPPctbNtFGfuVdBkmjCb+B-fJAuBSf13FedgwHkZKrb3w@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmo9Es7aLwDvADH7s0kFpy6l3JTYhGOp0sabQK3wrplRBKoMfe4McZtWHG7M8eAvJwzmPC7
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 11:28:29 -0000
Content-Type: multipart/alternative; boundary=bcaec5304329ef821904e2687055

--bcaec5304329ef821904e2687055
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 26, 2013 at 12:21 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 26 July 2013 12:10, Laszlo Papp <lpapp@kde.org> wrote:
> > As far as I can tell, the reference documentation does not write that
> > anywhere what you are claiming here. So you are either incorrect, or I
> need
> > to file a bugreport to fix the documentation.
>
> I'd say it's a fair assumption that when the documentation says
> "supported on FooLinux" we mean "supported on a typical and working
> installation of FooLinux".
>

Yeah, right, "fair assumption", Typical and working" .... Needless to
mention that is relative without an absolute measure. It is a fair
assumption that there is no "fair assumption" in here as people differ. :)


> > No doubt a common "normal" could be found for Arch as well, which is
> what I
> > have been referring to, in several emails of this thread now. I do not
> see
> > Arch exclusive, respectively.
>
> All Arch needs to be in the supported list is a long-term stable
> release, and someone willing to do the testing.


You cannot test every variation, but that is generic, and not arch
specific. However, what certain other projects do is they test a certain
configuration (or range of that).

You're clearly
> interested in being the latter, so when the former exists please say.
>

I already said because that is how I opened this thread.


> Via Google I see there's been at least two attempts but nothing has
> actually stuck around.
>

Well, there was the archserver project for that mean. Chakra was also
freezing the core bits.

Laszlo

--bcaec5304329ef821904e2687055
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jul 26, 2013 at 12:21 PM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 26 July 2013 12:10, Las=
zlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">lpapp@kde.org</a>&gt; wrote:<=
br>
&gt; As far as I can tell, the reference documentation does not write that<=
br>
&gt; anywhere what you are claiming here. So you are either incorrect, or I=
 need<br>
&gt; to file a bugreport to fix the documentation.<br>
<br>
</div>I&#39;d say it&#39;s a fair assumption that when the documentation sa=
ys<br>
&quot;supported on FooLinux&quot; we mean &quot;supported on a typical and =
working<br>
installation of FooLinux&quot;.<br></blockquote><div><br></div><div>Yeah, r=
ight, &quot;fair assumption&quot;, Typical and working&quot; .... Needless =
to mention that is relative without an absolute measure. It is a fair assum=
ption that there is no &quot;fair assumption&quot; in here as people differ=
. :)</div>
<div>=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im">&gt; No doubt a common &quot;normal&quot; could be found =
for Arch as well, which is what I<br>
&gt; have been referring to, in several emails of this thread now. I do not=
 see<br>
&gt; Arch exclusive, respectively.<br>
<br>
</div>All Arch needs to be in the supported list is a long-term stable<br>
release, and someone willing to do the testing. </blockquote><div><br></div=
><div>You cannot test every variation, but that is generic, and not arch sp=
ecific. However, what certain other projects do is they test a certain conf=
iguration (or range of that).</div>
<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">You&#39;re clearly<br>
interested in being the latter, so when the former exists please say.<br></=
blockquote><div><br></div><div>I already said because that is how I opened =
this thread.</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

Via Google I see there&#39;s been at least two attempts but nothing has<br>
actually stuck around.<br></blockquote><div><br></div><div>Well, there was =
the archserver project for that mean. Chakra was also freezing the core bit=
s.</div><div><br></div><div>Laszlo</div></div></div></div>

--bcaec5304329ef821904e2687055--
