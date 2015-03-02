Return-Path: <scerveau@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10D5DE0086D; Mon,  2 Mar 2015 00:56:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (scerveau[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD1FE00825
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 00:56:29 -0800 (PST)
Received: by wevm14 with SMTP id m14so31799772wev.13
	for <yocto@yoctoproject.org>; Mon, 02 Mar 2015 00:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=c/2dcZMQLnBjwGjjJ0+IHVG6SEMsvfW4iPFomDsaNZU=;
	b=GBigHjCkcdVZBj3b/aeEg/InqcKETRUraCM/DSxfRuG6zzpXME9WvGp4LPcOkqEeq1
	MpYwSxaUM4L7bUuYXwiITqwkqdeVJzRKM2xAVZpt/q8u449GRTKETrSZ+oTeON67PIWu
	HMRqknL2PHDIoPYkXILNiCKXCbcK+GdrO8bSvvWWkR2DM7ddNQ3CuPNWZoaooZovAaRN
	MSH2w1QcXw+AXt8PPuF4KSY2erfarw0muBlQkfVxb8Ws54XQWhoTTbN5eTtmwxnGDSjr
	SbrvSmOs3miwOze3AY4Vso+tfczmok0JyntQU32i+4N/6gyEYyNswzfaiLPObi5RHPkg
	MJ5Q==
X-Received: by 10.180.219.102 with SMTP id pn6mr32884541wic.50.1425286589103; 
	Mon, 02 Mar 2015 00:56:29 -0800 (PST)
Received: from [172.24.63.26]
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id
	dn7sm15081995wid.12.2015.03.02.00.56.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Mar 2015 00:56:28 -0800 (PST)
Message-ID: <54F425B7.2070002@gmail.com>
Date: Mon, 02 Mar 2015 09:56:23 +0100
From: scerveau <scerveau@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: ayoub.zaki@googlemail.com, yocto@yoctoproject.org
References: <CA+-BmJZ=8TOkq0onBPwf1RALNf5iqbqy8+BHPhogrqCJ4ZJO=g@mail.gmail.com>
In-Reply-To: <CA+-BmJZ=8TOkq0onBPwf1RALNf5iqbqy8+BHPhogrqCJ4ZJO=g@mail.gmail.com>
Subject: dizzy 1.7 udev automount misbehaviour
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
X-List-Received-Date: Mon, 02 Mar 2015 08:56:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Did you have a chance to understand the problem concerning the automount 
failure ?

Best regards.

Stéphane

