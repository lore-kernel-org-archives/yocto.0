Return-Path: <marc.ferland@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68359E014B4
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 14:42:00 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hn14so4696633wib.4
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 14:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:mime-version:content-type;
	bh=niYTTAb7DxmBEJR7ovpPMFbp62/fsCvpIt0bL4U8bGU=;
	b=CV69RPzRSr8sK8o7EM8XZT7g9oj6wQgfrigaz2e4do4YvKOOpQ3s2cqKf/8vxsgdbs
	CECzjqo9/jcVDI4lMcEfNvSx2JYkAU1I25igTOuU8gNZdHqykXkc6G3U+fs0FbCkOqp3
	pSiOJHFhl7G6Fi2xOFImmThznJOk/f9+9IHCR1OKOocAjNwdYw/vh5EOgN3czQQQafgF
	K+JXl/Xd/wYzdBk55Mn4x8cKq6w6ldWNCY9t2C3sBq8J2zQHjoEH+CUjTIc/LmT5paWX
	mMRw3f3KzVSTsQr7tCn8g6TNdieWZJqYP3uQUbt2FWYTEn5XLjiHRMoXtAx8Vuw16zNs
	h55w==
X-Received: by 10.180.11.206 with SMTP id s14mr2244623wib.40.1369863719074;
	Wed, 29 May 2013 14:41:59 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id d5sm34008400wic.1.2013.05.29.14.41.55
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 29 May 2013 14:41:57 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 29 May 2013 17:42:08 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Wed, 29 May 2013 17:42:08 -0400
Message-ID: <87zjvdwjin.fsf@sonatest.com>
MIME-Version: 1.0
Subject: udev not starting on first boot
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
X-List-Received-Date: Wed, 29 May 2013 21:42:00 -0000
Content-Type: text/plain

Hi,

I'm currently upgrading from 1.3 to 1.4 and I'm having some issues on
the first boot because it seems udev won't start.

I'm using udev 182 from meta/recipes-core/udev. The system uses a
read-only root filesystem (squashfs) paired with a RW partition joined
together with AUFS to give the illusion of a RW filesystem.

The system is not configured with 'read-only-rootfs'.

On the first boot no /var/run/udev is created clearly showing that udevd
wasn't started.

At first sight it seems to be caused by the fact that populate-volatile
is called after udev, so some symlinks could be missing... that or some
weird race issue.

Any ideas?

Marc

