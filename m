Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67DF7E00984; Sat, 11 Jul 2015 07:56:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 077C6E00476
	for <yocto@yoctoproject.org>; Sat, 11 Jul 2015 07:56:18 -0700 (PDT)
Received: by padck2 with SMTP id ck2so18526213pad.0
	for <yocto@yoctoproject.org>; Sat, 11 Jul 2015 07:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=MpDFTX39Op4eDXTzWijWR/m7EknWEkhd75rsr6S4rXI=;
	b=FBVOa4AVj1VAOXwuuvi65w7DXm7tX4Hh1JtOMRBgesKVrZwy3QCT67tLE8EjVnenee
	bjjNsjdLZreLicjVmcCaHgAhysTRuc57VBksIVHqHRQhx9k9gOAv7kPtaL4HZyLEuZIQ
	BBZSir8hQLcESkjRtxQG5ixadvXOXuLc4IhRIh263KxnQjFQFUnS+SLYI3+l8czzfuPp
	a8+DHFFibL14g2f3SfKbg1ix8Kyg68ay7LdtDrMi9Z+Ks/1fjltG/y9qWsA/UwkwOWSj
	W66mJ68dRg/dkPaD1+zerw5ONdPy/OWfYd2pekEpIEM6yW8xNQU5QdNgSwViCGvAz/Pw
	SrQw==
X-Received: by 10.70.23.196 with SMTP id o4mr52859701pdf.164.1436626578122;
	Sat, 11 Jul 2015 07:56:18 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:10bb:84b8:7d8:8f7f?
	([2601:202:4000:1239:10bb:84b8:7d8:8f7f])
	by smtp.googlemail.com with ESMTPSA id
	db1sm13147043pdb.50.2015.07.11.07.56.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Jul 2015 07:56:16 -0700 (PDT)
Message-ID: <55A12E84.5000407@gmail.com>
Date: Sat, 11 Jul 2015 07:56:04 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Subject: meta-kali
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
X-List-Received-Date: Sat, 11 Jul 2015 14:56:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Hello,

I have put together a layer that is based off of the Kali Linux 
(http://tools.kali.org/).  It contains penetration test tools.

git://github.com/akuster/meta-kali

- armin

