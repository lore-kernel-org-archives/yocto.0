Return-Path: <davidsmoot@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D01DDE0059F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 18:18:38 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so35883wgb.11
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 18:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+YS7R6tfLaFoIV5rlSsdoP7+etHkjI7SRVUkwRCslns=;
	b=ErGi6r3FPxRafewMoBNuz0A09A7qlKp6pACJMTSu/KL3koK0TaNJe7h8dJL+ETce0Z
	BLxU1rojhcv3gRumDv9Bgy9sZs9AYxevEPTq2Pv1DznEXOQNwB9T7YOC/N1q14T7SJx2
	/VpK1IJE02+XQaC7aforEYurQm9TClPpW5TGU=
MIME-Version: 1.0
Received: by 10.227.207.201 with SMTP id fz9mr4042336wbb.25.1322792317666;
	Thu, 01 Dec 2011 18:18:37 -0800 (PST)
Received: by 10.216.154.81 with HTTP; Thu, 1 Dec 2011 18:18:37 -0800 (PST)
Date: Thu, 1 Dec 2011 20:18:37 -0600
Message-ID: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
From: David Smoot <davidsmoot@gmail.com>
To: yocto@yoctoproject.org
Subject: building the examples from "meta-demo"
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
X-List-Received-Date: Fri, 02 Dec 2011 02:18:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Greetings.  I am trying to learn the Yocto build system and I think I
am missing one key step.  I have successfully built and tested several
of the built in images ("core-image-basic", "core-image-base", etc)
for my routerstation pro.  I now want to understand how to build my
own customized images with other people's recipes and my own custom
recipes.  I want to try the upnp demos from
http://git.yoctoproject.org/cgit/cgit.cgi/meta-demo/.

From inside my poky folder, I did a "git clone
git://git.yoctoproject.org/meta-demo" so that I have the meta-demo
folder at the same level as the the other meta-* folders.
Outside my poky tree I did the "source poky/oe-init-build-env my-build-folder"
I edited conf/local.conf to set my parallel build options, my MACHINE
to routerstationpro, and my download directory variable.
I then typed "bitbake -k demo-image-mediatomb" but I got an error
message that "ERROR: Nothing PROVIDES 'demo-image-mediatomb'"

Obviously I have missed a step to tell poky how to find that image but
so far I have not been able to google the answer to my mistake.

Thanks in advance for any answers and thanks for such a cool tool.

David Smoot

