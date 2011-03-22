Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1586B4C80050
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 16:17:02 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q28wm-0004Gf-Tx
	for yocto@yoctoproject.org; Tue, 22 Mar 2011 22:17:00 +0100
Received: from ppp079166106245.dsl.hol.gr ([79.166.106.245])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 22:17:00 +0100
Received: from gmane by ppp079166106245.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 22:17:00 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 22 Mar 2011 23:16:45 +0200
Organization: Reliable Embedded Systems
Message-ID: <imb3jt$jfn$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166106245.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: build failure 2 - poky-image-lsb-sdk-beagleboard with bernard-5.0
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
X-List-Received-Date: Tue, 22 Mar 2011 21:17:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

After resolving the first issue I did a fresh build from scratch using
the bernard-5.0 tag and that's what I get:

Collected errors:
 * resolve_conffiles: Existing conffile
/work/rber/poky-bernard-5.0-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs/etc/sysctl.conf
is different from the conffile in the new package. The new conffile will
be placed at
/work/rber/poky-bernard-5.0-build-bb/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-lsb-sdk-1.0-r0/rootfs/etc/sysctl.conf-opkg.

And yes, indeed those files are different: http://pastebin.com/kXpCS2uC

I'm wondering what's the configuration to build
http://autobuilder.yoctoproject.org/nightly/CURRENT/machines/beagleboard/arm/poky-image-lsb-sdk-beagleboard-20110320115716.rootfs.tar.bz2

Do you see anything strange in my local.conf? http://pastebin.com/bn4iDwBF

Please advise.

Regards,

Robert..."Java is, in many ways, C++--." - Michael Feldman

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



