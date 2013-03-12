Return-Path: <V.Vogelhuber@DigitalEndoscopy.de>
Received: from SRV-MSX01.digitendos.local
	(host-80-81-19-29.customer.m-online.net [80.81.19.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE73DE003AB
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 09:34:07 -0700 (PDT)
Received: from [192.168.10.111] (192.168.10.111) by SRV-MSX01.digitendos.local
	(192.168.10.14) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 12 Mar 2013 17:33:17 +0100
Message-ID: <513F58FA.3080808@digitalendoscopy.de>
Date: Tue, 12 Mar 2013 17:34:02 +0100
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [192.168.10.111]
X-TM-AS-Product-Ver: SMEX-10.1.0.2244-7.000.1014-19710.006
X-TM-AS-Result: No--15.525600-0.000000-31
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
Subject: building yocto image from git always switches branch
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
X-List-Received-Date: Tue, 12 Mar 2013 16:34:08 -0000
Content-Type: text/plain; charset="ISO-8859-15"; format=flowed
Content-Transfer-Encoding: 7bit

I currently try to create a kernel and rootfs image based on yocto 1.3.
I cloned the poky git repository and switched to danny branch.

For some reason during the bitbake run for creating the image the branch 
of my local git repository is always switched to master, which of course 
won't match with the other layers I checked out for danny.

Currently I do the following:

#!/bin/bash

if [ ! -e poky ]; then
   git clone git://git.yoctoproject.org/poky.git
   cd poky
   git checkout -b danny remotes/origin/danny
   cd ..
fi
if [ ! -e poky/meta-ti ]; then
   git clone -b danny git://git.yoctoproject.org/meta-ti poky/meta-ti
fi

After the checkout I copy some configuration files to the build/conf 
directory within the poky directory (bblayers.conf, local.conf) and an 
additional layer for our specific hardware module.

When I change to the build directory and start building the image using 
bitbake, there seems to be a git call somewhere in the recipes that 
switches the branch of the poky git checkout back to master. Of course 
that results in a total misbehaviour of the build process, as the 
underlaying recipes changes during the build.

Can someone explain that behaviour? Is that a bug or is there something 
I'm doing wrong.

Kind regards,
     Volker

