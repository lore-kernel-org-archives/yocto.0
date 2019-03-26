Return-Path: <jairo@futurasmus-knxlab.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A279E00C1B; Tue, 26 Mar 2019 04:31:05 -0700 (PDT)
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
Received: from mail.knx-group.net (www.futurasmus-knxgroup.org
	[37.187.160.104])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E37CBE00B81
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 04:31:03 -0700 (PDT)
Received: from PC-008 (200.red-79-155-111.dynamicip.rima-tde.net
	[79.155.111.200]) by mail.knx-group.net
	; Tue, 26 Mar 2019 12:31:04 +0100
Message-ID: <75a6f7dc0a1edd137109c5af869e713267cd2967.camel@futurasmus-knxlab.es>
From: jairo <jairo@futurasmus-knxlab.es>
To: Mike Looijmans <mike.looijmans@topic.nl>
Date: Tue, 26 Mar 2019 12:31:00 +0100
In-Reply-To: <073118a1-ad14-5fbf-bf5e-9e4f5a80474c@topic.nl>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
	<20190325172133.50597470@yaise-pc1>
	<2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
	<20190326091405.5017c931@posteo.de>
	<69cf9c37c7dc4a5e3243f3013294a39adefad5c5.camel@futurasmus-knxlab.es>
	<073118a1-ad14-5fbf-bf5e-9e4f5a80474c@topic.nl>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [rauc] create a rescue image
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
X-List-Received-Date: Tue, 26 Mar 2019 11:31:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Thank you very much Mike.



> With NAND you'll probably have a filesystem (jffs2 or UBI) in place.
> With that, you could just use a package manager like opkg to update
> sofware. If the box has a network connection, just running "opkg
> update && opkg upgrade" will install the current releases with the
> minimum effort. We've been using this on a million boxes and it works
> fine (until someone decides to patch libc and you get a 300+ package
> upgrade).


Is there a public repository with ipk packages, or do I have to create
my own repository?
Can opkg solve dependencies well? Can it create problems?


> Linux is also capable of upgrading a running system. Basically, copy
> some 
> executables to a tmp filesystem, remount everything read-only, and
> change root 
> to the tmp part. Then you can rewrite partitions and reboot.
> 
> In any case, you should have a u-boot configuration that allows it to
> be 
> debricked. Typically a USB stick or DFU will do nicely if your board
> has USB. 
> Or even serial...

I'm using Barebox, I think there would be no problems out there, the
bad part of using opkg is that the product should be used by clients
without much knowledge of linux. In that part I think it would be
easier for customers to use a update system such as Rauc or any similar
...

A greeting!



