Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32238E005A2
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 05:15:30 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dQLqN6LGBz4KK2k;
	Thu, 21 Nov 2013 14:15:28 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dQLqN6214zbbh7;
	Thu, 21 Nov 2013 14:15:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id IQrLARGrSP4t; Thu, 21 Nov 2013 14:15:27 +0100 (CET)
X-Auth-Info: mE7mEfUOBuwXJFPmqjAtRB/cRz+PMwvQPqLSC5GGwi0=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Thu, 21 Nov 2013 14:15:26 +0100 (CET)
Message-ID: <528E076F.6060307@denx.de>
Date: Thu, 21 Nov 2013 14:15:27 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>, Stefano Babic <sbabic@denx.de>
References: <528DF846.9050306@denx.de>
	<CAMCfZKE1fv=ZGB=HMe-4BmG-XRKMb_kaOADESwe-6mD1wp_hDw@mail.gmail.com>
In-Reply-To: <CAMCfZKE1fv=ZGB=HMe-4BmG-XRKMb_kaOADESwe-6mD1wp_hDw@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Deploying Yocto build images
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
X-List-Received-Date: Thu, 21 Nov 2013 13:15:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Diego,

On 21/11/2013 13:34, Diego Sueiro wrote:
> Stefano,
> 
> This is a really great tool. I'm always developing a new software update
> tool for each new project, since there are different requirements.

That is right. I did the same in the past, until I recognize that I
waste a lot of effort.

> As I can see you are dealing with different scenarios, and this is
> really amazing.
> 

Sure. I hope that the tool remains general enough to allow to include
scenarios that I was not able to foresee.

> I'm already cloning meta-swupdate to test it.
> Looking at recipes I realized that swupdate is initialized in an
> sysVinit environment.
> Did you plan to use systemd too?
> Maybe I can contribute to this.

Let's say that how the tool is started is open and can be easy
customized. Updating to systemd is surely nice.

One use of case I have is to not use neither sysVinit not systemd at
all. The tool is put into a initrd and it is the only task running, that
is I modified rcS to start only the tool and to speed up the booting
process. But as I said, this is only a use case.

Best regards,
Stefano



-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

