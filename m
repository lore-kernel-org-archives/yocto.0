Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F35E01457
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 04:50:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5IBoEG9004823;
	Mon, 18 Jun 2012 12:50:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18265-07; Mon, 18 Jun 2012 12:50:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5IBo55R004810
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Jun 2012 12:50:06 +0100
Message-ID: <1340020205.8481.15.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tim Bird <tim.bird@am.sony.com>
Date: Mon, 18 Jun 2012 12:50:05 +0100
In-Reply-To: <4FDBA4B8.8000703@am.sony.com>
References: <4FD93175.7070202@linux.intel.com>
	<4FD98EA6.1050403@r-finger.com> <4FDBA4B8.8000703@am.sony.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Mon, 18 Jun 2012 11:50:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-06-15 at 14:10 -0700, Tim Bird wrote:
> One of our early efforts, getting busybox
> to not fork commands in init scripts that it had as
> builtins, proved to be a significant feature that is still
> valuable today to improve boot time.

I'd add that one thing we did with Poky's init system a while ago was
went through and for every fork we found, tried to find ways to avoid
it. Certainly, a few years ago, we were down to about four busybox/shell
util (grep/sed/cat) forks in the init scripts through to an X desktop.

I've not looked at this recently but we certainly used to be pretty good
in that area.

We also source init scripts, not execute them where they have the
extension .sh, again for performance (less exec overhead). This all
stayed pretty much compatible with sysvinit and is what we use to this
day. I appreciate we do need to improve, there is plenty of room for it
and look at things like systemd.

Cheers,

Richard



