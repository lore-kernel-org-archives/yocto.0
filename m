Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93F1BE018D8; Tue, 19 Jun 2018 04:40:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd01217.aruba.it (smtpcmd01217.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95F07E0115B
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2018 04:40:38 -0700 (PDT)
Received: from [10.0.3.128] ([78.6.3.122])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id 0bgb1y0082dwwGE01bgb9C; Tue, 19 Jun 2018 13:40:36 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <f2409254-ce6b-f7f4-324f-3d51fcc09885@faresoftware.it>
Date: Tue, 19 Jun 2018 13:40:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1529408436; bh=durFwCeDxmrURNtmyUQi5VT4lW5N94JsI5WYlbo1rag=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=lteO2HSU0FvW5a5UYMFT9MS+n9B92hzOMZwDnxKg6aZX+EHrWG6OQ250NCGcNyKKT
	TWiYBacbc8dGyk9Q+GVuEpsteRsy+kFX2eAfA8yojUn9h1Un6JbXS2Vju2+leHA/7Z
	PMo4OBAc7eNxnIqCbme5zp30AkqgyL1tixgLXaCcu6MLQO6Vx6v+pUmRtHR4OmtyEp
	kKCKa9nmUDZZvptZayS+8EsG3bBstJ5w8UI1V9tbBJrzAPBfHDw9zfOgdSwoaIKBlL
	Q1mE2+vl8UFA5g2McEp2eIYiGvFda6zrx2ZI2kEN8N01uqA/qJoV30UuQrleyBPsaJ
	+305zjxFD+0WA==
Subject: checkroot.sh and mountall.sh Krogoth
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
X-List-Received-Date: Tue, 19 Jun 2018 11:40:40 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I'm looking inside the boot sequence of Yocto Krogoth in my imx6dlsabresd.


The boot sequence runned is in S level with this order


S03mountall.sh

S06chechroot.sh


in /etc/default/rcS I setup

ENABLE_ROOTFS_FSCK=yes
FSCKFIX=yes

I coverted an ext2 to ext4

After upgrade the system mount the root partition readonly because ext4 
mounter has found some error.

But I expect that checkroot.sh repairs


This is true?


MZ


