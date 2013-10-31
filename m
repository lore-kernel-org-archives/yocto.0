Return-Path: <lschwab@xeralux.com>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D551E017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 13:28:29 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id c50so970005eek.41
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 13:28:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=2LH/srZvDJLNOErv8uMFfLjSdvpsqGBX/7V7Hj2cWnk=;
	b=HqWD7fvjumTN49SQkpXsceLDP+O7tNdJEnY21UVKyZwpqWWKstL1OTSSqi8tdHQKMg
	h39LBR1SpbbnVhQyBycl2uOYQ6vNXP/RTK16wOua5Bgwq7ahaU+1G4+gp6YjLGb+AO3H
	sH1C0cARm+ry0wP6xnd+3UA5vmgtZMY80F8qHCfDoVMP+WPq8gaN2/1Ob0XvS6boQ69/
	VkLkbG6LvanhYI9syYk8s5o4IW7Fa7Xj9UPM4uS/wDxgj5+knBV6bUEOzei2FFYBnB5e
	rZ8M9UHVFqlzWv5OxS/oY7uS9pWaHwHbBUSgQrwZZMUSVf315zqKmEphRNdPwk7XvqZH
	6Xtg==
X-Gm-Message-State: ALoCoQltNpE+bfLbnCgBUQ3+eelu9WM1/m1Hes1dB2E2NBeX9iPUr6Hsr3nEZq/yluvSXtkmD2/t
MIME-Version: 1.0
X-Received: by 10.15.24.68 with SMTP id i44mr1881004eeu.87.1383251307819; Thu,
	31 Oct 2013 13:28:27 -0700 (PDT)
Received: by 10.14.104.8 with HTTP; Thu, 31 Oct 2013 13:28:27 -0700 (PDT)
Date: Thu, 31 Oct 2013 13:28:27 -0700
Message-ID: <CALb2248JBMiWJJ8ppDBhV+D15rArsg5VxTnW7OAjwUi76U9VgA@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto <yocto@yoctoproject.org>
Subject: Adding Custom Files to Build
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
X-List-Received-Date: Thu, 31 Oct 2013 20:28:30 -0000
Content-Type: text/plain; charset=UTF-8

This may seem rather basic, but something that I haven't been able to
find any clear discussion on is how to add or modify files in the
final rootfs image.

We have customized versions of /etc/network/interfaces and
/etc/wpa_supplicant.conf, with more to come.  Right now I've been
adding them by hand to the SD cards, but I would prefer they were
added to the rootfs and the .sdcard images as part of the build.

I briefly considered creating a .bbappend file to modify the build for
the wpa_supplicant.bb recipe, but it turns out that
/etc/wpa_supplicant.conf itself comes from a custom file inside the
recipe, and it wasn't at all clear how to hook in or override that.

I also get the impression that writing a recipe that simply copies
stuff to final image will get me yelled at by the build system, since
I'm overwriting files already provided by another recipe.

Can anyone point me in the right direction?

Schwab

