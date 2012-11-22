Return-Path: <laguest@archeia.com>
Received: from beast.archeia.com (beast.archeia.com [74.207.226.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46CF2E003D6
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 06:01:29 -0800 (PST)
Received: from [192.168.0.4] (5ac2a2f3.bb.sky.com [90.194.162.243])
	(Authenticated sender: laguest)
	by beast.archeia.com (Postfix) with ESMTPSA id E83168058
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 14:01:27 +0000 (GMT)
Message-ID: <1353592833.4660.29.camel@rogue>
From: "Luke A. Guest" <laguest@archeia.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Nov 2012 14:00:33 +0000
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
Subject: Ada layer for Yocto
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
X-List-Received-Date: Thu, 22 Nov 2012 14:01:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I managed to get my Ada layer going for the official gumstix repo. I had
the code in the wrong bbappend file, should be the gcc-cross, not the
gcc one.

The repo is here: https://github.com/Lucretia/meta-ada

This is currently very basic support and I will be adding more. Please
see the README for problems. Please test and help me refine it.

Luke.



