Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD28DE006CA; Tue, 22 Mar 2016 11:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3347AE0048B
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 11:40:19 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id k12so171262587lbb.1
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 11:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=/ImxKTE6+6iYi3l2Dc87IAnXAzzEjeqIFoIsdH9/2wI=;
	b=sp5rfwctdytekx5ekyb9bzZ2n1FS7YXp2icy9GmoUhcnPacOlSAj+5atBXdarbUdgX
	C5/yA8dxRLgeY9067htw5HDMusRy+AoTTozbUslpXxswaatbpn7KY68880BEuXW3PDPB
	QBZAqc1aR7iNuN6Q0Bc9yJjZ2dQbi5GCLVz3WmRoY1f5UNKlGOzBp2bSa6h19YiuWtpP
	YELfNp9DKLWuOA5ITdLNAGv9dopdPEfRV4g0fM0DNoSXhNhDcrkQjb0D12/obMrawt5g
	3XSJJJ+kSRL+K8yuZZkzHhMO8/zs3xWzlcu5WVpG4Ea+KpKhaEfVWSr19Ojpmqr+WsYT
	2W0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:content-transfer-encoding;
	bh=/ImxKTE6+6iYi3l2Dc87IAnXAzzEjeqIFoIsdH9/2wI=;
	b=NGhvLn+yJHM8MMreW8i9WtadFMCSuJU+oEAbONB+J3H5TTKcRL5MoW1ls3OMGskMB2
	vyuPFSB9J3WmFnlh8ib/9dRRlgOquRhQQnYuH/tqA+51orjqyTZJe+TTAFFGHLFQSKes
	8t6OA4RHUzhEpS6fLEtAzDtBJk4Hy3iMBFcH2JGkC3e35JIhSXFkNRe0w2cDioFqiHuO
	8ki05rLFTL2R+jfjJNGf4MLRGvbiDfSEJ9/KYC9Xub/VhTfc2yjCjBWLSIKTrMgZocAh
	4faMWDBHyF4nHSSZDMNlgmNEB9lRIgjG80ERH791YRipqm1yIPPoFPxUMjHrbMPrXNBA
	GYUA==
X-Gm-Message-State: AD7BkJIaOvUsvWxJzLPhTLMx0PeKUL5x2sEWsKGvkBjlzW3mhvWhSfha5yOyOTg8dU2wkZDe9JPUTBYsMcYY9w==
X-Received: by 10.112.168.194 with SMTP id zy2mr13808725lbb.102.1458672018240; 
	Tue, 22 Mar 2016 11:40:18 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Tue, 22 Mar 2016 11:39:58 -0700 (PDT)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 22 Mar 2016 11:39:58 -0700
X-Google-Sender-Auth: dGb6Fi8DBVuDnO1V_EGuSMLs5aY
Message-ID: <CA+YB3raxynjSZAhGA7VOoyddY1BGkNdFvOWRAmHZwYT2HyGVaA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: REMINDER: REGISTER TODAY - Yocto Project Developer Day US, April 7, 2016 - San Diego
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
X-List-Received-Date: Tue, 22 Mar 2016 18:40:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Register today and get a jump start on using the Yocto Project tools:
https://www.regonline.com/Register/Checkin.aspx?EventID=3D1809027

Check out what our trainers have prepared for the event agenda below.

Introductory Track

=C2=B7        Introduction to the Yocto Project
=C2=B7        Key Concepts
=C2=B7        Build System Workflow
=C2=B7        Examining Recipes
=C2=B7        Standard Recipe Build Steps
=C2=B7        Working with Layers
=C2=B7        Build and Boot Your Custom Image
=C2=B7        Working with Applications


Advanced Track

=C2=B7        Introductions/set up
=C2=B7        New workflows: Toaster, CROPS and devtool
=C2=B7        Deep dive presentation and demo on CROPS
=C2=B7        Deep dive and class exercises on devtool, user/group
creation, and handout boards demo
=C2=B7        Deep dive on Toaster and related topics (e.g. Layer Index, =
=C5=A0)
=C2=B7        Poky-tiny
=C2=B7        Kernel
=C2=B7        Q&A (stump the expert)


EVENT DESCRIPTION:
https://www.yoctoproject.org/yocto-project-developer-day-us-2016-elc

Sincerely,

Yocto Project Advocacy Team



--=20
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

