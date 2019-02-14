Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C92BE00B92; Thu, 14 Feb 2019 05:09:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DBC0E00A1A
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 05:09:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1ED96TY015278
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Feb 2019 05:09:16 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 14 Feb 2019 05:08:55 -0800
To: Leonardo Jose Duarte MendesJunior <leodmendesjr@gmail.com>,
	<yocto@yoctoproject.org>
References: <CAA3Hs=cc=mBZk_2+Fbr6AmRMXg6Yk8OuoGFGd29tPaiPcjfGzg@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <d2db2e78-4a1c-c6f4-9e98-d2e9d05d9fdc@windriver.com>
Date: Thu, 14 Feb 2019 08:08:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAA3Hs=cc=mBZk_2+Fbr6AmRMXg6Yk8OuoGFGd29tPaiPcjfGzg@mail.gmail.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: Opusenc e shout2
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
X-List-Received-Date: Thu, 14 Feb 2019 13:09:46 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 2/14/19 7:43 AM, Leonardo Jose Duarte MendesJunior wrote:
> Good morning,
> 
> I'm compiling the gstreamer1.0 and its plugins, but the plugins:

> opusenc 

Seems to be a PACKAGECONIFG:

$ grep opus meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-*bb
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:# 
the opus encoder/decoder elements are now in the -base package,
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:# 
but the opus parser remains in -bad
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.4.bb:PACKAGECONFIG[opusparse] 
       = "--enable-opus,--disable-opus,libopus"
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.14.4.bb:PACKAGECONFIG[opus] 
         = "--enable-opus,--disable-opus,libopus"



> and shout2send 

That's disabled:
$ grep shout 
meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.14.4.bb
     --disable-shout2 \

You'll have to work on understanding why it was disabled and
send a patch to fix it.

../Randy

> are not found in the image.
> Any idea what can it be?How can I solve this?
> 
> Thanks.
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

