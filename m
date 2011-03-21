Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26D2B4C800BA
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 14:15:34 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q1kZg-0000EJ-Kp
	for yocto@yoctoproject.org; Mon, 21 Mar 2011 20:15:32 +0100
Received: from ppp079166100140.dsl.hol.gr ([79.166.100.140])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 20:15:32 +0100
Received: from gmane by ppp079166100140.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 20:15:32 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 21 Mar 2011 21:15:17 +0200
Organization: Reliable Embedded Systems
Message-ID: <im8846$o8b$1@dough.gmane.org>
References: <im7i6a$aqu$1@dough.gmane.org> <4D877FFD.5080407@intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166100140.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4D877FFD.5080407@intel.com>
Subject: Re: build failure - poky-image-lsb-sdk-beagleboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Mar 2011 19:15:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Scott,

On 03/21/2011 06:42 PM, Scott Garman wrote:
> 
> Hi Robert,
> 
> I'm guessing you're building on a Debian-based host distro. Please
> ensure both the groff and groff-base packages are installed.
> 
> We just recently fixed our Quick Start guide to include the groff
> package dependency for Debian-based hosts, but it appears it hasn't been
> pushed out to our production web site yet.

You guessed right. Thanks!
That got me further, but still no success:

Collected errors:
 * resolve_conffiles: Existing conffile
/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs/etc/sysctl.conf
is different from the conffile in the new package. The new conffile will
be placed at
/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs/etc/sysctl.conf-opkg.
+ '[' '!' -z '' ']'
+ export
D=/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs
+
D=/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs
+ export
OFFLINE_ROOT=/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs
+ echo ''

+ do_exit=1
+ for keyword_die in '"exit 1"' '"Collected errors"' ERR Fail
+ for keyword_die in '"exit 1"' '"Collected errors"' ERR Fail
+ test 1 = 1
+ exit 1
ERROR: Function 'do_rootfs' failed
Here are more details: http://pastebin.com/DBL9waVF

Maybe someone has a guess for this as well?

Regards,

Robert

> 
> Scott
> 

...Yesterday it worked Today it is not working Windows is like that --
Margaret Segall

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



