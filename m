Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DA68E00B28; Wed, 25 Apr 2018 00:41:47 -0700 (PDT)
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
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi
	[195.197.172.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8505E00AF9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 00:41:45 -0700 (PDT)
Received: from linux.suse (91-157-45-43.elisa-laajakaista.fi [91.157.45.43])
	by gw01.mail.saunalahti.fi (Postfix) with ESMTP id A1B6C40079;
	Wed, 25 Apr 2018 10:41:41 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
References: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
Date: Wed, 25 Apr 2018 10:41:41 +0300
Message-ID: <87zi1rd96y.fsf@linux.suse>
MIME-Version: 1.0
Subject: Re: building recipe with buildtools, causes sanity error: Your system needs to support the en_US.UTF-8 locale.
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
X-List-Received-Date: Wed, 25 Apr 2018 07:41:47 -0000
Content-Type: text/plain

On Tue, Apr 24, 2018 at 9:04 PM, John Smith <john-s-84@gmx.net>:
> bitbake stops with this error message: "Your system needs to support the en_US.UTF-8 locale."
>
> export LC_ALL=en_US.UTF-8 has no effect. Do you know how to fix that
> error?

Use "locale -a" to show what locales your system supports at the
moment. It appears that en_US.UTF-8 is not on the list.

Installing/building additional locales is distro specific and out of
scope for this list. Please use your favorite search engine to find out
how to do it for your distro or ask in your friendly distro support forum
if necessary.

Exporting the environment variable just tells other programs what to
use. It does not help to tell them to use something that is not
installed. For bitbake you don't have to tell it anything, it insists on
using en_US.UTF-8 anyway as the error message shows.

Bitbake uses Python. To make things more confusing the locales in Python
are not necessarily named the same way as in your underlying distro and
there can be aliases.

In the end this code needs to run without returning an error

$ python
>>> import locale
>>> locale.setlocale(locale.LC_ALL, "en_US.UTF-8")
'en_US.UTF-8'

E.g. in Ubuntu the locale is listed by "locale -a" as en_US.utf8 but that
works fine.

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

