Return-Path: <dbilsby@tekmicro.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73090E00C1B; Mon,  1 Feb 2016 04:02:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [8.19.118.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Feb 2016 04:02:29 PST
Received: from server559.appriver.com (server559c.appriver.com [8.19.118.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9E9CE00C10
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 04:02:29 -0800 (PST)
X-Note-AR-ScanTimeLocal: 2/1/2016 5:47:27 AM
X-Policy: tekmicro.com - tekmicro.com
X-Primary: dbilsby@tekmicro.co.uk
X-Note: This Email was scanned by AppRiver SecureTide
X-Note: SecureTide Build: 1/29/2016 5:08:24 PM UTC
X-Virus-Scan: V-
X-Note-SnifferID: 0
X-Note: TCH-CT/SI:0-24/SG:2 2/1/2016 5:46:31 AM
X-GBUdb-Analysis: 0, 66.80.112.195, Ugly c=0.327499 p=-0.916667 Source Normal
X-Signature-Violations: 0-0-0-3444-c
X-Note-419: 15.6326 ms. Fail:0 Chk:1325 of 1325 total
X-Note: SCH-CT/SI:0-1325/SG:1 2/1/2016 5:47:14 AM
X-Note: Spam Tests Failed: 
X-Country-Path: LOCAL->United States->
X-Note-Sending-IP: 66.80.112.195
X-Note-Reverse-DNS: 
X-Note-Return-Path: dbilsby@tekmicro.co.uk
X-Note: User Rule Hits: 
X-Note: Global Rule Hits: G275 G276 G277 G278 G282 G283 G406 G423 
X-Note: Encrypt Rule Hits: 
X-Note: Mail Class: VALID
X-Note: Headers Injected
Received: from [66.80.112.195] (HELO MAIL01.tek.local)
	by server559.appriver.com (CommuniGate Pro SMTP 6.1.2)
	with ESMTP id 141664099 for yocto@yoctoproject.org;
	Mon, 01 Feb 2016 05:47:27 -0600
Received: from [127.0.0.1] ([10.70.0.53]) by MAIL01.tek.local with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 1 Feb 2016 06:47:25 -0500
Message-ID: <56AF45CB.8070305@tekmicro.co.uk>
Date: Mon, 01 Feb 2016 11:47:23 +0000
From: David Bilsby <dbilsby@tekmicro.co.uk>
Organization: TEK Microsystems Ltd
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OriginalArrivalTime: 01 Feb 2016 11:47:25.0489 (UTC)
	FILETIME=[51CA2210:01D15CE6]
Subject: Password updates to compressed root image in flash
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
X-List-Received-Date: Mon, 01 Feb 2016 12:02:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

We have a project which will use a Xilinx Zynq running embedded Linux 
built by Yocto (probably kernel 4.0). The system will boot from QSPI, 
this will contain the FSBL, u-boot, compressed kernel and compressed 
rootfs. The rootfs will be expanded into an initramfs which will then be 
used as the running systems rootfs (rw).

How given this arrangement do you make passwd updates persistent across 
reboots as currently the update will only affect the RAM copy of 
/etc/passwd and not get written back to the password file stored in the 
compressed rootfs image in flash?
Similarly how can things like the public key which DropBear generates at 
boot time be stored permanently so it does not get regenerated every time?

This seems like such an obvious question, however I have not found an 
answer when searching. I thought it may be possible to split the rootfs 
into effectively a read-only part (read-write but non-persistent) and a 
read-write part (persistent) and the splice the two together, but I'm 
not sure how best to do this. Flash space is very tight on this system 
so keeping the rootfs in flash uncompressed is not an option.

Any suggestions as to how this is best handled very much appreciated.

Thanks


