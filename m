Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC49E01366
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 14:29:17 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id db10so3400523veb.5
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 14:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=mbmLhgPtdbrGvaYNwErcrgUv1GEcbjmYxDipHjwPYgc=;
	b=VvWwr2lRq+MD4U6QTOMsy6hBcc7UfPc0yk7zIoNikV/o5PlZEisk2ne2boAv9rHH2T
	gEhLAr7LklzJMoVjCQ0XXqFrPqbvu5lhTo7FM3hhek2xxZUEYy7kqoZSo/6GaWna7syc
	oqznuuHQa2I7mL6aNB5oUAheuUAZGtMjucL7XZIvnP3+ZbSAvQyMVIcxCSj5LvoPyAde
	M1iubMx4c8zESZY4B3UwdIvvrTv6VHnLMYBKMzeQ37dKvxnJPLdQmkeCSLwA3yjG3rTU
	r0kU1kog2RfwgSYAp0K8avDXg6d5AK3+ZsR40zWVephjRHokWVs4oy9ArGyeBRTJ9BN4
	pL2Q==
MIME-Version: 1.0
X-Received: by 10.58.133.81 with SMTP id pa17mr28710699veb.37.1368739756536;
	Thu, 16 May 2013 14:29:16 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Thu, 16 May 2013 14:29:16 -0700 (PDT)
Date: Thu, 16 May 2013 14:29:16 -0700
Message-ID: <CAPhnLPAaEUu68tyzBS97CGCcyvMPc7C+_=Kj95tH9i3GLCFfrw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmPCiooBa3Fu7D57wQ21yTsMu9JTwiZBB8VZuHmmw9ylgPf22K08YRTCp9GCqAHC9MVgL4k
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: 1.3.2 buildout
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
X-List-Received-Date: Thu, 16 May 2013 21:29:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I've started the rebuild of 1.3.2. I think I've fixed
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4492 however, please
do not run a build on the main AB tonight until I give the all clear.
I may need to generate this by hand.

meta-fsl-arm 	045239e8fb3babb4194e50857298f5136102d3d7 	
meta-fsl-ppc 	084331c6f72dfe8be2f4981c802c43ae44d3b812 	
meta-intel 	d44f005338012cc7111190122b2ab08a29c0e0e7 	
meta-qt3 	c86fb1727ae09526c442ec29fffde3f010aa70eb 	
poky 	8450317a6cbcc0b3e5ec00b266608ee1740d906c 	

http://autobuilder.yoctoproject.org/pub/nightly/20130516-3

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

