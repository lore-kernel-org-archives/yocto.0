Return-Path: <bsp2020@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7254CE006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 17:45:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnr1 with SMTP id r1so4239854ggn.35
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 17:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3vozet12ZZA1Dxjevj6eYOPL6+Hv4D48t6V9VdDR9wc=;
	b=WeVALBT2yGOgzjtRUnCYB0kQ9ljdjy0GDyMpRnDG0Odo8aHlLkqtUTG+Q4s2dZdqdl
	F2TB1x73+pXuJmFDYcAFKm7/yJVEc5SjZFDacy0mKY3BLTd5fvi1qBhZMlSxpiGoEWkF
	LPHTJiYPgdBg83n1Ig8mG4hdaSDBnLAD8cq7o=
MIME-Version: 1.0
Received: by 10.42.137.6 with SMTP id w6mr693031ict.5.1319762739360; Thu, 27
	Oct 2011 17:45:39 -0700 (PDT)
Received: by 10.42.224.7 with HTTP; Thu, 27 Oct 2011 17:45:39 -0700 (PDT)
Date: Thu, 27 Oct 2011 17:45:39 -0700
Message-ID: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
From: Brian Park <bsp2020@gmail.com>
To: yocto@yoctoproject.org
Subject: Building for pandaboard
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
X-List-Received-Date: Fri, 28 Oct 2011 00:45:40 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e829844726f04b05135c1

--90e6ba6e829844726f04b05135c1
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm interested in using Yocto to build linux for PandaBoard. It seems there
are already patches some where that I can use to build for panda, as I found
some discussions mentioning PandaBoard patch in the archive. But I could not
apply it. I'd appreciate some pointers on how to find and apply the right
patch.

Just trying to apply
http://article.gmane.org/gmane.linux.embedded.yocto.general/2037/match=pandaboardas
a patch using "git am" command gave the following error. I'm using
release 1.1 Edison.

briansp@LinuxMint11 ~/poky $ git am < ~/Documents/pandaboard.patch
previous rebase directory /home/briansp/poky/.git/rebase-apply still exists
but mbox given.

I'm new to developing for linux and yocto. So, any help would be
appreciated.

Thank you

Brian

--90e6ba6e829844726f04b05135c1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br>I&#39;m interested in using Yocto to build linux for PandaBoard. It =
seems there are already patches some where that I can use to build for pand=
a, as I found some discussions mentioning PandaBoard patch in the archive. =
But I could not apply it. I&#39;d appreciate some pointers on how to find a=
nd apply the right patch.<br>
<br>Just trying to apply <a href=3D"http://article.gmane.org/gmane.linux.em=
bedded.yocto.general/2037/match=3Dpandaboard">http://article.gmane.org/gman=
e.linux.embedded.yocto.general/2037/match=3Dpandaboard</a> as a patch using=
 &quot;git am&quot; command gave the following error.  I&#39;m using releas=
e 1.1 Edison.<br>
<br>briansp@LinuxMint11 ~/poky $ git am &lt; ~/Documents/pandaboard.patch<b=
r>previous rebase directory /home/briansp/poky/.git/rebase-apply still exis=
ts but mbox given.<br><br>I&#39;m new to developing for linux and yocto. So=
, any help would be appreciated.<br>
<br>Thank you<br><br>Brian<br>

--90e6ba6e829844726f04b05135c1--
