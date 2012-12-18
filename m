Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4249CE00294
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 22:27:29 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YQTmb15WPz3hhdT
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:27:26 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YQTmZ4Scvzbbjm
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:27:26 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id EvxtvlT6xXsk for <yocto@yoctoproject.org>;
	Tue, 18 Dec 2012 07:27:25 +0100 (CET)
X-Auth-Info: TZP0zK9gDEgU4BW4wK70eyQ2oHtWOjAa5TE+GLnIBCk=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:27:25 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 5773B1A6DFC
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:27:24 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 26B3A202B11
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 07:27:24 +0100 (CET)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20121215132238.503DC201C62@gemini.denx.de>
References: <20121215132238.503DC201C62@gemini.denx.de>
Comments: In-reply-to Wolfgang Denk <wd@denx.de>
	message dated "Sat, 15 Dec 2012 14:22:38 +0100."
Date: Tue, 18 Dec 2012 07:27:24 +0100
Message-Id: <20121218062724.26B3A202B11@gemini.denx.de>
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
X-List-Received-Date: Tue, 18 Dec 2012 06:27:29 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

In message <20121215132238.503DC201C62@gemini.denx.de> I wrote:
>
> Hi,
> 
> can anybody explain to me the systematics of the git tags ysed to mark
> the Yocto / Poky releases?
> 
> For example, for Yocto 1.2 and before, we have release tags like
> denzil-7.0, edison-6.0, bernard-5.0, laverne-4.0, etc.
> 
> Some parts of the current 1.3 Yocto release refer to it as "Poky 8.0"
> or Version "8.0 Danny", see for example here:
> https://www.yoctoproject.org/download/yocto-project-13-poky-80
> 
> However, there is no such release tag as "danny-8.0".
> 
> Instead, there is a tag "1.3" - but there are no similar tags as "1.1"
> or "1.2" for the earlier releases?
> 
> 
> What is the system in this numbering / tagging?
> 
> 
> Releated:  is there any document which explains the branch names being
> used for development.  for example, how can I find out ("officially")
> what the branch name for Yocto 1.4 will be / is ?


No comments anybody?    Thanks in advance!

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Q: Why do PCs have a reset button on the front?
A: Because they are expected to run Microsoft operating systems.

