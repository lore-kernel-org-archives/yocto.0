Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB029E0148A
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 13:38:17 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-78-15.range86-137.btcentralplus.com
	[86.137.78.15]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 1C5469528
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 20:38:17 +0000 (GMT)
Message-ID: <514B6FB8.6040204@r-finger.com>
Date: Thu, 21 Mar 2013 20:38:16 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <C5ADEA0A-CC34-4A20-8D8B-27789A0C5358@keylevel.com>
In-Reply-To: <C5ADEA0A-CC34-4A20-8D8B-27789A0C5358@keylevel.com>
Subject: Re: No keyboard in X
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
X-List-Received-Date: Thu, 21 Mar 2013 20:38:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/03/13 20:11, Chris Tapp wrote:
> I've got a system (Danny, meta-intel-cedartrail) with a custom
> /etc/mini_x/session file which is used to run an application at
> startup.
> 
> This all works to the extent that the application starts and runs,
> but the keyboard doesn't work - 'Esc' should cause the application to
> terminate and the X session to end. The Xorg log shows that the
> session is "Using VT number 2".
> 
> If I kill the session manually, login on the tty and restart (using
> 'init 4', 'init 5') then the application runs as before but this time
> the keyboard works as expected.
> 
> inittab runs a getty on tty1 to tty4.

Could be permissions; if you are not starting X as root, you have to
make sure the X user has rw permissions to /dev/ttyN and /dev/input/*

Tomas

