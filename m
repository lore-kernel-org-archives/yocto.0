Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69575E00C70; Wed,  4 Jul 2018 02:30:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f50.google.com (mail-pl0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0137E0044F
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 02:30:17 -0700 (PDT)
Received: by mail-pl0-f50.google.com with SMTP id m16-v6so2410351pls.11
	for <yocto@yoctoproject.org>; Wed, 04 Jul 2018 02:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=nqqIAeYMZmdOJzGv1xKxNNBshbW9KZgCnvya0MvxDPo=;
	b=ChBBAAg85G1iEDQF4zpO+Hi2QnBblqvNZvL2LdJ9GkOqkXnBXoXz6ek31kFIpy6Pf/
	Bz8GFPRBL4z5H18XbouyqUrpbKlrEZvWDWbz1NmiKsiYY8mCpPHaHjy5pH6D2TcY6Iov
	1XnrNsHBBzhEjyVg7OwFafFPq6KPGX8WHZXJ7uRNoyWpksOXIaFXjLRTPrsDN+bz6rIw
	OFjMoRP5F71gJEvcoMt3y8+6F9VLffK0Pbo29krA2at4NHZ57Iwp6ylOJE7zIZEe+lJ1
	7DhcpctSPha0t3PZw7bpz+b0E9/z8Aqt744KKqUKrZC5qouF0Uw7AkjepQ31wQXmxrK8
	85wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=nqqIAeYMZmdOJzGv1xKxNNBshbW9KZgCnvya0MvxDPo=;
	b=cbc6YP4+B0JS5Ze/g1u4H+TcrYXSXNJ9shywmtwmBFmZK1HCvoZnaBDyXWYLbA4d9a
	ORZKroo6XO2CYhdUMrHMvuCVn+HABIU++duODNJueALkXPuKHA34DAlV+bZl8kjnuFCM
	O+5Ei2g6lkLQjTRqPYfs2/CtKnvC7Bsfq89UgcKJTVyJbVpc79adN+bY1PvzcVDn5WSf
	THe7KwWwxzHBx7Rv68cuRmw7zhZ+timeE07JjMZY4Yax0vCmIewGB3ZH7pODzCiOh8iT
	bi/OO2yeR1Ey+DpXKBQPwXAcdkoUFOm6VJmPfD/6O9DIuMVGTc/RReQSqYturN4/6EV9
	qNZg==
X-Gm-Message-State: APt69E0h4MtCJots+kV84L+JAIfzO+A1yFIPsXRR403AtY1dFQGdcoVR
	u57k/TrpzAbxxeWAvXZbkq8XPLLM
X-Google-Smtp-Source: AAOMgpdznrgUm/6DDrcL5OnCMPgjyVi5Ew+i09sVmjGhrilYn2XRXUDz/lQEuwtwvsqGKwF+ShE+YQ==
X-Received: by 2002:a17:902:9307:: with SMTP id
	bc7-v6mr1355419plb.292.1530696617278; 
	Wed, 04 Jul 2018 02:30:17 -0700 (PDT)
Received: from mail-pl0-f44.google.com (mail-pl0-f44.google.com.
	[209.85.160.44]) by smtp.gmail.com with ESMTPSA id
	y4-v6sm8361715pgy.18.2018.07.04.02.30.16 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Jul 2018 02:30:16 -0700 (PDT)
Received: by mail-pl0-f44.google.com with SMTP id y8-v6so911580plr.9
	for <yocto@yoctoproject.org>; Wed, 04 Jul 2018 02:30:16 -0700 (PDT)
X-Received: by 2002:a17:902:7481:: with SMTP id
	h1-v6mr1368796pll.183.1530696616202; 
	Wed, 04 Jul 2018 02:30:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:23cb:0:0:0:0 with HTTP; Wed, 4 Jul 2018 02:30:15
	-0700 (PDT)
From: Mirza Krak <mirza@mkrak.org>
Date: Wed, 4 Jul 2018 11:30:15 +0200
X-Gmail-Original-Message-ID: <CALw8SCV4AK3qV0U+YjUqe_P=Us5UE3S==fRZ5YgNn9rK2xckJw@mail.gmail.com>
Message-ID: <CALw8SCV4AK3qV0U+YjUqe_P=Us5UE3S==fRZ5YgNn9rK2xckJw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: sstate error
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
X-List-Received-Date: Wed, 04 Jul 2018 09:30:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.

I ran in to a sstate error. This appeared after a sudden power cut during b=
uild.

Something sstate.bbclass should be able to recover from? As it is now
I have to clear out my sstate to be able to build.

This is on rocko branch.

Log posted below.


$ bitbake core-image-minimal
Loading cache: 100%
|##########################################################################=
###########################################################################=
###########################|
Time: 0:00:00
Loaded 3209 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
###########################################################################=
#########################|
Time: 0:00:01
Parsing of 2378 .bb files complete (2377 cached, 1 parsed). 3210
targets, 209 skipped, 3 masked, 0 errors.
ERROR: Execution of event handler 'sstate_eventhandler2' failed
Traceback (most recent call last):
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/meta/classes/s=
state.bbclass",
line 1033, in sstate_eventhandler2(e=3D<bb.event.ReachableStamps object
at 0x7fb389f8ce10>):
                 for l in lines:
    >                (stamp, manifest, workdir) =3D l.split()
                     if stamp not in stamps and stamp not in preservestamps=
:
ValueError: need more than 1 value to unpack

ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/bitbake/lib/bb=
/command.py",
line 113, in runAsyncCommand
    self.cooker.updateCache()
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/bitbake/lib/bb=
/cooker.py",
line 1539, in updateCache
    bb.event.fire(event, self.databuilder.mcdata[mc])
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/bitbake/lib/bb=
/event.py",
line 222, in fire
    fire_class_handlers(event, d)
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/bitbake/lib/bb=
/event.py",
line 134, in fire_class_handlers
    execute_handler(name, handler, event, d)
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/bitbake/lib/bb=
/event.py",
line 106, in execute_handler
    ret =3D handler(event)
  File "/home/mirzak/project/src/var-fslc-yocto/sources/poky/meta/classes/s=
state.bbclass",
line 1033, in sstate_eventhandler2
    (stamp, manifest, workdir) =3D l.split()
ValueError: need more than 1 value to unpack


--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: https://mkrak.org

