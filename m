Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F452E00AE0; Mon,  1 May 2017 10:21:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46D2FE00ACD
	for <yocto@yoctoproject.org>; Mon,  1 May 2017 10:21:36 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v41HLSIS023570
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 1 May 2017 18:21:29 +0100
Message-ID: <1493659288.23535.44.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Poky Build User <pokybuild@yocto-www.yoctoproject.org>,
	yocto@yoctoproject.org
Date: Mon, 01 May 2017 18:21:28 +0100
In-Reply-To: <1493625516.23535.20.camel@linuxfoundation.org>
References: <20170429192516.EEBCDD06A@centos7.osl.yoctoproject.org>
	<1493625516.23535.20.camel@linuxfoundation.org>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Mon, 01 May 2017 18:21:30 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Cc: joshua.g.lock@intel.com, alexandru.c.georgescu@intel.com,
	otavio@ossystems.com.br
Subject: Re: Release Candidate Build for yocto-2.3.rc3 now available.
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
X-List-Received-Date: Mon, 01 May 2017 17:21:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-05-01 at 08:58 +0100, Richard Purdie wrote:
> On Sat, 2017-04-29 at 19:25 +0000, Poky Build User wrote:
> > 
> > A release candidate build for yocto-2.3.rc3 is now available at:
> > 
> > 
> >     http://autobuilder.yoctoproject.org/pub/releases/yocto-2.3.rc3
> > 
> > 
> > Please begin QA on this build as soon as possible.
> > 
> > 
> > Build hash information: 
> > meta-intel : 112643bbb731a6ccac7f4f5bde7f78d8fa2f9c15 
> > meta-qt4 : e120a2193be3982d55741fb9e51472db6ab9a5cd 
> > meta-mingw : 4bdb99650a053f254ccd158a6d0c25c80e79f6ee 
> > meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f 
> > meta-gplv2 : de001bd6bfcec943d274b649c62be6848cc9c3e6 
> > poky : a00f8981d8d2b361cc2c5d08d7cc6040c79af3cb 
> > 
> > \nThis is an automated message from\nThe Yocto Project
> > Autobuilder\nGit: git://git.yoctoproject.org/yocto-
> > autobuilder\nEmail: joshua.g.lock@intel.com 
> We've found another problem so please wait for an rc4 build.

The rc4 build is in progress on the autobuilder and should be done
soon. If you want to hit the ground running current pyro/master are the
correct revisions.

Cheers,

Richard

