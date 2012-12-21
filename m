Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35477E0144E
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 10:57:39 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id F2F274236; Fri, 21 Dec 2012 18:57:36 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 81E524216
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 18:57:36 +0000 (GMT)
From: Tim Coote <tim+yoctoproject.org@coote.org>
Message-Id: <24B0C6F3-41F1-4A4D-918A-05EDB584CD74@coote.org>
Date: Fri, 21 Dec 2012 18:57:36 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Subject: cannot bitbake a java runtime
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
X-List-Received-Date: Fri, 21 Dec 2012 18:57:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hullo
I'm trying to get a java runtime on a qemu arm image. I'm following =
this: http://bit.ly/UW7fVs, which I think is the right thing to do. =
However, when I get to:

bitbake openjdk-6

I get the following error:

ERROR: Nothing PROVIDES 'giflib' (but =
/opt/poky/poky-danny-8.0/meta-java/recipes-core/openjdk/openjdk-6_6b24-1.1=
1.5.bb DEPENDS on or otherwise requires it)
ERROR: Required build target 'openjdk-6' has no buildable providers.
Missing or unbuildable dependency chain was: ['openjdk-6', 'giflib']


Am I using the wrong documentation, or is there a missing package?

Any pointers welcome.

Tim=

