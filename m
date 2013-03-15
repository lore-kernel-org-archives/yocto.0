Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 012B1E0147A
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 06:33:45 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id j3so1525705qcs.20
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 06:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=M47dT40Oq/h+iIc2kiBcaBwm+IRy206+32vC0JGgcPc=;
	b=H66IerMcGhZDCKyswYecrZqc4+vvUaEbMITiy68vYgIW7r2aVQpPRE+eHthv8bd6i+
	GgcbxApNVPz70UnXSfbILoQk/SYQ/1O0kq415HTPXUUrRjhviylJeS3ZzzzIjIzwfUbA
	4q9WgO0henyquRJ3Eb4lsRBAdwcJ6V0M5+CaMmD7pjmC9fjtRqTeSqnFZA2iMzyszmvd
	X2f1RmvlxppvyEBPRzBeBpJL1FC9mdl/xFVcvset12Ys2pvin3GEEZc7kPYJVonN48py
	gumUDAYtg+EmMbWzEVAesOGQTTBDIBHiwBPtyr/1DOnhybix88DNf2Gh4O3z1+ZtmvYg
	hCaw==
MIME-Version: 1.0
X-Received: by 10.224.58.201 with SMTP id i9mr5502513qah.81.1363354425293;
	Fri, 15 Mar 2013 06:33:45 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Fri, 15 Mar 2013 06:33:45 -0700 (PDT)
Date: Fri, 15 Mar 2013 14:33:45 +0100
Message-ID: <CAFyqS9rzC5ueHXBKnzt7JnfWKKSvBkXBEL3px3vh3itEXaRWqg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: remove /boot/uImage and /usr/share/terminfo
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
X-List-Received-Date: Fri, 15 Mar 2013 13:33:46 -0000
Content-Type: multipart/alternative; boundary=20cf3074b46639053804d7f6b0af

--20cf3074b46639053804d7f6b0af
Content-Type: text/plain; charset=ISO-8859-1

Hi. In an effort to shrink our rootfs by some major numbers we found two
low-hanging fruits that we would like to address before cherry picking and
removing lots of good linux functionality. We have no need for the uImage
(3MB) stored in /boot and also we can leave out the terminfo tree (2.5MB).
My question here now is if the build system provide functionality to
actually tell the image builder not to include these specific components?
Or do we need to write some post installer for our rootfs that mounts the
image, removes the files, and then umount it?
If we remove inclusion of any kernel modules it seems that /boot is never
populated? But we need the modules. Also, what package brings in terminfo?
Is it as simple as writing a .bbappend to remove it att deploy time?

Hans

--20cf3074b46639053804d7f6b0af
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi. In an effort to shrink our rootfs by some major numbers we found two lo=
w-hanging fruits that we would like to address before cherry picking and re=
moving lots of good linux functionality. We have no need for the uImage (3M=
B) stored in /boot and also we can leave out the terminfo tree (2.5MB).<br>
My question here now is if the build system provide functionality to actual=
ly tell the image builder not to include these specific components?<br>Or d=
o we need to write some post installer for our rootfs that mounts the image=
, removes the files, and then umount it?<br>
If we remove inclusion of any kernel modules it seems that /boot is never p=
opulated? But we need the modules. Also, what package brings in terminfo? <=
br>Is it as simple as writing a .bbappend to remove it att deploy time?<br>
<br>Hans<br><br>

--20cf3074b46639053804d7f6b0af--
