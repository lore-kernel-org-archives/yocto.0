Return-Path: <andreas2025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50E00E008FB; Thu,  8 Jan 2015 02:31:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreas2025[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF145E008E5
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 02:31:24 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id z12so1784993wgg.13
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 02:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PFnrhRdoPKb7/PPejGovyTj1XlEpXEt4Wf/ODZQ2GB8=;
	b=vNqB8wJQ49C16fv1FPDkaL7MQBJN9RolC1kdqCY5c8OIrAH8yrRXIDwbUynn1BmhkJ
	bBi8L+KLqlrEPaRwsTV3NFhK2+05OTTHBxae+vx9Yp6qFZVqSynMGnhhLYJZ1Pt54RZL
	qhscQo+n/Yd6WRYlEQiO2nGOK1fQEWVOgidp4965o6U3CPLLZM+ccUejHHce2sQBsHM3
	X/JwX3ILkRGwXnaSnOnKNXiNuXtfrrjCNHo4vmz9KMwfu2emVWbTQCmz2GX1uu89b4vK
	MdEQtJFozP3rkterk/2PEl71YYHzR1XI046XGUCzo52zvFA7UTCZk5YLcoCrtRE9yy8J
	x1Fg==
MIME-Version: 1.0
X-Received: by 10.180.73.143 with SMTP id l15mr58277644wiv.24.1420713081016;
	Thu, 08 Jan 2015 02:31:21 -0800 (PST)
Received: by 10.216.203.65 with HTTP; Thu, 8 Jan 2015 02:31:20 -0800 (PST)
Date: Thu, 8 Jan 2015 10:31:20 +0000
Message-ID: <CAAVaN8yt1_2mJ7x-1dWA0M5Zx3wALSwxh5wknx8Y=4dTaSMiGQ@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Building two external kernel modules that are on different recipes and have symbol dependencies
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
X-List-Received-Date: Thu, 08 Jan 2015 10:31:28 -0000
Content-Type: text/plain; charset=UTF-8

Dear List,

I am using Yocto dylan release, and I have two external kernel modules
on two different Yocto recipes. One is  exporting symbols that the
other one will use. When I load the modules to  the target with
modprobe I see the message unresolved symbols. In order to solve the
issue, I copied manually my  Module.symvers  file from devshell build
area of module A (the module that exports symbols), to devshell of
Module B (that needs access to those exported symbols)

Does Yocto have a way, based on the order I build my modules to put to
Module.symvers to the right place? Or is there any other way in Yocto
to solve those symbol dependencies for those external modules?

Best regards,
Andy

