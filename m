Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.9093.1575980833728510862
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 04:27:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47XK7f5M6Pz5tlG;
	Tue, 10 Dec 2019 13:27:08 +0100 (CET)
Date: Tue, 10 Dec 2019 13:27:07 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Writing do_compile in python and importing modules
Message-ID: <20191210122707.rn5rlqfme6lubmbv@qschulz>
References: <CAF_dkJB25g1wT87bvbotOjQVLUBqiLJFoqcd9NunEH-Wu6aB6Q@mail.gmail.com>
 <3511e9cd-8d03-2f98-0cca-537964b10d68@intel.com>
MIME-Version: 1.0
In-Reply-To: <3511e9cd-8d03-2f98-0cca-537964b10d68@intel.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Dec 10, 2019 at 11:15:01AM +0000, Ross Burton wrote:
> On 09/12/2019 16:30, Patrick Doyle wrote:
> > But then I started wondering if I could change do_compile to python,
> > have it import assemble-tsk-blob, and get the best of both worlds --
> > the ability to test assemble-tsk-blob outside of bitbake, and the
> > efficiency of including its core operation directly within
> > do_compile() and not requring that I spin up another python instance.
> 
> Every layer can have a lib/ folder which is on the Python search path
> (you'll see lots of recipes use oe.*, which is meta/lib/oe/) so you can just
> put Python modules in there.
> 

I'm currently having issues with that on Thud though.

We have a few python scripts in there and changes to those are not
reflected in Yocto and do not trigger a rebuild.

We have a meta/lib/mypython/ directory where python scripts are.

We have a mypython.bbclass which `import mypython.functions`, which
declares some python functions which calls the functions in
meta/lib/mypython/functions.py appropriately. Changes to this class are
obviously triggering a rebuild of recipes inheriting this class.

This functions.py we import also does `import mypython.custom`
containing some class and array of objects of that class.
Changes to at least meta/lib/mypython/custom.py (maybe even
meta/lib/mypython/functions.py but can't confirm yet) are not triggering
a rebuild.

From my experience, the python calls are actually stored as plaintext in
the taskhash and not resolved at parse time, making Yocto unaware of any
change in tasks that should trigger a rebuild.
We're adding those files to filechecksums vardeps of all tasks in the
recipe.
That's the work-around I've found but I don't like it that much, so if
this meta/lib/ is actually well supported, I'd be very happy to fix my
stuff the correct way :)

BR,
Quentin
