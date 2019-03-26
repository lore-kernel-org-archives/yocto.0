Return-Path: <patrick.boettcher@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0FFDE00C1B; Tue, 26 Mar 2019 01:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2F8E00B81
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 01:14:07 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 40AD516007F
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 09:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1553588046; bh=Ysi+SCA96Hd9KxXBIlXjRY3xmPRtDVPwpPcRWN9lGj4=;
	h=Date:From:To:Cc:Subject:From;
	b=K+SPShSU1xDtnuVNGt1uOlHJIuvMiRoI38af/J6qHQHiNgY5hqcKKeyvYAZO7tZ6a
	cKQIU/HRirTerGPLtajYzNVX419hZioqi9FDjCXC/cWEvLtCtgOTc7UCQNM4LbOdi7
	7YUxx3CtMD8XiNFeJNrq57T2ijQ8gTojdCquv0/9aSMXdb7IVSIIuX28gjUs09MWMd
	pCsWGfq/m2lcxX9DBdG5s8xhjad19l5+Z3PsYbTUBvsxCUdz6Mu2wIFb+JXqXMp1qw
	Ac14Xt68XKRzH+UyXlAcIqDK85VJf10GpRSLoZn/SnxEuk3at0bJo31TilEldD1JDF
	tpil/ztYy5FZw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 44T3n95GMVz6tm9;
	Tue, 26 Mar 2019 09:14:05 +0100 (CET)
Date: Tue, 26 Mar 2019 09:14:05 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: jairo <jairo@futurasmus-knxlab.es>
Message-ID: <20190326091405.5017c931@posteo.de>
In-Reply-To: <2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
	<20190325172133.50597470@yaise-pc1>
	<2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [rauc] create a rescue image
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
X-List-Received-Date: Tue, 26 Mar 2019 08:14:08 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 26 Mar 2019 09:05:47 +0100
jairo <jairo@futurasmus-knxlab.es> wrote:

> Thanks Patrick:
> 
> 
> The idea is that when an update is going to be done, the system will
> restart in the rescue partition so that it updates the main partition
> and when it is updated it will restart the main partition again.

This is a good idea when you want to keep a maximum of rootfs-space for
one system and can be done with RAUC, bootchooser and barebox.

However, there is a risk of when a system update (from the
rescue-partition) installs a non-working image. Then you will stuck on
your rescue system without a possibility to get back a working system.

This is why "usually" there is system0 and a system1 which are
switching over after an update and the system marks itself OK if it is
- otherwise it is switching back to the previous system.

> I think the problem (among others) was having it because I was not
> applying any patch to the device-tree. It's a somewhat complicated
> issue, anyway, thank you very much for the help, I think it's a good
> clue to keep going.

Also check the latest phytec recipes in their distro, they integrated
RAUC and barebox-state (in eeprom) and bootchooser. Though this is not
yet releases for IMX6 - afaik.

--
Patrick.

