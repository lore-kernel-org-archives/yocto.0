Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18C95E00D0F; Mon,  1 Apr 2019 07:55:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.147.123.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 581 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Apr 2019 07:55:00 PDT
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
	[64.147.123.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72F51E00C43
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 07:55:00 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 6C48C62F0;
	Mon,  1 Apr 2019 10:45:18 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Mon, 01 Apr 2019 10:45:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm1; bh=QHoM6bD2J9HFOtN2JTuj61GHVru/
	sgATBvpPxn0yTD4=; b=vHYOiRy5h6GbJCrXR94/Wt2WxlhJhjUC370CjmdhvCg3
	belfWECKSw17WhkC0SVdCeGZVbUnOnU9ZXj9aH6jhlgHgWQZ+GPJLkgOnIga3kAv
	ho1iAgSKBNR1+55/IqU+EpkAOrC07om2a4JXqAbSRjB7sgREf5MZv5Wo36s7+hG3
	6/hwQb/5cCxviyk8bsyHnUikfFK97m5kFcGa4sgUNIye5TRHoWsVKQge30wMiIex
	Z66WxVgxw8M6Rczr16amN5az/fnrpahxfDys941pDUmm+kWefXDq28CSqpJe/ZvP
	oDMU5qeXkjZ53fbX4MGhqqryB3Tml6IJAEu/+0WhBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=QHoM6b
	D2J9HFOtN2JTuj61GHVru/sgATBvpPxn0yTD4=; b=3mXGbsU9pGb79KVz5fUsJx
	423RW7I8qng3R98DZLM0q1U+JL/6X5dhWDoRPMj6JA82vkcrGNyoYD+Yt4+e4b6h
	pqBRs4MQ0Yyq5xRoc8RvK7zoYcDnsiljJbwhY7w6trQAAkZ4CK7WoiFKjZLPcnxC
	FB8Mn67UYPHhDvsuy3nY8+BSy2MrmO79cc51qOF+cVeebQ2nvLu6ozqZWCJrj/+2
	7HXU4fwHGuLYw0yZ0jqgTZtzJBPkuBkoIs8D0HCEs3xvddJ++8XwTK8ivKIzkxd7
	qnD69Mhwd2P1ZDHimUCbqVV71X1aYPiKDzi+TE7XmIIoW2awEkZPE4b/osQPxE/A
	==
X-ME-Sender: <xms:_SOiXFWaSFYPQR1kqBPkOdTfG27Mo-0IkWBX3VFU8vT2kEKPlQL2iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrleeggdejkecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfrfgruhhl
	uceurghrkhgvrhdfuceophgruhhlsegsvghtrghfihhvvgdrtghordhukheqnecuffhomh
	grihhnpehsrghntghlohhuugdrtghordhukhenucfrrghrrghmpehmrghilhhfrhhomhep
	phgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:_SOiXMGJeuUpvV8gcD_v1Ur4h3lJ5pLJGksBzxqJkSycHmeNFf6BaA>
	<xmx:_SOiXEmu2Iee7hbgW0UR-bK4STqqAjRtseDGqxtn8nfErCaF0saPjw>
	<xmx:_SOiXCVghLv_qVwcAB89sONVMgvK9ILx9cdo016RjjSxUbn3WvMqBw>
	<xmx:_iOiXLKFrMf3Afdr1dF2R5uXUnDg6AzdHfYRdtSvO7rGhM_26G6k2A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 60F987C539; Mon,  1 Apr 2019 10:45:17 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-329-gf4aae99-fmstable-20190329v1
Mime-Version: 1.0
X-Me-Personality: 84186096
Message-Id: <60ccde48-f785-48fa-a110-393e97ce51ab@www.fastmail.com>
In-Reply-To: <CAFuHCCANbbWqhEcXmv7Z921wZ+_8BEkChv+d07dQinHhwy9gvg@mail.gmail.com>
References: <CAFuHCCBnm9uGqeiyFrpzuGtahYQUUK=ap1gp3NOuy_eA1TooCA@mail.gmail.com>
	<CACKFPN02mVEou-e9A5SQs+WiQB-_Xm1yGkhrbnHiOACZjzUHjg@mail.gmail.com>
	<CAFuHCCANbbWqhEcXmv7Z921wZ+_8BEkChv+d07dQinHhwy9gvg@mail.gmail.com>
Date: Mon, 01 Apr 2019 10:45:07 -0400
From: "Paul Barker" <paul@betafive.co.uk>
To: "Sergio Torres Soldado" <torres.soldado@gmail.com>,
	"Dimitris Tassopoulos" <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: customising a bsp
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
X-List-Received-Date: Mon, 01 Apr 2019 14:55:02 -0000
Content-Type: text/plain

On Mon, 1 Apr 2019, at 08:49, Sergio Torres Soldado wrote:
> Hi Dimitris,
> 
>  That is very versatile thanks. It is a way of solving the issue.
> 
>  Just as a side note this is what I did so far trying to separate the 
> changes to the machine:
> 
>  added the following to a layer I created:
> . 
> |-- conf 
> | `-- machine 
> | `-- raspberrypi3-custom.conf 
> 
> Initially raspberrypi3-custom.conf was just a copy of raspberrpi3.conf 
> in meta-raspberry but I get the following excerpt of an error:
> """
> ERROR: linux-raspberrypi-1_4.14.98+gitAUTOINC+5d63a4595d-r0 
> do_kernel_metadata: Could not locate BSP definition for 
> raspberrypi3-custom/standard and no defconfig was provided
> """
> 
> To remedy this I added the following line to raspberrypi3-custom.conf:
> """
> KBUILD_DEFCONFIG_raspberrypi3-custom ?= "bcm2709_defconfig
> """
> 
> But then I get the error:
> """
> ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: QA Issue: 
> bcm2835-bootfiles: LIC_FILES_CHKSUM points to an invalid file: 
> /opt/yocto/workspace/build/tmp/work/raspberrypi3_custom-poky-linux-gnueabi/bcm2835-bootfiles/20190212-r3/firmware-83977fe3b6ef54c1d29c83b0a778d330f523441f/boot/LICENCE.broadcom [license-checksum]
> ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: Fatal QA errors 
> found, failing task.
> ERROR: bcm2835-bootfiles-20190212-r3 do_populate_lic: Function failed: 
> populate_lic_qa_checksum
> ERROR: Logfile of failure stored in: 
> /opt/yocto/workspace/build/tmp/work/raspberrypi3_custom-poky-linux-gnueabi/bcm2835-bootfiles/20190212-r3/temp/log.do_populate_lic.30228
> """
> 
> I ended up editing raspberrypi3.conf directly basically branching 
> meta-raspberrypi.
> 

Hi Sergio,

You could look at how we handle things in the BSP for the Sancloud BeagleBone Enhanced (BBE). This board is based on the BeagleBone Black and so in Yocto Project any overrides, COMPATIBLE_HOST values, etc which apply for the beaglebone should also apply for the bbe. To do this we add "beaglebone" to the MACHINEOVERRIDES list along with the appropriate separator which is ":". See https://bitbucket.sancloud.co.uk/projects/YB/repos/meta-sancloud/browse/conf/machine/bbe.conf for details.

So you should be able to add a line like this to your raspberrypi3-custom.conf file:

    MACHINEOVERRIDES =. "raspberrypi3:"

Thanks,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

