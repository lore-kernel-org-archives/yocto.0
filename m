Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog117.obsmtp.com (eu1sys200aog117.obsmtp.com
	[207.126.144.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBFBE0030B
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 07:05:03 -0700 (PDT)
Received: from beta.dmz-eu.st.com ([164.129.1.35]) (using TLSv1) by
	eu1sys200aob117.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT4GbCyNa+cDpUUE5MQCRgKtjmKBGzXKC@postini.com;
	Sun, 08 Apr 2012 14:05:03 UTC
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 71C80A9;
	Sun,  8 Apr 2012 14:04:45 +0000 (GMT)
Received: from relay2.stm.gmessaging.net (unknown [10.230.100.18])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 03A221F64;
	Sun,  8 Apr 2012 14:04:45 +0000 (GMT)
Received: from exdcvycastm022.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm022", Issuer "exdcvycastm022" (not verified))
	by relay2.stm.gmessaging.net (Postfix) with ESMTPS id 03E33A807B;
	Sun,  8 Apr 2012 16:04:39 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.6.6.68]) by
	exdcvycastm022.EQ1STM.local ([10.230.100.30]) with mapi; Sun, 8 Apr 2012
	16:04:44 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Sun, 8 Apr 2012 16:04:44 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac0SYSDax9cXNc9UR9C2XTfF1XA3MQDLL9Ap
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>,
	<4F7C42E5.8000301@windriver.com>
In-Reply-To: <4F7C42E5.8000301@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Sun, 08 Apr 2012 14:05:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
Thanks for your reply.
I am totally new to Yocto.
I have gone through the section BSP/Linux kernel configuration and if I am =
not wrong then it explains how can we configure the kernel, not the how we =
can add/replace a  component(driver etc).=20
lets take the example of UART driver, I want to add my own UART driver code=
.
Should I write a separate recipe file (.bb) for UART Driver?.
if yes then I have to write the recipe files for all my drivers that will b=
e very time consuming.=20
Is there any other way that I can port all my desired drivers into Yocto ke=
rnel?.
Please help me.
Thanks a lot in advance.=20

Best Regards,
Om Prakash Pal =20
________________________________________
From: Bruce Ashfield [bruce.ashfield@windriver.com]
Sent: Wednesday, April 04, 2012 6:17 PM
To: Om Prakash PAL
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On 12-04-04 04:46 AM, Om Prakash PAL wrote:
> Hi,
> I want to build my local kernel/Driver code, not the default one.
> please help how can i do it ?.
> any wiki/docs on this?.

The BSP developer guides show how to extend the yocto kernels, and
also have sections on custom/different kernel versions. Have you
seen that doc yet ? Or have you seen it, and have specific questions ?

Bruce

>
> Best Regards,
> Om Prakash Pal
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


