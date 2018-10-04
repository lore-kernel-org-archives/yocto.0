Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6D63E00519; Thu,  4 Oct 2018 07:10:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Oct 2018 07:10:49 PDT
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E70FE00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 07:10:49 -0700 (PDT)
Received: from [10.0.3.94] ([78.6.3.122]) by smtpcmd04.ad.aruba.it with bizsmtp
	id jS9k1y00Y2dwwGE01S9kaF; Thu, 04 Oct 2018 16:09:45 +0200
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <09858a99-6bc3-ecd9-3ec6-94c3d7cf2cfe@faresoftware.it>
Date: Thu, 4 Oct 2018 16:09:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1538662185; bh=TYxzgt3i3t1sqSraVHj96OS0CextL2edxXZGdKgkJgQ=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=PkfzXI+xW1JEkQEYALXBgDoxPALc1iiicbK5VkFVJ8Eb+QolIwyJaFg76Zq0Y9ZCP
	4FDBrsc4/wsDMl8tUO4qkaugXWeg7PBZIomDgxoOps9/Y+KM5NvPJPJndxZw/YEvy6
	PTWf8Mer088VsV6RavEqUcHM9A7FOgOppmD0zF0cqwgdTLJeuJDm0z9J6MAu40SBqQ
	RUcBTdi5JQYuqxVlSJZoGbK/SjQlODnWQF3fdS+DkTPud3EtR5LEeIO+QVEkFKK86d
	VXdQ5X4ehHV7s2oYCcxdesgo9Tg8i00rUDro9Q/dyeG+q4B9dp19TNoTpeQYo90wIK
	xD1iJayieghhA==
Subject: Software upgrade tools: which?
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
X-List-Received-Date: Thu, 04 Oct 2018 14:10:50 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm looking for a good layer to add in my BSP to solve the problem of
upgrading the system and the application.

I'm working on a project the involves an imx6dlsabresd derived board and
Krogoth ver 15.0.3.


In the first versione the project used an x86-board and Ubuntu 14.04.
The update system choosed was deb/apt.

Due to quickly change of the main board to an imx6 with yocto, the
package-management is deb/apt even with Yocto.

I need to insert a set of system upgrade tools which can help to restore
the previous versions if something goes wrong during the update.
the update should be mainly by usb pendrive, but online is the next choice.

Can you suggest me some good tools to integrate?

Best regards,
  MZ

