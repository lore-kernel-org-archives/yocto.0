Return-Path: <olof.johansson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 226EBE00803; Sun, 24 Aug 2014 10:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 496 seconds by postgrey-1.32 at yocto-www;
	Sun, 24 Aug 2014 10:23:04 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9470E00576
	for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 10:23:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id C1D911807B
	for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 19:14:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id ED-usDgCd9MY for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 19:14:34 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bastet.se.axis.com (Postfix) with ESMTP id 2C13A18071
	for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 19:14:34 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 095B611A3
	for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 19:14:34 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id F1E5984A
	for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 19:14:33 +0200 (CEST)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id EDB783E048
	for <yocto@lists.yoctoproject.org>;
	Sun, 24 Aug 2014 19:14:33 +0200 (CEST)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.3.342.0; Sun, 24 Aug 2014
	19:14:33 +0200
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id A84629C56B; 
	Sun, 24 Aug 2014 19:14:33 +0200 (CEST)
Date: Sun, 24 Aug 2014 19:14:33 +0200
From: Olof Johansson <olof.johansson@axis.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <20140824171433.GA21392@axis.com>
References: <1408449451-8566-1-git-send-email-otavio@ossystems.com.br>
MIME-Version: 1.0
In-Reply-To: <1408449451-8566-1-git-send-email-otavio@ossystems.com.br>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [PATCH] distro/poky: Add Debian 7.5 and 7.6 version as validated
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
X-List-Received-Date: Sun, 24 Aug 2014 17:23:09 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

On 14-08-19 13:57 +0200, Otavio Salvador wrote:
> @@ -88,6 +88,8 @@ SANITY_TESTED_DISTROS ?= " \
>              Debian-7.2 \n \
>              Debian-7.3 \n \
>              Debian-7.4 \n \
> +            Debian-7.5 \n \
> +            Debian-7.6 \n \
>              SUSE-LINUX-12.2 \n \
>              openSUSE-project-12.3 \n \
>              openSUSE-project-13.1 \n \

Perhaps we could discuss adding Debian-7.* (the current
Debian stable release, Wheezy, aka Debian 7.x)? I know there's
some different opinions, but I'm just gonna put in my two cents
for why that change would imho be beneficial and harmless:

- No need to update the list for each point release. Since a
  Debian point release happens every other month and since these
  updates would never make it to a previous poky release, the
  distro version would be stale within two months of a poky release.

- Debian is one of few distros that includes this granular
  version level in the lsb version. Adding a 7.* glob would
  normalize it with other distros.

- Limited scope: "[The Debian point releases] usually incorporate
  the security fixes released until the time of the update and
  fixes for grave bugs in the current release" [1]

- Using poky should not make you feel hindered in doing important
  security upgrades provided by your desktop distribution, or for
  that matter make you select a different distribution in the
  belief that Debian stable isn't supported by Poky.

- For organizations and projects with stricter distro needs, the
  variable is easily overrideable. (This is true the other way
  around as well, we have already added the glob to our internal
  layer.)

Thoughts?

1: https://www.debian.org/doc/manuals/developers-reference/pkgs.html#upload-stable

(Of course, I have no objections to Otavio change.)

Regards,
-- 
olofjn

