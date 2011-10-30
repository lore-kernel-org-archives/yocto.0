Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9FDDE012F3
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 16:17:05 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id C4AC7188A168;
	Mon, 31 Oct 2011 00:17:57 +0100 (CET)
X-Auth-Info: mXAVWr50Byvb7+WQurfpCikwRnPqnU5whTv+kqBcyF8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id B7D991C000AC;
	Mon, 31 Oct 2011 00:17:03 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 8E2DDC913106;
	Mon, 31 Oct 2011 00:17:03 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 4E049180985B;
	Mon, 31 Oct 2011 00:17:03 +0100 (CET)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <alpine.DEB.2.02.1110301735310.4586@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110301735310.4586@localhost6.localdomain6>
Comments: In-reply-to "Robert P. J. Day" <rpjday@crashcourse.ca>
	message dated "Sun, 30 Oct 2011 18:33:33 -0400."
Date: Mon, 31 Oct 2011 00:17:03 +0100
Message-Id: <20111030231703.4E049180985B@gemini.denx.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: where does that "50G" disk space figure come from in QS guide?
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
X-List-Received-Date: Sun, 30 Oct 2011 23:17:08 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Robert,

In message <alpine.DEB.2.02.1110301735310.4586@localhost6.localdomain6> you wrote:
> 
>   QS guide suggests build process using sato will use about 50G of
> disk space.  where does that figure come from?  i just did a configure
> and build of core-image-sato for beagleboard on my 64-bit ubuntu 11.10
> system and it cost me about 3.5G for the tarball download directory,
> and just under 28G for the entire build directory.  so where does 50G
> come from?  and that was *without* economizing using "INHERIT +=
> rm_work".

After building core-image-sato-sdk, core-image-qte-sdk,
meta-toolchain-sdk, and meta-toolchain-qte I see 70G used...

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
 The software required `Windows 95 or better', so I installed Linux.

