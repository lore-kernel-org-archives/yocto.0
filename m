Return-Path: <prvs=966dc161d=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89741E00978; Mon, 13 Jun 2016 23:35:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2688E00951
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 23:35:47 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CrBABRpV9X/0oKEKxchBR9Br0oGoV9AoF6AQEBAQEBgQ2ETAEBBDIBRRELDQsJFg8JAwIBAgFFBg0IAsM1AQEIJ4YnhE2FDIUPBY1winOBWIQsgniHFU6HDhcMhTmPcoREbIkJfwEBAQ
X-IPAS-Result: A2CrBABRpV9X/0oKEKxchBR9Br0oGoV9AoF6AQEBAQEBgQ2ETAEBBDIBRRELDQsJFg8JAwIBAgFFBg0IAsM1AQEIJ4YnhE2FDIUPBY1winOBWIQsgniHFU6HDhcMhTmPcoREbIkJfwEBAQ
To: <yocto@yoctoproject.org>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <575FA5F4.3040806@skidata.com>
Date: Tue, 14 Jun 2016 08:36:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Tue, 14 Jun 2016 06:35:50 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

Hi,
you can adjust the mount behaviour for example in your udev mount script
(if you use udev).

If you have a fixed name/mountpoint for your media you can pre-create
that folder (for example /media/data-logging) and let udev's mount.sh
mount media which matches your criteria to that path.

kind regards,
richard
On 06/13/2016 11:22 PM, Jeffrey D Boyer wrote:
> Hello,
> 
>  
> 
> New to the list here, so I’m sorry if this question has been asked
> before, but I couldn’t find a direct answer to it. 
> 
>  
> 
> I have a yocto image that was built using the following bb script line:
> IMAGE_FEATURES += " read-only-rootfs". 
> 
>  
> 
> As this image eventually resides on a static flash device, it must be
> read-only.  However, the system hardware supports removable media (SD
> card and USB drives), and I’d like to be able to mount and write to
> those removable drives / partitions for data logging purposes.  What
> needs to be done in order to make the /media directory auto-mountable
> when a “read-only” image is specified by the build script?
> 
>  
> 
> Thanks.
> 

