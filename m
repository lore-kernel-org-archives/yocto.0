Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52F6C4C804D4
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2011 02:30:10 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id D46021C01F05;
	Tue, 19 Apr 2011 09:30:08 +0200 (CEST)
X-Auth-Info: XeDd9jJrqJ99+mWCqB5Tk2RDqwJtQmeHwL/CXq4nk5Q=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id C55BE1C000F1;
	Tue, 19 Apr 2011 09:30:08 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id A8FB83095025;
	Tue, 19 Apr 2011 09:30:08 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 974DCD5269B;
	Tue, 19 Apr 2011 09:30:08 +0200 (CEST)
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4DAC90D3.3050905@intel.com>
References: <inpi0q$617$1@dough.gmane.org> <4DA127F6.3010006@intel.com>
	<20110410082442.28B18142E08A@gemini.denx.de>
	<4DAC90D3.3050905@intel.com>
Comments: In-reply-to Elizabeth Flanagan <elizabeth.flanagan@intel.com>
	message dated "Mon, 18 Apr 2011 12:28:19 -0700."
Date: Tue, 19 Apr 2011 09:30:08 +0200
Message-Id: <20110419073008.974DCD5269B@gemini.denx.de>
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
X-List-Received-Date: Tue, 19 Apr 2011 07:30:11 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Elizabeth Flanagan,

In message <4DAC90D3.3050905@intel.com> you wrote:
> 
> 
> Yes, there was a problem with what I assumed would be our bernard-5.0 release and the tag needed to be moved, which, 
> while a messy practice, was the only available option at the time. The tag shouldn't have been created until after 
> verification of the RC. I'll make sure that this is captured in our release process. If you want, please feel free to 
> open up a bug in bugzilla and assign it to me. As this was a relatively new process, I knew we'd hit some snags. This 
> was one of them, and I'll make sure this is captured in our process so that we don't hit it again.

I know that such things happen, but then it would have been at least a
good idea to post some information about this - as mentioned, nobody
expects that git tags get moved.


Do you also plan to GPG-sign the tags?

Note that annotated tags would also help a lot for example with
commands like "git describe".

Thanks.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Der Dativ ist dem Genitiv sein Tod.

