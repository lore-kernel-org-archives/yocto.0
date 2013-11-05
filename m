Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5ACE0176E
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 02:51:10 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Nov 2013 02:47:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="403823056"
Received: from unknown (HELO helios.localnet) ([10.252.121.90])
	by orsmga001.jf.intel.com with ESMTP; 05 Nov 2013 02:51:09 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Tue, 05 Nov 2013 10:51:08 +0000
Message-ID: <1589538.2ShOaANikJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9rbOyN7OV-b7MRN0YGtu87ZGxDkHb50=kJxvNiGcXdgXQ@mail.gmail.com>
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
	<CAFyqS9qNqHxwGu4d2vAqKORNk+-3SoeRtfOghpvSxV6OibL2tQ@mail.gmail.com>
	<CAFyqS9rbOyN7OV-b7MRN0YGtu87ZGxDkHb50=kJxvNiGcXdgXQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 05 Nov 2013 10:51:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 05 November 2013 10:25:24 Hans Beck=E9rus wrote:
> I have seen recipes that defines PV =3D "xyz+git${SRCPV}" and then
> SRCREV to a specific tag instead of ${AUTOREV}.
> Is that not contradictory? Or is it simply that the author of that
> recipe wished to have a git tag automatically added to the version
> string?
> Are there any specific cases when that approach is to prefere?

AFAIK, there are two recommended values for SRCREV assuming you are fet=
ching=20
from an SCM at all:

A) A specific revision (SHA1 hash when fetching from git)

or

B) "${AUTOREV}" if you want to always build the latest version availabl=
e at=20
time of building. If you want to build the latest version from a branch=
,=20
specify it in branch=3D in the SRC_URI entry.

Anything else isn't really a good idea. Sometimes I wonder if we ought =
to just=20
tighten this up so that only settings that make sense can be set.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

