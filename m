Return-Path: <mkarascybi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33A33E00932; Thu,  2 Apr 2015 05:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkarascybi[at]gmail.com)
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
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D7EE008EC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 05:00:30 -0700 (PDT)
Received: by ignm3 with SMTP id m3so48099875ign.0
	for <yocto@yoctoproject.org>; Thu, 02 Apr 2015 05:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RcCt/B6HCspXK6l0KjNRqlFQQQRgsh5K6RPEzA0+DoE=;
	b=Z5afdw8C3eapQh/cotjqtvo6aYmbdoZqjcI0uQKEIlQu6N0G4PNPU/m8dU1cF/7Fd0
	O4qEFcBNzMzufr/Gne5fcxdrjLnvPbA0dSx+qn575skckgtY3GNL7np9bQBhV/PEtBFn
	07cHBnSfVabZCPcdzMYsQ07v2kF+zm7vGQZLhqRAevlmaxFrU2JMGOtxnscuUfAbUQYW
	rkMafHtTPVkD2ps5juokATopR1Wy+9VaWFvrvqPAXyTLDsHpUZiF33733KEzw4mCK4pK
	pDLmB9AhDRTizgUqR6GxVtTLsuw5bAU687zHJFEWA2LEE4DLFHSU/rYTiewBFzQ4/AUB
	koqQ==
MIME-Version: 1.0
X-Received: by 10.107.25.68 with SMTP id 65mr73956608ioz.44.1427976029432;
	Thu, 02 Apr 2015 05:00:29 -0700 (PDT)
Received: by 10.36.73.87 with HTTP; Thu, 2 Apr 2015 05:00:29 -0700 (PDT)
In-Reply-To: <CAJTo0LYV88=an8dcFsB=5-C_goHCMR7=X4Q=hF0hh1A6FZQivw@mail.gmail.com>
References: <CADu_VSbksoy+hm1Vd=jqzxTpNuFTDLoVX49dp7u9cqWnNVLx9A@mail.gmail.com>
	<CAJTo0LYV88=an8dcFsB=5-C_goHCMR7=X4Q=hF0hh1A6FZQivw@mail.gmail.com>
Date: Thu, 2 Apr 2015 08:00:29 -0400
Message-ID: <CADu_VSYH7Tv15JyHE3QTADXCGoR-oGHZL5e0FiRF27yW+ZW99Q@mail.gmail.com>
From: Matthew Karas <mkarascybi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3-native problems
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
X-List-Received-Date: Thu, 02 Apr 2015 12:00:34 -0000
Content-Type: multipart/alternative; boundary=001a113fe548fb70c90512bc939d

--001a113fe548fb70c90512bc939d
Content-Type: text/plain; charset=UTF-8

I've attempted through the icr channel to install python3 and pip such that
I can install packages and use the standard library.

It didn't look like the python 3 package group was setup.  I attempted to
do what khem` suggested to get around the problem.

https://www.yoctoproject.org/irc/%23yocto.2015-04-01.log.html
mkaras: look into build tree of python3 and see what all ipk/rpms it
generated
and add them all to IMAGE_INSTALL

Doing that still produced errors.  So I tried out getting pip and python 2
on my target and it worked on the first try.

Adding these to IMAGE_INSTALL - did exactly what I was looking for.
        python \
        python-pip \


On Wed, Apr 1, 2015 at 11:19 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 1 April 2015 at 15:29, Matthew Karas <mkarascybi@gmail.com> wrote:
>
>> DEPENDS = "python3 python3-native python3-distribute"
>> RDEPENDS_${PN} = "python3 python3-native python3-distribute"
>> RDEPENDS_${PN}-dev = "bash python3 python3-native python3-distribute"
>>
>
> python3-native is a form of Python 3 that is built and executed on your
> build machine, so it makes no sense to have this as a runtime dependency.
> The RDEPENDS should just be python3 python3-distribute.
>
> Ross
>

--001a113fe548fb70c90512bc939d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ve attempted through the icr channel to install=
 python3 and pip such that I can install packages and use the standard libr=
ary.<br><br></div>It didn&#39;t look like the python 3 package group was se=
tup.=C2=A0 I attempted to do what khem` suggested to get around the problem=
. <br><br><a href=3D"https://www.yoctoproject.org/irc/%23yocto.2015-04-01.l=
og.html">https://www.yoctoproject.org/irc/%23yocto.2015-04-01.log.html</a> =
<br><div>mkaras: look into build tree of python3 and see what all ipk/rpms =
it generated<br>and add them all to IMAGE_INSTALL<br><br></div><div>Doing t=
hat still produced errors.=C2=A0 So I tried out getting pip and python 2 on=
 my target and it worked on the first try.<br><br>Adding these to IMAGE_INS=
TALL - did exactly what I was looking for.=C2=A0 <br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 python \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 python-pip \<br><br></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Wed, Apr 1, 2015 at 11:19 AM, Burton, Ross <span dir=3D"ltr=
">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><div class=3D"gma=
il_quote">On 1 April 2015 at 15:29, Matthew Karas <span dir=3D"ltr">&lt;<a =
href=3D"mailto:mkarascybi@gmail.com" target=3D"_blank">mkarascybi@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>DEPENDS =3D &=
quot;python3 python3-native python3-distribute&quot;<br>RDEPENDS_${PN} =3D =
&quot;python3 python3-native python3-distribute&quot;<br>RDEPENDS_${PN}-dev=
 =3D &quot;bash python3 python3-native python3-distribute&quot;</div></bloc=
kquote></div><br></span>python3-native is a form of Python 3 that is built =
and executed on your build machine, so it makes no sense to have this as a =
runtime dependency.=C2=A0 The RDEPENDS should just be python3 python3-distr=
ibute.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></d=
iv>
</blockquote></div><br></div></div>

--001a113fe548fb70c90512bc939d--
