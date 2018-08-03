Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0BD1E008E0; Fri,  3 Aug 2018 01:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.197.172.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 347 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Aug 2018 01:45:01 PDT
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi
	[195.197.172.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2736E0073D
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2018 01:45:01 -0700 (PDT)
Received: from linux.suse (91-157-44-75.elisa-laajakaista.fi [91.157.44.75])
	by gw01.mail.saunalahti.fi (Postfix) with ESMTP id CA565400C5;
	Fri,  3 Aug 2018 11:39:10 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
Date: Fri, 03 Aug 2018 11:39:10 +0300
Message-ID: <877el7n8sx.fsf@linux.suse>
MIME-Version: 1.0
Subject: How to write a distro layer?
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
X-List-Received-Date: Fri, 03 Aug 2018 08:45:03 -0000
Content-Type: text/plain

Hi!

[Disclaimer: I have posted a similar message months ago. There were no
replies. Let's try whether I can express myself clearer this time.]

One of the few informations I could find about how to create my own
layer was something like
https://www.openembedded.org/wiki/Creating_a_new_Layer

Especially for creating a distro layer that does not give much guidance.

I could not find any examples of distro layers (except poky of course)
on the net. Can somebody give me pointers?

The auto-generated local.conf mentions subclassing
poky. Is that concept explained anywhere?

I inherited a distro layer, which sets a lot of its policy (selection of
systemd and other feature/package selection) in layer.conf. From reading
the documentation and other layer.conf files I understand that is NOT
the way to do it. I would expect those settings in distro/<distro>.conf.

The yocto reference manual says for many variables: "Set it in your
local.conf". For me they are policy, so why shouldn't I set them in
distro/<distro>.conf?

Well, basically there is only one configuration in bitbake. So often it
does not matter in what configuration file a variable is set. The
setting will end up in the environment of the tasks. However, especially
when the ?= operator is used order becomes significant.

Particularly tricky I found the DISTRO variable. 

Our distro layer does

1.) set the DISTRO variable in layer.conf (according to the manual it
should be done in local.conf)
2.) from distro/<distro>.conf include (well, require) poky.conf. Is
that a big no-no??? Of course I could copy all settings I want to keep from
poky (and all those I don't understand what they do...), but copying code
is generally not good SW engineering, including sounds better.
3.) set DISTRO again after having included poky.conf . According to
the yocto-check-layer script a distro must not set its own
name. However, poky does not follow that rule and sets its name, so our
code has to violate the rule once more and revert poky's wrongdoing.

In an attempt to make our code more in line with what I understand to be
correct style, I tried to move all policy settings to
distro/<distro>.conf and the DISTRO setting to local.conf.

However that created a couple of problems:

1. If I set DISTRO in local.conf before adding all needed layers, my own
distro layer last, bitbake-layers fails in a sanity check that the
distro does not exist. Fair enough, it doesn't know about before it has
been added.

2. If I first modify my local.conf with all my settings except DISTRO,
then run all the add-layer operations and finally modify local.conf a
2nd time to set DISTRO correctly the build works. However, all recipes
are reparsed when the build starts. I guess this is caused by the config
change.

So in the end having the DISTRO setting in layer.conf seems to work
best. All add-layer commands succeed and recipes can be used from the
cache when the build starts. Best, except that I don't think that's the
way it's documented.

Any thoughts what I might be missing?

Regards,

Uwe


Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

