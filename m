Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19BDBE0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 08:03:45 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3JF4Chf003214; Fri, 19 Apr 2013 16:04:13 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id k2npoBpHyVrk; Fri, 19 Apr 2013 16:04:12 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3JF4562003194
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 19 Apr 2013 16:04:07 +0100
Message-ID: <1366383800.10502.132.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 19 Apr 2013 16:03:20 +0100
In-Reply-To: <51715A12.60007@mlbassoc.com>
References: <51715A12.60007@mlbassoc.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Change in 'devshell' behaviour
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
X-List-Received-Date: Fri, 19 Apr 2013 15:03:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-04-19 at 08:52 -0600, Gary Thomas wrote:
> CAUTION!! giant security hole awaits!
> 
> I've just discovered that recent Poky/Yocto runs 'devshell' as ROOT!
> 
> If I run 'bitbake SOME-RECIPE -c devshell' with a somewhat older
> metadata (poky rev 09359e6ec00901abfe49157f1f9730117b4d284b)
> the shell is run using my user id.
> 
> With a newer poky rev 90b98764555945a186562ca8d501a9585ce2b23f,
> the shell runs as 'root'.
> 
> This change came with this revision:
> 
> commit 4dc31a327be1a506e78e1d028db08ceee22a216f
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Thu Mar 28 13:17:12 2013 +0000
> 
>      base.bbclass: When we use fakeroot, also use it for devshell
> 
>      Its generally useful for devshell to end up in the fakeroot environment. If
>      a user needs to exit it, PSEUDO_UNLOAD=1 <command> works, its usually
>      harder to enter the envionment.
> 
>      [YOCTO #3374]
> 
>      (From OE-Core rev: e6ffc747a8ca5142c9bc6fbd2b06b5808bb38b02)
> 
>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> Isn't this a horrible security flaw?  Or is 'fakeroot' actually safe?
> The change description doesn't tell me why it's "useful".
> 
> Whatever the case, to me at least it's very unnerving...

I think the key word to look at here is "fake". You'll find you can't do
anything nasty to your system you couldn't do as your normal user
account and this is purely emulation.

This "root" context is the one do_install, do_populate_sysroot and other
tasks run under so that we can give files owners and permissions in the
packages. We chose to give it more visibility since its actually useful
for debugging several types of problems. For example, you can look
around the rootfs from the rootfs task and see real users as it would
get tarballed up.

You can get your normal shell back with "PSEUDO_UNLOAD=1 bash", which is
much easier than trying to get into the pseudo context in the first
place.

So please rest assured there is no security issue here.

Cheers,

Richard



