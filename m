Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3CB5E0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 13:40:38 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:60339
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SHhrg-0005ta-P5
	for yocto@yoctoproject.org; Tue, 10 Apr 2012 21:40:36 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Tue, 10 Apr 2012 21:40:34 +0100
Message-Id: <8F9BD230-D053-4D52-AD15-97E27C84013D@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Reconfiguring the kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 20:40:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I think this is a summary of the steps needed to reconfigure the =
kernel,based on the instructions in the 6.0.1 dev manual:

1) bitbake linux-yocto -c clean
2) bitbake linux-yocto -c menuconfig
3) bitbake linux-yocto -c compile -f
4) bitbake linux-yocto

However, the bzimage in tmp/deploy/images is the same as the one that I =
had before I executed the above. I'm not sure if the md5sum is the same =
(will check next time round the loop), but it certainly doesn't seem to =
pick up the new configuration that I'm generating within menuconfig.

If I use 'cleanall' in step 1 (as shown in the manual) then I do get a =
new image, but at the expense of having to download the kernel branch =
again (even with a DL_DIR set). Can I get away with just using 'clean' =
if I do something else as well ?

Chris Tapp

opensource@keylevel.com
www.keylevel.com


