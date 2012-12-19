Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E420EE013EB
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 11:23:28 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YRQxV5NM2z3hhlB;
	Wed, 19 Dec 2012 20:23:25 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YRQxT3jszzbbjB;
	Wed, 19 Dec 2012 20:23:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id Z0LlBGwyhsmo; Wed, 19 Dec 2012 20:23:24 +0100 (CET)
X-Auth-Info: gdCiIrZWZa/Ml8+7PAr0Y+dDddGNGYX6BaGKTGnWjFw=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 19 Dec 2012 20:23:24 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 387E61A6E00;
	Wed, 19 Dec 2012 20:23:24 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 23783202B6E;
	Wed, 19 Dec 2012 20:23:24 +0100 (CET)
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAPhnLPBXsYcNDeKsW6xBLjSrJunHUDtkRohR_aHtU9PysQMLhg@mail.gmail.com>
References: <20121215132238.503DC201C62@gemini.denx.de>
	<CAPhnLPBXsYcNDeKsW6xBLjSrJunHUDtkRohR_aHtU9PysQMLhg@mail.gmail.com>
Comments: In-reply-to "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
	message dated "Tue, 18 Dec 2012 09:42:06 -0800."
Date: Wed, 19 Dec 2012 20:23:24 +0100
Message-Id: <20121219192324.23783202B6E@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Git tag systematics ?
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
X-List-Received-Date: Wed, 19 Dec 2012 19:23:29 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Elizabeth,

In message <CAPhnLPBXsYcNDeKsW6xBLjSrJunHUDtkRohR_aHtU9PysQMLhg@mail.gmail.com> you wrote:
>
> > However, there is no such release tag as "danny-8.0".
> 
> You are correct. That was an oversight on my part. I've corrected it.

Thanks.

Is there some formal procedure in place how git release tags are
assigned, and when?

> > What is the system in this numbering / tagging?
> 
> Milestones: 1.x_My.rcz
> Major releases: 1.x and they should also get the name-x.y.z tag

Thanks again - but is there any documetn somehere on the web pages or
in the wiki that actually says what the name of the next release will
be, and which branch it is being worked on?

> > Releated:  is there any document which explains the branch names being
> > used for development.  for example, how can I find out ("officially")
> > what the branch name for Yocto 1.4 will be / is ?
> 
> When Richard tells me :)

We have a "1.4_M1.final" tag in the "1.4_M1" branch, and I see similar
"1.x_My" branches for the other releases.  When will some "name-..."
branch become visible?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Lots of people drink from the wrong bottle sometimes.
	-- Edith Keeler, "The City on the Edge of Forever",
	   stardate unknown

