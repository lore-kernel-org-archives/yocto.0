Return-Path: <jairo@futurasmus-knxlab.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23E18E00A0C; Wed, 31 Oct 2018 05:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [37.187.160.104 listed in list.dnswl.org]
X-Greylist: delayed 3611 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Oct 2018 05:03:46 PDT
Received: from mail.knx-group.net (www.futurasmus-knxgroup.org
	[37.187.160.104])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8A551E00950
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 05:03:45 -0700 (PDT)
Received: from PC-008 (215.red-88-0-69.dynamicip.rima-tde.net [88.0.69.215])
	by mail.knx-group.net ; Wed, 31 Oct 2018 12:03:33 +0100
Message-ID: <ac25a5b004fb50f504cb455375de268710121957.camel@futurasmus-knxlab.es>
From: Jairo <jairo@futurasmus-knxlab.es>
To: yocto@yoctoproject.org
Date: Wed, 31 Oct 2018 12:03:29 +0100
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: [avahi] add service into rocko
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
X-List-Received-Date: Wed, 31 Oct 2018 12:03:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I need to install an avahi service on rocko for (a node of) node-red.

OK, I have an avahi_0.6.32.bb recipe at 'sources/poky/meta/recipes-
connectivity/avahi/' which path is added at bblayers.conf file.

but if I add the package at local.conf file like this:

IMAGE_INSTALL_append = " avahi"

when I try to make an image, bitbake can't find avahi

   Collected errors:
    * opkg_prepare_url_for_install: Couldn't find anything to satisfy
'avahi'.

What I'm doing wrong?

Thanks,
Jairo



