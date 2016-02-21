Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50E4EE00D36; Sat, 20 Feb 2016 20:24:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04C10E00872
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 20:24:48 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.104])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aXLZA-0005B0-EX; Sun, 21 Feb 2016 04:24:17 +0000
Message-ID: <56C93C17.20704@twobit.us>
Date: Sat, 20 Feb 2016 20:24:55 -0800
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1455763309-9622-1-git-send-email-joe_macdonald@mentor.com>
In-Reply-To: <1455763309-9622-1-git-send-email-joe_macdonald@mentor.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][PATCH] MAINTAINERS: Update maintainers file
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
X-List-Received-Date: Sun, 21 Feb 2016 04:24:54 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/17/2016 06:41 PM, Joe MacDonald wrote:
> Adding Philip Tricca as a common layer maintainer and marking Pascal as
> away.

While the admins upstream get my ssh key in place I did a pass over the
pending patches and the current state of the repo. There isn't a lot to
do in the actual meta-selinux layer beyond what's already on the list.
There was only one fix needed to get the build working again:

The xattr patches to e2fsprogs have been superseded by the work that
WindRiver has been doing in upstream e2fsprogs. There's a bug in their
implementation though and the root directory on the rootfs image doesn't
get labeled. I've sent a fix to the upstream maintainer. In the meantime
the current patches can just be dropped and replaced with this one.

There's also one fix required to get a login shell working. In
openembedded-core, commit
http://git.openembedded.org/openembedded-core/commit/?id=b93369a7943949f51057e0a704f5524ab7682fe6
breaks the login process when the SELinux policy is enforced. I've sent
a patch upstream to fix this:
http://article.gmane.org/gmane.comp.handhelds.openembedded.core/76599

When I can commit these changes they're ready to go. After that I'll do
another pass over the list and pick up the remaining patches that
weren't required to get basic functionality back.

Philip

