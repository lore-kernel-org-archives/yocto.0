Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3423EE00D08; Mon, 17 Oct 2016 07:11:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.5 listed in list.dnswl.org]
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7229E00CFF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 07:11:04 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp5-g21.free.fr (Postfix) with ESMTP id AE4985FFB7
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 16:11:03 +0200 (CEST)
Date: Mon, 17 Oct 2016 16:11:03 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <561533617.145482749.1476713463652.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <290444271.145314951.1476711189434.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Using debian packages management
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
X-List-Received-Date: Mon, 17 Oct 2016 14:11:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 

From time to time I try to use the debian packages management instead of RPM because I feel more "at home"... And every time, there is a problem -- but this time, I felt like I'll try to understand and solve it! 

I tried first with core-image-minimal, and it worked.
But then I switched to core-image-sato and had the following error:

ERROR : core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Command '/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/apt-get install --force-yes --allow-unauthenticated apt packagegroup-base-extended packagegroup-core-ssh-dropbear dpkg packagegroup-core-x11-base packagegroup-core-boot packagegroup-core-x11-sato-games psplash packagegroup-core-x11-sato' returned 100: 
Reading package lists... 
Building dependency tree... 
Reading state information... 
Some packages could not be installed. This may mean that you have requested an impossible situation or if you are using the unstable distribution that some required packages have not yet been created or been moved out of Incoming. 
The following information may help to resolve the situation: 

The following packages have unmet dependencies: 
packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it is not going to be installed 
E: Unable to correct problems, you have held broken packages.


I checked: The package exists in /tmp/deploy/deb/all/packagegroup-core-x11-utils_1.0-r40_all.deb, but it is *empty*. It looks as if it is just there to create some RDEPENDS in the recipe.


So... I played the game to explicitly add packages one by one to the image:
IMAGE_INSTALL_append_pn-core-image-sato = " packagegroup-core-x11-utils xserver-nodm-init x11-common xserver-common"


But now I have the following error:
The following packages have unmet dependencies:
 xserver-common : Conflicts: x11-common but 0.1-r47 is to be installed



So my question is:
Is using debian packages management definitely broken in Yocto? Or has someone managed to use it with some tweaking?


Many thanks for your feedbacks
Michel

