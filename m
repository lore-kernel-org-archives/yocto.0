Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A1CE01506
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 08:51:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Apr 2013 08:51:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,415,1363158000"; d="scan'208";a="314189456"
Received: from unknown (HELO helios.localnet) ([10.255.14.34])
	by fmsmga001.fm.intel.com with ESMTP; 05 Apr 2013 08:51:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Fri, 05 Apr 2013 16:51:25 +0100
Message-ID: <1484346.WPBZMnUxrg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CAFyqS9pp+O=URfqZz1SGY8xvO7a6Meqk7AnhDuO6YqhdbEP-5w@mail.gmail.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515ED8CA.60601@mlbassoc.com>
	<CAFyqS9pp+O=URfqZz1SGY8xvO7a6Meqk7AnhDuO6YqhdbEP-5w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: USB Ethernet problems
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
X-List-Received-Date: Fri, 05 Apr 2013 15:51:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday 05 April 2013 16:13:32 Hans Beck=E9rus wrote:
> On Fri, Apr 5, 2013 at 3:59 PM, Gary Thomas <gary@mlbassoc.com> wrote=
:
> > As for the timing, maybe I've just been very lucky :-)  I can see t=
hat
> > if the device isn't present when the system runs 'ifup eth0' (or th=
e
> > equivalent) you'll have a problem.  That's what connman is for - I =
don't
> > use it, but it might help you out.
>
> I should take a look at it. But it already sounds like something much=

> bigger than this simple system should really need.
> Thanks for all the help so far. If anything else comes to your mind, =
please
> tell me. I guess I will have to live with my Q&D patch for now ;)

One other possibility I can think of would be using a udev rule to run =
a=20
script when the actual hardware detection/insertion event happens.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

