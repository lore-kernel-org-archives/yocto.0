Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A6A5E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:48:54 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj1so6582371pad.28
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=Tbf7/7TxOB8sn7DHqJCJeMhIwB9kLl6ABuvzk2JaLXI=;
	b=lh/eLRg94GislGxjTvKiDAHsE1QkOZqXIisHkyjrIjCzYZokn5DhdHFqgtiLYQ0Yh9
	+EPPSfiUvfOBdgkbKbXqFlTzVOVkTOFpSndIfO89sjdneBRibuOc+mJ+7/PJ32tSuQB7
	QlzXKqRCW4KUySyu/oSClLoOEjz4Po7IwgoqchV5RuXO9tqbzjIHxC8tJaCUeXkvcsvZ
	pAJIRM74MRwekFS1FImWNWdICKBvv1W+cYDYnqTzSlL6xNUyrggPqDB020RAT1l5matD
	fOG11RWYZb2OVHjsHCwDV2W687Jup55lNIWxgYZc8UpXqtS3x63JgJeKWjrlY9NCaBAp
	ngzA==
X-Received: by 10.68.228.230 with SMTP id sl6mr28626837pbc.98.1377712133969;
	Wed, 28 Aug 2013 10:48:53 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id
	om2sm32555010pbb.34.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 10:48:53 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
Date: Wed, 28 Aug 2013 21:48:47 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
X-Mailer: Apple Mail (2.1498)
Subject: How to work with linux-yocto kernel
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
X-List-Received-Date: Wed, 28 Aug 2013 17:48:57 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_059B3E2E-7C9B-4215-A30D-B35B531E973B"

--Apple-Mail=_059B3E2E-7C9B-4215-A30D-B35B531E973B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
     I just don't understand how to work with the linux-yocto kernel.

For example, I created a local copy of the yocto kernel, and updated the =
linux-yocto_3.8.bb recipe to point to the local copy =
(git:///<path>;protocol=3Dfile, etc)

Then I created a local branch meta, and another local branch =
standard/qemuarma9 and then updated the machine definitions in the meta =
branch for qemuarma9.

When I run yocto, and bitbake linux-yocto, in the tmp folder, if I check =
the git branch, it's checked out standard/common-pc/atom-pc.

This is really weird.

I've wasted a couple of days because the yocto build infrastructure was =
checkout out the wrong branch.=20

Elvis Dowson=

--Apple-Mail=_059B3E2E-7C9B-4215-A30D-B35B531E973B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp;I just don't understand how to work with =
the linux-yocto kernel.</div><div><br></div><div>For example, I created =
a local copy of the yocto kernel, and updated the linux-yocto_3.8.bb =
recipe to point to the local copy (<a =
href=3D"git:///&lt;path&gt;;protocol=3Dfile">git:///&lt;path&gt;;protocol=3D=
file</a>, etc)</div><div><br></div><div>Then I created a local branch =
meta, and another local branch standard/qemuarma9&nbsp;and then updated =
the machine definitions in the meta branch for =
qemuarma9.</div><div><br></div><div>When I run yocto, and bitbake =
linux-yocto, in the tmp folder, if I check the git branch, it's checked =
out =
<b><u>standard/common-pc/atom-pc.</u></b></div><div><br></div><div>This =
is really weird.</div><div><br></div><div>I've wasted a couple of days =
because the yocto build infrastructure was checkout out the wrong =
branch.&nbsp;</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_059B3E2E-7C9B-4215-A30D-B35B531E973B--
