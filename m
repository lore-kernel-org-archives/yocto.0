Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CC4E4C800A7
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 17:09:00 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so2644416fxm.35
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 15:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=cW/NRVgkEQMv3tvp6GP1sZKFtbg8COaX1/RjVYl6Gak=;
	b=TTPtX0MJ/VQSDPbbB9DrX9HyTemwMOumzHPU8eNz/b8OI5mL6/xrNfRWQonkO+le1r
	ZK1gB1DP1UMNqO+EjOcIKtGRivuzuT1Tuz7FDxQT03y+4U7A50nEjorGid6O5O2oPArK
	kcdIOBoIOQfviIJ7l9DwJXA+0rCuJ4131Zl8U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=FJo/scysYvxiBpgRwU4AVViCSB92MFJoDB27uwYttbOrQ/C0shiRd9JoEe6g4Wjjca
	a8gxax92FAG0uEjNH/r/06hPlOPCabtxXs9O2fHV9ySHmxG7A4W/Wnny+df+Rtlqpqq2
	2tj8QxOpT93YHekit4BPckQQBUmuL96wCKWEU=
MIME-Version: 1.0
Received: by 10.223.97.142 with SMTP id l14mr2247042fan.111.1299971339245;
	Sat, 12 Mar 2011 15:08:59 -0800 (PST)
Received: by 10.223.156.193 with HTTP; Sat, 12 Mar 2011 15:08:59 -0800 (PST)
Date: Sun, 13 Mar 2011 00:08:59 +0100
Message-ID: <AANLkTi=CS=_V1kd+RzzE6xMLmbd2kFt+6uCJb1JLvJmK@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: yocto@yoctoproject.org
Subject: Eclipse plug-in does not detect my target
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
X-List-Received-Date: Sat, 12 Mar 2011 23:09:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Yoctonians,

I created a custom layer with the PowerPC e500v2 architecture and
machine, host tripplet "powerpc-linux-gnuspe".

After building a target package, pciutils, so that the tools were
built, I wanted to test the Eclipse plug-in. After selecting Poky Tree
mode in the Yocto Tool configuration, I could not make it detect the
target; the drop down box remained empty.

Which part of the the Eclipse plug-in code detects the target?

As per the video on YocToob(tm) I selected the build/ directory of my
installation.

Regards,
-- 
Leon

