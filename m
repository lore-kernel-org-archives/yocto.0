Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE6EEE00E5E; Tue, 19 Jul 2016 05:47:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B22AE00E54
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 05:47:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u6JClIBk012734; Tue, 19 Jul 2016 13:47:18 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id srXWb5mezaIX; Tue, 19 Jul 2016 13:47:18 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u6JClGHD012731
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 19 Jul 2016 13:47:17 +0100
Message-ID: <1468932436.22733.1.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Maier, Chris" <C.Maier@geze.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 19 Jul 2016 13:47:16 +0100
In-Reply-To: <2AA7D088591C49498E92D6491C58159334C887BF@gcxdb1.corp.geze.com>
References: <2AA7D088591C49498E92D6491C58159334C887BF@gcxdb1.corp.geze.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: do_rootfs OSError: [Errno 13] Permission denied
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
X-List-Received-Date: Tue, 19 Jul 2016 12:47:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-07-19 at 07:17 +0000, Maier, Chris wrote:
> Hello together,
>  
> I ran into an “Permission denied” error while trying to setup a
> nightly build on our Jenkins server and I can’t figure out where the
> problem comes from.
> It seems that the problem is coming from creating and executing a
> child process, but why?
>  
> The build is working fine on my linux machine but it doesn’t finish
> successfully on the server (SUSE Linux Enterprise Server 12 SP1 
> (x86_64)).
>  
> The build log and the error message is attached.
>  
> What I already did:
> -          Checking the file system space (11GB left)
> -          Deleted the whole build directory and did a rebuild
> -          Checked the filesystem permission, seems normal. It all
> belongs to user and group Jenkins.

It looks like you have the source code under svn control and its
finding a .svn directory in the "intercepts" directory and trying to
execute it. I'm guessing this is the scripts/postinst-intercepts
directory where its finding it.

Somehow you'd need to teach the code to skip the .svn directory, remove
that directory before the build or use a different source control
system.

Cheers,

Richard


