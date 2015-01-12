Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27885E0086F; Mon, 12 Jan 2015 04:35:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D11CFE0048B
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 04:35:39 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id j5so17298511qga.7
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 04:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=gIdCSbgDGMnqxVp4dJZDsg9YUK+u+89Pq6gJk/qFkWI=;
	b=EQIMZqaebDxmIky37dM8vD5ll85y5hX2OQ6xZ5DWikGd0fQAeecFR9rUtiU1O2Ecxg
	pC0vxyiwy3++ZnowhQJ/gwaZlPm3ifKtEZ2tuFKejvBkdyMaMnydT45srA7AOesVsu5j
	gI/o4aNKzYfeytmDIdWEe/y7hjYLBkHtSw0M4OVbvNWEsDjvZh87Audd498kS5Dx4JNi
	uYQt/bYzc+3FxKFShlCsDhSfSPbzN7UfIrafpb8Kbs+MNi8t6jmjeEholMm8IF3s0WzF
	UW3KOfWnIWcG+6oks1CmZBsiQ7qXK0REvaCSCt1gqOgXJ6CEtuYlG/KRc8Ubv3o9SgzK
	PSiQ==
X-Received: by 10.140.25.169 with SMTP id 38mr45506598qgt.57.1421066139034;
	Mon, 12 Jan 2015 04:35:39 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:6464:4ffd:acfd:8259?
	([2601:c:a700:272f:6464:4ffd:acfd:8259])
	by mx.google.com with ESMTPSA id
	x38sm14622662qgx.23.2015.01.12.04.35.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Jan 2015 04:35:38 -0800 (PST)
Message-ID: <54B3BF95.5090401@gmail.com>
Date: Mon, 12 Jan 2015 04:35:33 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1420998982-3732-1-git-send-email-akuster808@gmail.com>
	<2573410.MtKzVNeoZz@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2573410.MtKzVNeoZz@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] libcap-ng: fix checksums
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
X-List-Received-Date: Mon, 12 Jan 2015 12:35:56 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Paul,

Thanks for the feedback.  My intension was to add some sort of a note by 
my action did not reflect that.

I will send out an update.

- Armin

On 01/12/2015 01:53 AM, Paul Eggleton wrote:
> Hi Armin,
>
> On Sunday 11 January 2015 09:56:22 Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   recipes-security/libcap-ng/libcap-ng_0.7.4.bb | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
>> b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb index 3f225ba..8823dad
>> 100644
>> --- a/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
>> +++ b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
>> @@ -12,8 +12,8 @@ SRC_URI =
>> "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
>>
>>   inherit lib_package autotools pythonnative
>>
>> -SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
>> -SRC_URI[sha256sum] =
>> "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
>> +SRC_URI[md5sum] = "55c57c0673b944ea1a755bcb2636dabd"
>> +SRC_URI[sha256sum] =
>> "48a2083276f9820cb92dcb05d001b30733bcbf48c14c230303cac3cd08b45b6b"
>>
>>   DEPENDS += "swig-native python"
>
> Could you please note in the commit message why these are being changed? It
> looks like they weren't changed at the last upgrade, which is fine, but that
> should be noted so that it's clear that it wasn't a matter of the files being
> changed upstream.
>
> Cheers,
> Paul
>

