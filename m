Return-Path: <Fahad_Usman@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5AB4E0088B; Wed, 10 Feb 2016 09:23:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A2A7E00863
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 09:23:19 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aTYU2-00061t-Tb from Fahad_Usman@mentor.com ;
	Wed, 10 Feb 2016 09:23:19 -0800
Received: from [137.202.156.162] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Wed, 10 Feb 2016 17:23:17 +0000
To: <yocto@yoctoproject.org>
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
Message-ID: <56BB7201.4080904@mentor.com>
Date: Wed, 10 Feb 2016 22:23:13 +0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
X-Originating-IP: [137.202.0.76]
Subject: wic: Setting partition id value?
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
X-List-Received-Date: Wed, 10 Feb 2016 17:23:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
Is there a way to create a partition with an arbitrary partition id, 
using wic tool. We want to create a disk image using wic for Altera 
Cyclone V. It require the partition id to be set to a particular hex 
value for the partition it reads the boot loader binary from. The 
partition id does get set automatically to the correct value depending 
on the value of fstype (eg. 0x83 for ext3 or 0x0c for fat32), but I 
couldn't find a way to set it to an arbitrary value.

Best regards,
Fahad Usman.

