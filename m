Return-Path: <hans.beckerus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB725E00975; Wed, 14 May 2014 11:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hans.beckerus[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ob0-f169.google.com (unknown [209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FB0E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 11:17:03 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id vb8so2579208obc.14
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 11:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=H3ZbA5ajVKsZ4yrKKI/veJ7w/uny003USwNQxZNbUiQ=;
	b=tsigeAeG6uPms177tL3ClZkkGRotl8I/mSGXbxMYOC2ISA8trAcf8mcYIN6Un00EF8
	zbZ4qh2vrJmShQa3TBWFjvJcFwA24DXYSjWCMM8A3kCCoMbzBGUjPPBNKBMr6T6q+RWI
	eRd8RcLnFeeJQ33JjjvWpM4AkGAheoVh5YQmhxruzZCd50UZJ7R2KpLdOpyaFFXlc2Mr
	N017m37go/EbEA5kRGdlpmpd4uTokHAe0BsaebNGywWPE8vaovHZxP02vVzmgzp+uymF
	Cuus8HrrrQDEgMrZNdhD6FHmauLrDaWpr2Bjt2OJP8pNd8ZUjvlUH+POWDgdXs33fFiP
	IjOA==
MIME-Version: 1.0
X-Received: by 10.60.44.135 with SMTP id e7mr5039364oem.63.1400091422518; Wed,
	14 May 2014 11:17:02 -0700 (PDT)
Received: by 10.182.24.106 with HTTP; Wed, 14 May 2014 11:17:02 -0700 (PDT)
In-Reply-To: <CAFyqS9q2-dJ-ZSTz9OMDAQjGMwWrCmtGbLzS1+ZmQsb8D=axWQ@mail.gmail.com>
References: <CAFyqS9q2-dJ-ZSTz9OMDAQjGMwWrCmtGbLzS1+ZmQsb8D=axWQ@mail.gmail.com>
Date: Wed, 14 May 2014 20:17:02 +0200
Message-ID: <CAFyqS9rEO6JMSc_AgmYFv-3pOCTrFs2xi1tbh739rV1trzCmBQ@mail.gmail.com>
From: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: procps_3.2.8: problem with install of a user defined package split
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
X-List-Received-Date: Wed, 14 May 2014 18:17:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2014 at 7:32 PM, Hans Beck=C3=A9rus <hans.beckerus@gmail.co=
m> wrote:
> Hi. We have problem with one of our .bbappend files that tries to
> split procps in some more fine grained packages.
> Currently this is only done for 'top' and 'ps'. The actual issue here
> is that /usr/bin/top.procps gets installed on our image but *not*
> /bin/ps.procps?
>
> The IMAGE_INSTALL sets both procps-ps and procps-top.
> The .bbappend looks like this:
>
> --
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> PRINC =3D "0"
>
> PACKAGES =3D+ "${PN}-lib ${PN}-top ${PN}-ps "
>
> # Make sure base package installs ${PN}-lib
> RDEPENDS_${PN} =3D "${PN}-lib"
>
> FILES_${PN}-top =3D "${bindir}/top.procps"
> FILES_${PN}-ps =3D "${base_bindir}/ps.procps"
> FILES_${PN}-lib =3D "${libdir}/*-${PV}.so ${base_libdir}/*-${PV}.so"
>
> --
>
> As simple as it can be  ;) The packages-split folder contains both
> packages, and they both contain the proper files after a build. That
> is, procps-ps/bin/ps.procps and procps-top/usr/bin/top.procps.
>
> If we instead change to the below it works!?
>
> --
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> PRINC =3D "0"
>
> PACKAGES =3D+ "${PN}-lib ${PN}-top_ps "
>
> # Make sure base package installs ${PN}-lib
> RDEPENDS_${PN} =3D "${PN}-lib"
>
> FILES_${PN}-top_ps =3D "${bindir}/top.procps ${base_bindir}/ps.procps"
> FILES_${PN}-lib =3D "${libdir}/*-${PV}.so ${base_libdir}/*-${PV}.so"
>
> --
>
> Using the latter recipe and after updating IMAGE_INSTALL both
> ps.procps and top.procps ends up in our image.
> But, due to all the frustration we have had with this, we would really
> like to understand why things seems to fail miserably when using the
> first variant of  it.
> Using both recipes the lib package get installed correctly. We also
> have busybox applets enabled for 'ps' and 'top' but that we will take
> care of using the already existing logic in procps for
> update-alternatives. But since '/bin/ps.procps' does not get installed
> there is no point in even trying.
>
> Anyone that has a clue?
>
> We are on a very early Yocto/poky 1.5 baseline.
>
When you least expect to find it, you do ;)
It happens to be that the build framework on-top of Yocto was recently
changed and that the image recipe was picked up from a second source.
In that version only procps-top_ps was included. By actually stepping
the image recipe revision it was obvious since it still built the old
one!
Sorry for disturbing the peace :)

> Thanks.
> Hans

