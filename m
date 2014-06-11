Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA39E00B83; Wed, 11 Jun 2014 05:54:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3F8E0082A
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 05:54:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6F03027E02B;
	Wed, 11 Jun 2014 12:54:39 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 9RKD17UIOAtZ; Wed, 11 Jun 2014 12:54:38 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8251627E02A;
	Wed, 11 Jun 2014 12:54:38 +0000 (UTC)
Message-ID: <5398518B.7070904@dynamicdevices.co.uk>
Date: Wed, 11 Jun 2014 13:54:35 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
	<5383805E.4020603@dynamicdevices.co.uk>
	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
	<5383891A.4050109@dynamicdevices.co.uk>
	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
	<538B95F6.6070008@dynamicdevices.co.uk>
	<CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
	<538B9CA5.8040704@dynamicdevices.co.uk>
	<538BD0DE.1020207@dynamicdevices.co.uk>
	<CAK18fxFc1vnXUMuDP7g8WS20NUDZPUtCC+9yGtnFKdTJcg0qJA@mail.gmail.com>
	<CAK18fxFkAt3TZRHAqxN5bpp47KC-rGRodOyX=BDsF6PcbPc36w@mail.gmail.com>
In-Reply-To: <CAK18fxFkAt3TZRHAqxN5bpp47KC-rGRodOyX=BDsF6PcbPc36w@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Wed, 11 Jun 2014 12:54:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> I merged the patches but there is a strange behavior. With --as-needed
> removed i still get the unneeded dependency.
>  0x00000001 (NEEDED)                     Shared library: [libmmal_core.so]
>  0x00000001 (NEEDED)                     Shared library: [libmmal_util.so]
>  0x00000001 (NEEDED)                     Shared library:
> [libmmal_vc_client.so]
>  0x00000001 (NEEDED)                     Shared library: [libvcos.so]
>  0x00000001 (NEEDED)                     Shared library: [libbcm_host.so]
>  0x00000001 (NEEDED)                     Shared library: [libpthread.so.0]
>  0x00000001 (NEEDED)                     Shared library: [libdl.so.2]
>  0x00000001 (NEEDED)                     Shared library: [librt.so.1]
>  0x00000001 (NEEDED)                     Shared library: [libvchiq_arm.so]
>  0x00000001 (NEEDED)                     Shared library: [libc.so.6]
>
> Alex, can you take another look on this? It seems like somehow the fix
> doesn't work for me.

If I understand you correctly the issue is that by default bitbake is
providing --no-as-needed into the userland configuration step

This has the effect that libmmal_vc_client is removed as a needed
library, therefore not loaded when raspivid loads,
and therefore doesn't register components that it would register when it
was loaded (because of use of
__attribute__((constructor,used)) decorating functions in that library).

We override --as-needed with --no-as-needed so that the dependency upon
libmmal_vc_client is no longer removed,
which I think is what you show above. If you remove my patch you should
see libmmal_vc_client disappear I believe.

Cheers,

Alex


