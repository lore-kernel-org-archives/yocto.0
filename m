Return-Path: <cliff.brake@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1267E4C808B0
	for <yocto@yoctoproject.org>; Wed, 22 Dec 2010 10:09:08 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so6405082wwb.11
	for <yocto@yoctoproject.org>; Wed, 22 Dec 2010 08:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=9/5p8vx8Y4l1SJLayP+aux7mVzm7Wm1fFejAhA3B7nc=;
	b=r21GNNtZQkReefxC7gqvjva63lEL3SJmhdxeQJvGm0QwTQC0zuJNnmlbqXhahekCMP
	77e0CwCSbqQybfBpMT22H5UnxvQf2hS4CNsRoS6wkXORTZJhDU8s2CG+ByxiB1EUqH+f
	j3dJMNGEPiCUaLhpvQZwgzM68ml38i2VDq6o0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=WEfiM7ZqGX44Hk0D/adVIh190knc2O3+LWeoCVqc/0zoJtv1oKH+xwAR4yiQym6emT
	GcXTiy/ONd5nZtlh66GaKv5Ip7uPK6cNhgp+8wo/yab+DMoZlnmFbLPPMJNlY+G4mWGu
	Sbz7zI4fl/7H9x2yVAcFxCZe20kH8Uy0h0oHA=
MIME-Version: 1.0
Received: by 10.216.59.143 with SMTP id s15mr2973106wec.49.1293034142706; Wed,
	22 Dec 2010 08:09:02 -0800 (PST)
Received: by 10.216.254.137 with HTTP; Wed, 22 Dec 2010 08:09:02 -0800 (PST)
Date: Wed, 22 Dec 2010 11:09:02 -0500
Message-ID: <AANLkTik3-5x2W+DRTJ9bC0YnUQB9HbvSWEYLSMWLTPjZ@mail.gmail.com>
From: Cliff Brake <cliff.brake@gmail.com>
To: yocto@yoctoproject.org, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Multiple Repository support
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
X-List-Received-Date: Wed, 22 Dec 2010 16:09:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I've started collecting ideas from various emails on multiple
repository support.

http://wiki.openembedded.org/index.php/MultipleRepositoryMethods

Please feel free to update the above page.

In my mind, this is a key problem we need to solve, not just for
Yocto/OE, but also for anyone doing product development.

I've personally been using git submodules for most projects, and repo
for Android based projects.

Appreciate any ideas, experiences, or insights into how we solve this problem.

Thanks,
Cliff

-- 
=================
http://bec-systems.com

