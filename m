Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76724E008D3; Fri,  7 Nov 2014 06:39:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B5CE002A8
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 06:39:45 -0800 (PST)
Received: by mail-qa0-f47.google.com with SMTP id dc16so2365461qab.6
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 06:39:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=DfBFvCMrt6A4Tpn3lqamTQYZoSMTZJxZa7tobs7BWx0=;
	b=iZLqmZZXQG3Bq4ua4CVw7pJFPhfEQ8kzcFmMAPTfuwP7l5WW0UHTwICLbt3hh7E/Rg
	6uzS47j9J1tlWWnbJUUZziLDcxAl2UyPKwQMZSlShVYLbkH4Ree5U7+c/UvJ5rbqcnDa
	KrWPyeDWKkFsPTQOD6NRp6hww2E82P0+lyhRUfiY3nTA8PULOBLwXWNP0ixOI9x5kj7+
	Np6qOrFI4W2f0NYtXdfsuu8ILDMNF8d0e3GBiay9c5Tfk2FvkIx9Tnx1A5TMCLrBW35d
	TSiEYOVWWUvNc1IQgQdwwbaJDF/oGZqO4OqPW74emqNISK1XLXahnB4klB6YL4srI97m
	/FRg==
X-Gm-Message-State: ALoCoQnHFhr5ebTbQKdvvxEFeWO0MY5r8wWGn4B2dl/mz9ndxp2A3U1w3gUNX1SPdUBuVhsZvPPO
X-Received: by 10.224.138.2 with SMTP id y2mr13815371qat.52.1415371183488;
	Fri, 07 Nov 2014 06:39:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Fri, 7 Nov 2014 06:39:23 -0800 (PST)
In-Reply-To: <20141107142336.GC2444@jama>
References: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
	<545C0397.3030304@mlbassoc.com> <20141107142336.GC2444@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Nov 2014 14:39:23 +0000
Message-ID: <CAJTo0LYn+9BVHGxSd6D0=NCbzUgi9sd1svPLU-O2MCuf_MdFww@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: ERROR: gtest not found in the base feed
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
X-List-Received-Date: Fri, 07 Nov 2014 14:39:46 -0000
Content-Type: multipart/alternative; boundary=047d7b6709c39e0e82050745c8f2

--047d7b6709c39e0e82050745c8f2
Content-Type: text/plain; charset=UTF-8

On 7 November 2014 14:23, Martin Jansa <martin.jansa@gmail.com> wrote:

> You can either set
> ALLOW_EMPTY_${PN} = "1"
> or
> RDEPENDS_${PN}-dev = ""
>

FWIW, I'm a *massive* fan of using RDEPENDS here - instead of creating
empty packages which will only confuse in the future, remove the dependency
that is problematic.

Ross

--047d7b6709c39e0e82050745c8f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 November 2014 14:23, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1s4" class=3D=
"a3s" style=3D"overflow:hidden">You can either set<br>
ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
or<br>
RDEPENDS_${PN}-dev =3D &quot;&quot;</div></blockquote></div><br>FWIW, I&#39=
;m a *massive* fan of using RDEPENDS here - instead of creating empty packa=
ges which will only confuse in the future, remove the dependency that is pr=
oblematic.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">Ross</div></div>

--047d7b6709c39e0e82050745c8f2--
