Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C4D9E0044A
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 13:03:39 -0800 (PST)
Received: by pbcup7 with SMTP id up7so6119140pbc.35
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2012 13:03:39 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.223.230 as permitted sender) client-ip=10.68.223.230; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.223.230 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.223.230])
	by 10.68.223.230 with SMTP id qx6mr10048795pbc.29.1330981419470
	(num_hops = 1); Mon, 05 Mar 2012 13:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZmZvjJqbUAcTZX1uJIBd+S5PeIDeelDMJRcBQX+1MO4=;
	b=Z4M7wOYHI/jamiymkPqT8WOdHq6orn5+EKQEmDtfWztkO2kXQaMwQSS6YrBoqsvkDv
	H70vOKZiTlyRP/SQAucO4I4ClOlRN5/ot1FwaEqNSq5nywigYuAoU4lBom9s2vkkGO05
	eluZ3piKgSssi+KZDcEiv6DZLWnNyCjonNsasySMB392KM1GwhHS0Z4Eez7HKmq1DH7y
	zYTD7d/WFsu9yoev8Dzv2pUDmYnzK9TAt4Aj+5I89CaECGpGtoBm0fYWVU08JgibZd2j
	9SK2doU9o/5lPXk+dG6d+uTGlVHwkMCXZh/t0abSR6kv101ciJcR3oQUkflJh9j1e1uF
	qnMg==
MIME-Version: 1.0
Received: by 10.68.223.230 with SMTP id qx6mr8627546pbc.29.1330981419423; Mon,
	05 Mar 2012 13:03:39 -0800 (PST)
Received: by 10.68.20.134 with HTTP; Mon, 5 Mar 2012 13:03:39 -0800 (PST)
Date: Mon, 5 Mar 2012 16:03:39 -0500
Message-ID: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: iptables not building on master
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
X-List-Received-Date: Mon, 05 Mar 2012 21:03:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

I was working with M2 until recently and had to switch to master.
After I switched to master, I tried to bitbake core-image-sato for
machine crownbay. The build fails with the following error:

unknown type name '__aligned_u64'

The file in question is extenstions/libxt_pkttypes.c

After a bit of investigation (thanks Khem) it seems like instead of
/usr/include/linux/types.h, the include/linux/types.h from iptables
source is being included. These a bit incompatible - specifically -
the definition for __aligned_u64 is not in the latter.

I am building core-image-sato for qemux86 and will report when the
build reaches that point.

Is this a known issue?

*** This issue should be hitting anyone doing a clean build on master.
Or at the very least someone who builds iptables recipe***

I looked at the recent change (post M2) that iptables was updated to
1.2.12.2 (from 1.2.12.1). There was a patch included for
extensions/GNUmakefile  which does not build "check" target. I looked
at what it does and realized that someone more experienced that I am
should look into this.

Thanks

Autif

