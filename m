Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9A33AE006C2
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 05:43:10 -0800 (PST)
Received: (qmail 31578 invoked by uid 1003); 10 Jan 2013 13:43:10 -0000
Received: from unknown (HELO ?192.168.43.231?)
	(philip@opensdr.com@32.169.62.27)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	10 Jan 2013 13:43:09 -0000
Message-ID: <50EEC56A.2030006@balister.org>
Date: Thu, 10 Jan 2013 08:43:06 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Andreas Schweigstill <andreas@schweigstill.de>
References: <1357813615700846500@schweigstill.de>
In-Reply-To: <1357813615700846500@schweigstill.de>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: Recipes for Xilinx ZC706 (Zynq 7045) and Avnet Zedboard
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
X-List-Received-Date: Thu, 10 Jan 2013 13:43:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 01/10/2013 05:26 AM, Andreas Schweigstill wrote:
> Hello,
> 
> after successfully using the recipe for the ZC702 development board I would
> like to know if anybody is working on recipes for the Xilinx ZC706 (Zynq 7045)
> and Avnet Zedboard.


Trying ....

I am looking at the best way to do this. My goal is to get one kernel in
meta-zynq that is pretty good across the public boards and do the board
selection via the device tree.

In the meantime, you can build a rootfs for the zc702 and use a kernel
built outside OE. Do you know if there is support for the zc706 in the
code on the public Xilnx git repo.

Philip


> 
> Thank you very much in advance!
> 
> With best regards,
> Andreas Schweigstill
> 
> ​-- 
> Dipl.-Phys. Andreas Schweigstill 
> Schweigstill IT | Embedded Systems 
> Schauenburgerstraße 116, D-24118 Kiel, Germany 
> Phone: (+49) 431 530354-35, Fax: (+49) 431 530354-36 
> Mobile: (+49) 171 6921973, Web: http://www.schweigstill.de/ 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

