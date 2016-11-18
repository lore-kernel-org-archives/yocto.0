Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 097ACE0089B; Fri, 18 Nov 2016 12:49:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.27.42.1 listed in dnsbl.sorbs.net]
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80271E006B4
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 12:49:15 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 2DD70B0051B
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 21:49:13 +0100 (CET)
Date: Fri, 18 Nov 2016 21:49:12 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <681682597.333724386.1479502152939.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <1575077954.333680666.1479501389882.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: devshell, KDE konsole & python3 TypeError
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
X-List-Received-Date: Fri, 18 Nov 2016 20:49:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=20

I'm on Morty and I hit the following bugs when trying to launch a devshell=
=E2=80=A6 I did a quick search and don't think they are solved.


In poky/meta/lib/oe/terminal.py, the option "--nofork" doesn't exist in my =
konsole v16.08.
I replaced it by option "--new-tab", which solved the problem.

And with my python 3.5.2, the oe.terminal.ExecutionError triggers another e=
xception when printing the output:

File: '/mnt/Yocto/sources/poky/bitbake/lib/bb/process.py', lineno: 46, func=
tion: __str__
     0042:        message =3D ""
     0043:        if self.stderr:
     0044:            message +=3D self.stderr
     0045:        if self.stdout:
 *** 0046:            message +=3D self.stdout
     0047:        if message:
     0048:            message =3D ":\n" + message
     0049:        return (CmdError.__str__(self) +
     0050:                " with exit code %s" % self.exitcode + message)
Exception: TypeError: Can't convert 'bytes' object to str implicitly


If this can help others=E2=80=A6

Michel

