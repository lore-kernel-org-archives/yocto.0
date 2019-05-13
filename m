Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 981FCE00D84; Mon, 13 May 2019 03:08:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C96E00798;
	Mon, 13 May 2019 03:08:51 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id s20so9523331ioj.7;
	Mon, 13 May 2019 03:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dHUV+bfTqa9rgh963PPGhVT/Mn0zQz+8s9tp37B0ZGs=;
	b=UfbAntr8I3+QxirHQj2dNOqdPBTaC5Kk93rgayWK1WW9YjL0NqMytqIy+HzBk4PoKS
	wcng6hCj3UTPU/d3pgrvP4gGdOWN5RcVPnHhIocEbjuzEP6DhzCj5NbLS6pVawfN+oxN
	2Am21Fbei7BxpCW/UI2Qq9JAQwUZ25s+vD6d8SOZD8v9leY2L38fmSZsDK4gpxOHT+uJ
	nZyvrtGZy/Puprooe0/EK8L6bPSCypTCujqVkaik/nzjP7fQVdCQ6mjeZ1B8wZfbVYK8
	xpf2SXr3gxmupOO7EoU5GBHaEFAkaKgujuONv8Oza9acIFdM8bC4ghngWAYJNQ+X1ceY
	Ku6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dHUV+bfTqa9rgh963PPGhVT/Mn0zQz+8s9tp37B0ZGs=;
	b=QqlIU27haJF6dlOnS6M52YV2kYSk+kMZz96G1et9sEwzhUGeQvihLTWhtVk/aj/lw7
	G/Yh0GfnVkYxzf0fLppL2G3LBk953ZiToSbW9zSMtSzEtDaeVrqU4DY2cPkXahocZFiy
	+3Bf4ZBFwZI1PaVogyneqX5L5A+Wu24qQrBn4GQF20P8uLjcpmKEVOby0vYcQk1FT4LA
	DlmlQL7qOp8X1GaY692OD1Y8LHbM1gr0+HLof+q7IjnxQ0t7TIPEVDo/74M9BfrUSGxK
	42CAKyxds/NZSTN2RQCC+iZmsY7rzrJ8CJg6/7BROavFlwakGgm/DrLnnvRMA7dtwmSc
	dHpA==
X-Gm-Message-State: APjAAAUp8DGVtSn8wpG0uc5RovPtjloPQl+4rk/fLzO39F0tabGHQBdE
	Ewy9dvRNttMBCgqhZlIWzzR5HBWx4v6xgnr750jY+UhB
X-Google-Smtp-Source: APXvYqyNxvsLqzaZPpTM7qjU13/bxY2d6qWHD9wuNo6qHP5vQsayEp4aHN50q7YmzAMnMVVth1UtUK8Jg08SPKQxz90=
X-Received: by 2002:a6b:c947:: with SMTP id z68mr13864552iof.27.1557742131362; 
	Mon, 13 May 2019 03:08:51 -0700 (PDT)
MIME-Version: 1.0
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 13 May 2019 15:38:40 +0530
Message-ID: <CAOe0dAXjp=+hqaKk6aGY-pDPBYFUi_zNTAcUFA1Ss170=Q9=Jw@mail.gmail.com>
To: yocto-bsp@yoctoproject.org, yocto@yoctoproject.org
Subject: Error of " fs.inotify.max_user_watches " while using bitbake [ Yocto-2.6.1 + Qemux86]
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
X-List-Received-Date: Mon, 13 May 2019 10:08:52 -0000
Content-Type: multipart/alternative; boundary="000000000000643e7f0588c21a63"

--000000000000643e7f0588c21a63
Content-Type: text/plain; charset="UTF-8"

Hi Members ,

Can team members please let me know the solution & what is causing the
below mentioned error ?
( I am having around 128GB of disk space still left , hence don't think
that space is the issue here )

~/Documents/linux-foundation-projects/yocto/poky/build (slef-bsp) : bitbake
-vn virtual/kernel
ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
ERROR: To modify max_user_watches: sysctl -n -w
fs.inotify.max_user_watches=<value>.
ERROR: Root privilege is required to modify max_user_watches.
ERROR: Command execution failed: Traceback (most recent call last):

  File
"/home/ashish/Documents/linux-foundation-projects/yocto/poky/bitbake/lib/bb/command.py",
line 113, in runAsyncCommand
    self.cooker.updateCache()
  File
