Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D92EE00B01; Tue, 28 Mar 2017 01:40:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE756E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 01:40:27 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id v76so48568472ywg.0
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 01:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R+t4Uop9L59V8MPTp/yQTsEcrNewcwCtSwhVRBdFHYg=;
	b=gcpTLNzmm+sM7bTKqoCudgkGRj08q91Yw+k5/ByCCNtnl/wcpW/qWt9bppI5ijoLn2
	d/FvSo3Vb67S9xq0xCl4Vl65deI7NeG986v07pUvtuN4BMn2ajKEWyLh/nqe/kVuP5LX
	HkEghYGKTGWh9edjlOLDue8BvzO0K0K6D4WqOTaEmCpKcCb4W7dGKy8UGFIQRJAKcytO
	m73SHE0mpC33ClgAnqu/N19H3m66TJWFK3EeyYU0tUQMvdZOBJqMDRigj7NY8V4e4t1J
	TDSFPG7u1aQ1k+YUPklxrLjt8u4F58/GJMqm2CTYCe0qCTpyk5qJgVxHbjzJLe8cPBi5
	jlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=R+t4Uop9L59V8MPTp/yQTsEcrNewcwCtSwhVRBdFHYg=;
	b=VfQtlPPzX6F2DDZS7oGQfYCrXPBmuAxTIv2FzdMv9KUrrwvCnjCamdHCyY+o7C4Cfr
	47rGl5Jr/yMPtf4lc4OtGVmNfYcXSPHViXhi+1MVo5rO6ICrYXbUUXsZLkbdXoEyR67c
	Xy8YEbxr3SGQNpR5a4sQST4Y4OBmXxG+A8Y1b4/9P91IaqU0ZlsneCVm5KgbPW+/hLH3
	52bFPjKAVzB0kvq8exFR+LqwsQNjhHmf+Gub0AH0oPJDpCabDFzMzaHNxI6Yx1vIX1Nm
	ptppTfF7aBV0qJuownFyzyJhbK5JRU5bqp8Z6P2bN+sjXWVuZ9wUJZCPEXb+1X7FHfq0
	MJqg==
X-Gm-Message-State: AFeK/H2ia2ih8oaKZc32P12DinPoqKPSIB4zA3XujJ9jftvS/2gSIH2I1/deuHMyk7+ZPWBOm/7LyXlI52tVIKEJ
X-Received: by 10.129.198.2 with SMTP id l2mr5302995ywi.260.1490690426768;
	Tue, 28 Mar 2017 01:40:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.81.136 with HTTP; Tue, 28 Mar 2017 01:39:56 -0700 (PDT)
In-Reply-To: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
References: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 28 Mar 2017 11:39:56 +0300
Message-ID: <CAHiDW_FQLNbsWsErAhtk5gxcTRyvPQ4Qse+2AsX5PX71WQc-OQ@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: Yocto Project <yocto@yoctoproject.org>, "Kanavin,
	Alexander" <alexander.kanavin@intel.com>
Subject: Re: Current situation with gobject introspection?
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
X-List-Received-Date: Tue, 28 Mar 2017 08:40:29 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a2d6c5bc756054bc669bc

--94eb2c1a2d6c5bc756054bc669bc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 28 March 2017 at 11:05, <colin.helliwell@ln-systems.com> wrote:
>
> I=E2=80=99m currently using Jethro (though about to move to Krogoth), and=
 have an
external package which need gobject introspection. I=E2=80=99m building on =
64-bit
x86, for ARM iMX6 target.
>
> I=E2=80=99ve been searching around to work out if this is possible under =
Yocto,
but not sure which of the info I=E2=80=99ve found is up-to-date.
>
> So I wondered what the latest [krogoth] situation is =E2=80=93 am I likel=
y to be
able to get this package to build, and where/how might I get started?
>
> Thanks

Hi Colin,

Alexander can give you the gory details if needed but the summary is:
Krogoth has full gobject-introspection support (for architectures that qemu
supports), jethro does not.

There is a distro feature but it is backfilled by default so no action
should be needed. For many libraries you only need to inherit the class,
but do read the fine manual just in case:
http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#enabling-go=
bject-introspection-support

Jussi

--94eb2c1a2d6c5bc756054bc669bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 28 March 2017 at 11:05, &lt;<a href=3D"mailto:colin.hel=
liwell@ln-systems.com">colin.helliwell@ln-systems.com</a>&gt; wrote:<br>&gt=
;<br>&gt; I=E2=80=99m currently using Jethro (though about to move to Krogo=
th), and have an external package which need gobject introspection. I=E2=80=
=99m building on 64-bit x86, for ARM iMX6 target.<br>&gt;<br>&gt; I=E2=80=
=99ve been searching around to work out if this is possible under Yocto, bu=
t not sure which of the info I=E2=80=99ve found is up-to-date.<br>&gt;<br>&=
gt; So I wondered what the latest [krogoth] situation is =E2=80=93 am I lik=
ely to be able to get this package to build, and where/how might I get star=
ted?<br>&gt;<br>&gt; Thanks<br><br><div>Hi Colin,<br><br><div>Alexander can=
 give you the gory details if needed but the summary is: Krogoth has full g=
object-introspection support (for architectures that qemu supports), jethro=
 does not.<br><br>There is a distro feature but it is backfilled by default=
 so no action should be needed. For many libraries you only need to inherit=
 the class, but do read the fine manual just in case: <a href=3D"http://www=
.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#enabling-gobject-intr=
ospection-support">http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manu=
al.html#enabling-gobject-introspection-support</a><br>=C2=A0<div>Jussi<br><=
br></div></div></div></div>

--94eb2c1a2d6c5bc756054bc669bc--
