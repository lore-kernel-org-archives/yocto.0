Return-Path: <karl@hiramoto.org>
Received: from homiemail-a36.g.dreamhost.com (caiajhbdcaib.dreamhost.com
	[208.97.132.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E6C0E01358
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:59:57 -0700 (PDT)
Received: from homiemail-a36.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a36.g.dreamhost.com (Postfix) with ESMTP id ECD8077805B
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:59:56 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; c=nofws; d=hiramoto.org; h=message-id:date
	:from:mime-version:to:subject:content-type:
	content-transfer-encoding; q=dns; s=hiramoto.org; b=GN5dF0LhEz1a
	XCqDvbJ5RZgRtoo/K6cPabJxvJhovV8Z6INRKZT4NJmzt0PKyJVOZt6uMrDv2O49
	xuh89QZG3N1sDhNAM0RIF7dr7m3D4DpNbCgi+XSnJpb9meB5/TPtEkoTwALk/FC6
	F7I9KmRG9/U+0n0iDRo6AIVF8hTGrjw=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=hiramoto.org; h=message-id
	:date:from:mime-version:to:subject:content-type:
	content-transfer-encoding; s=hiramoto.org; bh=tKyoJzHXVwbeMBN7Ts
	VO3HDRGls=; b=QDmjCzTeugjh8hBdKel98tmRrHg2w3C72jri7UlgAya4T2Xspm
	lICWwZXQvEU3Ea1shCQOwiitnuuZU5a9fE6RXP1XTYYTnufshSnVop20jVWjlpLH
	8zPSHsaonOv09h8XUi1yQ1nOgfoignv/dVdq/+dTSIK9b37hcqdn+pV/4=
Received: from [10.64.1.2] (160.Red-79-146-52.dynamicIP.rima-tde.net
	[79.146.52.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: karl@hiramoto.org)
	by homiemail-a36.g.dreamhost.com (Postfix) with ESMTPSA id 644B377805F
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:59:56 -0700 (PDT)
Message-ID: <5231901B.8090801@hiramoto.org>
Date: Thu, 12 Sep 2013 11:57:47 +0200
From: Karl Hiramoto <karl@hiramoto.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130827 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: package development recompile and install to rootfs
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
X-List-Received-Date: Thu, 12 Sep 2013 10:00:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm looking for a faster way  to recompile and install my package to my 
rootfs.   I am currently developing on a ARM board, and I'm booting the 
kernel and loading the rootfs over NFS.  I point the nfs root to 
/home/karl/Work/yocto/poky-dylan-9.0.1/build/tmp/work/mymachine-poky-linux-gnueabi/mymachine-image/1.0-r0/rootfs

in my custom "mypackage.bb" recipe I have:

DESCRIPTION = "mypackage"
SECTION = "base"
LICENSE = "CLOSED"
DEPENDS = "libnl jansson file"
SRCREV = "HEAD"
PR = "r0"
inherit autotools pkgconfig externalsrc
S = "/home/karl/Work/mypackage"

So to compile and reinstall mypackage i do:
bitbake -v mypackage -c clean -f  && bitbake -v mypackage -c install -f 
&& bitbake -v mymachine-image


The mymachine-image  deletes and recreates the rootfs, which is 
lengthly.  After i do this, I need to reboot my  target board, so the 
nfsroot gets remounted.

Is there any way to quickly get  mypackage  installed on the rootfs?    
I'd like to be able to quickly recompile/link mypackage after changing a 
few lines of code.


I could write a script to copy the binaries over but I'm wondering if 
there is an easier way.


Thanks,

Karl

