Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60CBDE008A6; Mon,  2 Feb 2015 10:24:39 -0800 (PST)
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
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3547BE00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 10:24:28 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id fa1so85437976pad.8
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 10:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=EeV8O3o9vkO0Jae6Z9hdIiKInKuZ2QYvqNxtF2zP4qI=;
	b=YLBzftev+r6RXGycKgmyeAe0fqtYtoLX11ynnaVZNzwaSkZeRoC6/nsxSFSNvxlrT8
	EpuDxvhaNbz9FHRSTvcWLgNhUvFoKFaLg3HOBtYyFUev7GI/ExulIFhmne55pzh9GS1+
	mUZ687Ow5OXn1RCWb6zMSAVRdGe9w2uJ6fhy0P0zntGEBoHGpyT3WyGdLg1qPEc3IQil
	Pwgf4wbeKNUMLtqO5GA5JQVFR/ENa2l3fSn+FauAdW8V03+K8SgWNDnKQTDdgFV5uNHk
	CJJqStAy2Xp2JutU6JvOgVrnrzqTZ046/ISBgxPMQqdRV0O1pyFZznaAOdK5INzBy82j
	chHA==
X-Received: by 10.66.194.102 with SMTP id hv6mr32072253pac.138.1422901468379; 
	Mon, 02 Feb 2015 10:24:28 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:c42b:9a19:c8d3:f701?
	([2601:c:a700:272f:c42b:9a19:c8d3:f701])
	by mx.google.com with ESMTPSA id po4sm4844390pdb.85.2015.02.02.10.24.25
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Feb 2015 10:24:26 -0800 (PST)
Message-ID: <54CFC0D5.7050703@gmail.com>
Date: Mon, 02 Feb 2015 10:24:21 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Armin Kuster <akuster808@gmail.com>
References: <1422891351-17215-1-git-send-email-akuster808@gmail.com>
	<101638424.af5YciAOUL@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <101638424.af5YciAOUL@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] layer conf: update to include meta-networking
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
X-List-Received-Date: Mon, 02 Feb 2015 18:24:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Paul,

Is the idea to include all layers required including the cascaded ones?

i.e: meta-networking requires mete-python, should I include that one too?

On 02/02/2015 08:31 AM, Paul Eggleton wrote:
> On Monday 02 February 2015 07:35:51 Armin Kuster wrote:
>> suricata needs a package in meta-networking
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   conf/layer.conf | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index c5a717b..650e6ed 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "security"
>>   BBFILE_PATTERN_security = "^${LAYERDIR}/"
>>   BBFILE_PRIORITY_security = "6"
>>
>> -LAYERDEPENDS_security = "openembedded-layer perl-layer"
>> +LAYERDEPENDS_security = "openembedded-layer perl-layer networking-layer"
>
> Can you please also update the OE layer index?

Do I do that manually or is it picked up from the README?

- armin

>
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-security/
>
> I added meta-perl and meta-oe this morning based on the meta-security README -
> the latter isn't represented in your LAYERDEPENDS value though, so all three
> places ought to be made consistent with whatever the actual set of
> requirements is.
>
> (If people are starting to use LAYERDEPENDS a bit more it might make sense for
> us to add some code to the layer index update script to try to update its
> dependency list based upon LAYERDEPENDS and BBFILE_COLLECTIONS; up to now it
> hasn't seen a huge amount of use hence I hadn't done that.)
>
> Thanks,
> Paul
>

