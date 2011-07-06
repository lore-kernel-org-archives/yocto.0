Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 984074C808F9
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2011 09:05:22 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 24C0E1660164; Wed,  6 Jul 2011 08:05:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 721171660163;
	Wed,  6 Jul 2011 08:04:41 -0600 (MDT)
Message-ID: <4E146B79.3060908@mlbassoc.com>
Date: Wed, 06 Jul 2011 08:04:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: G Rajender <G.Rajender@lnties.com>
References: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>
In-Reply-To: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: minimal yocto images not booting on Beagleboard-xM rev B
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
X-List-Received-Date: Wed, 06 Jul 2011 14:05:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/06/2011 08:00 AM, G Rajender wrote:
> Hi,
>
> I am new to Yocto project and Beagleboard.
>
> I am using Beagleboard-xM rev B. I got the information about Yocto project by search. Yocto is a good open platform for Embedded developers for target specific architectures.
>
> I have started working on Yocto project to build a LTP (Linux Test Project) Test frame work for Beagleboard-xM rev B. I have downloaded the Yocto release 1.0.1 and Beagleboard-xM
> BSP from the Yocto website. I have installed the Yocto project poky build tool and demo image in my Host PC (Ubuntu 10.04)as per poky quick start guide.
>
> *Now I am trying to execute the meta-bsp (meta-beagleboard) binaries (built images) on beagleboard-xM rev B as per README. Hardware file. But the beagleboard-xM revision B is not
> booting with theses BSP images.*

What does "not booting" mean?  What errors are you getting?

>
> **
>
> *Also I want add the Beagleboard BSP to the BBlayers of poky. I am unable to understand the procedure explained in BSP developer’s guide.*
>
> *Can anyone suggest or share the experiences about above problems.*
>
> Thanks in advance and looking for your kind response.
>
> Thanks and regards,
>
> Rajender.G

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

