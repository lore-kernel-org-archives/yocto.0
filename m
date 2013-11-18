Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EF1BE0059F
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 11:25:07 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ViURT-0007bt-8c
	for yocto@yoctoproject.org; Mon, 18 Nov 2013 20:25:04 +0100
Received: from h96-45-6-143-eidnet.org.6.45.96.in-addr.arpa
	([h96-45-6-143-eidnet.org.6.45.96.in-addr.arpa])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 20:25:03 +0100
Received: from gwt.scott by h96-45-6-143-eidnet.org.6.45.96.in-addr.arpa with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 20:25:03 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Spenner <gwt.scott@gmail.com>
Date: Mon, 18 Nov 2013 19:23:28 +0000 (UTC)
Message-ID: <loom.20131118T201313-225@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 96.45.6.143 (Mozilla/5.0 (X11; Ubuntu; Linux i686;
	rv:25.0) Gecko/20100101 Firefox/25.0)
Subject: How to add modphp
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
X-List-Received-Date: Mon, 18 Nov 2013 19:25:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi!

I am trying to add modphp to my image and always seem to get
 the same build error;

ERROR: Task 2693
(/home/gw/sources/meta-openembedded/meta-oe/recipes-support/
mysql/mariadb-native_5.1.67.bb,do_compile) failed with exit code '1'

I can add the apache2 package and the image will build and work fine but
when I add modphp in the same fashion, i get the build error above.

Is there any dependencies for modphp that I could be missing? 

Thanks for any insight!



