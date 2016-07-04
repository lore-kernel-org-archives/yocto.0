Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3146DE00CCC; Mon,  4 Jul 2016 00:01:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE3ECE00CCC
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 00:01:29 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160704070123740_0484
	for <yocto@yoctoproject.org>; Mon, 04 Jul 2016 07:01:23 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=25928 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bJxuN-0003cq-OP
	for yocto@yoctoproject.org; Mon, 04 Jul 2016 03:03:07 -0400
Date: Mon, 4 Jul 2016 03:00:23 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1607040256170.31028@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: upstream MPC8315E-RDB patch for eeprom?
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
X-List-Received-Date: Mon, 04 Jul 2016 07:01:34 -0000
Content-Type: text/plain; charset=US-ASCII


  continuing to peruse all the build details for MPC8315E-RDB, and ran
across a 2015 patch from bruce ashfield to enable EEPROM in the dts:

https://lists.yoctoproject.org/pipermail/linux-yocto/2015-November/004450.html

> diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts
b/arch/powerpc/boot/dts/mpc8315erdb.dts
> index 4354684..90c06aa 100644
> --- a/arch/powerpc/boot/dts/mpc8315erdb.dts
> +++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
> @@ -118,6 +118,12 @@
>   			interrupts = <14 0x8>;
>   			interrupt-parent = <&ipic>;
>   			dfsrr;
> +
> +			eeprom at 50 {
> +				compatible = "atmel,24c256";
> +				reg = <0x50>;
> +			};
> +
>   			rtc at 68 {
>   				compatible = "dallas,ds1339";
>   				reg = <0x68>;
>

but i don't see that patch as having been upstreamed into the main
kernel repo. is it in transit? or what is the policy for pushing
clearly useful stuff like this upstream to kernel.org?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


