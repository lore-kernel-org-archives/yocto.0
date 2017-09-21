Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83756E00CC2; Thu, 21 Sep 2017 04:33:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2252E00C14
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 04:33:16 -0700 (PDT)
Received: from [2a01:79d:7376:8270:b05c:b54e:3930:842c] (port=41722)
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>)
	id 1duzjH-0001cO-7p; Thu, 21 Sep 2017 13:33:15 +0200
To: Andre McCurdy <armccurdy@gmail.com>
References: <cfa95210-8fc5-492a-7c8c-3f9b6c561cda@seldal.com>
	<CAJ86T=X-_bDSKEZxgju03z6LVPOzDY45y9WsRR2gop=0mgajug@mail.gmail.com>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <49f91cb8-ae26-e835-03ae-e007ac8b0de6@seldal.com>
Date: Thu, 21 Sep 2017 13:33:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=X-_bDSKEZxgju03z6LVPOzDY45y9WsRR2gop=0mgajug@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sysroot bug in bitbake or wrong configuration?
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
X-List-Received-Date: Thu, 21 Sep 2017 11:33:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Perfect, that worked.

On 21. sep. 2017 03:45, Andre McCurdy wrote:
 > Since image recipes don't have a do_configure task (or at least, they
 > do their work in tasks such as do_rootfs which don't depend on
 > do_configure), using the DEPENDS shorthand for setting dependencies
 > for the do_configure task doesn't work.

Technically, this isn't a Yocto image recipe per se, but a general 
recipe for processing some file which happens to have the name "image" 
in it. The naming was perhaps a little misleading.

Notice that this recipe does not disable the default tasks, so all of 
them run, including do_configure. What I learned after some 
experimentation is that DEPENDS seems to works fine if you place your 
custom tasks after the do_configure tasks:

     addtask do_spu_rootfs before do_build after do_compile

This construct seems to work even if you disable the confiugre task with 
do_configure[noexec]="1"

But agreed, this works because of the implicit dependency on 
do_populate_* by do_compile. Setting the dep explicitly with the 
"longhand" format is more robust.


Best regards,
Svein

