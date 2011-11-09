Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99886E00309
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 06:34:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnc4 with SMTP id c4so1734018ggn.35
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 06:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0+hZsmlUqg1M7FBJxZyXCtU7bGaRHzl8V/GcS7+Qw98=;
	b=m/D8dEH3y+uMb2Lq9huDjhOn6F3bucZH3aafHPPdYER+kJhEif94B7+WaP4RinLhI3
	9uGhdj3iix1uA7CEDdZ12GN7ZGnIxjuNqWMfWvDzYd34PGvcWs1j1FI9jySRtLQYSWXF
	ZwgBKo7U1sFOJrBl9EU+UnPhu1pg6ErO6RViM=
MIME-Version: 1.0
Received: by 10.101.177.9 with SMTP id e9mr1252899anp.152.1320849280851; Wed,
	09 Nov 2011 06:34:40 -0800 (PST)
Received: by 10.236.157.138 with HTTP; Wed, 9 Nov 2011 06:34:40 -0800 (PST)
Date: Wed, 9 Nov 2011 09:34:40 -0500
Message-ID: <CANFv2EkEsY92-+=Beqw_L68K0bT5HHSfy3fkw90xJgBre4wfHQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: README.hardware
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
X-List-Received-Date: Wed, 09 Nov 2011 14:34:42 -0000
Content-Type: multipart/alternative; boundary=00163691fb3d2fdd2f04b14e3083

--00163691fb3d2fdd2f04b14e3083
Content-Type: text/plain; charset=ISO-8859-1

Question on the subject document:

In the atom-pc platform section, the Hard Disk option mentions a bitbake
target of 'core-image-minimal-directdisk'.  This target is not listed as an
option for bitbake after 'source oe-init-build-env' and if you try to use
it, the bake will fail at some point due to invalid target.

Am I missing something or is this a documentation problem.

Jim A

--00163691fb3d2fdd2f04b14e3083
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Question on the subject document:</div>
<div>=A0</div>
<div>In the atom-pc platform section, the Hard Disk option mentions a bitba=
ke target of &#39;core-image-minimal-directdisk&#39;.=A0 This target is not=
 listed as an option for bitbake after &#39;source oe-init-build-env&#39; a=
nd if you try to use it, the bake will fail at some point due to invalid ta=
rget.</div>

<div>=A0</div>
<div>Am I missing something or is this a documentation problem.</div>
<div>=A0</div>
<div>Jim A</div>

--00163691fb3d2fdd2f04b14e3083--
