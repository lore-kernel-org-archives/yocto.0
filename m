Return-Path: <marc.ferland@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E01E00307
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 14:44:10 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadb14 with SMTP id b14so3919503qad.35
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2011 14:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9WCbbGAW7YnR2b/pvNKDbI8P2Vzu+bzEbAn/s7ciz+s=;
	b=myMWANcIjx4htkaTwWeEUDOtREmRc9GIzJ/kwRPgKxbI78KdprUTbu/c1MeBUKdhVq
	R4Tyl/RHBQ4VPZwO4VjnKqLHsSZZ3y//tbuZe0rPhu+UF4Mql/lrQULBp3SnPd1N9Ard
	sRHptsFubnOWwKK3EhPUMtNHZ4UvSh3Q5YmOI=
MIME-Version: 1.0
Received: by 10.50.189.231 with SMTP id gl7mr15258476igc.44.1320443049240;
	Fri, 04 Nov 2011 14:44:09 -0700 (PDT)
Received: by 10.50.34.166 with HTTP; Fri, 4 Nov 2011 14:44:09 -0700 (PDT)
Date: Fri, 4 Nov 2011 17:44:09 -0400
Message-ID: <CAMRMzCDszc7p0-dD0twCJ-hxMR6i4VVuF75g49g5cvv=8cGxtQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: Change splash screen
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
X-List-Received-Date: Fri, 04 Nov 2011 21:44:10 -0000
Content-Type: multipart/alternative; boundary=14dae9341151e5692104b0ef9a0f

--14dae9341151e5692104b0ef9a0f
Content-Type: text/plain; charset=UTF-8

 Hi,

What's the proper way to change the splash screen in Yocto? I have
re-generated the psplash-poky-img.h file but I don't know where to put this
file in my local layer. I guess this question also applies to all recipes
containing references to local files in the SRC_URI.

I could replace the current file with the one I just generated but that
doesn't seem right...!

Regards,

Marc

--14dae9341151e5692104b0ef9a0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


	  Hi,<br><br>What&#39;s the proper way to change the splash screen in Yoct=
o? I have re-generated the psplash-poky-img.h file but I don&#39;t know whe=
re to put this file in my local layer. I guess this question also applies t=
o all recipes containing references to local files in the SRC_URI. <br>
<br>I could replace the current file with the one I just generated but that=
 doesn&#39;t seem right...!<br><br>Regards,<br><br>Marc<br>

--14dae9341151e5692104b0ef9a0f--
