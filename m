Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FE92E00559; Wed, 25 Jun 2014 03:39:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BCC8E00509
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 03:39:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Jun 2014 03:39:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,545,1400050800"; d="scan'208";a="449756270"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.121.119])
	by azsmga001.ch.intel.com with ESMTP; 25 Jun 2014 03:39:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Date: Wed, 25 Jun 2014 11:39:02 +0100
Message-ID: <1766239.kehHZp5Wf7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.8-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CFCF191E.9615%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<CFCDB10A.95E3%seth.bollinger@digi.com>
	<CFCF191E.9615%seth.bollinger@digi.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: File system for alternate partition
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
X-List-Received-Date: Wed, 25 Jun 2014 10:39:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tuesday 24 June 2014 17:09:29 Bollinger, Seth wrote:
> >I guess I didn=C2=B9t think about using a full image as I would need=
 to remove
> >a bunch of stuff, but maybe that is the best way.  That way I can ke=
ep the
> >flexibility of defining recipes that would be installed to my data
> >partition image.  I will give it a try.
>=20
>=20
> So I created an empty image without any packages being added.  As I
> suspected, there=E2=80=99s cruft that I don=E2=80=99t really need in =
the FS.  What=E2=80=99s the
> best way to remove these, post processing?
>=20
> data-image-base/1.0-r0/rootfs/
> =E2=94=9C=E2=94=80=E2=94=80 etc
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 rcS.d
> =E2=94=9C=E2=94=80=E2=94=80 lib
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 modules
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 3.10.16-dey+gf167640
> =E2=94=94=E2=94=80=E2=94=80 var
>     =E2=94=94=E2=94=80=E2=94=80 lib
>         =E2=94=94=E2=94=80=E2=94=80 opkg

You could just delete these within a function added to=20
ROOTFS_POSTPROCESS_COMMAND, and that's probably the way to deal with it=
 for=20
now; however for the future I do think the build system ought to be abl=
e to=20
clean these files up itself if they aren't supposed to be there. I've c=
reated a=20
bug to track the issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6478

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

