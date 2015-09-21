Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53779E00E86; Mon, 21 Sep 2015 03:48:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0181.hostedemail.com
	[216.40.44.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22017E0073C
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 03:48:26 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 2ED6D268E12;
	Mon, 21 Sep 2015 10:48:25 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: flag14_496914d05ed02
X-Filterd-Recvd-Size: 2193
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Mon, 21 Sep 2015 10:48:24 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Mike Looijmans'" <mike.looijmans@topic.nl>
References: <55F822C0.8030404@windriver.com>	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>	<55F846D8.4020808@gmail.com>	<CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>	<55f9358a.44f2440a.38b16.7e0cSMTPIN_ADDED_BROKEN@mx.google.com>	<CAJTo0LZr4TZ48ctS7U8EwUreSz7GZ8JuB_Y0Kody3LKGp2o9cw@mail.gmail.com>	<010b01d0f089$e87a7670$b96f6350$@pont@sdcsystems.com>
	<55FA68E9.9090904@topic.nl>
In-Reply-To: <55FA68E9.9090904@topic.nl>
Date: Mon, 21 Sep 2015 11:48:22 +0100
Organization: SDC Systems Limited
Message-ID: <00a001d0f45b$09ff9350$1dfeb9f0$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdDxGOGWWhIzMYJwTwerzBGwowpl9QDQPjBQ
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
X-List-Received-Date: Mon, 21 Sep 2015 10:48:29 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Hi Mike,

> > Back to plan A then, trying to figure out how to get Busybox init and
> mdev as the defaults in the image.
> 
> Create your own distro, here's an example that uses mdev:
> 
> https://github.com/topic-embedded-products/meta-
> topic/blob/master/conf/distro/tiny.conf

Thanks for pointing me in the direction of this.  I have cloned it and used
it as the basis of my distro, tweaked it a bit and it is starting to behave
how I want.  There are a few anomalies that I haven't managed to figure out
yet...

Despite having VIRTUAL-RUNTIME_initscripts = "" the root file system still
contains /etc/rcX.d directories

On other embedded Linux projects that boot using Busybox init the
/etc/init.d directory contained the individual service start and kill files
e.g. S50-dropbear and K50-dropbear but I can't see how to make Yocto
populate this directory in that form.

Thoughts and guidance from anyone would be much appreciated!

Andy.



