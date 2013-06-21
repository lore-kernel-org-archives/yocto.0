Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3D9BE005B3
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 02:39:52 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-103-153.range86-137.btcentralplus.com
	[86.137.103.153]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id C4463952B
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 10:39:50 +0100 (BST)
Message-ID: <51C41F65.6040804@r-finger.com>
Date: Fri, 21 Jun 2013 10:39:49 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <F509B6E140614CC390C878276D4AE429@PAULD>
In-Reply-To: <F509B6E140614CC390C878276D4AE429@PAULD>
Subject: Re: -rt and COMPATIBLE_MACHINES
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
X-List-Received-Date: Fri, 21 Jun 2013 09:39:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Paul,

On 20/06/13 20:40, Paul D. DeRocco wrote:
> My question is this: why was I able to build core-image base without
> complaint in the first place? The kernel recipes it has available
> (linux-yocto_*) also set COMPATIBLE_MACHINE to a list of qemu machines.

It probably built the linux-dummy recipe. An easy way to see which
recipe is being used is to run 'bitbake virtual/kernel'.

Tomas

-- 
http://sleepfive.com

