Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5BBAE007D6; Wed, 22 Oct 2014 18:02:28 -0700 (PDT)
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
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 863FFE00790
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 18:02:23 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id z10so28796pdj.15
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 18:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=faFwpuFuYi8rr0wev/dyvA86gqn1jog1H+STN2fg664=;
	b=hUjEZ3VLPT7egvewNAz2n+pdnxomJZd8bVLWxujYoNYA5sUVPpKEPQwAhYbUpmBvFs
	yMsQ68e5XO3sSU81bNH+LIqx1viMRl+GcRGr3C7pKhPHDz3uniwGK1llzXUnbNcL+ao4
	YrRf4qwZ99B8ANi7I1+jWJCdOiEqV9fCcXTX+BHGEr9GDE/f9LnzHMZ9jMvjjVY6zCSg
	NFyVLMHmzWiTTtm1dDjE+yAZyC7R/PTBOOpP56YpksMQ5/INsjRFcyarP1N5srlevkL+
	/s6Zvg3qmby7HfdaEjWQcCEHbrWBUNbCpmUPKKYWrcKsmSZb5MuzqDG360mLJMT1FkBf
	WUdg==
X-Received: by 10.66.141.142 with SMTP id ro14mr1376511pab.111.1414026142846; 
	Wed, 22 Oct 2014 18:02:22 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:783b:a6f2:99d2:a41?
	([2601:c:9380:601:783b:a6f2:99d2:a41])
	by mx.google.com with ESMTPSA id fz1sm181453pbb.80.2014.10.22.18.02.21
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 22 Oct 2014 18:02:21 -0700 (PDT)
Message-ID: <5448539B.70200@gmail.com>
Date: Wed, 22 Oct 2014 18:02:19 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta layer branching guidelines
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
X-List-Received-Date: Thu, 23 Oct 2014 01:02:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am looking for a guideline when to branch a layer to an official 
release. I know Richard is concerned with layer quality but I can not 
quantify what that might be and how to apply it to layers outside 
nightly builds and QA. If anyone has any links to any information on the 
subject please let me know. I am striking out.

regards,
Armin

