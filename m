Return-Path: <m.le-stephan@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55CC5E00BB0; Thu,  3 Nov 2016 05:15:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (m.le-stephan[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.199 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4925]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1211 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Nov 2016 05:15:16 PDT
Received: from smtpoutz2.laposte.net (smtpoutz299.laposte.net [178.22.154.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13A55E00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 05:15:16 -0700 (PDT)
Received: from smtpoutz2.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id D1B0052A86C
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1478174103; bh=Luphg1mCmbIxz/i1/qJbnBkGhkbMxYU1MXvntl+s5fk=;
	h=To:Date:Subject:From;
	b=EfmRH8Yydy/tRRMvQOQwkp6ieT954mbXY2UKAyHjnL577XGKEwCBQGNHuXp+4Yxah
	upEpkBDcs+m/BJGj4swcX36QN5A2SRrt55twZnU2+lfNW5mz3XZKcOQOaEa/GdCqYR
	gh1yBUec4ht1YQPz4BJ7jX8Mdvp4hpsn6sOYae0wwBWZjX+VIa5LddaAJEBTTAbqh/
	3GiQdQVJJp6ylhDzpmIixMF1tWK2XctpTgul1SK0fywOUVGm9Thr6H+hXtlhXtO/+N
	yDCnccMVsTX3P0PZpMza6N+CA6A77eOaFrCzttndPh/9O73vgkTtCTbuvyX/k8wNZY
	5vdY+FT/kBHJA==
Received: from smtpoutz2.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id C2EF25288A9
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:55:03 +0100 (CET)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.prosodie [10.128.63.5])
	by lpn-prd-vrout011 (Postfix) with ESMTP id BD43E52A86C
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:55:03 +0100 (CET)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id AE70D710234
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:55:03 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin004 (Postfix) with ESMTPA id 827EB710208
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:55:03 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 03 Nov 2016 12:55:03 +0100
MIME-Version: 1.0
From: mickael <m.le-stephan@laposte.net>
Message-ID: <op.yqcop1yyk3hjrl@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrkeejgdduiecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgfvfffuggfg
X-VR-Cause-3: hffkfgesthejredttderleenucfhrhhomhepmhhitghkrggvlhcuoehmrdhlvgdqshhtvghphhgrnhes
X-VR-Cause-4: lhgrphhoshhtvgdrnhgvtheqnecukfhppedvuddvrddvfeegrdefiedrudefheenucfrrghrrghmpehm
X-VR-Cause-5: ohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhsrdhlohgtrghlpdhi
X-VR-Cause-6: nhgvthepvdduvddrvdefgedrfeeirddufeehpdhmrghilhhfrhhomhepmhdrlhgvqdhsthgvphhhrghn
X-VR-Cause-7: sehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdho
X-VR-Cause-8: rhhg
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
X-Mailman-Approved-At: Thu, 03 Nov 2016 07:49:45 -0700
Subject: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 12:15:20 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi all, i need to build a lib --> openZwave (on a imx6 card) libudev.h.
I have this error during the build :
/home/root/openzwave-1.4.164/cpp/hidapi/linux/hid.c:44:21: fatal error:  
libudev.h: No such file or directory
I have tried to add udev to my local.conf but this not resolve the problem.
How i can add it to my build please ?

