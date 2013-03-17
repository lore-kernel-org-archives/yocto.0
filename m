Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92CD1E003DB
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 23:49:00 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id dq12so4273669wgb.24
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 23:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=/TYpub6/T+IZxwHviw3osC5IfWDVbC5nKWlv2KIxoKI=;
	b=UoudoY8SOubzkl3//6tBpjBFF78QVA5Cms3hYuXeXJIo42ahHx2UgmsbyxsQ5bhsSm
	6X4bBdx+ZGx/MDmNG4vkb29QLAUrwLdbLFjpgrH+oymncbHqA9BeDlc+dHS6obDN9U07
	eUsCDMtb5YSMZmwVyNlIXuwG1cqqdepxyHoPWsuiw4zMjDgNeMk9VQlLO3SD1J6xY3DX
	pkgUrVJDzUf1etamCzMICBF9el3RT8gOyVEAeyu00JLFvovy2UFXxVNWqsIfChqdOtuy
	ORkc5RsWPNlWGXfnPUXhtoYwdSthZLyRUS404xe9borRBTUYsvY9jj7w/1d8H1Dl6N0E
	UXtQ==
X-Received: by 10.180.76.84 with SMTP id i20mr10545026wiw.9.1363502939056;
	Sat, 16 Mar 2013 23:48:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sat, 16 Mar 2013 23:48:39 -0700 (PDT)
In-Reply-To: <CAJTo0LaRQ+LdUN+c2H3Dd4qL9j+C_Be+FjyNEe0SqyXT6YbSjw@mail.gmail.com>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
	<CAJTo0LY52qE3QMO_FffY3GOkt2VDd+bNbYkX130y3wv34zu5iA@mail.gmail.com>
	<CACzyEJ_rkzc1udoPsb2Nh34n8DPefGpp5Xvh=8E-w5d5TumBSg@mail.gmail.com>
	<CACzyEJ8nphA7Li_SOK3BaDT+1qfVKTdxDsncyD5N2C8jYB0G5g@mail.gmail.com>
	<CAJTo0LaRQ+LdUN+c2H3Dd4qL9j+C_Be+FjyNEe0SqyXT6YbSjw@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Sat, 16 Mar 2013 23:48:39 -0700
Message-ID: <CACzyEJ_HCB8qPbOBYnUcecA6FgWpdz_uU0JSRpVHf73ODOcVyw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sun, 17 Mar 2013 06:49:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Mar 16, 2013 at 5:38 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 16 March 2013 01:16, Insop Song <insop.song@gmail.com> wrote:
>> So at this point, I will wait to see if any one is seen this recently.
>
> The autobuilder appears to be hitting this still, but as several
> oe-core maintainers are still travelling after a conference you may
> have to wait until Monday.

Thank you for the update while you are on the road.

I pull the latest again
(http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=2381e46e77c8d33472f60861f66e44addd53af68)
And it is okay now.

Could be the Richard's this commit fixed it.
"package_rpm: Ensure PV manipulations are correct	Richard Purdie"
(b5e5d25c25f30db1f9855e24afef9d8f0bb77d35)


Here is my output:
-------------------------------------------

 ~/mybuilds/meta-realtime $ time bitbake core-image-realtime
Loading cache: 100%
|######################################################################################|
ETA:  00:00:00
Loaded 1123 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130316"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:2381e46e77c8d33472f60861f66e44addd53af68"
meta-realtime     = "schedtool-sq:ed7886f649ab945625ccbfed0ecc74a500a7c22d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 3938 tasks of which 2355 didn't need to
be rerun and all succeeded.

real	122m1.472s
user	514m20.641s
sys	73m56.453s

------------------------------

regards,

Insop

