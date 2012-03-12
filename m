Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26FF8E0030B
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 06:14:51 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3V606K3fkcz3hhVv;
	Mon, 12 Mar 2012 14:14:49 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3V606K52zzz4KK2R;
	Mon, 12 Mar 2012 14:14:49 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id t2v1+JTd48yg; Mon, 12 Mar 2012 14:14:48 +0100 (CET)
X-Auth-Info: mWet71rCJsY+SiNe92sG72Yn+CIp4uFWy4eyEFmenNE=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 12 Mar 2012 14:14:48 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 5A24B1A58BB;
	Mon, 12 Mar 2012 14:14:48 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 24BB0202BE9;
	Mon, 12 Mar 2012 14:14:48 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <3971839.nMHIKpoOXs@helios>
References: <4F296826.4030909@gmail.com> <3971839.nMHIKpoOXs@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 01 Feb 2012 16:41:11 +0000."
Date: Mon, 12 Mar 2012 14:14:48 +0100
Message-Id: <20120312131448.24BB0202BE9@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: 1.2_M2-Final build failures
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
X-List-Received-Date: Mon, 12 Mar 2012 13:14:52 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul,

In message <3971839.nMHIKpoOXs@helios> you wrote:
> On Wednesday 01 February 2012 11:28:22 jfabernathy wrote:
> > Using the tarballs for Poky and meta-intel for 1.2_M2-Final, I was
> > getting a lot of build failures below is what worked and what didn't.
> > Not sure if this is a bug or if I'm missing something. I extracted the
> > meta-intel tarball for 1.2_M2-Final in the poky directory created by
> > extracting the poky tarball for 1.2_M2.Final.
> >...
> >  3. building n450 core-image-minimal fails with error: ERROR: Unable to
> >     parse /home/jim/poky/meta/recipes-core/tasks/task-base.bb:00:20
> >     Traceback (most recent call last):
> >        File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 379, in
> >     multi_finalize(fn='/home/jim/poky/meta/recipes-core/tasks/task-base.bb
> >     <http://task-base.bb>', d=<bb.data_smart.DataSmart object at
> >     0x4a801d0>):
...
> >  4. building cedartrail core-image-minimal fails with error: ERROR:
> >     Unable to parse conf/bitbake.conf: Could not include required file
> >     conf/machine/include/ia32-base.inc
> 
> I think I know what's going on here. In previous editions it was enough to 
> have just the meta-intel sub-layer in your bblayers.conf (e.g. meta-crownbay) 
> - now you also need to add meta-intel itself to get certain common files. If 
> you do this then your errors will go away.

Is it correct to assume that your note refers to the "4." problem
above only?

I see the very same error as described as "3." above, but I don't use
sub-layers.

Any idea what mightbe causeing this, and how to fix it?

This is with 1.2_M3.rc1 ...

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
No problem is insoluble.
	-- Dr. Janet Wallace, "The Deadly Years", stardate 3479.4

