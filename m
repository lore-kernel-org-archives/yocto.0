Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13E8EE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 17:10:25 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id pb11so17877veb.23
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 17:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=SZvhfVVeXoSVim4FmTD8d/xpHmMW6GjPkg/FV90jXEA=;
	b=YYfqXrg7+2tw30S5D5SF0UtRvvqiwehfej5AGeJ8HuWtsYber0kEE0d18G+med9Rsy
	45S3RTr4KHh49iQng6o4awEFiuFY1pM0/FFBQ4/z/yWUN2/gmT2HHVEUziyfeOaqBdA6
	FsGjMzfj2mAtv8kxqiu6bnahEmYz2jlFr71gGPHtAJYVCffxR0QSavwJ3/QAsOR9z3R8
	pEGLzJpmJMC00Fv24v4dSwYjH7lISx1czaldNw38oi9OiU2zvCnGKioktBxMvy0rSCgA
	BUsbtTfcoX8zWWOXeNzCz1zL2CAB2eNEPLIQ9K+3vjwUX9njKs17C67KUA4PTsc869Zx
	rycg==
MIME-Version: 1.0
X-Received: by 10.52.249.52 with SMTP id yr20mr4681999vdc.35.1374711024382;
	Wed, 24 Jul 2013 17:10:24 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Wed, 24 Jul 2013 17:10:24 -0700 (PDT)
Date: Wed, 24 Jul 2013 17:10:24 -0700
Message-ID: <CAPhnLPBj69yx04Y=kXkY6sjqu7HP4nWqLmB5vVZR_OETyMEH_Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlCqL1pD8REkL1Q5DFQOPHLAURFdSsYsIlX802DfgSh7xz4wgDSG4SuNE1QrEfNKYwLiELS
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build is now available.
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
X-List-Received-Date: Thu, 25 Jul 2013 00:10:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is now available. Please being weekly testing as soon
as possible.

Known issues:

- nightly-arm appears to have a hung bitbake process due to a timed
out sanity test.
- nightly-qa-systemd sanity tests failed to start qemu

-b


http://autobuilder.yoctoproject.org/pub/nightly/20130724-2

eclipse-poky    76df60597ae7cce069a5f1fd45089ea04c7394cd
meta-fsl-arm 	4b8f1b4f11f21043d4a37b1c294fafb8f37f8498 	
meta-fsl-ppc 	5d98580e7b366ef25e917b3c446308de28c8cbd4 	
meta-intel 	bd34513dc12c412f40328001c09fa5407041e912 	
meta-minnow 	a1cfe0e7fc59eb1e430db07840d6b6d54b8733e2 	
meta-qt3 	b73552fb998fd30a01dbee5a172e432a16078222 	
poky 	67864ca79da08df752487a3a4e1a975546da123d

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

