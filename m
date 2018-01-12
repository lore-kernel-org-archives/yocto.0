Return-Path: <varekpaf@seznam.cz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6052EE00E08; Fri, 12 Jan 2018 05:31:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (varekpaf[at]seznam.cz)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [77.75.76.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 142 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Jan 2018 05:31:29 PST
Received: from mxe2.seznam.cz (mxe2.seznam.cz [77.75.76.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09207E0056D
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 05:31:28 -0800 (PST)
Received: from email.seznam.cz
	by email-smtpc7b.ng.seznam.cz (email-smtpc7b.ng.seznam.cz
	[10.23.13.195]) id 5d7e8079e64909395d238b32;
	Fri, 12 Jan 2018 14:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
	t=1515763887; bh=yesYIuhTUevoGAQxqQZRXFRvRq2LyuCPdlXpSrd7zYY=;
	h=Received:From:To:Subject:Date:Message-Id:Mime-Version:X-Mailer:
	Content-Type;
	b=Cvh8JfI2KmCrLOYXYqmTFy+6je39WASBUgGzCT7Ec4PFjiTcR2p0z+Qxa5SFB7rRm
	f7lIaieE7A3AoTuYrmdR60i3kdahpa1bvLdK0LHMkj6I4rrHoR3qTvnNDTc5QIwITF
	KuIPJTekCgPYGrrDTtVJnyXbWOHo/vrDRjuHPBRE=
Received: from unknown ([::ffff:83.240.65.44])
	by email.seznam.cz (szn-ebox-4.5.317) with HTTP;
	Fri, 12 Jan 2018 14:29:00 +0100 (CET)
From: "Pavlina Varekova" <varekpaf@seznam.cz>
To: <yocto@yoctoproject.org>,
	"Mark Hatle" <mark.hatle@windriver.com>
Date: Fri, 12 Jan 2018 14:29:00 +0100 (CET)
Message-Id: <3Q{.NOzj.3TQa{fbQCzj.1QMBWS@seznam.cz>
Mime-Version: 1.0 (szn-mime-2.0.33)
X-Mailer: szn-ebox-4.5.317
Subject: pseudo: symbolic links in pseudo
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
X-List-Received-Date: Fri, 12 Jan 2018 13:31:30 -0000
Content-Type: multipart/alternative;
	boundary="=_4d6db27379f732b62926e431=1dc2b03a-a0bd-53ec-9415-addb367ae385_="

--=_4d6db27379f732b62926e431=1dc2b03a-a0bd-53ec-9415-addb367ae385_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have an issue getting pseudo working with symbolic links. Pseudo does no=
t 
see files linked by "ln -s" in jail. (It emits warning: No such file or =

directory)

----
How to reproduce it:

# mkdir -p /dir1/jail
# cd /dir1/jail
# ln -s /bin/ls ./ls4
# ls -la
total 140
drwxr-xr-x. 2 root root=C2=A0=C2=A0 4096 Jan 12 03:37 .
drwxr-xr-x. 3 root root=C2=A0=C2=A0 4096 Jan 12 03:37 ..
lrwxrwxrwx. 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7 Jan 12 03:37 ls4 -=
> /bin/ls
# /pseudorepo/bin/pseudo=C2=A0 -r "/dir1/jail" -P /pseudorepo/
bash-4.3# /ls4
bash: /ls4: No such file or directory
----

If the binary is copied, pseudo works correctly.
Interesting is that if the jail directory is directly in /root/ (/root/any=
_
one_dir) then files linked by ln -s are seen by pseudo in jail correctly. =

If the jail is e.g. /home/tester (or some more nested dir), then ln -s doe=
s 
not work correctly.

Is this pseudo behavior intentional? Is there any classic approach to move=
 /
dev/urandom file into the jail without root permissions, for pseudo?

Best regards
Pavlina Moravcova Varekova

--=_4d6db27379f732b62926e431=1dc2b03a-a0bd-53ec-9415-addb367ae385_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body>Hello,<br><br>I have an issue getting pseudo working with symb=
olic links. Pseudo does not see files linked by "ln -s" in jail. (It emits=
 warning: No such file or directory)<br><br>----<br>How to reproduce it:<b=
r><br># mkdir -p /dir1/jail<br># cd /dir1/jail<br># ln -s /bin/ls ./ls4<br=
># ls -la<br>total 140<br>drwxr-xr-x. 2 root root&nbsp;&nbsp; 4096 Jan 12 =
03:37 .<br>drwxr-xr-x. 3 root root&nbsp;&nbsp; 4096 Jan 12 03:37 ..<br>lrw=
xrwxrwx. 1 root root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Jan 12 03:37 ls4 -&gt=
; /bin/ls<br># /pseudorepo/bin/pseudo&nbsp; -r "/dir1/jail" -P /pseudorepo=
/<br>bash-4.3# /ls4<br>bash: /ls4: No such file or directory<br>----<br><b=
r>If the binary is copied, pseudo works correctly.<br>Interesting is that =
if the jail directory is directly in /root/ (/root/any_one_dir) then files=
 linked by ln -s are seen by pseudo in jail correctly. <br>If the jail is =
e.g. /home/tester (or some more nested dir), then ln -s does not work corr=
ectly.<br><br>Is this pseudo behavior intentional? Is there any classic ap=
proach to move /dev/urandom file into the jail without root permissions, f=
or pseudo?<br><br>Best regards<br>Pavlina Moravcova Varekova<br></body></h=
tml>

--=_4d6db27379f732b62926e431=1dc2b03a-a0bd-53ec-9415-addb367ae385_=--
