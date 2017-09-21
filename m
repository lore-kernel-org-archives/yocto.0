Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE13DE00CA2; Thu, 21 Sep 2017 13:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A050E00C7B
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 13:00:26 -0700 (PDT)
Received: from [2a01:79d:7376:8270:700f:e5cc:6594:d22e] (port=59808)
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>) id 1dv7e5-0005MI-GL
	for yocto@yoctoproject.org; Thu, 21 Sep 2017 22:00:25 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
Date: Thu, 21 Sep 2017 22:00:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Path to current bb-file or layer
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
X-List-Received-Date: Thu, 21 Sep 2017 20:00:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


To determine a image version, I'd like to read a VERSION file which is 
located in the root of the layer. (Per our development procedure.) I'd 
like to read it from a bbclass file. However I seem to be unable to find 
any methods or variables to find a useful path to either the current 
bb-file or the root of the layer.

The only way I have found is to parse through BBLAYERS and guess at what 
my own layer is of those, and then use the found to access the file. But 
this feels very wacky.

Is there a reason why bitbake doesn't have a variable path reference to 
the current file?


Best regards,
Svein

