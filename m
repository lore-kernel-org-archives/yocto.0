Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19C374C8008C
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2011 03:24:43 -0500 (CDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 592321853B8D;
	Sun, 10 Apr 2011 10:24:42 +0200 (CEST)
X-Auth-Info: dmXP5rLBxLFhZ+iTKodt/HpmlOsDv5x51ljk16FnM64=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 77D551C0017E;
	Sun, 10 Apr 2011 10:24:42 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 530782000369;
	Sun, 10 Apr 2011 10:24:42 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 28B18142E08A;
	Sun, 10 Apr 2011 10:24:42 +0200 (CEST)
To: Scott Garman <scott.a.garman@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4DA127F6.3010006@intel.com>
References: <inpi0q$617$1@dough.gmane.org> <4DA127F6.3010006@intel.com>
Comments: In-reply-to Scott Garman <scott.a.garman@intel.com>
	message dated "Sat, 09 Apr 2011 20:45:58 -0700."
Date: Sun, 10 Apr 2011 10:24:42 +0200
Message-Id: <20110410082442.28B18142E08A@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Poky release is 5.0 "Bernard" confusion
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
X-List-Received-Date: Sun, 10 Apr 2011 08:24:44 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Scott Garman,

In message <4DA127F6.3010006@intel.com> you wrote:
>
> This suggests to me that your local git repository isn't up to date. The 
> tag has been moved at least once since it was created, and it sounds 
> like your repository is behind the most recent move of the tag.

You are ...  moving release tags?  Grrrgh!!!

Could you please stop doing this?  Nobody ever expects such a thing.
And while we are at it:  It would also be great if you could
GPG-sign the tags.

Thanks.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"He only drinks when he gets depressed." "Why does he get depressed?"
"Sometimes it's because he hasn't had a drink."
                                     - Terry Pratchett, _Men at Arms_

