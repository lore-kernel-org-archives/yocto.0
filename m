Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 539A3E0030B
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 22:10:29 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so364881bkc.35
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 22:10:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=AcW6vRCIl8rMoueSSBIonc6HrBasnwvBMvdSLJSJ/Og=;
	b=Ab9qHftxpREmxhn7DBoXefDl19DBZSzFZXauz9EJbWoXQZbOWnFyv4I+hU89c9UK0m
	eNi01q8NcSlFdVakVL0VPx/lCcJb5qgB+3K0S5YCx5TAtjw6hq/LrfiGouIlAmak6nUp
	QCIUQemnuMCQ6MhD+YWUfBLZ6d5N99P0XjJBGYtgSbFhLMs3+LF8FhH8M1bkDcXU2bwl
	6gLEMu1BhH60GV9nercgjq2sE2tbGquJE7NNVz+nK2Z4pdA2LFFKldxcVlkNz9P1eYwR
	r+bg5H2LLmxD53pImXyutR/Ir76sZrzsmSPSsIP9egZ14wZoKMAw5nftaCQjv7PJwLjf
	Yf9A==
MIME-Version: 1.0
Received: by 10.204.133.220 with SMTP id g28mr602257bkt.54.1337145028026; Tue,
	15 May 2012 22:10:28 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.205.65.134 with HTTP; Tue, 15 May 2012 22:10:28 -0700 (PDT)
In-Reply-To: <CAMKF1srwhxNcOkqouicvy9C4HviCLH3k0n+FjSHnP5NV-5ArpQ@mail.gmail.com>
References: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
	<CAMKF1srwhxNcOkqouicvy9C4HviCLH3k0n+FjSHnP5NV-5ArpQ@mail.gmail.com>
Date: Tue, 15 May 2012 22:10:28 -0700
X-Google-Sender-Auth: 92OJzGwl6DzcIkMr4s54QZIRbGc
Message-ID: <CA+gsK-p5xV5JLr_TkA+P+w=tgrGqC8pJwowiCR4haeXfKueGTw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQkFFyWHCXisNUDiE+/RycQ0SNOGuhN6c+fmrmUyIqxq/4Czew5b2npzhmg3c16yGZv8JNAz
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How is the list in package.manifest derived?
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
X-List-Received-Date: Wed, 16 May 2012 05:10:29 -0000
Content-Type: multipart/alternative; boundary=00151743f7c268a13b04c0205659

--00151743f7c268a13b04c0205659
Content-Type: text/plain; charset=ISO-8859-1

>> I think kernel and uboot  are not bundled into image but kernel modules
are why
>> module-init-tools does not appear there might be a bug

Yes, that is technically of course correct. However, the idea of
package.manifest and license.manifest should be to provide a list of
everything that goes into the distribution together with the licenses.
That's what one needs to provide to customers. And the image recipe has
these items as dependencies.

I would think that anything that is a runtime dependency of an image should
show up in the manifests. task-core-boot is a runtime dependency of
core-image-minimal. Interestingly, virtual/kernel is not a runtime
dependency of task-core-boot but it is a build-time dependency. From the
view of the build system that is correct and sufficient. It creates the
kernel but of course the kernel is not included with the root file system
image. It looks to me as if the class creating the licensing manifest
evaluates the runtime dependencies which is not sufficient.

That explains the kernel. But it does not explain module-init-tools, as you
say. Checking reverse dependencies of module-init-tools shows nothing
depends on them. So how do they get included with the root fs in the first
place?

Another strange thing I cannot make sense of is that linux-yocto runtime
depends on python, perl, elfutils, kernel-base and kernel-image.

:rjs

--00151743f7c268a13b04c0205659
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

&gt;&gt; I think kernel and uboot =A0are not bundled into image but kernel =
modules are why<div>&gt;&gt; module-init-tools does not appear there might =
be a bug<div><br></div><div>Yes, that is technically of course correct. How=
ever, the idea of package.manifest and license.manifest should be to provid=
e a list of everything that goes into the distribution together with the li=
censes. That&#39;s what one needs to provide to customers. And the image re=
cipe has these items as dependencies.</div>
<div><br></div><div>I would think that anything that is a runtime dependenc=
y of an image should show up in the manifests. task-core-boot is a runtime =
dependency of core-image-minimal. Interestingly, virtual/kernel is not a ru=
ntime dependency of task-core-boot but it is a build-time dependency. From =
the view of the build system that is correct and sufficient. It creates the=
 kernel but of course the kernel is not included with the root file system =
image. It looks to me as if the class creating the licensing manifest evalu=
ates the runtime dependencies which is not sufficient.</div>
<div><br></div><div>That explains the kernel. But it does not explain modul=
e-init-tools, as you say. Checking reverse dependencies of module-init-tool=
s shows nothing depends on them. So how do they get included with the root =
fs in the first place?</div>
<div><br></div><div>Another strange thing I cannot make sense of is that li=
nux-yocto runtime depends on python, perl, elfutils, kernel-base and kernel=
-image.</div><div><br></div><div>:rjs<br><br></div></div>

--00151743f7c268a13b04c0205659--
