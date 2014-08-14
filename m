Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5185BE007A1; Wed, 13 Aug 2014 22:13:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
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
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A5F9E0079E
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 22:13:39 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id q107so622153qgd.26
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 22:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CcKHLPySIXRQ0CcWBKbs2nJ9lN0lzxdvJrRR0T8d0ZE=;
	b=ZlWvGd+QyeNte2/Wz++OJ0/bQgKz7VZJHDS/tQBMPuzi2yD3KaL0fj99mjogrHmPJZ
	pe6nBfwkcMP1CD/fIpRnBN4xNJG7UMVdiXnmjct3xxN/AsVHd9Ju9ai88ADhQBMaMEWe
	Mf0VIgQ/2Ynv3ZPtAt8+YF19twmzDeVDZacpavHl9sDAmubCqA1TTHjuMNN/vG/d4XvX
	nJmDQXfvGu+QaKICvgOtprCPK090jzyDIhe9Og0t9yISpTZhAtybNVX+Y4Ipmk4ScaGL
	kscVxEEi3BWHng9Z/SV7rteN+FOqxSFQQxLW3S5f18pihwb9QQndwuc0UvxB0I79TwG4
	+uDQ==
X-Received: by 10.229.26.10 with SMTP id b10mr13509823qcc.29.1407993218054;
	Wed, 13 Aug 2014 22:13:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.148 with HTTP; Wed, 13 Aug 2014 22:13:17 -0700 (PDT)
In-Reply-To: <CABcZANkmuK_WzRFUw=-bpfEr=0u01Ewj-vbsa5mVy23kC8Q32Q@mail.gmail.com>
References: <1407931042-4223-1-git-send-email-sujith.h@gmail.com>
	<CABcZANkmuK_WzRFUw=-bpfEr=0u01Ewj-vbsa5mVy23kC8Q32Q@mail.gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Thu, 14 Aug 2014 10:43:17 +0530
Message-ID: <CADyYWLmUadnNaqTDwvBtwPiqKa-EaP9C94qUcr79Qjt1A1kQww@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>, Sujith H <Sujith_Haridasan@mentor.com>,
	Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Subject: Re: [PATCH] Adding support for systemd and its service files
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
X-List-Received-Date: Thu, 14 Aug 2014 05:13:49 -0000
Content-Type: multipart/alternative; boundary=001a11330c189bc02505008ff7da

--001a11330c189bc02505008ff7da
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 13, 2014 at 9:43 PM, Christopher Larson <clarson@kergoth.com>
wrote:

>
> On Wed, Aug 13, 2014 at 4:57 AM, Sujith H <sujith.h@gmail.com> wrote:
>
>> From: Sujith H <Sujith_Haridasan@mentor.com>
>>
>> Signed-off-by: Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
>> Signed-off-by: Sujith H <sujith.h@gmail.com>
>>
>
> Might want to mention 'psplash' in the commit message in the future when
> emailing a multi-purpose list like yocto@, so it's clear what exactly
> it's patching before reading the email :)
>

Sure Chris. I sent a second email with 'psplash' in the commit message(
After seeing that I missed 'psplash' was missing in the commit message).
Let me know if you see my second mail with the 'psplash' in the commit
message or not?


> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>



--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--001a11330c189bc02505008ff7da
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Aug 13, 2014 at 9:43 PM, Christopher Larson <span dir=3D"lt=
r">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@ker=
goth.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D""><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Aug 13, 2014 at 4:5=
7 AM, Sujith H <span dir=3D"ltr">&lt;<a href=3D"mailto:sujith.h@gmail.com" =
target=3D"_blank">sujith.h@gmail.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"overflow:hidden">From: Sujith =
H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com" target=3D"_blank">Suji=
th_Haridasan@mentor.com</a>&gt;<br>




<br>
Signed-off-by: Muzaffar Mahmood &lt;<a href=3D"mailto:muzaffar_mahmood@ment=
or.com" target=3D"_blank">muzaffar_mahmood@mentor.com</a>&gt;<br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:sujith.h@gmail.com" target=3D=
"_blank">sujith.h@gmail.com</a>&gt;</div></blockquote></div><br></div></div=
><div class=3D"gmail_extra">Might want to mention &#39;psplash&#39; in the =
commit message in the future when emailing a multi-purpose list like yocto@=
, so it&#39;s clear what exactly it&#39;s patching before reading the email=
 :)<span class=3D"HOEnZb"><font color=3D"#888888"><br>

</font></span></div></div></blockquote><div><br></div><div>Sure Chris. I se=
nt a second email with &#39;psplash&#39; in the commit message( After seein=
g that I missed &#39;psplash&#39; was missing in the commit message). Let m=
e know if you see my second mail with the &#39;psplash&#39; in the commit m=
essage or not?<br>

=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><span class=3D"HOEnZb"><font color=3D"#888888">

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=E0=B5=81=E0=
=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=
=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&gt;Contributo=
r to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign"=
 target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>
</div></div>

--001a11330c189bc02505008ff7da--
