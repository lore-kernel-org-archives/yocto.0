Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0DDF4C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 22:03:31 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6S33UoV021585
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 22:03:30 -0500
From: Kumar Gala <galak@kernel.crashing.org>
Date: Wed, 27 Jul 2011 22:03:29 -0500
Message-Id: <A8053892-60B6-485C-AE89-96157C57A8BE@kernel.crashing.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: first stage not building in parallel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jul 2011 03:03:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Is it normal that the first stage (native) portion does not seem to =
either deal with BB_NUMBER_THREADS or PARALLEL_MAKE?

- k=

