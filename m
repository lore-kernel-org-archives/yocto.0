Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C69EE00B1B; Fri, 22 Sep 2017 06:39:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41630E007EF
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 06:39:51 -0700 (PDT)
Received: from [79.160.140.131] (port=12306 helo=[10.183.35.14])
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>)
	id 1dvOBK-0007v1-Hk; Fri, 22 Sep 2017 15:39:50 +0200
To: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@yoctoproject.org
References: <2c36d7a5-0749-f3f8-1dd9-eff118cb9de3@seldal.com>
	<1506080550.18640.190.camel@linuxfoundation.org>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <90e47724-35dd-24bb-8951-4796c2948f6e@seldal.com>
Date: Fri, 22 Sep 2017 15:39:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506080550.18640.190.camel@linuxfoundation.org>
Subject: Re: Path to current bb-file or layer
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
X-List-Received-Date: Fri, 22 Sep 2017 13:39:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 22. sep. 2017 13:42, Richard Purdie wrote:
> A better way to get what you're after may be to look at the contents
> of BBINCLUDED.

Ah, yes. Perfect. You got me onto a lead: Setting SP_BASEDIR := 
"${LAYERDIR}" in layer.conf and then access this variable from the 
bbclass file.

Although I would like to suggest that bitbake should have a FILE-ish 
variable that points to the actual running current file. Especially when 
bbclass files is thought to act as generic black-box-ish collection of 
funtions.

Thank you Richard


Best regards,
Svein

