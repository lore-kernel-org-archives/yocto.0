Return-Path: <arunkr.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9CF9E00BDF; Thu, 12 Jun 2014 09:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr.linux[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E0C8E00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 09:27:07 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id rp16so1164196pbb.37
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 09:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=lK8A8Mss1LIXIgCuyzHA7hdyKoozJ64notrokqAHc4g=;
	b=j2Q2m0mhsAntsC2pYy6rn8T22G+ZfmiJgoJIEDcFHXuGEqymafBv/759C5Vbo57h+v
	sGYwKKcXwTlA00x99ONa+Li6fGo5CR2EZdLuGLdwA0Waubo3knwbNIDNl0706G430Nf3
	Rvmh91FIqieWMdSAcImtTgcYhe42O6P07Bx3uGcMIQTzskGSACQwFiVxIdWQG0f+2wBE
	hWA3syARh9AJkaEWR+tnICuWIIGr/U+KFRhFmzxz9zGorywMGWry+RwtFJ6HBfVXoe6h
	GbkohdkDL43q+G7mLUkqJze13RXLCAfzN/WvCMCnTLDJdj7UFYitdB0nGv8+JeMg0qYX
	9qJw==
X-Received: by 10.68.139.137 with SMTP id qy9mr13791411pbb.11.1402590427393;
	Thu, 12 Jun 2014 09:27:07 -0700 (PDT)
Received: from [192.168.0.104] ([123.201.193.151])
	by mx.google.com with ESMTPSA id
	pq3sm81224556pbb.57.2014.06.12.09.27.05 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Jun 2014 09:27:06 -0700 (PDT)
Message-ID: <5399D4D1.1020108@gmail.com>
Date: Thu, 12 Jun 2014 21:56:57 +0530
From: Arun Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: role of sstate-cache
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
X-List-Received-Date: Thu, 12 Jun 2014 16:27:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am a newbie to Yocto project...
I wanted to know.. what is the role of the "sstate-cache" directory?

