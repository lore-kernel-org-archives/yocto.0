Return-Path: <jcdr@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 587E9E009EB; Mon, 18 Feb 2019 11:19:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1384 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Feb 2019 11:19:41 PST
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14DF8E0090C
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oXwfVgAnEIkamNjX00OowFqx3QuPUKVLtvOEd92pp1M=;
	b=r7ZaSZcJf8NaOkuxdaAAkVxtAv
	JxNUX3M4uboDVjp+go67jUI7cxucLz+/beBPnE9J0QDDS1KUdIoMI4MeIw4+ZJ8g0mleATxioOXe9
	Ibk0U5Rx441GOCdx8+BrjApGvfn+gmZeS2vG8xMUP8oNMlsQpVhspd2rdYz5O1GrwY1CcusFgSvaC
	RPZRMHAE+2H5Rofmwlcay9dvzh5qJZze48UCYmx02ky9atRTBlfz83+2cdZ7MGpCR5+s5ZoEDWoy6
	gnVwD0gvrcv0PhwX14rssD9NyqL59WF+1HXteOhO1YFMBSR6sN5emf95Mck3e/DpnXA81hueI8eMA
	4JobXJNQ==;
Received: from [213.221.150.139] (port=53138 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jcdr@innodelec.ch>)
	id 1gvo5i-00AnqA-QW; Mon, 18 Feb 2019 19:56:36 +0100
To: Alexander Kanavin <alex.kanavin@gmail.com>,
	Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
References: <1c32bcd3-02bd-465f-90bd-37d00ed06a6b@innodelec.ch>
	<CANNYZj8yzSD7v_ig3ApAcoNoG6rWyT9_f+opmyQreVUnFxWsrA@mail.gmail.com>
From: Jean-Christian de Rivaz <jcdr@innodelec.ch>
Message-ID: <de1acbbd-d165-3754-7121-2d3b18836713@innodelec.ch>
Date: Mon, 18 Feb 2019 19:56:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj8yzSD7v_ig3ApAcoNoG6rWyT9_f+opmyQreVUnFxWsrA@mail.gmail.com>
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
X-Mailman-Approved-At: Tue, 19 Feb 2019 00:56:35 -0800
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QEMU Raspberry Pi 2 machine
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
X-List-Received-Date: Mon, 18 Feb 2019 19:19:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Alex,

Yes, this is what I was forced to do anyway because I discovered in the
meantime that my modified qemuarm.conf don't yield a working emulator.
The idea was to make an automatic image validation of the client's
applications before sending the image to the testing lab and real hardware.

Thanks for the advise.
Jean-Christian

Le 18.02.19 à 19:50, Alexander Kanavin a écrit :
> You can just use a qemux86-64 target, which is much faster because it
> executes directly on the hardware. What's the need to emulate
> specifically arm?
>
> Alex
>
> On Mon, 18 Feb 2019 at 19:34, Jean-Christian de Rivaz
> <jean-christian.derivaz@innodelec.ch> wrote:
>> Hi,
>>
>> The chromium-x11 browser can't be compiled for the qemuarm machine because it use the old ARM926 processor. I have modified the qemuarm.conf file  inside poky/meta/conf/machine/ to add
>> DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
>> require conf/machine/include/tune-cortexa7.inc
>> But I want to avoid patching files of the poky project. Is there a proper way to add a QEMU Raspberry Pi 2 target like qemuraspi2 for example ? It look like many recipe files contains specific part for qemuarm so I wonder if adding a new QEMU machine it a simple enough task.
>>
>> Best Regards,
>> Jean-Christian de Rivaz
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



