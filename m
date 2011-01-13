Return-Path: <rdelaet@mri-inc.net>
Received: from qmta09.westchester.pa.mail.comcast.net
	(qmta09.westchester.pa.mail.comcast.net [76.96.62.96])
	by mx1.pokylinux.org (Postfix) with ESMTP id 740834C810AF
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 19:21:56 -0600 (CST)
Received: from omta06.westchester.pa.mail.comcast.net ([76.96.62.51])
	by qmta09.westchester.pa.mail.comcast.net with comcast
	id uihl1f00116LCl059pMwz9; Thu, 13 Jan 2011 01:21:56 +0000
Received: from [192.168.4.102] ([76.20.196.105])
	by omta06.westchester.pa.mail.comcast.net with comcast
	id upMv1f00L2Gv4ys3SpMwW4; Thu, 13 Jan 2011 01:21:56 +0000
From: Rick De Laet <rdelaet@mri-inc.net>
To: yocto@yoctoproject.org
Organization: MRI
Date: Wed, 12 Jan 2011 20:21:35 -0500
Message-ID: <1294881695.3219.20.camel@laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-1.fc12) 
Subject: Building all packages using the released toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: rdelaet@mri-inc.net
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Jan 2011 01:21:56 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am new to yocto, I have installed yacto on Fedora 12.

I was trying to follow the steps in the getting started guide and was
trying a build with "bitbake make-native" and got some build errors in
"elfutils", but it was using the compiler in my Fedora distribution.  I
have also downloaded the toolchain in /opt/poky, and manually reran
configure in the elfutils to use the compilers in /opt/poky and it built
fine.

What config changes do I have to make so that bitbake builds everything
using the toolchain compilers rather than the default gcc?  (i.e have it
run each configure script so that it specifies the toolchain compiler
rather than use the default compiler)

I did run the environment script  

	/opt/poky/environment-setup-i586-poky-linux

but apparently more is required

Thanks in advance,

Rick.


