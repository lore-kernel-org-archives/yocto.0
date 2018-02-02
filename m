Return-Path: <tsarrazin@otonomy-aviation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4352FE00E11; Fri,  2 Feb 2018 07:13:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.46.122 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2034 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Feb 2018 07:13:40 PST
Received: from 8.mo173.mail-out.ovh.net (8.mo173.mail-out.ovh.net
	[46.105.46.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22F05E00CF5
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 07:13:40 -0800 (PST)
Received: from player791.ha.ovh.net (gw6.ovh.net [213.251.189.206])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id DDE609E323
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 15:30:06 +0100 (CET)
Received: from [192.168.1.146]
	(LStLambert-658-1-124-250.w217-128.abo.wanadoo.fr [217.128.22.250])
	(Authenticated sender: tsarrazin@otonomy-aviation.com)
	by player791.ha.ovh.net (Postfix) with ESMTPSA id 40B4F4200A7
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 15:30:05 +0100 (CET)
To: yocto@yoctoproject.org
References: <e34aedae-8e1f-18f1-5370-a500b5c3390c@otonomy-aviation.com>
From: Thibaut SARRAZIN <tsarrazin@otonomy-aviation.com>
Message-ID: <faa52a8e-70d2-9f3e-9fc0-428d6a06d80f@otonomy-aviation.com>
Date: Fri, 2 Feb 2018 15:30:03 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <e34aedae-8e1f-18f1-5370-a500b5c3390c@otonomy-aviation.com>
X-Ovh-Tracer-Id: 8497729548348393641
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtfedrtdeigdehfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: [SOLVED] fsck fsck.ext4 no such file or directory
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
X-List-Received-Date: Fri, 02 Feb 2018 15:13:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr


I found the answer, need to install the package e2fsprogs. That's put 
the fsck.ext* file on the rootfs.


best regards,


Le 01/02/2018 à 16:59, Thibaut SARRAZIN a écrit :
>
> Hi all,
>
> when I try to use fsck tool, this one answer me,  fsck : fsck.ext4 no 
> such file or directory. anyone have an idea whyt these files are not 
> include automatically in the rootfs?
>
>
> Thanks
>


