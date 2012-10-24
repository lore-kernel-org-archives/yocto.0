Return-Path: <stefan@herbrechtsmeier.net>
Received: from dd19416.kasserver.com (dd19416.kasserver.com [85.13.139.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C49E0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 09:30:27 -0700 (PDT)
Received: from [129.70.144.11] (hooge.TechFak.Uni-Bielefeld.DE [129.70.144.11])
	by dd19416.kasserver.com (Postfix) with ESMTPSA id B29771840264
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 18:30:25 +0200 (CEST)
Message-ID: <50881794.3020305@herbrechtsmeier.net>
Date: Wed, 24 Oct 2012 18:30:12 +0200
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:16.0) Gecko/20121010 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Ubuntu 10.04 don't support mirror option with parameter
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
X-List-Received-Date: Wed, 24 Oct 2012 16:30:27 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

the git version of Ubuntu 10.04 is to old to support mirror option with 
parameter which is used by the bitbake fetch2.

Regards,
   Stefan


DEBUG: ... git remote add --mirror=fetch origin 
git://git.yoctoproject.org/opkg-utils
ERROR: Fetcher failure: Fetch command failed with exit code 129, output:
error: option `mirror' takes no value
usage: git remote add [<options>] <name> <url>

     -f, --fetch           fetch the remote branches
     -t, --track <branch>  branch(es) to track
     -m, --master <branch>
                           master branch
     --mirror              no separate remotes



