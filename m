Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B35A3E007FE
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2014 04:26:24 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3fRncZ1Rwnz4KK41;
	Sun, 16 Feb 2014 13:26:21 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3fRncY5v4Czbbff;
	Sun, 16 Feb 2014 13:26:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 5BySx4hpi745; Sun, 16 Feb 2014 13:26:20 +0100 (CET)
X-Auth-Info: K/At/cenl4IWtZKxVUo6EVI6ixmuoVd2cWrf3KoquUk=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Sun, 16 Feb 2014 13:26:20 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 55F9F1A997E;
	Sun, 16 Feb 2014 13:26:20 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id EB3F4380610;
	Sun, 16 Feb 2014 13:26:19 +0100 (MET)
X-Mailer: exmh version 2.8.0 2012-04-28 with nmh-1.5
To: Gary Thomas <gary@mlbassoc.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Sun, 16 Feb 2014 13:26:19 +0100
Message-Id: <20140216122619.EB3F4380610@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Known toolchain bug?
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
X-List-Received-Date: Sun, 16 Feb 2014 12:26:29 -0000
X-Groupsio-MsgNum: 18135
Content-Type: multipart/mixed ;
	boundary="==_Exmh_1392553573_260960"

--==_Exmh_1392553573_260960
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit
In-reply-to: <52FE2B80.9030907@mlbassoc.com>
References: <20140214142722.1D01B3804C0@gemini.denx.de> <52FE2B80.9030907@mlbassoc.com>
Comments: In-reply-to Gary Thomas <gary@mlbassoc.com>
   message dated "Fri, 14 Feb 2014 07:43:12 -0700."

Dear Gary Thomas,

In message <52FE2B80.9030907@mlbassoc.com> you wrote:
> > 
> > in message [1] on the Linaro mailing list, Koen Kooi reported a
> > toolchain problem.  I can reproduce the same problem both in Yocto
> > 1.5.1 and witht he current top-of-tree; for example, using the latest
> > autobuilder result
> > core-image-sato-sdk-imx53qsb-20140213124023.rootfs.tar.bz2
> > I get this [source of Koen's test program attached]:
> 
> Source code attachment missing?

Sorry.  Here it is...

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Is the glass half empty, half full, or twice as large as it needs to


--==_Exmh_1392553573_260960
Content-Type: text/plain ; name="b.cpp"; charset=us-ascii
Content-Description: b.cpp
Content-Disposition: attachment; filename="b.cpp"

#include <iostream>
#include <thread>
#include <mutex>

std::mutex mx;
int i;

void thrfunc();

int main(void)
{
   i=0;
   std::thread          thr1(thrfunc),thr2(thrfunc);

   thr1.join();
   thr2.join();

   return 0;
}

void thrfunc()
{
   mx.lock();
   i++;
   std::cout << std::this_thread::get_id() << " i: " << i << std::endl;
   mx.unlock();
}

--==_Exmh_1392553573_260960--
