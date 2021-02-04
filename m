Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web09.5607.1612431376414905383
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 01:36:17 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4DWYMd02kWz5tlM;
	Thu,  4 Feb 2021 10:36:12 +0100 (CET)
Date: Thu, 4 Feb 2021 10:36:11 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: David Babich <ddbabich@bootseeds.com>
Cc: Josef Holzmayr <jester@theyoctojester.info>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto CORE_IMAGE_EXTRA_INSTALL Where can I find a list of valid package names?
Message-ID: <20210204093611.jt44z5xsrdfja4dn@qschulz>
References: <45bT.1612391155068335774.AQwA@lists.yoctoproject.org>
 <CAEt6NwoJjfE5Xvt0TtuDj8u9KOpuNpUV2Jf2y1ge1M+EJtwx-Q@mail.gmail.com>
 <CAK1D6_7ZDcFp2MrmQ1kAXd2nnuep9TbVFauuaO5-3aAkHkHN5w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK1D6_7ZDcFp2MrmQ1kAXd2nnuep9TbVFauuaO5-3aAkHkHN5w@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi David,

On Thu, Feb 04, 2021 at 01:24:35AM -0700, David Babich wrote:
> Thanks for that reply.  I actually deleted my message from the forum post
> because I thought maybe I hadn't dug through things enough and perhaps I
> was wasting people's time.  But I think you provided some validation to my
> question.  I'm more used to the typical ncurses method of configuration of
> the old days with a kernel config a rootfs config etc.   I will try your
> suggested command.  But I'm wondering are the names typical of what I might
> expect if I were to do something like "sudo apt-get install <whatever>"

Not always. E.g. debian packages are renamed if they only have a library
in it to be the name of said library. This does not happen for rpm and
opkg. Note: this is a vague memory, I don't use de packages in Yocto so
to be taken with a grain of salt.

> (which is somewhat of an experience thing) or do I just simply need to dig
> around on web searches to find out what the actual name is.  I've found

Not web searches. Basically, one would need to identify the recipe
building the software in the package you want to find.
From there, you can read the list of packages in PACKAGES (sometimes,
like for gstreamer plugins for example, it is dynamically set so you
won't be able to find them by just reading the recipe (though you can
more or less guess them)).

To know what's inside one of the packages without baking the recipe, one
would need to have a look at the FILES_${PN}<-xxx> variables.

It's therefore mostly knowledge and trial and errors as Josef said.

The difficulty for the Yocto project to compile a list of packages and
which recipe build them is that packages can depend on configuration
files (machines, distros, ...). Sometimes they do appear, sometimes not.
Sometimes a package for a distro contains more than a package for
another distro while having the same name.

Which is also a reason why ncurses/menuconfig would be hard for Yocto
Project, because content of packages are not guaranteed to be identical
between machines and distros, so it'd be hard to give descriptions of
options to select.

Hope this helps,
Quentin
