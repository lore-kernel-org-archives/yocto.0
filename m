Return-Path: <brduffy@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C32D4E00731
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 09:10:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy22 with SMTP id 22so296044ewy.35
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2011 09:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=62YVtaLOqqBZNXh9X/TLIcFAF68kJLpMwUFSqDcpDUE=;
	b=q+nmcjLHCfTWX/Xni18U21XP+LhvSKa4Sgtnqc35L5WMmH3LKEnaDNGhRm9b7fVJok
	iO6YPdLheSwrq5bzJ0sZ28L4w7kX0dIJxe3sURBhBfRvUw32/yx/40GuQx1S1cl73i5y
	SqaiOTbgf0ZXieDmS+4y3lrxMkyKfxpm//5NY=
MIME-Version: 1.0
Received: by 10.216.221.130 with SMTP id r2mr1290414wep.63.1315411839440; Wed,
	07 Sep 2011 09:10:39 -0700 (PDT)
Received: by 10.216.168.147 with HTTP; Wed, 7 Sep 2011 09:10:39 -0700 (PDT)
Date: Wed, 7 Sep 2011 12:10:39 -0400
Message-ID: <CAHrDPkpb38_1KwKi35v2cteF5LFmPeF_pfPz5E-2JUw6o-ge2Q@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: yocto@yoctoproject.org
Subject: HOB failure
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
X-List-Received-Date: Wed, 07 Sep 2011 16:10:41 -0000
Content-Type: multipart/alternative; boundary=001485f626f26c57b204ac5c2f3b

--001485f626f26c57b204ac5c2f3b
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm having trouble running hob ...

[brian@brduffy-PC my-build]$ hob
You had no conf/hob.local.conf file. An initial version of this
configuration
file has therefore been created for you. This file will be used to store any
configuration values you set in hob.

Pseudo is not present but is required, building this first before the main
build
Loading cache: 100% |###########################################| ETA:
 00:00:00
Loaded 1029 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110907"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 70 tasks of which 70 didn't need to be rerun
and 0 failed.
/home/brian/oe-beta/scripts/bitbake: line 73:
/home/brian/oe-beta/build/pseudodone: Permission denied
cat: /home/brian/oe-beta/build/pseudodone: No such file or directory
/home/brian/oe-beta/scripts/bitbake: line 82: /pseudo: No such file or
directory
[brian@brduffy-PC my-build]$

Do I just have a permission problem?

-- 
Duff

--001485f626f26c57b204ac5c2f3b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>I&#39;m having trouble running hob ...</d=
iv><div><br></div><div><div>[brian@brduffy-PC my-build]$ hob</div><div>You =
had no conf/hob.local.conf file. An initial version of this configuration</=
div>
<div>file has therefore been created for you. This file will be used to sto=
re any</div><div>configuration values you set in hob.</div><div><br></div><=
div>Pseudo is not present but is required, building this first before the m=
ain build</div>
<div>Loading cache: 100% |###########################################| ETA:=
 =A000:00:00</div><div>Loaded 1029 entries from dependency cache.</div><div=
><br></div><div>OE Build Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =
=A0=3D &quot;1.13.3&quot;</div>
<div>TARGET_ARCH =A0 =A0 =A0 =3D &quot;i586&quot;</div><div>TARGET_OS =A0 =
=A0 =A0 =A0 =3D &quot;linux&quot;</div><div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D=
 &quot;qemux86&quot;</div><div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky=
&quot;</div><div>DISTRO_VERSION =A0 =A0=3D &quot;1.0+snapshot-20110907&quot=
;</div>
<div>TUNE_FEATURES =A0 =A0 =3D &quot;m32 i586&quot;</div><div>TARGET_FPU =
=A0 =A0 =A0 =A0=3D &quot;&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0<=
/div><div>meta-yocto =A0 =A0 =A0 =A0=3D &quot;&lt;unknown&gt;:&lt;unknown&g=
t;&quot;</div><div><br></div><div>NOTE: Resolving any missing task queue de=
pendencies</div>
<div>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</div=
><div>NOTE: Executing RunQueue Tasks</div><div>NOTE: Tasks Summary: Attempt=
ed 70 tasks of which 70 didn&#39;t need to be rerun and 0 failed.</div>
<div>/home/brian/oe-beta/scripts/bitbake: line 73: /home/brian/oe-beta/buil=
d/pseudodone: Permission denied</div><div>cat: /home/brian/oe-beta/build/ps=
eudodone: No such file or directory</div><div>/home/brian/oe-beta/scripts/b=
itbake: line 82: /pseudo: No such file or directory</div>
<div>[brian@brduffy-PC my-build]$=A0</div><div><br></div><div>Do I just hav=
e a permission problem?</div><div><br></div>-- <br>Duff<br>
</div>

--001485f626f26c57b204ac5c2f3b--
