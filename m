Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0065CE002F9
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 10:49:43 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dQVF16k3rz4KK6j;
	Thu, 21 Nov 2013 19:49:41 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dQVF16Vp2zbbgx;
	Thu, 21 Nov 2013 19:49:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id IZ2Q7BhKXgs6; Thu, 21 Nov 2013 19:49:40 +0100 (CET)
X-Auth-Info: m/51lQgTRWGfYZG5aajuiebCvHyL0Y588lQT/CEU6aU=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Thu, 21 Nov 2013 19:49:40 +0100 (CET)
Message-ID: <528E55C4.3040805@denx.de>
Date: Thu, 21 Nov 2013 19:49:40 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Michael_E_Brown@Dell.com, diego.sueiro@gmail.com, sbabic@denx.de
References: <528DF846.9050306@denx.de>
	<CAMCfZKE1fv=ZGB=HMe-4BmG-XRKMb_kaOADESwe-6mD1wp_hDw@mail.gmail.com>
	<DB6E482E89290547898851B8CC9D8110012FAE31A0@AUSX7MCPS302.AMER.DELL.COM>
In-Reply-To: <DB6E482E89290547898851B8CC9D8110012FAE31A0@AUSX7MCPS302.AMER.DELL.COM>
X-Enigmail-Version: 1.5.2
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 21 Nov 2013 18:49:44 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi Michael,

On 21/11/2013 19:20, Michael_E_Brown@Dell.com wrote:
> Thanks for posting this. It’s very timely for a project I am in the
> initial stages of designing. I have looked over the docs and some of the
> code, and am interested in using this.
> 
>  
> 
> I would make a couple suggestions:
> 

Thanks !

> 1)      As you mention, documentation is important. Unless this is very
> well documented, it’s difficult for other people to take up and use
> effectively, or to advocate for its use in a group

I know, and I am understand there are a lot of things that I have not
explained. Documentation is first priority.

> 2)      Progress indications: it’s going to be fairly important to build
> in some way to notify other process about the state of the update.
> A
> flexible framework for sharing progress would be very much appreciated.

There is an interface using Unix Domain Socket to communicate with the
installer. There is only a couple of implemented messages (start
installer - get status). It is quite rudimentary, but it can be extended.

This interface is also used by the AJAX interface (see in ./www) to
report the current status to the operator's browser when a downloaded is
started from network. Another use case is to output the status on a LCD:
a separate process can ask the installer and render the output for the
operator.

> There are a couple scenarios I have, but the main one is a network
> notification where one device is being updated by another. The updated
> device should be able to signal update progress to the updater device in
> a flexible fashion. I haven’t looked at the code hard enough to see how
> difficult this would be to add.

I think it is should be not very difficult. As I said, there is already
an interface that can be easy extended.

Regards,
Stefano


-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

