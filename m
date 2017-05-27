Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E152E0085D; Sat, 27 May 2017 03:07:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	PLING_QUERY,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87CF1E0077F
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 03:07:31 -0700 (PDT)
Received: from elrond.localnet ([95.89.254.87]) by mail.gmx.com (mrgmx002
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0MUZG7-1dNau32haF-00RIFv;
	Sat, 27 May 2017 12:07:20 +0200
From: Jan-Simon =?ISO-8859-1?Q?M=F6ller?= <dl9pf@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 27 May 2017 12:07:19 +0200
Message-ID: <2548656.qJddsPhLGk@elrond>
User-Agent: KMail/4.14.10
	(Linux/4.11.0-rc6-jsm-cowfix7-20170415-1209-00180-g1bf4b1268e66;
	KDE/4.14.25; x86_64; ; )
MIME-Version: 1.0
X-Provags-ID: V03:K0:0zlEUrhoIYplME/Utz4DkssCdYJkZ3onN0D/eCkS7gMJzFXxUH9
	wEdumY72KH661I9pG78VzUF9GwCTaFOmkiUrn8gGN2vWnwUdmiWw0Ej28QZ4b2GYezQJyI/
	l0X38cq4pbp3TEoOsG+CTIxywx/4/ZmfYesCeIit+9q2YwFLkHW1p0L6PF/KYZJy4SYKjZW
	y9tG9TJeBp4j2WJ9jkoRg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:DmfVMpRql4A=:O8BeQLTe1fhXN/n46Ya7Pf
	BM96CFrT1NQGxGTTIRsHNuw19qo8KkXNpVbd1c0OkwbMWNIbMYk47+GoGoW8xyPF1lvmnvFR6
	kX6uMsjqRKpVzAUF/RzLH9OHrXMBC0fiFzThmpUdwVfuirydhXBt2KW3XYA5VzsAv8Wn++kI6
	OnnJyTgKWuBc9rmjPjEQJixDs9+n18iVY8d0xz8tCaFBJIahKAgpsi2pib4o656/WFb6dfpfT
	c0oPJZSrZ4RIW39OtXAr3JIPbmVd0bH9+pTd7q4vtTTY6wnsShxAos/XoPtF08YCMGe9Kn3tz
	i3KzXqqUtQKJT0E9YKkrA6YW3dulSINySYeatHfuWZSunDGXpnNeM9YVt3aJaYQ1DG/LvqW/Q
	0a0wf8xuMY/bWgoS3q5eulILYblr9Lyyo3knGsFQH8FK13xDJoo453TOK00OHw0FiygS9jpF8
	FI3iN8698krDATYAMkS5Gp7Xex3cJky38i+Y9hzgalOiAa25ORu6Zx8mhQvi7An4Ql7j8CNu7
	DaGpJ1RQoZw8XTNII0BbeLVJ1sMfMIxAPwnihHdkN/Mfc9XBmPxN/rvm4AavOOvZx2tFWl2cD
	M89J9Nf8/cwJs3vPx1QMjwCBk4MJckt/NttmZp8VurqP3sUfwM81WYrHyCD1pZvyFKXIoT2g4
	1HAVSuaaLTz5Er9DSf+AJt0YfMhhlAf7zcn24wmGlJsfodvyIbni+zbtENPExTxwE58e4xGjR
	Ueye7XO1NihvjLxyvlzGT3Wvjex6o6muZYxx4qoutAffWznbuYHrSVbdW+d54L8Ein5ckjGYh
	4f8vgxD
Subject: Dependency change : work-shared: do_preconfigure ?!?! [morty]
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
X-List-Received-Date: Sat, 27 May 2017 10:07:40 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi !

I have a morty-based project here which I already built once and I'm no=
w about to rebuild it without any modifications on the same machine.

I checked with bitbake-whatchanged before starting any build and every =
time I see this:
=3D=3D=3D Dependencies changed: (1 tasks)
  work-shared: do_preconfigure

=3D=3D=3D Summary: (6626 changed, 4 unchanged)
Newly added: 6625
PV changed: 0
PR changed: 0
Dependencies changed: 1




I'd actually expect way less to be 'changed' as to what bitbake-whatcha=
nged tells me.



---------------------

bitbake-whatchanged -v  shows this

=3D=3D=3D The verbose changes of work-shared.do_preconfigure:
runtaskdeps changed from=20
['autoconfautoconf_2.69.bb.do_populate_sysroot:virtual:native', 'gccgcc=
-source_6.2.bb.do_patch', 'gnu-configgnu-config_git.bb.do_populate_sysr=
oot:virtual:native'] to ['autoconfautoconf_2.69.bb.do_populate_sysroot:=
virtual:native', 'gccgcc-source_6.2.bb.do_patch', 'gnu-configgnu-config=
_git.bb.do_populate_sysroot:virtual:native']

virtual:native:/home/scratch/build/poky/meta/recipes-devtools/autoconf/=
autoconf_2.69.bb.do_populate_sysroot with hash 6ed48db009438450fe348243=
309b85b5
 changed to
virtual:native:/home/scratch/build/poky/meta/recipes-devtools/autoconf/=
autoconf_2.69.bb.do_populate_sysroot with hash d09f612d8b00056740d9cccf=
723d0cab

virtual:native:/home/scratch/build/poky/meta/recipes-devtools/gnu-confi=
g/gnu-config_git.bb.do_populate_sysroot with hash 9beadb38a5586266137d1=
2754a7da0e2
 changed to
virtual:native:/home/scratch/build/poky/meta/recipes-devtools/gnu-confi=
g/gnu-config_git.bb.do_populate_sysroot with hash 2b201b2787194e74f97f2=
5d9908dfd61

Hash for dependent task gnu-configgnu-config_git.bb.do_populate_sysroot=
:virtual:native changed from 9beadb38a5586266137d12754a7da0e2 to 2b201b=
2787194e74f97f25d9908dfd61
Hash for dependent task autoconfautoconf_2.69.bb.do_populate_sysroot:vi=
rtual:native changed from 6ed48db009438450fe348243309b85b5 to d09f612d8=
b00056740d9cccf723d0cab


What puzzles me is the double PN in the task names ... e.g.
'autoconfautoconf' . And of course the change of the hash.



---------------------



bitbake-diffsigs /home/dl9pf/sstate/universal-4.8/6e/sstate:autoconf-na=
tive:x86_64-linux:2.69:r11:x86_64:3:6ed48db009438450fe348243309b85b5_po=
pulate_sysroot.tgz.siginfo \
                 /home/dl9pf/sstate/universal-4.8/67/sstate:autoconf-na=
tive:x86_64-linux:2.69:r11:x86_64:3:67a892e8e82a93b7f1486fa15bd9d73d_po=
pulate_sysroot.tgz.siginfo

runtaskdeps changed from ['autoconfautoconf_2.69.bb.do_install:virtual:=
native'] to ['autoconfautoconf_2.69.bb.do_install:virtual:native']

virtual:native:/home/scratch/buildl/poky/meta/recipes-devtools/autoconf=
/autoconf_2.69.bb.do_install with hash 95e60debb58799b95ee19676069e2b6d=

 changed to
virtual:native:/home/scratch/build/poky/meta/recipes-devtools/autoconf/=
autoconf_2.69.bb.do_install with hash 2087736600facfa2fd0553417c7b3723

Dependency on task autoconfautoconf_2.69.bb.do_install:virtual:native w=
as added with hash 2087736600facfa2fd0553417c7b3723
Dependency on task autoconfautoconf_2.69.bb.do_install:virtual:native w=
as removed with hash 95e60debb58799b95ee19676069e2b6d



gnu-config hash 9beadb is there but there is no 2b201b27,


Hints ?=20

--=20
--
Jan-Simon M=F6ller
dl9pf@gmx.de

