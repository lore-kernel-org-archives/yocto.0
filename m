Return-Path: <ndec13@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB1F4E0054B
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 08:37:07 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id k7so2952734oag.2
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 08:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=c6f8W42u+im47qCkl49KoBw6bU0jbqIiHL9MUcgOG7g=;
	b=vTT8r9cTex8+Tuh8AffgjVuVMqDMMB2hXGRJq1ln/nNr/xHjLSFqffqNtiOmF//cyQ
	j5zdZMGlJq1twjnkR0LsdvcJSGrXf8C/kePD/uX0X4VRdyOhtsL8lnwizTPxvzglNxoP
	vKGsfYtq7ljiyojPvDeFvJ2AnLGtfoaL2k6QgUo+o0wHYo0DydFT8SbgYgzMY/l0TjEg
	gpzuU1awwO2VlU2zVbBHZdhPU4wqCOlOsS4/6bDk9mi6At5YN+HrBy8xYfFfV2esxBns
	UE3tP8iUF8KPG4QYFrhBptPTGLOYN0EnJVWar39CAf60G7RX+j9Rc+6BsmWqB7Sz/wfz
	GHng==
X-Received: by 10.60.133.112 with SMTP id pb16mr20654853oeb.93.1366904226992; 
	Thu, 25 Apr 2013 08:37:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.170 with HTTP; Thu, 25 Apr 2013 08:36:46 -0700 (PDT)
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Thu, 25 Apr 2013 17:36:46 +0200
Message-ID: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Compliance program questions
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
X-List-Received-Date: Thu, 25 Apr 2013 15:37:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi there,

I have a couple of questions regarding the compliance program. If
there is a better place for asking such questions, please let me know.

I have studied the Yocto compliance documentation, [1] on the website,
and I have the following questions:

 - is there any 'practical' guide with "do's and don'ts" to help make
a sucessful Yocto Project Compatible registration?
 - i understand that while the project should build with the OE core
toolchain, it is not required to use the OE core toolchain 'by
default', so we should be able to provide our own modified/customized
toolchain in our layers, is my understanding correct?
 - it is recommended, but not mandatory not use the Yocto kernel, so
we can use any mainline version in our BSP layers, right?
 - is it tolerated to change the versions of some components from
OE-core or meta-oe? Not just add patches through .bbappend, but
actually use an older or a more recent version of components, let's
say Gstreamer for example?
 - can we included new recipes for software programs not already
included in oe-core or meta-oe in our layers, or do we have to
contribute them back into oe-core or meta-oe before registration?
 - the Yocto project compatible registration is made against a
specific version of Yocto. What happens when a new Yocto version is
released? Should we go through the registration process again?

thanks a lot!

nicolas


[1] https://www.yoctoproject.org/ecosystem/yocto-project-compliance-program

