Return-Path: <marc.ferland@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 230364C80059
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2011 13:37:33 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so4653970qwj.35
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2011 11:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=obx03b1MkYCzGrLq4dU3FEERPZxzC4D1IvN8WmYpNhI=;
	b=QxWSpMGSkpUaXlpMvt6fFb2Cj9rEGUvG8J8Dy/FDWHa17rVLava1a6Z28grQ9Iy5iJ
	AQjrHkG6AuaDpGtGWGU2VqzbICGxutzdTAPwp+Vwjw0JPH8i2cQBzit4kiv/pesBX4ug
	PZNlUOjG0TVzvTx65YJ4xO4nNI4hCNWfifN6M=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=H+MZDtGAhOMXkEghQ1D5luBXy+5iyYKJUTC1UlEifJliX7wQ81i6WHcrA76Klv+l+u
	0xD3bh7E14jURT068H1KnAHu6qQpwjGg/rn/OtlzIo9p5BV8GUmrO5YVwctx4RsghjUh
	+u4W7BtEbAEaScucqMKFlDFlZFrSMN+BAvVD8=
MIME-Version: 1.0
Received: by 10.229.35.1 with SMTP id n1mr4424275qcd.84.1302547052446; Mon, 11
	Apr 2011 11:37:32 -0700 (PDT)
Received: by 10.229.130.159 with HTTP; Mon, 11 Apr 2011 11:37:32 -0700 (PDT)
Date: Mon, 11 Apr 2011 14:37:32 -0400
Message-ID: <BANLkTike2OtbbALk7o7s9hG8jV9J4eQaFQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: crownbay image
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
X-List-Received-Date: Mon, 11 Apr 2011 18:37:33 -0000
Content-Type: multipart/alternative; boundary=0016368319a05d453504a0a8de97

--0016368319a05d453504a0a8de97
Content-Type: text/plain; charset=UTF-8

Hi,

I've successfully built the crownbay image from yocto-bernard and I'm now
trying to get Qt and OpenGL running on the board. So far what I got is the
following message from Xorg regarding acceleration:

...

   1. (EE) AIGLX error: emgd exports no DRI extension
   2. (EE) AIGLX: reverting to software rendering
   3. (II) AIGLX: Screen 0 is not DRI capable
   4. (EE) AIGLX error: dlopen of /usr/lib/dri/swrast_dri.so failed
   (/usr/lib/dri/swrast_dri.so: cannot open shared object file: No such file or
   directory)
   5. (EE) GLX: could not load software renderer
   6. (II) GLX: no usable GL providers found for screen 0

...

Qt applications with QGLWidgets show an empty widget window. The 40,000
chips qt demo has the OpenGL button disabled surely because OpenGL isn't
working.

Full Xorg.log available here: http://pastebin.com/Z7cwTNiu

Any idea?

Regards,

Marc

--0016368319a05d453504a0a8de97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I&#39;ve successfully built the crownbay image from yocto-bernar=
d and I&#39;m now trying to get Qt and OpenGL running on the board. So far =
what I got is the following message from Xorg regarding acceleration:<br>
<br>...<br><ol><li class=3D"li1"><div class=3D"de1">(EE) AIGLX error: emgd =
exports no DRI extension</div></li><li class=3D"li2"><div class=3D"de2">(EE=
) AIGLX: reverting to software rendering</div></li><li class=3D"li1"><div c=
lass=3D"de1">
(II) AIGLX: Screen 0 is not DRI capable</div></li><li class=3D"li2"><div cl=
ass=3D"de2">(EE) AIGLX error: dlopen of=20
/usr/lib/dri/swrast_dri.so failed (/usr/lib/dri/swrast_dri.so: cannot=20
open shared object file: No such file or directory)</div></li><li class=3D"=
li1"><div class=3D"de1">(EE) GLX: could not load software renderer</div></l=
i><li class=3D"li2"><div class=3D"de2">(II) GLX: no usable GL providers fou=
nd for screen 0</div>
</li></ol>...<br><br>Qt applications with QGLWidgets show an empty widget w=
indow. The 40,000 chips qt demo has the OpenGL button disabled surely becau=
se OpenGL isn&#39;t working.<br><br>Full Xorg.log available here: <a href=
=3D"http://pastebin.com/Z7cwTNiu">http://pastebin.com/Z7cwTNiu</a><br>
<br>Any idea?<br><br>Regards,<br><br>Marc<br><br><br>

--0016368319a05d453504a0a8de97--
