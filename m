Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED3A0E00DD1; Thu, 11 Jan 2018 01:04:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8392AE00D6E
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 01:04:48 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w0B94kSQ000665
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 11:04:46 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
Date: Thu, 11 Jan 2018 11:04:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: libgcc.a size
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
X-List-Received-Date: Thu, 11 Jan 2018 09:04:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello

I just upgraded from krogoth to rocko, and noticed the resulting rootfs 
image increased significantly.
What stands out is a big bump in size for 
/usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 
5.3.0) to 25 MB in rocko.
Can someone shed some light ? What can be done ?

Thanks


