Return-Path: <jairo@futurasmus-knxlab.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6859E00BAF; Mon, 25 Mar 2019 09:01:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [37.187.160.104 listed in list.dnswl.org]
X-Greylist: delayed 3603 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Mar 2019 09:01:42 PDT
Received: from mail.knx-group.net (www.futurasmus-knxgroup.org
	[37.187.160.104])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 7564CE00B58
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 09:01:41 -0700 (PDT)
Received: from PC-008 (200.red-79-155-111.dynamicip.rima-tde.net
	[79.155.111.200]) by mail.knx-group.net
	; Mon, 25 Mar 2019 16:01:38 +0100
Message-ID: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
From: jairo <jairo@futurasmus-knxlab.es>
To: yocto@yoctoproject.org
Date: Mon, 25 Mar 2019 16:01:37 +0100
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: [rauc] create a rescue image
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
X-List-Received-Date: Mon, 25 Mar 2019 16:01:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I want to make a system with a rescue partition.

What is the minimum to make a rescue image? Or how can it be done?

I use a board with a imx6 micro from phytec, and in the meta-yogurt
layer there is a recipe called phytec-initramfs-image.bb that creates
an image or partition with cpio.gz format of 11MB containing rootfs,
can it be used That image as a rescue? If so, how do you copy a cpio
partition in an UBI MTD system?

https://layers.openembedded.org/layerindex/recipe/89608/

Thanks in advance



