Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25BFBE00CFE; Fri, 22 Sep 2017 01:17:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBB0E00CF2
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 01:17:20 -0700 (PDT)
Received: from [2a01:79d:7376:8270:700f:e5cc:6594:d22e] (port=40676)
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>)
	id 1dvJ9D-0008WE-Bw; Fri, 22 Sep 2017 10:17:19 +0200
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
	<1506029779.18640.168.camel@linuxfoundation.org>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <29436fab-d836-536b-d5d9-3cc1fe5a5e85@seldal.com>
Date: Fri, 22 Sep 2017 10:17:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506029779.18640.168.camel@linuxfoundation.org>
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
X-List-Received-Date: Fri, 22 Sep 2017 08:17:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


On 21. sep. 2017 23:36, Richard Purdie wrote:
 > You mean like ${FILE} ?
 >
 > $ bitbake bash -e | grep ^FILE=
 > FILE="/media/build1/poky/meta/recipes-extended/bash/bash_4.4.bb"

To me ${FILE} seems to be pointing towards the receipe, and not the 
current .bbclass file as you'd expect.

If I put this in local.conf

     INHERIT += "sp-version"
     SP_BASEVERSION = "${@read_spbaseversion(d)}"

And in sp-version.bbclass:

     def read_spbaseversion(d):
         bb.warn("SVEIN FILE: ", d.getVar('FILE', False))
  	return '0'

If I do bitbake -e, I get

     WARNING: SVEIN FILE: /home/s/build-sp-image/build/conf/bblayers.conf

Later the read_spbaseversion is used from within recipe (although they 
don't need to as this variable goes into the global scope, but for the 
sake of the demonstration). Then the value being prined is:

WARNING: /home/s/build-sp-image/meta-sp/sp/sp.bb: SVEIN OPEN: 
/home/s/build-sp-image/meta-sp/sp/sp.bb

Hence, ${FILE} seems to point to the current file scope, like a recipe, 
and not any class files that the recipe might take use of.


Best regards,
Svein

