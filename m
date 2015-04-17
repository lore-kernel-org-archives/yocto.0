Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD572E0086D; Fri, 17 Apr 2015 13:45:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C78EE007A0
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 13:45:31 -0700 (PDT)
Received: by pdea3 with SMTP id a3so139046524pde.3
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 13:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=iN0fSHq+ux8cYwAUn04Ng1SDcgxQwNAC0jUHS2YHVFw=;
	b=GdToRcc49PR9ebeN4lYDoQ8DFos2YJyNuhtNbYf6RM3D2X5lC+UTsDMDGY4GYpDc3y
	GjQ4F0lvhjt+V1ukFGL7RkpbJDYucMIo011sVH1xPEPw+abCtXax4kN4/jCTQASpWJ7Z
	KLqJpsJeNZvkRP4Pk+/O8E4aolHfqotuuSwNFq7A2q76+JkVlZeFZAf0j/mJ0uxlwkYq
	CVw9LDWysGMdoucKeknxPfSpphm4XfhEBa0FA/vS/hzNgpa/CrooMZlXUURCQF8l6AiI
	Uel71/xPmkn1WzdzW8r/YipVdnezz3DK+sYMLuJugBt9gJ811Mb/+6Kw8Uw+cyhgy9Jt
	Jrtg==
X-Received: by 10.70.102.11 with SMTP id fk11mr8513608pdb.144.1429303530832;
	Fri, 17 Apr 2015 13:45:30 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:45a2:e7e6:135c:7e84?
	([2601:c:a700:3ba7:45a2:e7e6:135c:7e84])
	by mx.google.com with ESMTPSA id
	op4sm10924090pbb.77.2015.04.17.13.45.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Apr 2015 13:45:29 -0700 (PDT)
Message-ID: <553170E1.2010400@gmail.com>
Date: Fri, 17 Apr 2015 13:45:21 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Subject: meta-qemu-bsps
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
X-List-Received-Date: Fri, 17 Apr 2015 20:45:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I just put together a layer to warehouse miscellaneous qemu machine 
support. ppc64 is the there now, working on more. Contributions are welcome.

https://github.com/akuster/meta-qemu-bsps

enjoy,

Armin

