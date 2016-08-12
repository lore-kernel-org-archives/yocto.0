Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44AC3E01431; Fri, 12 Aug 2016 06:52:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C425AE0142F
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 06:52:09 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 12 Aug 2016 06:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,510,1464678000"; d="scan'208";a="154812462"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.28.64])
	by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2016 06:52:06 -0700
Message-ID: <1471009925.19073.6.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 12 Aug 2016 14:52:05 +0100
In-Reply-To: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
References: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Fri, 12 Aug 2016 13:52:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-08-12 at 12:33 +0000, Kumar, Shrawan wrote:
> Hello All,
>  
> I am  using  poky “ jethro”  , and  though  one of my recipe, I have
> created user1 & user2 and then trying to set ACL rules  on
> “helloworld” bin as below :
>  
>  
> do_install() {
>                     install -d ${D}${bindir}
>                     install -m 0700 helloworld ${D}${bindir}
>                     install -d ${D}/lib/systemd/system
>                     install -m 0700 hello.service
> ${D}/lib/systemd/system/
>                     chown    user1:group1 ${D}${bindir}/helloworld
>                    setfacl -m u:user2:r-- ${D}${bindir}/helloworld
> }
>  
>  
> è When I see   on the devshell ( bitbake HelloWorld –c devshell)  :
> poky/build_qemux86/tmp/work/qemux86-poky-linux/core-image-
> minimal/1.0-r0/rootfs/usr/bin# getfacl helloworld    , I could see
> that ACL permissions are set correctly as below :
> -        # file: helloworld
> -        # owner: user1
> -        # group: group1
> -        user::rwx
> -        user:user2:r--
> -        group::---
> -        mask::r--
> -        other::---
>  
> However, It does not seems to be getting preserved in rootfs. :
> /poky/build_qemux86/tmp/work/qemux86-poky-linux/core-image-
> minimal/1.0-r0/rootfs/usr/bin# getfacl helloworld
> # file: helloworld
> # owner: user1
> # group: group1
> user::rwx
> group::---
> other::---
>  
> quick help  here would be highly appreciated

This is due to the fact that we don't currently have a mechanism to
preserve xattr through to image construction[1].

The largest barrier for doig so is that the package managers (certainly
dpkg and rpm) don't have any support for xattrs in packages (an image
is populated via the package manager).

To the best of my knowledge the only option for adding some xattr/ACL
is to use a postinst[2] to set the attributes after the package has
been installed.

Regards,

Joshua

1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=9858
2. http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#new-
recipe-post-installation-scripts


