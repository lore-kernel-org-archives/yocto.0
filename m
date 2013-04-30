Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C443E014FB
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 11:36:39 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hi8so2010541wib.15
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 11:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=r85Iawt2TT2mVMikuQXXt22sVhLKcoXKGsA2V2aGXvA=;
	b=I6KezrpYpl4TTikJJIclAPAKBuPZdEYkyCm/CugoYY412oWg0QlXX4WDzvuxMwBMfD
	wNXmoS3sdutvu9oiUMTtq9ojGimkpK8xtN4WoWYHonGm/n5juAVaeCuPBaw274pOEG6m
	HZUH4ysAXKl/YtkBtAGhSvu0Igf0iDENn8MoldPHXMx1d53jCuUjVMSoICyw0ASGIPO0
	KPuGpDanjgtdj6gicFJvKbaYm+qG22BkKZsrCbWJ1BnvB52cnCEMuEB6MCeVA3FHfpfL
	iBYeTcyCDLHPqFW2HhAmvBEnaP6yff1KcKV1vNuXjQCSmiK9gp+JajCSrynUQkJ0DmBe
	9QIA==
MIME-Version: 1.0
X-Received: by 10.194.109.227 with SMTP id hv3mr41259525wjb.32.1367346997894; 
	Tue, 30 Apr 2013 11:36:37 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Tue, 30 Apr 2013 11:36:37 -0700 (PDT)
Date: Tue, 30 Apr 2013 14:36:37 -0400
Message-ID: <CAHUNapTX5mQ4JEKrrwT+_Qqyc_RyFmEa48eKCs767Pe-mEk7uA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: suspending bitbake
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
X-List-Received-Date: Tue, 30 Apr 2013 18:36:39 -0000
Content-Type: multipart/alternative; boundary=089e0102ee281821b604db984862

--089e0102ee281821b604db984862
Content-Type: text/plain; charset=ISO-8859-1

I'm quite sure there used to be a time when I could send a SIGTSTP to
bitbake
(usually by doing a Ctrl-Z) and it along with its children would suspend.
This
doesn't seem to be the case anymore. Maybe it just so happened that the
subprocesses finished quickly after I gave the Ctrl-Z and no new ones were
started so it only looked like all subprocesses were also sent the suspend
signal?

In any case, I'm doing a "bitbake world" and am using 4 threads/parallel
builds. Before issuing the Ctrl-Z I have:

$ ps ax | grep bitbake
14781 pts/7    S+     0:00 /bin/sh
/home/trevor/devel/yocto/git/meta-poky/scripts/bitbake world
14804 pts/7    S+     0:08 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14858 pts/7    Sl+    0:57 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14900 pts/7    S      0:00 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14901 pts/7    S      0:00 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14913 pts/7    S      0:00 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
26560 pts/7    S      0:01 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world

afterwards I have:

14781 pts/7    T      0:00 /bin/sh
/home/trevor/devel/yocto/git/meta-poky/scripts/bitbake world
14804 pts/7    T      0:08 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14858 pts/7    Tl     0:57 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14900 pts/7    S      0:01 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14901 pts/7    S      0:00 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world
14913 pts/7    S      0:00 python
/home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world

Only some of the threads are suspended. Has this behaviour changed recently?

--089e0102ee281821b604db984862
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m quite sure there used to be a time when I could se=
nd a SIGTSTP to bitbake<div>(usually by doing a Ctrl-Z) and it along with i=
ts children would suspend. This</div><div>doesn&#39;t seem to be the case a=
nymore. Maybe it just so happened that the</div>
<div>subprocesses finished quickly after I gave the Ctrl-Z and no new ones =
were</div><div>started so it only looked like all subprocesses were also se=
nt the suspend</div><div>signal?<br><br>In any case, I&#39;m doing a &quot;=
bitbake world&quot; and am using 4 threads/parallel</div>
<div>builds. Before issuing the Ctrl-Z I have:<br><br>$ ps ax | grep bitbak=
e<br>14781 pts/7 =A0 =A0S+ =A0 =A0 0:00 /bin/sh /home/trevor/devel/yocto/gi=
t/meta-poky/scripts/bitbake world<br>14804 pts/7 =A0 =A0S+ =A0 =A0 0:08 pyt=
hon /home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world<br>
14858 pts/7 =A0 =A0Sl+ =A0 =A00:57 python /home/trevor/devel/yocto/git/meta=
-poky/bitbake/bin/bitbake world<br>14900 pts/7 =A0 =A0S =A0 =A0 =A00:00 pyt=
hon /home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world<br>149=
01 pts/7 =A0 =A0S =A0 =A0 =A00:00 python /home/trevor/devel/yocto/git/meta-=
poky/bitbake/bin/bitbake world<br>
14913 pts/7 =A0 =A0S =A0 =A0 =A00:00 python /home/trevor/devel/yocto/git/me=
ta-poky/bitbake/bin/bitbake world<br>26560 pts/7 =A0 =A0S =A0 =A0 =A00:01 p=
ython /home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world</div=
><div><br></div>
<div style>afterwards I have:</div><div style><br></div><div style><div>147=
81 pts/7 =A0 =A0T =A0 =A0 =A00:00 /bin/sh /home/trevor/devel/yocto/git/meta=
-poky/scripts/bitbake world</div><div>14804 pts/7 =A0 =A0T =A0 =A0 =A00:08 =
python /home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake world</di=
v>
<div>14858 pts/7 =A0 =A0Tl =A0 =A0 0:57 python /home/trevor/devel/yocto/git=
/meta-poky/bitbake/bin/bitbake world</div><div>14900 pts/7 =A0 =A0S =A0 =A0=
 =A00:01 python /home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake =
world</div><div>
14901 pts/7 =A0 =A0S =A0 =A0 =A00:00 python /home/trevor/devel/yocto/git/me=
ta-poky/bitbake/bin/bitbake world</div><div>14913 pts/7 =A0 =A0S =A0 =A0 =
=A00:00 python /home/trevor/devel/yocto/git/meta-poky/bitbake/bin/bitbake w=
orld</div><div><br>
</div><div style>Only some of the threads are suspended. Has this behaviour=
 changed recently?</div></div></div>

--089e0102ee281821b604db984862--
