Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07BADE00C9C; Wed, 16 Sep 2015 07:14:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0187.hostedemail.com
	[216.40.44.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5977E00B74
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 07:13:58 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 7DDF1268E12;
	Wed, 16 Sep 2015 14:13:55 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: foot06_795e6d7bd3a04
X-Filterd-Recvd-Size: 1711
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Wed, 16 Sep 2015 14:13:53 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
	<55F846D8.4020808@gmail.com>
	<CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
	<55f9358a.44f2440a.38b16.7e0cSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0LZr4TZ48ctS7U8EwUreSz7GZ8JuB_Y0Kody3LKGp2o9cw@mail.gmail.com>
In-Reply-To: <CAJTo0LZr4TZ48ctS7U8EwUreSz7GZ8JuB_Y0Kody3LKGp2o9cw@mail.gmail.com>
Date: Wed, 16 Sep 2015 15:13:47 +0100
Organization: SDC Systems Limited
Message-ID: <010b01d0f089$e87a7670$b96f6350$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdDwZs7DO/LC+SBhQbKEM9gY5tl7nAAIuSKA
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
X-List-Received-Date: Wed, 16 Sep 2015 14:14:02 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Ross wrote...

> > Now to figure out why the tar.gz file for the root file system has =
grown=20
> > from just under 3MiB to almost 15MiB!
>=20
> That would be systemd... it pulls in a lot of libraries that are =
fairly common
> on complex systems but on a minimal image less so.

Back to plan A then, trying to figure out how to get Busybox init and =
mdev as the defaults in the image.

Thanks for the feedback!

Andy.


