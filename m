Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2963BE008A4; Thu, 12 Oct 2017 10:07:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.12 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay3-3.pub.mailoutpod1-cph3.one.com
	(mailrelay3-3.pub.mailoutpod1-cph3.one.com [46.30.212.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F33E006CA
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding;
	bh=wCmmf8R4mGfvgPPlrwtOEZK49lcthT0LD9Zj6WE2c5k=;
	b=f9l8m3zzxD3y8fW1yuYtNmvv3HvCfbKocG2D/XKkhWEoZGoTN9TVdWyX6rgiyxTUOBaif7GmBGeQl
	lZoQ0ZCoQ21qnrTpR8VZisISY6IySDnc5iorDBD3Ct1ORwditpHOvndi7wf5ePiIH/pRiiuF2fChQm
	QBLkrD8yYvKyi+xU=
X-HalOne-Cookie: c7c79372daa78b68a9832ad8abcefa08f2c8b7c3
X-HalOne-ID: d4764b27-af6f-11e7-9212-b82a72d06996
Received: from [192.168.178.20] (unknown [89.12.11.151])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id d4764b27-af6f-11e7-9212-b82a72d06996;
	Thu, 12 Oct 2017 17:07:30 +0000 (UTC)
From: Ayoub Zaki <ayoub.zaki@embexus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <9de83734-99a4-580b-4306-746108cbdb9b@embexus.com>
Date: Thu, 12 Oct 2017 19:07:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: Yocto Image with custom directory layout
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
X-List-Received-Date: Thu, 12 Oct 2017 17:07:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,
I would like to generate an image that contains a custom directories 
layout for expl:


foo/
├── bar1
│   └── bar2
│       ├── config
│       └── data
└── work
     └── var
         └── lib
             ├── config
             └── data

It should contains only those directories an nothing else, is there 
anyway to achieve that ? without using ROOTFS_POSTPROCESS_COMMAND.

I would like to use in a seperate partition.

Thank you !


-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


