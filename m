Return-Path: <benoit.rapidel+yocto@exmachina.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 325FAE00824; Thu, 29 Jan 2015 09:37:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from galat.willykaze.org (galat.willykaze.org [91.121.12.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6291E006EF
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 09:37:13 -0800 (PST)
Received: from [127.0.0.1] (mne69-4-82-227-115-93.fbx.proxad.net
	[82.227.115.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by galat.willykaze.org (Postfix) with ESMTPSA id AE42F706FB
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 18:37:12 +0100 (CET)
Message-ID: <54CA6FBA.50907@exmachina.fr>
Date: Thu, 29 Jan 2015 18:36:58 +0100
From: Benoit Rapidel <benoit.rapidel+yocto@exmachina.fr>
Organization: ExMachina
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54CA6B3E.2010909@exmachina.fr>
In-Reply-To: <54CA6B3E.2010909@exmachina.fr>
X-Forwarded-Message-Id: <54CA6B3E.2010909@exmachina.fr>
X-Antivirus: avast! (VPS 150129-0, 01/29/2015), Outbound message
X-Antivirus-Status: Clean
Subject: Unable to get python3-multiprocessing working
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
X-List-Received-Date: Thu, 29 Jan 2015 17:37:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have build a custom recipe with
RDEPENDS_${PN} = "python3 python3-multiprocessing python3-subprocess
python3-threading"
Everything builds fine but at runtime I get
"ImportError: No module named 'atexit'"

I tried to add python3-lang package to RDEPENDS which seems to provide
/usr/lib/python3.3/atexit.py.
This doesn't work and I can't find atexit.py in my rootfs.

Did I miss something ?

Regards

-- 
Benoit Rapidel




