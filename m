Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8E9BE00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 13:39:28 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so7637810vbj.35
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 13:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Trmxpu7b/ykgYyuR7CSQQqBfTO3md26RnRBBJsGE8So=;
	b=CZ/dw0y/iFHr45lKMC0DIoTO2mUn7UXy1+lBW9hRE1OsQUO2p8MdRV9++Qf4L6u/Bl
	czp5zSYHUfMpvFiYAjLAAo9CRUVH7aEcmeDmZLfcl9BBk4r8feb+iaQclGuR8WkigUmD
	kzzA0KgnkWpZyXvwPRgKT6UhKfsIcl5/haEdnohRUfGWesX5vwf7zCT+4u6w4rkMUkFi
	cbrXynOaD8J7z+DOFCVgy5NbXhxiVVtx76JGNSepFm8TQ8p6Pt/QeP10xY7Gnk6blu4A
	o9VNdh7SRqLNeQ5wp7o6qzdO6QUIWyBbaMyU8W/ff1Hlfl+5BDtX4lHtMswQ4uKX4c+E
	+DOA==
MIME-Version: 1.0
Received: by 10.220.154.79 with SMTP id n15mr16326725vcw.61.1343162367677;
	Tue, 24 Jul 2012 13:39:27 -0700 (PDT)
Received: by 10.59.8.136 with HTTP; Tue, 24 Jul 2012 13:39:27 -0700 (PDT)
Date: Tue, 24 Jul 2012 15:39:27 -0500
Message-ID: <CAE9DZURnyoa3MxRnq=ByFdcwjTyfGg1CRGW8r=kPTzYXfxTjaw@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: hob issues
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
X-List-Received-Date: Tue, 24 Jul 2012 20:39:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've having some difficulty running hob on Debian "wheezy/sid".  When
I enter "hob" from the command line, an X-window opens, but none of
the controls have any text labels.  Also, none of the drop-down lists
are populated.

I also see this message on the command prompt:

Gtk-Message: Failed to load module "canberra-gtk-module"

I installed libcanberra-gtk3-0, which didn't make any difference.

Is there anything else I should try?

