Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC11FE003FB
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 08:51:21 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w62so2079655wes.15
	for <yocto@yoctoproject.org>; Fri, 06 Sep 2013 08:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=xuA/Y2GHoAnQ7Y2y3R4+Zfl0NGgNcEzayLGiJ32H0Zw=;
	b=PdLXCtrxx1yWb3OZCRCJXKhSjoNPIxGmaRCXplWzBo0hUZKxJ0ABbJE6V6mwcnzqgz
	zdMWkxR2bsw7AUwGXdWHKypAiBkTEXyhjmEgc3g6+VIdFuiJBXFI4wRqG/sy1MmZrSVx
	LJTOXGhSM0jqpGG6GHAH+DGQy4UxjzeNW8/SkhhGES7lp6f+WWmU77QBtMiirKWU1edG
	NPi/6L+E0o5L8te2uch4TUoZiCkzl163p7mkLbTAypUmr5ZIV5LT0R+MhVnf2QeMXtPc
	dOS4b/CG9dM5AM3y2wr+2WZzXsUh/xus8SGSEtBnAtZwoSsNXrsnlmqTZL7GuT1CnBhO
	2ZQQ==
X-Gm-Message-State: ALoCoQnNcdS2ijo5Q6bMsT7SA+YFOLIh4PHToBkz65CzMPrRKwefDBiLtCRL7sNveU/nfKPHeUWU
X-Received: by 10.180.93.8 with SMTP id cq8mr10806744wib.38.1378482680336;
	Fri, 06 Sep 2013 08:51:20 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id v7sm20613969wiy.11.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 06 Sep 2013 08:51:19 -0700 (PDT)
Message-ID: <5229F9F4.6030903@vtkloud.com>
Date: Fri, 06 Sep 2013 17:51:16 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ruby-dev requires libcrypto which is not present ??
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
X-List-Received-Date: Fri, 06 Sep 2013 15:51:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to install ruby-dev (in order to be able to apply some 
passenger features). Passenger requires ruby-dev

ruby-dev has indeed been built but when I'm trying to install it, I can't:

root@qemuarm:~# smart install ruby-dev
rpmdb: BDB0113 Thread/proc
Computing transaction...
error: Can't install ruby-dev-1.9.3+p194-r1.0@armv5te: no package 
provides libcrypto-dev


And of course, libcrypto-dev is _not_ present, as smart tells me. I 
wonder how ruby-dev has been compiled if libcrypto is not here. Or how 
can I solve the issue ? How can I make sure libcryto is also generated 
(or not deleted?) during build process?


I'm working on the qemuarm device, but I'm not sure how much the problem 
is bound to it or could be reproduced on other targets.

Regards
Jay

