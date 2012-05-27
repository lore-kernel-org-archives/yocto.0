Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 284A3E013A6
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 10:13:32 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 27 May 2012 10:13:31 -0700
Received: by lbbgh12 with SMTP id gh12so1329092lbb.25
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 10:13:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=xKJDxn+TfKJa2whAn/UzMUljHcjDAffPmeuJDDSYhHE=;
	b=P/+kVdquIlkMR71SRUfV6hcMoYDP04D/Qb/Yk+negZMccpzGwnrHm+hPSFL3Z+JcYm
	qo874RK5avLQLI8lBLUZ0nmL5VrgX4yaF+h44PtBjOl997/Xce9scj3+VYHjeklNqZHk
	LC/CnKsfH86NllKc4lSlBmdEIHCjX/jEgO5x5GS7OJl0eD+z+jgtWOEwLUuAvbNmkqP5
	O+CXcClTEjQepMcna22sCML6/akn8Y7VGA/+CxxgVK3BQLTO5koQQJh0fHLSQqyiE2sR
	rMX9kJ1KBl41ivvkcGMQthRrdF2Ww212yKJYW+CG7eUx4/Zfhg4lCn0Zw9Dsi/uhCPP2
	lvPQ==
MIME-Version: 1.0
Received: by 10.112.37.71 with SMTP id w7mr2521822lbj.2.1338138790043; Sun, 27
	May 2012 10:13:10 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Sun, 27 May 2012 10:13:10 -0700 (PDT)
Date: Sun, 27 May 2012 10:13:10 -0700
Message-ID: <CAPhnLPD8vLUe6NWJ4rSLc=EkNT3XjpDwUuMfgMEERA5wEaz_Kg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQm78mZ8l+7E28W8LK083nT8mLFKpAQwF2HcDN4vTEl34bspih2RHkQj/4I91kbYS/FsPufO
Subject: Autobuilder test status.
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
X-List-Received-Date: Sun, 27 May 2012 17:13:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

The autobuilder tests have almost completed and the autobuilder is
back on line with the exception of meta-intel builds. Those builders
will be online on Tuesday.

I have one final test of master running to determine the base time
needed to rebuild off of the same git revision. Once that build is
finished I'll turn the build failure emails back on.

Please be aware that prior credentials have changed during the
upgrade. If you had the ability to run builds on the ab and no longer
have that ability, please contact me off list.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

