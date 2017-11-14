Return-Path: <varekpaf@seznam.cz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49809E00DCE; Tue, 14 Nov 2017 03:55:46 -0800 (PST)
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
	*      [77.75.76.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mxb2.seznam.cz (mxb2.seznam.cz [77.75.76.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6F59E00D26
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 03:55:44 -0800 (PST)
Received: from email.seznam.cz
	by email-smtpc5b.ng.seznam.cz (email-smtpc5b.ng.seznam.cz
	[10.23.13.135]) id 6d938cb7d6a405f76dce87fc;
	Tue, 14 Nov 2017 12:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
	t=1510660539; bh=dMMUxUDQoseTA1yCKCC+B7nfFVQ2roDdtBopVhN44Tg=;
	h=Received:From:To:Cc:Subject:Date:Message-Id:Mime-Version:X-Mailer:
	Content-Type;
	b=NGdh3oCT/vhSu3gAYD5A7nQjJb45J7eDHTSYfIwFonSCM4iBGmq4sS/0W27xahOjU
	rtvfHbWX/ALCo6RFpK5INP0NBEcuZjD9+5ocdhCwPWiP439VqOteRGsliK8Z3UEyOg
	JDI8YTF9gApE+ed3BBCwzt23E+2wM3QvXFVRQTRA=
Received: from unknown ([::ffff:83.240.65.44])
	by email.seznam.cz (szn-ebox-4.5.295) with HTTP;
	Tue, 14 Nov 2017 12:55:32 +0100 (CET)
From: "Pavlina Varekova" <varekpaf@seznam.cz>
To: <yocto@yoctoproject.org>
Date: Tue, 14 Nov 2017 12:55:32 +0100 (CET)
Message-Id: <7bW.NNVD.1oNVEXa0zPC.1Q2jcq@seznam.cz>
Mime-Version: 1.0 (szn-mime-2.0.33)
X-Mailer: szn-ebox-4.5.295
Subject: pseudo - problems with /dev/null
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
X-List-Received-Date: Tue, 14 Nov 2017 11:55:46 -0000
Content-Type: multipart/alternative;
	boundary="=_619ae9cf2ae2786d1f8a2041=b90c1b1c-b3b3-574d-bbc1-bb77c7ce6609_="

--=_619ae9cf2ae2786d1f8a2041=b90c1b1c-b3b3-574d-bbc1-bb77c7ce6609_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,
/dev/null in pseudo with -r does not work as expected (see commands below)=
. 
For example fakechroot behaves as I expected (see below). Can I obtain 
similar behavior like fakechroot using pseudo?
Thank you.
Pavlina
------------------------------------------
root# /root/ps_dir/ps3/pseudo/bin/pseudo=C2=A0 -r "/root/repos/repo05/rpm/=
tests/
testing" -P /root/ps_dir/ps3/pseudo/

bash-4.2# /bin/ls -la /dev/
total 4
drwxr-xr-x=C2=A0 2 root root=C2=A0=C2=A0 69 Nov 14 12:15 .
drwxr-xr-x 13 root root 4096 Nov 14 12:15 ..
lrwxrwxrwx=C2=A0 1 root root=C2=A0=C2=A0=C2=A0 9 Nov 14 12:15 null -> /dev=
/null
lrwxrwxrwx=C2=A0 1 root root=C2=A0=C2=A0 11 Nov 14 12:15 stderr -> /dev/st=
derr
lrwxrwxrwx=C2=A0 1 root root=C2=A0=C2=A0 10 Nov 14 12:15 stdin -> /dev/std=
in
lrwxrwxrwx=C2=A0 1 root root=C2=A0=C2=A0 11 Nov 14 12:15 stdout -> /dev/st=
dout
lrwxrwxrwx=C2=A0 1 root root=C2=A0=C2=A0 12 Nov 14 12:15 urandom -> /dev/u=
random

bash-4.2# echo "ddddd" > /dev/null 
bash: /dev/null: Is a directory

-------------------------------------------
FAKECHROOT_BASE=3D"/root/repos/repo05/rpm/tests/testing" fakechroot

bash-4.2# /bin/ls -la /dev/
total 4
drwxr-xr-x.=C2=A0 2 root root=C2=A0=C2=A0 69 Nov 14 12:15 .
drwxr-xr-x. 13 root root 4096 Nov 14 12:15 ..
lrwxrwxrwx.=C2=A0 1 root root=C2=A0=C2=A0=C2=A0 9 Nov 14 12:15 null -> /de=
v/null
lrwxrwxrwx.=C2=A0 1 root root=C2=A0=C2=A0 11 Nov 14 12:15 stderr -> /dev/s=
tderr
lrwxrwxrwx.=C2=A0 1 root root=C2=A0=C2=A0 10 Nov 14 12:15 stdin -> /dev/st=
din
lrwxrwxrwx.=C2=A0 1 root root=C2=A0=C2=A0 11 Nov 14 12:15 stdout -> /dev/s=
tdout
lrwxrwxrwx.=C2=A0 1 root root=C2=A0=C2=A0 12 Nov 14 12:15 urandom -> /dev/=
urandom

bash-4.2# echo "ddd" > /dev/null 

--=_619ae9cf2ae2786d1f8a2041=b90c1b1c-b3b3-574d-bbc1-bb77c7ce6609_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body>Hi,<br>/dev/null in pseudo with -r does not work as expected (=
see commands below). For example fakechroot behaves as I expected (see bel=
ow). Can I obtain similar behavior like fakechroot using pseudo?<br>Thank =
you.<br>Pavlina<br>------------------------------------------<br>root# /ro=
ot/ps_dir/ps3/pseudo/bin/pseudo&nbsp; -r "/root/repos/repo05/rpm/tests/tes=
ting" -P /root/ps_dir/ps3/pseudo/<br><br>bash-4.2# /bin/ls -la /dev/<br>to=
tal 4<br>drwxr-xr-x&nbsp; 2 root root&nbsp;&nbsp; 69 Nov 14 12:15 .<br>drw=
xr-xr-x 13 root root 4096 Nov 14 12:15 ..<br>lrwxrwxrwx&nbsp; 1 root root&=
nbsp;&nbsp;&nbsp; 9 Nov 14 12:15 null -&gt; /dev/null<br>lrwxrwxrwx&nbsp; =
1 root root&nbsp;&nbsp; 11 Nov 14 12:15 stderr -&gt; /dev/stderr<br>lrwxrw=
xrwx&nbsp; 1 root root&nbsp;&nbsp; 10 Nov 14 12:15 stdin -&gt; /dev/stdin<=
br>lrwxrwxrwx&nbsp; 1 root root&nbsp;&nbsp; 11 Nov 14 12:15 stdout -&gt; /=
dev/stdout<br>lrwxrwxrwx&nbsp; 1 root root&nbsp;&nbsp; 12 Nov 14 12:15 ura=
ndom -&gt; /dev/urandom<br><br>bash-4.2# echo "ddddd" &gt; /dev/null <br>b=
ash: /dev/null: Is a directory<br><br>------------------------------------=
-------<br>FAKECHROOT_BASE=3D"/root/repos/repo05/rpm/tests/testing" fakech=
root<br><br>bash-4.2# /bin/ls -la /dev/<br>total 4<br>drwxr-xr-x.&nbsp; 2 =
root root&nbsp;&nbsp; 69 Nov 14 12:15 .<br>drwxr-xr-x. 13 root root 4096 N=
ov 14 12:15 ..<br>lrwxrwxrwx.&nbsp; 1 root root&nbsp;&nbsp;&nbsp; 9 Nov 14=
 12:15 null -&gt; /dev/null<br>lrwxrwxrwx.&nbsp; 1 root root&nbsp;&nbsp; 1=
1 Nov 14 12:15 stderr -&gt; /dev/stderr<br>lrwxrwxrwx.&nbsp; 1 root root&n=
bsp;&nbsp; 10 Nov 14 12:15 stdin -&gt; /dev/stdin<br>lrwxrwxrwx.&nbsp; 1 r=
oot root&nbsp;&nbsp; 11 Nov 14 12:15 stdout -&gt; /dev/stdout<br>lrwxrwxrw=
x.&nbsp; 1 root root&nbsp;&nbsp; 12 Nov 14 12:15 urandom -&gt; /dev/urando=
m<br><br>bash-4.2# echo "ddd" &gt; /dev/null <br><br></body></html>

--=_619ae9cf2ae2786d1f8a2041=b90c1b1c-b3b3-574d-bbc1-bb77c7ce6609_=--
