Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF33A4C80054
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 11:32:04 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Oct 2010 09:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,224,1286175600"; d="scan'208";a="339330901"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 22 Oct 2010 09:32:04 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Fri, 22 Oct 2010 09:32:03 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, yocto <yocto@yoctoproject.org>
Date: Fri, 22 Oct 2010 09:32:03 -0700
Thread-Topic: [yocto] Last minute changes - Review Request
Thread-Index: Actx9M88O6qiI/gLSlOrhYXDaaKtFAAEYMgA
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC182DD1@orsmsx501.amr.corp.intel.com>
References: <1287757431.16386.768.camel@rex>
In-Reply-To: <1287757431.16386.768.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Last minute changes - Review Request
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 16:32:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Richard Purdie
>Sent: Friday, October 22, 2010 7:24 AM
>
>Coming up to release there are a few things that the extended testing
>has shown up which we have fixes for and which we should consider
>including in the release. I also finally got around to doing the final
>sstate stress testing and found several problematic issues. Given that
>sstate and checksums are a significant feature of this release, I'd
>really like them to work as well as we can make them. Prior to this I
>had stress tested the backend up not the use of the packages. These
>changes don't change any sstate packages themselves, just the use of
>them.
>
>Since we already have the release images prepared and tested and these
>are not going to change, the criteria for potential changes:
>
>a) We can unit test the changes and be confident they don't
>   break/regress things.
>b) They fix important bugs that the user can easily run into
>   or that make the project look bad.
>c) The changes are small, well documented and are obviously correct
>   looking at the code/patch.
>d) The don't change the generated images.
>
>I'm proposing the following, for each I've provided a rationale:
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3Dd5504a4275d94868e
>28b00c272411e82f4999d95
>
>Printing "fatal:" to new users is worrying
>
>[Reported by Dirk]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D2a69c58046a86d0f7
>83acebd8a77e9419b43139a
>
>Users can easily hit the sanity warning about missing 32 bit libs. We
>don't need this functionality at this time so we might as well turn it
>off by default
>
>[Reported by Dirk]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D0068e55d8f64ae13a
>1049c37164e8b14dc33f53f
>
>Doesn't change the build output but fixes a build issue people can
>easily run into in from scratch builds due to a missing dependency.
>
>[Reported by Dexuan]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D6e277cb014a53aef6
>6ae931b5142495f8a02404f
>
>Removes the "WARNING: Function do_build doesn't exist" message which
>could worry users and looks bad
>
>[Reported by Richard]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3Dfd4457199ef604dc4
>d5f8346c8b2a09dc3939129
>
>Several complaints have been received about the inability to easily
>delete sstate and DL_DIR contents to recover from failures. This adds a
>cleanall task which does this. Downside is that this is undocumented.
>
>[Reported by Darren and others, run into by Dirk]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3Df806c499c031fe0c4
>da001d41bce635088a90c52
>
>Fixes an sstate bug where the do_package sstate packages don't install
>correctly. A user could hit this if cleaning and rebuilding a package
>under certain circumstances.
>
>[Reported by Richard]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D13f116b1ad6a955b0
>7d4cbaba85879913c30e1ee
>
>Fixes an issue with sstate where rebuilding a package using partially
>prebuilt state would break rpm generation and silently remove all the
>rpm packages.
>
>[Reported by Richard]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D00a96a20995cefacc
>52e10559029de32941ecf6e
>
>Fixes a typo spotted in the debian packaging backend. We don't use this
>by default but it should be fixed.
>
>[Reported by Richard]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D36f1ae42fe13dae17
>4b7fb5eb85dc49d7d7b516b
>
>User testing keeps showing up issues with the pseudo directory creation
>failing to happen. This patch solves the problem in a brute force
>fashion, once and forall.
>
>[Reported by Mark and others]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D3f599b3f6a4728627
>7cdaa8503f8a8da024eadd4
>
>Fixes an sstate issue seen on the Poky mailing list where file:// sstate
>mirrors wouldn't work.
>
>[Reported by Gary Thomas (poky list)]
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D535a77a9b681423e2
>f10744aca54858c25a03cb0
>
>Just changes a log level to make the output from sstate slightly more
>readable.
>
>[Reported by Richard]
>
>
>I'm not happy about being in this position and I know Dave will be very
>nervous about these late changes. To mitigate this I'd like to propose
>that a selection of people (Josh, Mark, Saul?) review these changes and
>report back on whether they feel these are appropriate and also give the
>build some testing with these applied.

I'm so predictable... :-) Yes, I'm nervous. I looked at all of the patches =
and with the exception of one or two, they mostly seem like good ones. I wi=
ll accept these if Josh/Mark/Saul give us a +1 on their review & testing.

>Cheers,
>
>Richard
>
>
>
>
>
>
>
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.pokylinux.org/listinfo/yocto

