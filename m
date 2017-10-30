Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB08E00D9B; Mon, 30 Oct 2017 09:27:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB9DE00CC3
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 09:27:14 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id m16so28492024iod.1
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 09:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DNRkRV2i79hM+fLKOZIpxtEcrzcZQyJi0S3aIdt0tA8=;
	b=weBuncgVEvS+lCArCeb9vfhdmnGGrrVEKNBxFaajoCHDhzcazYIz13kTe21lQ1OkqL
	Y/8pX19gQNAIc20AbsOKYiCdzS5iSigZ8g3zRqFZb81CrXX0UL+YiyIXrDLuOBwahXRV
	ifAnhnKQaSeQZ+ClFLVOI5boD2JNY2X6DTLzBcxdXUa+cuMLJ7FwzhptB4T2XTgXmU/0
	BsneojGrK7JbrZXC3F/4MBzq2fz+bAY/EtIg5I5q8UbghqZQmRufM2yGUCLFEu21xVRu
	0/D7KXIo5hWBq28VKRI8EjXaPIJvpWHenWE0jOBbj1D9UEAm/IscTkIBit380s1/ajSQ
	Dm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DNRkRV2i79hM+fLKOZIpxtEcrzcZQyJi0S3aIdt0tA8=;
	b=O7sh45TKc8b4QoRd9/NoBvKqmcRTf7YO/2JMGi98YcELwmXI11vlBeuh+FiRVKWTEd
	ULkDDzkyOzCCKHzdGr9y5up503KcECIDVDu9hE0XR+d8G3RmiN5aAJ36oqaxasjQC0SA
	uK/yi3iN4C4lkv9JNAyTYWsd/WPadR6OTl2Vx6migUdrZgm5W019+0eO485K7q8wATF/
	k9bLwBiweH5xRNMZyc47c3TQTpQ6TRjiYOH1VxU7XjRLNpNrc2aAJQTDPCVKLMo2Wj3+
	diJQKCVoRuLUhY8WIsZXFRFdOLu03DnDtiHgVbIxdT9s9MBrU+J6UvY0aJ16owAscpCX
	qfmA==
X-Gm-Message-State: AMCzsaXIS0utYhiwsd6bJz3kyiTbfUdEbfaGnJnR7oPu42xNqHfmav7J
	cVpHvAG+2W0pThbFtzd+bUjsvYdY9ZWYw7GQ0XZrJA==
X-Google-Smtp-Source: ABhQp+RkfafflEbyYP3h0HN98/jza+es+KtbKqo4dLBeAjPhqKPSyMQdOiPXUJHc3VpUK+R/SXb7HFo26CehUWXY9I8=
X-Received: by 10.36.81.21 with SMTP id s21mr7019113ita.144.1509380833541;
	Mon, 30 Oct 2017 09:27:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Mon, 30 Oct 2017 09:26:53 -0700 (PDT)
In-Reply-To: <CAMKF1sr+DvBXOKr1+QrSj33MLy4RZxkPzQ54of4tjEV6pk85mg@mail.gmail.com>
References: <64cf2d95-5651-3ff8-3ce2-327329edc4da@gmail.com>
	<CAMKF1sr+DvBXOKr1+QrSj33MLy4RZxkPzQ54of4tjEV6pk85mg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Oct 2017 16:26:53 +0000
Message-ID: <CAJTo0LZTj4yHnZgZ-aph7UTeVhHwCp47H1eWmvj9P7Z1RXW3jQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: Re: [PATCH] poky: LICENSE in packagegroup makes no sense - removed
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
X-List-Received-Date: Mon, 30 Oct 2017 16:27:15 -0000
Content-Type: multipart/alternative; boundary="001a113a71466a1908055cc61ce0"

--001a113a71466a1908055cc61ce0
Content-Type: text/plain; charset="UTF-8"

On 30 October 2017 at 16:02, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Oct 30, 2017 at 6:51 AM, Robert Berger
> <yocto.user.mailinglist@gmail.com> wrote:
> >
> > Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
> > ---
> >  meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb | 1
> -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git
> > a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> > b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> > index 2ca6392..aee4a03 100644
> > --- a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> > +++ b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
> > @@ -4,7 +4,6 @@
> >   SUMMARY = "Host packages for the standalone SDK or external toolchain"
> >  PR = "r12"
> > -LICENSE = "MIT"
>
> this might fail some QA checks. what issues do you see with this in.
>
>
The commit message is misleading: it doesn't make no sense as every recipe
needs a LICENSE assignment, but the packagegroup class sets a default value.

Robert, please rephrase the message, fix the formatting
('nativesdk-packagegroup-sdk-host: remove redundant LICENSE' is a
reasonable shortlog), and post to the correct list.

Ross

--001a113a71466a1908055cc61ce0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 30 October 2017 at 16:02, Khem Raj <span dir=3D"ltr">&l=
t;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.co=
m</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><span class=3D"">On Mon, Oct 30, 2017 =
at 6:51 AM, Robert Berger<br>
&lt;<a href=3D"mailto:yocto.user.mailinglist@gmail.com">yocto.user.mailingl=
ist@gmail.<wbr>com</a>&gt; wrote:<br>
&gt;<br>
&gt; Signed-off-by: Robert Berger &lt;robert.berger@<wbr>ReliableEmbeddedSy=
stems.com&gt;<br>
&gt; ---<br>
&gt;=C2=A0 meta/recipes-core/<wbr>packagegroups/<a href=3D"http://nativesdk=
-packagegroup-sdk-host.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-<=
wbr>packagegroup-sdk-host.bb</a> | 1 -<br>
&gt;=C2=A0 1 file changed, 1 deletion(-)<br>
&gt;<br>
&gt; diff --git<br>
&gt; a/meta/recipes-core/<wbr>packagegroups/<a href=3D"http://nativesdk-pac=
kagegroup-sdk-host.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-<wbr>=
packagegroup-sdk-host.bb</a><br>
&gt; b/meta/recipes-core/<wbr>packagegroups/<a href=3D"http://nativesdk-pac=
kagegroup-sdk-host.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-<wbr>=
packagegroup-sdk-host.bb</a><br>
&gt; index 2ca6392..aee4a03 100644<br>
&gt; --- a/meta/recipes-core/<wbr>packagegroups/<a href=3D"http://nativesdk=
-packagegroup-sdk-host.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-<=
wbr>packagegroup-sdk-host.bb</a><br>
&gt; +++ b/meta/recipes-core/<wbr>packagegroups/<a href=3D"http://nativesdk=
-packagegroup-sdk-host.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-<=
wbr>packagegroup-sdk-host.bb</a><br>
&gt; @@ -4,7 +4,6 @@<br>
&gt;=C2=A0 =C2=A0SUMMARY =3D &quot;Host packages for the standalone SDK or =
external toolchain&quot;<br>
&gt;=C2=A0 PR =3D &quot;r12&quot;<br>
&gt; -LICENSE =3D &quot;MIT&quot;<br>
<br>
</span>this might fail some QA checks. what issues do you see with this in.=
<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>The commit message is misleading: it doesn&#39;t make no sens=
e as every recipe needs a LICENSE assignment, but the packagegroup class se=
ts a default value.</div><div><br></div><div>Robert, please rephrase the me=
ssage, fix the formatting (&#39;nativesdk-packagegroup-sdk-host: remove red=
undant LICENSE&#39; is a reasonable shortlog), and post to the correct list=
.</div><div><br></div><div>Ross</div></div></div></div>

--001a113a71466a1908055cc61ce0--
