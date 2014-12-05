Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F5D2E00927; Thu,  4 Dec 2014 21:50:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BBDE0090A
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 21:50:05 -0800 (PST)
Received: by mail-wi0-f179.google.com with SMTP id ex7so277021wid.12
	for <yocto@yoctoproject.org>; Thu, 04 Dec 2014 21:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=/igJQEKmDRgZm4ByH57Ri/3vE0QHZKJ+vpytKxck/Go=;
	b=tW2bXdwk5TaSj+r7dnzRgfZ2xiWKg4CLnS4ZE6DkVo/vM/0f5XFFRzL80oEB0mbx5d
	P2go+oYA0gSbEME7vRZPGFlWmQmSIG80ueBNtpvYSotcgjAWdPrZYrQ+V35iCfQVf+G0
	F5/SjI1MhG4SX7dkJOYYqxxxOkvd/puKdA4UBziRwEi1Xz48j/UHfU8kEIC5j/AqAzmF
	zsr6Z6Pz9vn/ZUzu++pHs94bNilX2sFuUEXySinMzFfmDGQDw6XG2EZ/SyrLMTJzgsUk
	A+hPxqlarbRVQqZVrMHnFxop3QKGe9H+zmKkdJI8f6GPHn65lWHSLqWfjkbkECxGfwxg
	53Vw==
X-Received: by 10.180.101.200 with SMTP id fi8mr1328966wib.77.1417758604085;
	Thu, 04 Dec 2014 21:50:04 -0800 (PST)
Received: from [192.168.50.245] (ip-37-24-44-195.hsi14.unitymediagroup.de.
	[37.24.44.195])
	by mx.google.com with ESMTPSA id d5sm43455251wjb.34.2014.12.04.21.50.02
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Dec 2014 21:50:03 -0800 (PST)
Message-ID: <54814789.304@gmail.com>
Date: Fri, 05 Dec 2014 06:50:01 +0100
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>, 
	Yocto Project <yocto@yoctoproject.org>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A245C92@PGSMSX104.gar.corp.intel.com>
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A245C92@PGSMSX104.gar.corp.intel.com>
Subject: Re: do_fetch() with svn which has http prefix
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
X-List-Received-Date: Fri, 05 Dec 2014 05:50:16 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Chan,

Am 05.12.2014 um 05:09 schrieb Yu, Chan KitX:
> Hi,
> 
> I need to do svn checkout http://llvm.org/svn/llvm-project/llvm/trunk but since that repo has a http prefix, I don't think it's smart enough to recognize that the link is actually an SVN repo. So how do I work around this problem?

Use svn://llvm.org/svn/llvm-project/llvm;protocol=http;module=trunk as
fetch URL.

> 
> Thanks,
> Chan Kit
> 
> 
> 

Cheers,
Sven

