Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78003E014EE
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 10:50:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2013 10:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="316403081"
Received: from unknown (HELO helios.localnet) ([10.255.13.159])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2013 10:50:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Wed, 03 Apr 2013 18:50:40 +0100
Message-ID: <2494651.FxLVaeXh8B@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CAFyqS9qh8q5jd48RNmxF7vreNoc-8g=R4A8_d90ZMD32HnSXhA@mail.gmail.com>
References: <CAFyqS9qh8q5jd48RNmxF7vreNoc-8g=R4A8_d90ZMD32HnSXhA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Is there no official support for Erlang runtime in Yocto?
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
X-List-Received-Date: Wed, 03 Apr 2013 17:50:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 03 April 2013 18:19:43 Hans Beck=E9rus wrote:
> Hi. We wish to bring in the Erlang runtime into our builds, tailored =
for
> embedded systems.
> I can see that OpenEmbedded provides such a package in their classic
> release. But I can not seem to find it as part of Yocto, neither can =
I find
> it among the official OpenEmbedded recipes from their Wiki index. Is =
there
> something that I have overlooked here? Or should it be fine just to b=
ring
> in the recipe from the OpenEmbedded classic git repo and add it to ou=
r own
> meta?

Indeed, this seems to only be in OE-Classic; bringing it back into some=
where=20
like meta-oe would be much appreciated I think.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

