Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96AC5E0030B
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 10:11:22 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 08BAFF8120E; Tue, 10 Apr 2012 11:11:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5BDB5F811FE;
	Tue, 10 Apr 2012 11:11:21 -0600 (MDT)
Message-ID: <4F8469B9.7020408@mlbassoc.com>
Date: Tue, 10 Apr 2012 11:11:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <F0BD60FF-D2C0-401B-A3D3-61742D20D91A@keylevel.com>
In-Reply-To: <F0BD60FF-D2C0-401B-A3D3-61742D20D91A@keylevel.com>
Subject: Re: Help debugging CF support under 3.0.18
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
X-List-Received-Date: Tue, 10 Apr 2012 17:11:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-10 11:03, Chris Tapp wrote:
> I've been trying to get a BSP running under 6.0.1 using kernel 3.0.18 for an ALIX 3D3 board. I've done this before under 4.0.1 using 2.6.34.
>
> It's nearly working, but I can't get partitions on the CF card (which works under 2.6.34) to show.
>
> - The controller (CS5536) is showing as loaded in dmesg.
> - hda is reported as using UDMA/33, but hda1 is not mentioned.
> - /proc/partions does not show hda1.
> - cat'ing /proc/ide/ide0/hda/model reports 'CF 1GB', which is what the CF is.
> - The following kernel options are on : CONFIG_PCI, CONFIG_PCI_QUIRKS, CONFIG_BLK_IDEPCI, CONFIG_IDEPCI_PCIBUS_ORDER, CONFIG_BLK_DEV_IDEDMA.
>
> I suspect I've turned 'something' off in the kernel configuration that I need, but it's not obvious (to me) what it could be. What's the best way of tracking this down? I'll start again using a base .config file, but it takes a long time to rebuild the kernel (I need a faster machine!) and it'll take a while to work out what I've touched in error.
>
> On a related note, I use SRCREV_machine_pn-linux-yocto_mybsp ?= "d7e81e7f975c57c581ce13446adf023f95d9fd9f" in my kernel bbappend (base 3.0.18 kernel). If I do a 'cleanall' and then build I have to wait for the kernel to be downloaded, even though I have a DL_DIR specified. Is it possible to stop this happening? If not, is there a better way to rebuild the kernel and get a new image in deploy/install?

Do you have CONFIG_HOTPLUG=y?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

