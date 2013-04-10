Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC8DAE014CC
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 10:06:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2013 10:06:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,449,1363158000"; d="scan'208";a="317277904"
Received: from unknown (HELO helios.localnet) ([10.255.14.51])
	by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2013 10:06:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Wed, 10 Apr 2013 18:06:37 +0100
Message-ID: <3209321.o4PzGlxfLj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAFyqS9rndgCOi+b=fJ3tEOyTGQnVgNRGWOwZg4oYSd3Ru70siA@mail.gmail.com>
References: <CAFyqS9ojF7ivNqUhZ5EcD1TGTeuMTju20LHksQe4-pWj3+wM=g@mail.gmail.com>
	<CAFyqS9rndgCOi+b=fJ3tEOyTGQnVgNRGWOwZg4oYSd3Ru70siA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bootlogd error at startup
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
X-List-Received-Date: Wed, 10 Apr 2013 17:06:44 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 10 April 2013 17:36:06 Hans Beck=E9rus wrote:
> Just for follow-up.
> The solution to this problem is to make sure CONFIG_LEGACY_PTYS=3Dy i=
n
> the kernel config.

Thanks, it's good to know you found the solution (as will others hopefu=
lly if=20
they come across your post.)

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

