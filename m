Return-Path: <arunkr.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2D43E0043A; Sat, 21 Jun 2014 17:34:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr.linux[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C55CE00404
	for <yocto@yoctoproject.org>; Sat, 21 Jun 2014 17:34:03 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id z10so4273349pdj.1
	for <yocto@yoctoproject.org>; Sat, 21 Jun 2014 17:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=bRVdE+LCcUzIgZYc243BaGuJetjePu39N+bmIR94+Bs=;
	b=o3DfVxqUQKfFuZ3oBBlqZobzgMXpM2fyHAM+BVjmuGcL5cvA+EDior8zrO4PDiwtJE
	2nZvbxiqSEdXIrWtc4op90fLxPBcQrUgqAHIhE3Qcwad+KAIDW3C6S5i049YxlK7KALP
	JeIYz+921TlM8JnE71nfKsC5D7cJrzECBEX12RGojbEbmEXTrdtUaJTwz/jkY69iSH7y
	YMAc+Et0QLSE1YVzZYRgT5iBO8GwbZ8E7B/McpDjqVVcT544yW3OnUWu0ypW7ZfVxsRJ
	Erh7xUVhBX/ahrSn3a+xOG7CBUXfjtTM/at78g8BU63rKwP1ISBnTJr9b76ae9qvfTwe
	KTJQ==
X-Received: by 10.68.220.137 with SMTP id pw9mr16990849pbc.24.1403397243287;
	Sat, 21 Jun 2014 17:34:03 -0700 (PDT)
Received: from [192.168.0.103] ([123.201.32.72])
	by mx.google.com with ESMTPSA id js3sm4173912pbb.50.2014.06.21.17.34.01
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 21 Jun 2014 17:34:02 -0700 (PDT)
Message-ID: <53A62476.2080008@gmail.com>
Date: Sun, 22 Jun 2014 06:03:58 +0530
From: Arun Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto Mailing List <yocto@yoctoproject.org>
Subject: Yocto Labs
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
X-List-Received-Date: Sun, 22 Jun 2014 00:34:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

     I am new to Yocto project and have been following the documentation 
for familiarity.
I am looking for hands on lab sessions for the yocto project.
I am unable to find the same on INTERNET, all i find is conference 
videos and presentation.

If anyone can share links to online tutorial videos / pdfs it would be 
really useful.
content like creating and deploying own recipe files, layers. The 
Documentation describes these tasks at a very abstract level, an little 
more advanced version of the same would be appreciated.
Thanks in advance...

