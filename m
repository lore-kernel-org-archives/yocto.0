Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 681C6E00C9C; Wed, 15 Jun 2016 04:03:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 711 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Jun 2016 04:03:25 PDT
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F4FAE00C86
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 04:03:25 -0700 (PDT)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id u5FApSEa024218
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:51:28 +0200
Received: from [139.16.77.141] (MD1FZU9C.ww002.siemens.net [139.16.77.141])
	by mail2.sbs.de (8.15.2/8.15.2) with ESMTPS id u5FApSBZ018104
	(version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:51:28 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Pascal Bach <pascal.bach@siemens.com>
Message-ID: <57613330.9080100@siemens.com>
Date: Wed, 15 Jun 2016 12:51:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
Subject: Yocto git server via http and mirror tarballs
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
X-List-Received-Date: Wed, 15 Jun 2016 11:03:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi

Because of firewall restrictions I'm not always not able to access the git.yoctoproject.org via the git protocol but I'm required to use http.

By default most of the recipes in Poky recipes use the git protocol not the http protocol. For example yocto-kernel-tools points to repositories "git://git.yoctoproject.org/yocto-kernel-tools" instead of "http://git.yoctoproject.org/git/yocto-kernel-tools".

To work around this issue I added a mirror rules for rewriting the protocol like this:

MIRRORS += "\
    git://git.yoctoproject.org/.*                               git://git.yoctoproject.org/git/PATH;protocol=http \n \
    "

This seems to work and I'm able to fetch the sources even when git access is not possible.

But when I then enable BB_GENERATE_MIRROR_TARBALLS = "1" I'm starting to get different tarball names depending on what protocol was used.
For example "git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz" vs "git2_git.yoctoproject.org.git.yocto-kernel-tools.git.tar.gz".

I assume this happens because the first tarball was create while git access was possible, while the second one was created when only http was possible:
git.yoctoproject.org/git => git.yoctoproject.org.git
git.yoctoproject.org     => git.yoctoproject.org

Is there any way to prevent the tarballs from having different names? For example derive the name always from the original URL not the mirror one?

Or is there a better way to achieve what we are doing with MIRROR?

Thanks for your help.

Pascal

