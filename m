Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2170BE0149D
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 04:08:25 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id a22so522151qcs.40
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 04:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=JYFBZCN17NbZrkNoQ8/nJWKJBgTzAkAVI5gZrEUQpu4=;
	b=GtK8sKU+ONpfnWAGcm/0rOU6u/VIGgwII+07PTpzgXG4amtKi9DHcxbUjZkljE4OCn
	tIhDgdvYnYJArDTM3jFTwEBfJnDfXXaW3h29j4pfPKFU3h06kArZC8ylvmecH7nz7oTp
	PB20BTxcYc9ec8QhuU/k0R1r9Oo1r2AuS9oDrlYcTgjPuf9wOISc0PDzytKxc9ImlRYZ
	SbcRFWZCtzbNRVPUGRqOAAeyi9e+rQCrK2zVyuYLArT0edu7KWd0X1lQiisLZjJUJ7X0
	vlBimC2+KJ3aMoSXpUZf8znE77Vp0EVVUlSMoEnvOZpvXDnJGXjpfqO3dTnJO7S2Uy4v
	m8gA==
MIME-Version: 1.0
X-Received: by 10.229.172.162 with SMTP id l34mr630777qcz.81.1362744501206;
	Fri, 08 Mar 2013 04:08:21 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Fri, 8 Mar 2013 04:08:21 -0800 (PST)
Date: Fri, 8 Mar 2013 13:08:21 +0100
Message-ID: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Fri, 08 Mar 2013 12:08:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I have built some custom kernel modules (.ko) using a .bb that
inherits from the module.bbclass. There is one main kernel module and
the rest are dependent on the first. Building and installing the
modules to the rootfs works fine. Next question is how do I control
what actual modules are loaded at boot, or actually how do I control
this through Yocto? To my surprise one of the kernel module loaded
automatically!? How could this happen? I did not have an entry for it
in /etc/modules. And what do I need to do to actually add entries to
/etc/modules? Or is there some other mechanism that I should use. I
tried going through the module.bbclass but must admit I lost it
somewhere in the middle ;) Any guidance would be appreciated.

Hans

