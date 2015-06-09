Return-Path: <darren.j.breeze@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DE05E009F0; Tue,  9 Jun 2015 14:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (darren.j.breeze[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24413E0099B
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 14:55:51 -0700 (PDT)
Received: by payr10 with SMTP id r10so21132043pay.1
	for <yocto@yoctoproject.org>; Tue, 09 Jun 2015 14:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=oJLeuN9dtJOgYpeNn48r7jWRm3SHe1lqc6/ySsAkeZ4=;
	b=K6SZJdFE/D8pEHzREs4qWpJvJJRo3//Z3tfrbOS4CgbqGjfSq2aDy7FE2Zc7QD/Jjo
	nI/00U9tbNPq2X6qEFZkRZU9Dg4eiWkCuppxp+D7rVcokksiVXDNcVYNNOBjNiDgS/G8
	BaAnC2aN3kdxv+CuFTCX6skw0BfW5BnW3Em/Ly/IxcmeULkkBdzPLNAZfL5VOGdVaKtY
	4zM59ebKt9C3Q9UNyyQ1EfJTwpzDYNmoz2U3WQRyOVBPNeEnw7culNMk4U6NOvp2LGZ1
	f3mCpZwNqgOSoE/tz2E2yMA6IzQtNrxbyBPo6iSQ0iUoqlECDL3F5VVLZ+26SqUyfMJU
	e0bw==
X-Received: by 10.68.211.228 with SMTP id nf4mr42761234pbc.116.1433886951144; 
	Tue, 09 Jun 2015 14:55:51 -0700 (PDT)
Received: from [192.168.192.10] (1-64-6-039.static.netvigator.com. [1.64.6.39])
	by mx.google.com with ESMTPSA id xv9sm6529177pbc.2.2015.06.09.14.55.49
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Jun 2015 14:55:50 -0700 (PDT)
Message-ID: <557760E4.9060104@gmail.com>
Date: Wed, 10 Jun 2015 05:55:48 +0800
From: Darren Breeze <darren.j.breeze@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <557243CA.7000203@gmail.com>
	<20150608073635.GA20609@ad.chargestorm.se>
In-Reply-To: <20150608073635.GA20609@ad.chargestorm.se>
Subject: Re: Recipe question
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
X-List-Received-Date: Tue, 09 Jun 2015 21:55:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I have sorted this out.

I had assumed the ${D} contained a trailing slash when it didn't

I changed do_install to

do_install() {
         install -d ${D}/opt/web_remote
         cp -r ${S}/* ${D}/opt/web_remote/.
}

And it worked.

Thanks for all the responses.

Darren B.




On 8/06/2015 3:36 PM, Anders Darander wrote:
> * Darren Breeze <darren.j.breeze@gmail.com> [150606 02:52]:
>> the recipe file is :
>> ---------
>> DESCRIPTION = "Web Remote"
>> SECTION = "utils"
>> SRC_URI =
>> "git://192.168.192.46/mygroup/web_remote.git;protocol=http;branch=master;"
>> S = "${WORKDIR}/git"
>> do_install() {
>>          install -d ${D}opt/web_remote
>>          cp -r ${S}/* ${D}opt/web_remote/.
>> }
>> ----------
>> but I keep getting this error
>> "error: Can't install packagegroup-core-boot-1.0-r17@rk3188: no package
>> provides web-remote"
> You have installed the files under /opt, though there's nothing that
> tells the system in which package these files should be installed.
>
> Add a line:
>
> FILES_${PN} += "/opt/we_remote"
>
> to your recipe. This should tell the packaging step that all files under
> /opt/web_root should be included in the ${PN}-package.
>
> Cheers,
> Anders
>


