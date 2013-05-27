Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED24CE0150F
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 09:35:46 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id u59so4163206wes.1
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 09:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=134d6XG1cspw7V/k+8SSbnHi4AF4BxF60UEnGnlCWJY=;
	b=KMarUQ3r5k4jRT7DMQNL/twsQZnj3DAyaonz15VzDrSXNo7qpH5mEtk1N4P1wjDFF3
	w53Va5upFteX4DUOygMj+37UmSYv3/gwin3WFYpc1ofAgrFSQqbZsk8ko6b0gjJF81vJ
	fo/VYrQeFttVN9CB7fv6QalVJxoEgQBj7ChiGRicdVVSjuLcRhbMJkoEKSKZ9NSHZRdG
	MKsypDtNJ2yrqwAJakr9tyos4nAc6jl24amlvFhYvN3OVGI4Ms/rf/qLmR/fuAVIuvml
	Pl09q19fvDsbEePo4IsbvVIWx9HY2+hfxIqR6GmqRInVfpjYc4tzkSLtCMz+ft2tGopT
	Qz2g==
MIME-Version: 1.0
X-Received: by 10.180.9.7 with SMTP id v7mr8975081wia.61.1369672545441; Mon,
	27 May 2013 09:35:45 -0700 (PDT)
Received: by 10.194.37.6 with HTTP; Mon, 27 May 2013 09:35:45 -0700 (PDT)
Date: Mon, 27 May 2013 12:35:45 -0400
Message-ID: <CAHUNapRLhMrO9Tt0QRPH703fQ7FdDiax30Ow8EzooiKH1o=Y2Q@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Subject: doc nit
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
X-List-Received-Date: Mon, 27 May 2013 16:35:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

The Yocto Project Development Manual, section 3.2.2 (Source Control
Management (SCM)) states that:

"Git is a distributed system that is easy to
backup (each checkout is a backup in itself)"

I'm not 100% sure a "checkout" would be considered a backup. I think
most people would say that a "clone" is more like a backup than a
"checkout". No?

Best regards,
    Trevor

