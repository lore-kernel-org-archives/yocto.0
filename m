Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44424E01304;
	Tue, 22 May 2012 22:44:43 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Vy2jk180Cz4KLlD;
	Wed, 23 May 2012 07:44:40 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3Vy2jh6TMDz4KK7L;
	Wed, 23 May 2012 07:44:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id uIiiiR05YemK; Wed, 23 May 2012 07:44:40 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 23 May 2012 07:44:40 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id D21951A85E4;
	Wed, 23 May 2012 07:44:39 +0200 (CEST)
Received: from gemini.denx.de (localhost [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 75DAD20025A;
	Wed, 23 May 2012 07:44:39 +0200 (CEST)
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
References: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
Comments: In-reply-to "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
	message dated "Tue, 22 May 2012 17:45:35 -0700."
Date: Wed, 23 May 2012 07:44:39 +0200
Message-Id: <20120523054439.75DAD20025A@gemini.denx.de>
Cc: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
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
X-List-Received-Date: Wed, 23 May 2012 05:44:44 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Elizabeth,

In message <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com> you wrote:
> 
> This release enables the BSP to use the latest available kernel
> patches for Intel's PowerVR graphics driver. The BSP image includes
> time limited kernel images for testing purposes.

This is probaby a stupid question, so I apologize in advance:

What is a time limited kernel image?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
You have the capacity to learn from  mistakes.  You'll  learn  a  lot
today.

