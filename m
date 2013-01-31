Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E81CFE011AB
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 03:16:34 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id 5A68442B1; Thu, 31 Jan 2013 11:16:32 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id F37854265
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 11:16:31 +0000 (GMT)
From: Tim Coote <tim+yoctoproject.org@coote.org>
Message-Id: <586A6A48-0617-481E-8879-1AB5EC55F3DA@coote.org>
Date: Thu, 31 Jan 2013 11:16:37 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Subject: what's the best distro to pick for adding packages to yocto
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
X-List-Received-Date: Thu, 31 Jan 2013 11:16:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hullo
I'm trying to add a package to yocto (an AMQP implementation). There are =
various packaged versions, so I started with the one that I'm most =
familiar (RH). However, it's pretty clear that yocto's not based on that =
as the initscripts are totally different and missing the framework =
(there isn't even a /etc/rc.d/init.d, although it looks like there used =
to be).

What's the best starting point for picking a prepackaged version for a =
distro? debian? suse?

thanks
Tim=

