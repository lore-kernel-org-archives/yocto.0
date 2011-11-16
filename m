Return-Path: <serg.lychagin@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C57E0059D
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 04:07:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk32 with SMTP id 32so20013625pzk.7
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 04:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=BCBxZ/d/mx6KQ9WZ5HeOaw2iEaC2D0sVWeAeO/z6QmA=;
	b=aYNfECvsm2hyCJKx0F2FXVADTLunp2y9p8HYh/EJ2sUbehkF1mLJKvCyhUhabjBS2W
	ram5wnaUvSV+fsFKY87NyYB4v9nG7946uqLOSX5WPXtFFWwy2GVjuNffgRXcPg9PwYIy
	YaR4A5NX9Zd2HnzWLpwnJzq2xuZefHMP3ZHQE=
MIME-Version: 1.0
Received: by 10.68.14.132 with SMTP id p4mr43742711pbc.31.1321445227310; Wed,
	16 Nov 2011 04:07:07 -0800 (PST)
Received: by 10.68.66.8 with HTTP; Wed, 16 Nov 2011 04:07:07 -0800 (PST)
Date: Wed, 16 Nov 2011 16:07:07 +0400
Message-ID: <CAMVXEj+bjMKtrxUwAYpEiigLTEe9ywuq=wWLgAk=WeebVZq0zg@mail.gmail.com>
From: Sergey Lychagin <serg.lychagin@gmail.com>
To: yocto@yoctoproject.org
Subject: qemuarm: Unable to mount rootfs
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
X-List-Received-Date: Wed, 16 Nov 2011 12:07:08 -0000
Content-Type: multipart/alternative; boundary=bcaec51dd1315d2ee904b1d8f1e4

--bcaec51dd1315d2ee904b1d8f1e4
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I've faced the following problem: "VFS: unable to mount root fs via NFS"
during staring pre-compiled kernel/rootfs images in quemu.
The screen-shot: http://imgur.com/XtvRc
I'm trying to start it via Eclipse as it is shown in
http://vimeo.com/30557368

I also followed the instructions described ADT user guide:
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html
Target is qemuarm. kernel & rootfs (core-image-sato-sdkqemuarm &
zImage-qemuarm.bin) are precompiled and downloaded from here:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qemu/qemuarm/

As far as I know this kernel image should support NFS.
Could you please help me?

Thanks in advance
Sergey

--bcaec51dd1315d2ee904b1d8f1e4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>I&#39;ve faced the following problem: &quot;VFS: unable to mo=
unt root fs via NFS&quot; during staring pre-compiled kernel/rootfs images =
in quemu.<br>The screen-shot: <a href=3D"http://imgur.com/XtvRc">http://img=
ur.com/XtvRc</a><br>
I&#39;m trying to start it via Eclipse as it is shown in <a href=3D"http://=
vimeo.com/30557368">http://vimeo.com/30557368</a><br><br>I also followed th=
e instructions described ADT user guide: <a href=3D"http://www.yoctoproject=
.org/docs/current/adt-manual/adt-manual.html">http://www.yoctoproject.org/d=
ocs/current/adt-manual/adt-manual.html</a><br>
Target is qemuarm. kernel &amp; rootfs (core-image-sato-sdkqemuarm &amp; zI=
mage-qemuarm.bin) are precompiled and downloaded from here: <a href=3D"http=
://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qemu/qemuar=
m/">http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qem=
u/qemuarm/</a><br>
<br>As far as I know this kernel image should support NFS.<br>Could you ple=
ase help me?<br><br>Thanks in advance<br>Sergey<br>

--bcaec51dd1315d2ee904b1d8f1e4--
