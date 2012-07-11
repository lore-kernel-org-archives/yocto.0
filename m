Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57624E002A8
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 06:12:48 -0700 (PDT)
Received: by yenl5 with SMTP id l5so1328036yen.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=vM5szWJ01STBua57DGGRUamDECA+kWFoCTuj2gj6sX4=;
	b=zRPuYxdCJmu/mBgedlKT8lJnmbKqOwydqZnfktKaoQ8E5Y5q4LLBhao/FRHfGABoMw
	m4Y8TAuX318kveXgl0mH/wOYW8IgdtyP+HujeVKAfA5yXV1C96HH2CYRaVQSw3HHStDU
	JrGk7alyi4HO1mwKgu8Fmwb1/ZhwjBMNfC6XNqJ0R8idiVABPKwjsi10Xg8PGrZoQrVg
	fmmW4szudIp2PISLlEtbHwtbPDnC5yF/ZELBvxcA0WPmTQJmuKAYMH1gwmkqdpps0O0d
	pnikSkbq6jnGAqt9jqBhVKiogLM8hNTkN3Sy/vHQYm3XjbQr5udA7RV/3gO70hGs4v/Q
	4IDw==
Received: by 10.236.143.4 with SMTP id k4mr11210963yhj.111.1342012367732;
	Wed, 11 Jul 2012 06:12:47 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id e19sm1369255ann.10.2012.07.11.06.12.46
	(version=SSLv3 cipher=OTHER); Wed, 11 Jul 2012 06:12:46 -0700 (PDT)
Message-ID: <4FFD7BCC.60204@gmail.com>
Date: Wed, 11 Jul 2012 09:12:44 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: switch between denzil and edison
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
X-List-Received-Date: Wed, 11 Jul 2012 13:12:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just build an Ubuntu 12.04 LTS development system and installed the 
required packages based on the current 1.2 QS Guide.  On Denzil based 
BSP that works as expected.

However, I needed to switch back to edison.  When I tried to bitbake an 
image I received errors that stated a need for bash and not dash (just 
like the old days).  Also it needed a package 'cvs'.

Can I assume that bash is supported if I move back to working on the 
denzil release??

Can I assume installing cvs will not interfere with the denzil release?

Jim A