"/home/ashish/Documents/linux-foundation-projects/yocto/poky/bitbake/lib/bb/cooker.py",
line 1541, in updateCache
    self.add_filewatch([[dirent]], dirs=True)
  File
"/home/ashish/Documents/linux-foundation-projects/yocto/poky/bitbake/lib/bb/cooker.py",
line 287, in add_filewatch
    watcher.add_watch(f, self.watchmask, quiet=False)
  File
"/home/ashish/Documents/linux-foundation-projects/yocto/poky/bitbake/lib/pyinotify.py",
line 1924, in add_watch
    raise WatchManagerError(err, ret_)
pyinotify.WatchManagerError: add_watch: cannot watch
/home/ashish/Documents/linux-foundation-projects/yocto/poky/meta/recipes-devtools/mtd
WD=-1, Errno=No space left on device (ENOSPC)


Summary: There were 5 ERROR messages shown, returning a non-zero exit code.

~/Documents/linux-foundation-projects/yocto/poky/build (self-bsp) :
~/Documents/linux-foundation-projects/yocto/poky/build (self-bsp) : df -h
/home/ashish/
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p3  433G  284G  127G  70% /


Thanks
Ashish

--000000000000643e7f0588c21a63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Members , <br></div><div><br></di=
v><div>Can team members please let me know the solution &amp; what is causi=
ng the below mentioned error ?</div><div>( I am having around 128GB of disk=
 space still left , hence don&#39;t think that space is the issue here )<br=
></div><div><br></div><div>~/Documents/linux-foundation-projects/yocto/poky=
/build (slef-bsp) : bitbake -vn virtual/kernel<br>ERROR: No space left on d=
evice or exceeds fs.inotify.max_user_watches?<br>ERROR: To check max_user_w=
atches: sysctl -n fs.inotify.max_user_watches.<br>ERROR: To modify max_user=
_watches: sysctl -n -w fs.inotify.max_user_watches=3D&lt;value&gt;.<br>ERRO=
R: Root privilege is required to modify max_user_watches.<br>ERROR: Command=
 execution failed: Traceback (most recent call last):</div><div><br></div><=
div>=C2=A0 File &quot;/home/ashish/Documents/linux-foundation-projects/yoct=
o/poky/bitbake/lib/bb/command.py&quot;, line 113, in runAsyncCommand<br>=C2=
=A0=C2=A0=C2=A0 self.cooker.updateCache()<br>=C2=A0 File &quot;/home/ashish=
/Documents/linux-foundation-projects/yocto/poky/bitbake/lib/bb/cooker.py&qu=
ot;, line 1541, in updateCache<br>=C2=A0=C2=A0=C2=A0 self.add_filewatch([[d=
irent]], dirs=3DTrue)<br>=C2=A0 File &quot;/home/ashish/Documents/linux-fou=
ndation-projects/yocto/poky/bitbake/lib/bb/cooker.py&quot;, line 287, in ad=
d_filewatch<br>=C2=A0=C2=A0=C2=A0 watcher.add_watch(f, self.watchmask, quie=
t=3DFalse)<br>=C2=A0 File &quot;/home/ashish/Documents/linux-foundation-pro=
jects/yocto/poky/bitbake/lib/pyinotify.py&quot;, line 1924, in add_watch<br=
>=C2=A0=C2=A0=C2=A0 raise WatchManagerError(err, ret_)<br>pyinotify.WatchMa=
nagerError: add_watch: cannot watch /home/ashish/Documents/linux-foundation=
-projects/yocto/poky/meta/recipes-devtools/mtd WD=3D-1, Errno=3DNo space le=
ft on device (ENOSPC)<br><br><br>Summary: There were 5 ERROR messages shown=
, returning a non-zero exit code.</div><div><br></div><div>~/Documents/linu=
x-foundation-projects/yocto/poky/build (self-bsp) : <br>~/Documents/linux-f=
oundation-projects/yocto/poky/build (self-bsp) : df -h /home/ashish/<br>Fil=
esystem=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0 Used Avail Use% Mounted on=
<br>/dev/nvme0n1p3=C2=A0 433G=C2=A0 284G=C2=A0 127G=C2=A0 70% /<br></div><d=
iv><br></div><div><br></div><div>Thanks <br></div><div>Ashish</div><div><br=
></div><div><br></div><div><br></div><div><br></div></div></div>

--000000000000643e7f0588c21a63--
