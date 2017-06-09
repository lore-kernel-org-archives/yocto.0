Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C18D7E00BC8; Fri,  9 Jun 2017 03:18:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49A1FE00B57
	for <yocto@yoctoproject.org>; Fri,  9 Jun 2017 03:18:21 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 009A7261A1D
Message-ID: <1497003491.22734.30.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 09 Jun 2017 12:18:11 +0200
In-Reply-To: <DB5PR0101MB168662C8598B20446B65551D92C90@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
References: <DB5PR0101MB168662C8598B20446B65551D92C90@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Subject: Re: [bitbake] Conditional Linux Kernel compilation according to Yocto Variables
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
X-List-Received-Date: Fri, 09 Jun 2017 10:18:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-06-08 at 07:32 +0000, Karim ATIKI wrote:
> I'm using Yocto (Poky Dora is mandatory for our project) to create a Linux image for an ARM base
> board.
> Currently, we're working on an evaluation board.
> We have a dedicated layer (meta-docking) with all the stuff.
> We have dedicated recipes that installs a specific version of the Linux Kernel and some specific
> patch as well.
> As we create the image:
> 
> bitbake -k docking-image
> 
> Now, we're moving toward the final board to be used in production. It differs from the evaluation
> board as some connectors are added (lighting etc.).
> Therefore, the Linux Kernel being installed is slightly different, some source files need to be
> replaced/patched/modified consequently.
> 
> My colleague, firstly chose to create another copy of the layer (i.e. meta-docking-prod).
> This option does not satisfy us, I'm sure Yocto provides mechanisms to apply taks according to the
> target.
> 
> My question is, for example, how to apply different patches on a Linux kernel (or any yocto
> resource file) according to user's variable ? or according to the target machine ?
> Without having to duplicate layers.

1. Take a look at OVERRIDES. You can probably use the followings for different machines:

SRC_URI_append_<machine1> = " file://patchformachine1.patch"

SRC_URI_append_<machine2> = " file://patchformachine2.patch"

2. To enable patch according to variable, take a look at how bb.utils.contains works.

SRC_URI = "... \
	  ${@bb.utils.contains('YOURVARIABLE', 'tagtomatch', 'file://feature.patch', '', d)} \
	... "

and set YOURVARIABLE in your local.conf for example.


You have a lot of examples on how to use such mechanism in all available metas.


> 
> Thanks.
> 
> K.

