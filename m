Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2643BE0152B
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 00:19:44 -0700 (PDT)
Received: from [147.229.64.182] (p182.fei.wifi.vutbr.cz [147.229.64.182])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id C6CDF9570
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 08:19:43 +0100 (BST)
Message-ID: <51FB5E1B.9010607@r-finger.com>
Date: Fri, 02 Aug 2013 08:22:03 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.11) Gecko/20121122 Icedove/10.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<51FA1764.4060408@r-finger.com> <51FA6B80.8030207@r-finger.com>
	<5C4C9EC7-1F17-4ED9-BCC7-C88C7514F41B@keylevel.com>
In-Reply-To: <5C4C9EC7-1F17-4ED9-BCC7-C88C7514F41B@keylevel.com>
Subject: Re: Network booting
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
X-List-Received-Date: Fri, 02 Aug 2013 07:19:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/08/13 19:53, Chris Tapp wrote:
> I think it is ;-) I think I'll still need to use ipxe as I need to be
> able to boot without DHCP support as well.

Depends on the bios, if your machine's bios supports PXE, then you do
not need ipxe, just a tftp server set up on the LAN that serves PXELinux.

I am wondering if having a thin meta-pxe layer would be useful to pull
some of this together both code and people interested, or whether we
should aim adding this functionality to OE-core?

Tomas


-- 
http://sleepfive.com

