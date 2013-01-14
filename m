Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B53CE00527
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 09:56:54 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YlMnb4TfPz4KKDS;
	Mon, 14 Jan 2013 18:56:51 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YlMnb4MGnzbbhq;
	Mon, 14 Jan 2013 18:56:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 0QrBe2P7YUCJ; Mon, 14 Jan 2013 18:56:37 +0100 (CET)
X-Auth-Info: uGDzWzgmsx5LhnMdeM5OShi+JHXn2/ihM0YkjmOm7DI=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 14 Jan 2013 18:56:49 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 011A11A1499;
	Mon, 14 Jan 2013 18:56:49 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id E653B200A4C;
	Mon, 14 Jan 2013 18:56:48 +0100 (CET)
To: dedekind1@gmail.com
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1358167593.2731.66.camel@sauron.fi.intel.com>
References: <1358167593.2731.66.camel@sauron.fi.intel.com>
Comments: In-reply-to Artem Bityutskiy <dedekind1@gmail.com>
	message dated "Mon, 14 Jan 2013 14:46:33 +0200."
Date: Mon, 14 Jan 2013 18:56:48 +0100
Message-Id: <20130114175648.E653B200A4C@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: [ANOUNCEMENT] bmaptool
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
X-List-Received-Date: Mon, 14 Jan 2013 17:56:54 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Artem,

In message <1358167593.2731.66.camel@sauron.fi.intel.com> you wrote:
> 
> Please, read all the details in the project wiki page:
> https://source.tizen.org/documentation/reference/bmaptool
> 
> The project was created for Tizen IVI, but it is generic and is not
> bounded to Tizen in any way.
> 
> I do not want to duplicate the bmap-tools documentation here, but
> instead, let me just describe how we use it in Tizen IVI.

Thanks for doing this, as the links on the page referenced above are
broken:  both [1] "Introduction" and [2] "Usage" give just a 404 to
me...

[1] https://source.tizen.org/documentation/reference/bmap-tool/bmap-introduction
[2] https://source.tizen.org/documentation/reference/bmap-tool/usage


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
If the odds are a million to one against something occuring,  chances
are 50-50 it will.

