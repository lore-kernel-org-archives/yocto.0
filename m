Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web12.8912.1618838624204920963
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 06:23:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1lYTsK-0002Ng-W2; Mon, 19 Apr 2021 15:23:41 +0200
Message-ID: <fe703c1154051815d4df6c6ccd6ec9e95c351b63.camel@delisys.ch>
Subject: Wrong OELAYOUT_ABI in poky dunfell 3.1.6 suppresses message
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Date: Mon, 19 Apr 2021 15:23:40 +0200
User-Agent: Evolution 3.40.0 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1618838624;f7708d26;
X-HE-SMSGID: 1lYTsK-0002Ng-W2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I recently upgraded my project from dunfell 3.1.5 to 3.1.6 and saw
errors about pseudo path mismatches on various build machines. Removing
TMPDIR solved the problem, but I did some digging to see if I find the
source of the problem.

First of all: The wiki page about pseudo aborts [1] is generally a good
thing, I hope it gets higher into search machines result lists as time
passes (a week ago I didn't find it at all, now it's result #4 on
Google for "yocto exit code 134" which is okay).

Second, a nice message was added to sanity.bbclass that the user should
clean the TMPDIR and rebuild. Sadly, an override of the OELAYOUT_ABI
variable in meta-poky/conf/distro/poky.conf suppressed this message for
dunfell 3.1.6. It's fixed in the branch for 3.1.7 (the offending code
was removed).

# $OELAYOUT_ABI [2 operations]
#   set /workdir/build/../layers/poky/meta/conf/abi_version.conf:7
#     "14"
#   set /workdir/build/../layers/poky/meta-
poky/conf/distro/poky.conf:76
#     "12"
# pre-expansion value:
#   "12"
OELAYOUT_ABI="12"

Maybe we should add a section about that bug which suppresses the
message and that emptying the TMPDIR is recommended when updating to
3.1.6 from an older release to the wiki page?

I haven't checked if this also affects other versions.

[1]: https://wiki.yoctoproject.org/wiki/Pseudo_Abort

