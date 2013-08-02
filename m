Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1421E013EC
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 06:37:02 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c68YS4LKyz4KK3g
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 15:37:00 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c68YS2QHgzbbmb
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 15:37:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id tCO2LC9Wp9LI for <yocto@yoctoproject.org>;
	Fri,  2 Aug 2013 15:36:51 +0200 (CEST)
X-Auth-Info: UQ/N+M96sjk3WXSaSJke6yQJMQcPelQ1binJTUNmY+8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 15:36:51 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id D5BF21A77EF
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 15:36:50 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id C2420380BF8
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 15:36:50 +0200 (MEST)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Fri, 02 Aug 2013 15:36:50 +0200
Message-Id: <20130802133650.C2420380BF8@gemini.denx.de>
Subject: Unhandled dependency checking
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
X-List-Received-Date: Fri, 02 Aug 2013 13:37:04 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

I'm looking ofr a good way to deal with some build breakages caused by
missing dependency checking.

The problem: some packages require certain capabilities, without
checking for these, and actually I can;t see a good way how to
implement such checking.

For example, the "lttng" package requires module support.  But when
you modify the defconfig for the Linux kernel and disable module
support there, then the build for "lttng" will break.

Is there some good way to handle or at least to test for such "hidden"
dependencies on features provided by other packages, so we could at
least issue more useful error messages to the end user?

Thanks in advance.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The rule on staying alive as a program manager is to give 'em a  num-
ber or give 'em a date, but never give 'em both at once.

