Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54CC1E00B5C
	for <yocto@yoctoproject.org>; Sun, 20 Apr 2014 02:59:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id C042727E00C
	for <yocto@yoctoproject.org>; Sun, 20 Apr 2014 09:59:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Wiw3G4pouSXe for <yocto@yoctoproject.org>;
	Sun, 20 Apr 2014 09:59:23 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CF61C27E006
	for <yocto@yoctoproject.org>; Sun, 20 Apr 2014 09:59:23 +0000 (UTC)
Message-ID: <53539A78.3020901@dynamicdevices.co.uk>
Date: Sun, 20 Apr 2014 10:59:20 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Best practice for adding smart package feed sources to an image
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
X-List-Received-Date: Sun, 20 Apr 2014 09:59:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

I'm currently looking at adding smart package management support to an
image I'm building for i.MX6 based on RPMs.

I've managed to work out how to expose the built packages with some
helpful information here, although it presupposes use of opkg

https://communities.intel.com/thread/48408

Then I've managed to manually add the feeds to the target with something
along the lines of this with appropriate entry in /etc/hosts

smart channel --add devel-imx6qsabresd name=devel-imx6qsabresd
type=rpm-md baseurl=http://pkgrepo.my.local/coretexa9_vfp_neon_mx6  -y

So now I'm wondering what best practice is for adding these feeds into
an image automatically? Could anybody advise?

I had a look in the Wiki, and the manual but couldn't see anything
detailing what's needed,

https://wiki.yoctoproject.org/wiki/Smart
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#migration-target-package-management-with-rpm

Many thanks,

Alex


