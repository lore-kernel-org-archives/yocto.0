Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B191A4C8101B
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 09:24:09 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9MEOAOl030350
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 15:24:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 30309-01 for <yocto@yoctoproject.org>;
	Fri, 22 Oct 2010 15:24:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9MEO4OJ030344
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 15:24:05 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: yocto <yocto@yoctoproject.org>
Date: Fri, 22 Oct 2010 15:23:51 +0100
Message-ID: <1287757431.16386.768.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Last minute changes - Review Request
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
X-List-Received-Date: Fri, 22 Oct 2010 14:24:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Coming up to release there are a few things that the extended testing
has shown up which we have fixes for and which we should consider
including in the release. I also finally got around to doing the final
sstate stress testing and found several problematic issues. Given that
sstate and checksums are a significant feature of this release, I'd
really like them to work as well as we can make them. Prior to this I
had stress tested the backend up not the use of the packages. These
changes don't change any sstate packages themselves, just the use of
them.

Since we already have the release images prepared and tested and these
are not going to change, the criteria for potential changes:

a) We can unit test the changes and be confident they don't 
   break/regress things.
b) They fix important bugs that the user can easily run into
   or that make the project look bad.
c) The changes are small, well documented and are obviously correct 
   looking at the code/patch.
d) The don't change the generated images.

I'm proposing the following, for each I've provided a rationale:

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=d5504a4275d94868e28b00c272411e82f4999d95

Printing "fatal:" to new users is worrying

[Reported by Dirk]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=2a69c58046a86d0f783acebd8a77e9419b43139a

Users can easily hit the sanity warning about missing 32 bit libs. We
don't need this functionality at this time so we might as well turn it
off by default

[Reported by Dirk]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=0068e55d8f64ae13a1049c37164e8b14dc33f53f

Doesn't change the build output but fixes a build issue people can
easily run into in from scratch builds due to a missing dependency.

[Reported by Dexuan]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=6e277cb014a53aef66ae931b5142495f8a02404f

Removes the "WARNING: Function do_build doesn't exist" message which
could worry users and looks bad

[Reported by Richard]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=fd4457199ef604dc4d5f8346c8b2a09dc3939129

Several complaints have been received about the inability to easily
delete sstate and DL_DIR contents to recover from failures. This adds a
cleanall task which does this. Downside is that this is undocumented.

[Reported by Darren and others, run into by Dirk]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=f806c499c031fe0c4da001d41bce635088a90c52

Fixes an sstate bug where the do_package sstate packages don't install
correctly. A user could hit this if cleaning and rebuilding a package
under certain circumstances.

[Reported by Richard]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=13f116b1ad6a955b07d4cbaba85879913c30e1ee

Fixes an issue with sstate where rebuilding a package using partially
prebuilt state would break rpm generation and silently remove all the
rpm packages.

[Reported by Richard]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=00a96a20995cefacc52e10559029de32941ecf6e

Fixes a typo spotted in the debian packaging backend. We don't use this
by default but it should be fixed.

[Reported by Richard]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=36f1ae42fe13dae174b7fb5eb85dc49d7d7b516b

User testing keeps showing up issues with the pseudo directory creation
failing to happen. This patch solves the problem in a brute force
fashion, once and forall.

[Reported by Mark and others]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3f599b3f6a47286277cdaa8503f8a8da024eadd4

Fixes an sstate issue seen on the Poky mailing list where file:// sstate
mirrors wouldn't work.

[Reported by Gary Thomas (poky list)]

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=535a77a9b681423e2f10744aca54858c25a03cb0

Just changes a log level to make the output from sstate slightly more
readable.

[Reported by Richard]


I'm not happy about being in this position and I know Dave will be very
nervous about these late changes. To mitigate this I'd like to propose
that a selection of people (Josh, Mark, Saul?) review these changes and
report back on whether they feel these are appropriate and also give the
build some testing with these applied.

Cheers,

Richard










