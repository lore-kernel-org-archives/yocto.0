Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3309E00B04; Wed, 22 Jun 2016 13:03:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F2A3E00AD8
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:03:06 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id h190so48524274ith.1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jVbSG4ZCu7alDUBRlpEfhiP8sQEaCFCe7u5f1O/AboU=;
	b=yEbzBpc+dauAWqDXW2iozsCHzIkjPs1+XDaW7V3r0BFi90AiTpcuFleej5YyMIYzeW
	iHD3WoEo57iNM3nrW8JDHSTqjkvX4X+96XgGNhRsZJOFJeAkGDZSnBjDWsoJSr7kmkQc
	Nb5fYCPBo/Nt1C4fcsR1lTDFbHs7nDLHwaO5ShOVA19Zv1sRT8061ydLxIi1fQLAAhWh
	ixehrjQBxK36ibe3mF0XokJtic4vlzIKGEXJQElPWchVgMdYhDwwFChChcEYASQzdmuF
	wE8wYiwnyKbzm5nSuqy3KSCH7JTZYi+Ao2tAJER38aVVqrk7vQpFC8l9A8bCQt9GlsOA
	dFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jVbSG4ZCu7alDUBRlpEfhiP8sQEaCFCe7u5f1O/AboU=;
	b=fSj7aZvVRFGvPYDWFXBwyfAiRgX5eGUq+73Rn2SEyAcjLPjZvNW6XBwdNNieqfFFlI
	0idKNWK40XibAf8gb2waCUF/C6G6BprWYxrrOu4ccojsViL4KzlVqU+x6pKJw0F2CrVa
	6cvsu/BMOdU4P5o6CkK7am4tuhwSuLwPfGuwfOW5QwoUwupB3IFPufvkmIe6StCNw9wL
	XxDV+4jg+PH7SbMEwHg+RD2kPtSk5uZecgZOu3TLiM6U4OotZOuNPY41NkfiUXxA8qtT
	1dVJoQzMql0I5Q8WtNd+9j4iCQLH3lMvnN4zAv5RfIW8NKWpY24MxRj45IV6axw0poNn
	Gv4A==
X-Gm-Message-State: ALyK8tKJuwwO5o8OmoM6UWMPp0z+QNYFYn3HJXc++a5q7RbhAIGCdoaEFZnkYt+gI+JV6YmRcAMUbcCZI8ntj/6x
X-Received: by 10.36.20.196 with SMTP id 187mr16663958itg.83.1466625785598;
	Wed, 22 Jun 2016 13:03:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 22 Jun 2016 13:02:46 -0700 (PDT)
In-Reply-To: <CAJTo0Lb9zaufhDTaObFPYJK7ZU-H3bXD7-8y11+eAx=Btiwj4A@mail.gmail.com>
References: <20160622164325.GB20922@asimov.austin.ibm.com>
	<CAJTo0Lb9zaufhDTaObFPYJK7ZU-H3bXD7-8y11+eAx=Btiwj4A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jun 2016 21:02:46 +0100
Message-ID: <CAJTo0LZiTspQ+46fcuMUvaa7uHqodtfG0cTkqXN51gytOr70Gg@mail.gmail.com>
To: Patrick Williams <patrick@stwcx.xyz>
Cc: Yocto Maillist <yocto@yoctoproject.org>,
	Bradley Bishop <bradleyb@fuzziesquirrel.com>
Subject: Re: uninative support on non-x86 platforms
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
X-List-Received-Date: Wed, 22 Jun 2016 20:03:07 -0000
Content-Type: multipart/alternative; boundary=001a1143e3c0f837cf0535e36c80

--001a1143e3c0f837cf0535e36c80
Content-Type: text/plain; charset=UTF-8

On 22 June 2016 at 21:00, Burton, Ross <ross.burton@intel.com> wrote:

> On 22 June 2016 at 17:43, Patrick Williams <patrick@stwcx.xyz> wrote:
>
>> The current poky fails when building on a non-x86 platform with a
>> message like:
>>
>>     uninative selected but not configured, please set
>> UNINATIVE_CHKSUM[ppc64le]
>>
>> We have a number of developers that use ppc64le systems to do work on,
>> so we would like to help get this support in place.  Are there any
>> pointers to the work needed to get this going?
>>
>
> INHERIT_remove = "uninative" in local.conf should do the trick.
>
> Or, don't use poky for your work. :)
>

Or, finish writing the reply before sending.

The best solution here would be to build your own uninative tarball for
ppc64le and verify it works, then we could add that to the yocto downloads
so it works out of the box.

Ross

--001a1143e3c0f837cf0535e36c80
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 22 June 2016 at 21:00, Burton, Ross <span dir=3D"ltr">&=
lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@i=
ntel.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmai=
l_extra"><span class=3D""><div class=3D"gmail_quote">On 22 June 2016 at 17:=
43, Patrick Williams <span dir=3D"ltr">&lt;<a href=3D"mailto:patrick@stwcx.=
xyz" target=3D"_blank">patrick@stwcx.xyz</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div>The current poky fails when building on a non-x8=
6 platform with a<br>
message like:<br>
<br>
=C2=A0 =C2=A0 uninative selected but not configured, please set UNINATIVE_C=
HKSUM[ppc64le]<br>
<br>
We have a number of developers that use ppc64le systems to do work on,<br>
so we would like to help get this support in place.=C2=A0 Are there any<br>
pointers to the work needed to get this going?</div></blockquote></div><br>=
</span>INHERIT_remove =3D &quot;uninative&quot; in local.conf should do the=
 trick.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Or, don&#39;t use poky for your work. :)</div></div></blockquote><div><br=
></div><div>Or, finish writing the reply before sending.</div><div><br></di=
v><div>The best solution here would be to build your own uninative tarball =
for ppc64le and verify it works, then we could add that to the yocto downlo=
ads so it works out of the box.</div><div><br></div><div>Ross=C2=A0</div></=
div></div></div>

--001a1143e3c0f837cf0535e36c80--
