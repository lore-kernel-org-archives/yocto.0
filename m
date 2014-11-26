Return-Path: <wd@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82FEDE00953; Tue, 25 Nov 2014 22:58:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 506D9E008D9
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 22:58:32 -0800 (PST)
Received: from frontend02.mail.m-online.net (unknown [192.168.8.183])
	by mail-out.m-online.net (Postfix) with ESMTP id 3jnXxf5NLfz3hjW2;
	Wed, 26 Nov 2014 07:58:30 +0100 (CET)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3jnXxf56RSzvhV9;
	Wed, 26 Nov 2014 07:58:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.184])
	by localhost (dynscan2.mail.m-online.net [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id n_v8FZJRM-0F; Wed, 26 Nov 2014 07:58:29 +0100 (CET)
X-Auth-Info: BnaZdpu4zo94cnk2ytixqb/KX3uM4fIzhJcIYAFaI3g=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Nov 2014 07:58:29 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id B817A1AAC53;
	Wed, 26 Nov 2014 07:58:29 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id A3CB33823E9;
	Wed, 26 Nov 2014 07:58:29 +0100 (MET)
To: Gangadhar N <gangadhar.ubuntu@gmail.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAKxnL=hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@mail.gmail.com>
References: <CAKxnL=hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@mail.gmail.com>
Comments: In-reply-to Gangadhar N <gangadhar.ubuntu@gmail.com>
	message dated "Wed, 26 Nov 2014 12:17:01 +0530."
Date: Wed, 26 Nov 2014 07:58:29 +0100
Message-Id: <20141126065829.A3CB33823E9@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: how to separate packages in downloads folder into those that run on target and those that do not run on target?
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
X-List-Received-Date: Wed, 26 Nov 2014 06:58:42 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Gangadhar,

In message <CAKxnL=hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@mail.gmail.com> you wrote:
> 
> I want to separate the packages in downloads folder. I want to separate the
> packages into those that run on target and those that do not run on the
> target. The idea is to feed the packages that go into target to fossology


Do you think such a separation is possible at all?  Depending on your
target configuration, packages might go into both - for example, if
you build SDK / toolchain images, then gcc and related tools will be
both in the cross tools and in the target file system.

And why do you need to split the downloads folder for that?  You have
the list of packages that get installed into your target file system -
is this not sufficient?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The complexity of software is an essential property, not an  acciden-
tal  one. Hence, descriptions of a software entity that abstract away
its complexity often abstract away its essence.    - Fred Brooks, Jr.

