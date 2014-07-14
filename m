Return-Path: <prvs=265ddcc65=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03F0AE004FF; Mon, 14 Jul 2014 07:43:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C79BE002AA
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 07:43:26 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqAEAGTrw1OsEApK/2dsb2JhbABZhDrJFAGBKXWEBAEEATo/BQsLDRQlD0gGDgWILgMJDcBqC4cqF49LB4RDAQSbDYc8kCmCLg
X-IPAS-Result: AqAEAGTrw1OsEApK/2dsb2JhbABZhDrJFAGBKXWEBAEEATo/BQsLDRQlD0gGDgWILgMJDcBqC4cqF49LB4RDAQSbDYc8kCmCLg
Date: Mon, 14 Jul 2014 16:43:23 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: TonyZhao <tonyzhao414@foxmail.com>
Message-ID: <20140714164323.611b7345@lxbuild.skidata.net>
In-Reply-To: <tencent_008BC33E036646E367F5CFCE@qq.com>
References: <tencent_008BC33E036646E367F5CFCE@qq.com>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to install .deb file in Yocto on Intel Galileo
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
X-List-Received-Date: Mon, 14 Jul 2014 14:43:31 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi,
do you want to install the .deb package during the bitbake build or in the running system?


During the bitbake build you can use something like the following in your image recipe.
install_my_deb() {                                                              
	${STAGING_BINDIR_NATIVE}/dpkg --root=${IMAGE_ROOTFS}/ --admindir=${IMAGE_ROOTFS}/var/lib/dpkg/ -i /path/to/package.deb
}                                                                               
ROOTFS_POSTPROCESS_COMMAND += "install_my_deb; "


If you like to install it in the running system make sure dpkg is installed (try "dpkg --version").
If not: check PACKAGE_CLASSES variable. (Is package_deb set?)


hope this helps.

regards,
richard l.

On Mon, 14 Jul 2014 15:55:18 +0800
TonyZhao <tonyzhao414@foxmail.com> wrote:

> I want to install .deb file in Yocto. It's based on Intel Galileo, started from SD card.
> I tried dpkg -i <package>, but it said no such command.
> Do I miss something or use the wrong command?
> Thanks.

