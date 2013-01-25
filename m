Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 353A6E0151F
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 04:43:26 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id 6953448CE; Fri, 25 Jan 2013 12:43:24 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 00E1243BE
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 12:43:23 +0000 (GMT)
From: Tim Coote <tim+yoctoproject.org@coote.org>
Message-Id: <4A019838-F11E-4257-90BF-08A93B096E15@coote.org>
Date: Fri, 25 Jan 2013 12:43:30 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Subject: help sought with migrating oe-classic recipe
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
X-List-Received-Date: Fri, 25 Jan 2013 12:43:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hullo

I'm trying to put an amqp client into a yocto build. My preferred choice =
is rabbitmq, which requires getting Erlang into the build. I'm starting =
with an old recipe, which is based on openembedded classic =
(http://bit.ly/UpGACX, which is based on http://bit.ly/UpGFGB, with =
updates for newer releases.)

I've added in the oe-core migrations from here: http://bit.ly/XEI9u6

I'm running into what I believe are incomplete cross-compile problems:
[code]
bitbake -v -b =
../meta-openembedded/meta-oe/recipes-extended/erlang/erlang_R15B.bb 2>&1 =
|less
[/code]

to just build the package. Fails when the python script checks for =
unsafe cross compile error messages (around line 777 of =
danny-8.0/meta/classes/insane.bbclass):
[code]
         statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe =
for cross-compilation' %s > /dev/null" % \
                     os.path.join(root,"config.log")
         if "config.log" in files:
             if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
[/code]
the grep finds:

[code]
=
/opt/poky/mybuilds/tmp/sysroots/i686-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: warning: library search =
path "/lib" is unsafe for cross-compilation

[/code]


. The bad message occurs just after this in the log:
[code]
configure:11485: result: no
configure:11518: Extending the search to include /lib
configure:11520: checking for dlpi_open in -ldlpi
[/code]

and seems to me to be due to something adding /lib into the library =
search path. I'm not clear what's the source of this problem, nor how to =
narrow it down. I'd guess that somehow, /lib should be scoped out of =
library searches for the autoconf tools.

Any ideas and any pointers on where I can find relevant documentation?

cheers

Tim=20=

