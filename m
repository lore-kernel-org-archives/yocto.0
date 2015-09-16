Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86FF4E00D3C; Wed, 16 Sep 2015 02:25:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0152.hostedemail.com
	[216.40.44.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45AAAE00C06
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 02:25:08 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 1935E12BCFE;
	Wed, 16 Sep 2015 09:25:07 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: doll80_499d4020a130c
X-Filterd-Recvd-Size: 2205
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Wed, 16 Sep 2015 09:25:05 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Burton, Ross'" <ross.burton@intel.com>,
	"'Trevor Woerner'" <twoerner@gmail.com>
References: <55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
	<55F846D8.4020808@gmail.com>
	<CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
In-Reply-To: <CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
Date: Wed, 16 Sep 2015 10:24:59 +0100
Organization: SDC Systems Limited
Message-ID: <008c01d0f061$904fd7b0$b0ef8710$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdDwU4NTPVHD7dZyRLGZcOm1AZIkgQADV5mA
Cc: yocto@yoctoproject.org
Subject: Re: Dumping sysvinit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Sep 2015 09:25:11 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Hello all,

> > I think if you remove/comment-out the last of those 3 lines or =
install
> > your host's SDL-devel package you'll solve this issue (?)
> >
> Yes, that's right.  Either disable the graphical qemu support, or =
install
> the host's sdl-devel package so it can build.

On my CentOS 6.7 host system running the package manager reports that =
SDL-devel is already installed:

# yum install SDL-devel
Package SDL-devel-1.2.14-6.el6.x86_64 already installed and latest =
version
Nothing to do

This is probably something to do with the fact that in order to get Fido =
to build I have to use the devtoolset-2.1 package to get a recent gcc =
version and it probably isn't aware of the standard SDL-devel libraries.

Commenting out just the last line of the 3 QEMU/SDL related lines throws =
out a couple of errors whereas removing all of them gives me a build.

Now to figure out why the tar.gz file for the root file system has grown =
from just under 3MiB to almost 15MiB!

Thanks for all the help and advice.

Andy.





