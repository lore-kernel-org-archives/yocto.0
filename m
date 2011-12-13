Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A67E00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:28:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBDNSHAh013858
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Dec 2011 15:28:17 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.98) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 13 Dec 2011 15:28:17 -0800
Message-ID: <4EE7DF90.1060000@windriver.com>
Date: Tue, 13 Dec 2011 18:28:16 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: David Smoot <davidsmoot@gmail.com>
References: <021F09F7-E9C9-4088-A8CB-881FAF0FBF85@gmail.com>
In-Reply-To: <021F09F7-E9C9-4088-A8CB-881FAF0FBF85@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error in routerstation pro machine.conf?
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
X-List-Received-Date: Tue, 13 Dec 2011 23:28:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-13 6:05 PM, David Smoot wrote:
> I'm still very new and very clueless but I humbly submit what looks like
> a bug to me..
>
> "routerstationpro.conf" in meta-yocto/conf/machine/ lists machine
> features the hardware does not have.
>
> http://www.ubnt.com/wiki/RouterStation_Pro lists the hardware specs and
> it lacks a display adapter (hence no screen nor keyboard) and it also
> lacks USB slave hardware (hence no point in usbgadget).
>
> File a bugzilla report or is there a reason for that configuration?

It's based off a generic MIPS configuration, the extra configs are there
from that effort and do no harm at the moment, so I'm inclined to leave
them as is. i.e. screen doesn't really trigger anything to be added
to the image (last I checked anyway), and keyboard gets us the keymaps
(which IIRC is used on the console). So neither does any harm.

gadget on the other hand, doesn't do us any good.

The boards features are planned to be documented in a README file,
rather than the conf file.

We have an update for this to the 3.0 kernel shortly which will include
the mentioned README file.

But a low level bugzilla can't hurt for the gadget issue. We can fix
it while updating the board.

Cheers,

Bruce

>
>
> David
>
> David Smoot
> davidsmoot@gmail.com <mailto:davidsmoot@gmail.com>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


