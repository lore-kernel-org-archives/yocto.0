Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.18246.1584545846709212678
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 08:37:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48jDgR6Kbfz5tlT;
	Wed, 18 Mar 2020 16:37:23 +0100 (CET)
Date: Wed, 18 Mar 2020 16:37:22 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Emily <easmith5555@gmail.com>
Cc: Laurent Gauthier <laurent.gauthier@soccasys.com>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to PROVIDE boost-python
Message-ID: <20200318153722.p7n5ppx62savb75n@qschulz>
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz>
 <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
 <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com>
 <CAAV2bM0ExWhQx8hmnxbCc9jvpM5UHUY0pdqCbsyZQTt3w2KEAA@mail.gmail.com>
 <15FD3752830F21C1.15339@lists.yoctoproject.org>
 <CAGbd71QQievdwbETfKH7JbeRGHALHhukQkPY4oND36YUen3-Qw@mail.gmail.com>
 <CAAV2bM080EARso6YiaoT55h1v_xfwMG3T-ha8DndQu_Wpkn_zw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAV2bM080EARso6YiaoT55h1v_xfwMG3T-ha8DndQu_Wpkn_zw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Emily,

On Wed, Mar 18, 2020 at 10:16:23AM -0500, Emily wrote:
> Hi Laurent -
> 
> Unfortunately I don't have full control over the repo that's using
> boost_python-mt so I'm not sure I can switch it right now.
> 

You can create a patch for it. You can use devtool modify <your-recipe>
and create the patch from there, you have access to the sources with
that. devtool build <your-recipe> to check it builds okay.

> I realize this is not a long-term solution, as I'll need to update that
> code (and my OS) to python3 soon, but for now I've just copied the boost
> recipe from this commit
> <https://github.com/openembedded/openembedded-core/commit/ef603f41b5df4772bb598ec9d389dd5f858592af#diff-9c24742c4bfe7eb2853f86cce86b91c6>
> to
> my own layer, and added a BBMASK to the openembedded-core's boost recipe.
> This seems to work, except I get a QA error from the commit I'm using for
> the boost recipe now:
> 

I don't think there is a need for BBMASK, you should be able to set
PREFERRED_VERSION_boost = "1.63.0" in local.conf or your machine
configuration file.

> ERROR: boost-1.63.0-r1 do_package: QA Issue: boost: Files/directories were
> installed but not shipped in any package:
>   /usr/lib/libboost_numpy.so.1.63.0
> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
> boost: 1 installed and not shipped files. [installed-vs-shipped]
> ERROR: boost-1.63.0-r1 do_package: Fatal QA errors found, failing task.
> ERROR: boost-1.63.0-r1 do_package: Function failed: do_package
> 
> I found a log
> <https://www.yoctoproject.org/irc/%23yocto.2017-03-09.log.html> that
> mentions this exact error, and also mentions a patch that fixes it - I've
> tried and thus far failed to find that patch. I'm not sure if this will
> actually work, but I thought I'd check and see if anyone had any ideas.
> 

If all of this is really temporary you can install it in some package,
or even create a new package for it. (PACKAGES =+ "boost-numpy",
FILES_${PN}-numpy = "/usr/lib/libboost_numpy.so.1.63.0").

No more ideas tbh. I would try to patch "your" SW first and see if it
brings you somewhere, but that's what I would do, each their own way.

Quentin
