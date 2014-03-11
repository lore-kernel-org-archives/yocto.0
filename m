Return-Path: <andreas2025@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FE08E00792
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 12:07:07 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id f8so1369564wiw.0
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 12:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YKmw0hZD2BZxsnCFKujRZcWJpkRv7nsjv8TkfGLqprk=;
	b=oJmPbRyzECfJRsk8qikUluolD9TYFde7mZNYS3PLSKngeOH3xO2RXxNfxZEIOEpjhv
	B51GFmbg+ZUFsmO0SPLYCzUPw/lJhbvGyYiRXbL3hmv6m+aBuUGxQDcA6M9WXxNsfQXA
	VbhQDu1GAwieQypT1E9ku71Z40SZeb+/lVoKofoAL1GP+PIoMuMG+QiwdS23KA4T/eVx
	1raRakwMTbxnVS53QoAS16DOwVZzO+m6Uq861rgUt1Wcsgx80RbiBr+uUzzk2jPnLD0s
	cw6ri2tguHCL4xG39vBW/fHaEdt3Ts4Me0WuMsASPTj2ur2ha8HKYiiXJHBfhS+o6C2f
	gicA==
MIME-Version: 1.0
X-Received: by 10.180.219.44 with SMTP id pl12mr4370731wic.12.1394564825695;
	Tue, 11 Mar 2014 12:07:05 -0700 (PDT)
Received: by 10.216.81.129 with HTTP; Tue, 11 Mar 2014 12:07:05 -0700 (PDT)
Date: Tue, 11 Mar 2014 19:07:05 +0000
Message-ID: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Working with a git'ed kernel on the server
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
X-List-Received-Date: Tue, 11 Mar 2014 19:07:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello list,

I have a git'ed kernel on a server. When I do make "push" changes to the kernel
and then I try bitbake core-image-minimal on my local host, the build
process does not pick up the
changes from the server. I just do bitbake virtual/kernel -c cleanall
to force it to get my latest kernel from the server.

Is there any way to make the recipe to sync to the server every time i
make a build?

Best regards,
Andy

