Return-Path: <kalle@zapdevelopment.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CC44E009DA; Tue, 19 May 2015 05:48:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.47.247.78 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 May 2015 05:48:19 PDT
Received: from mailrelay10.public.one.com (mailrelay10.public.one.com
	[195.47.247.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BD8AE009B6
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 05:48:19 -0700 (PDT)
X-HalOne-Cookie: 199371ed9adb3d360ec490098a6cf72c6bc2fc8a
X-HalOne-ID: 2c144b5d-fe25-11e4-950a-b82a72d06996
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=zapdevelopment.com; s=20140924;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=T5be9gJXl7rt4CzsjKMzx+vk8tax7y9JTpsw/NPiVKQ=;
	b=YizmTy8mNpoyhGG3IWNw9tD1k1bOqLyda6nPsAKFT1RoGjE8UuGMtCZao5xqXl0G4PuSIYWIUph2y
	W11qqCVP+5X8T4NFp708urHWZ2eEwd9NlHxNwzKYXWbrYKtxGwCdpEFO1AUOorpzYYTqx8A8gk686U
	zWh5wcACC2NK5J3Y=
Received: from [192.168.1.162] (unknown [178.78.240.138])
	by smtpfilter3.public.one.com (Halon Mail Gateway) with ESMTPSA;
	Tue, 19 May 2015 12:47:13 +0000 (GMT)
Message-ID: <555B30CE.1030809@zapdevelopment.com>
Date: Tue, 19 May 2015 14:47:10 +0200
From: Kalle <kalle@zapdevelopment.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1639085.ayJ6cVLrAT@peggleto-mobl5.ger.corp.intel.com>
	<1422354552195.91079.26128@webmail7>
	<1747394.4vyzLVcRMW@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1747394.4vyzLVcRMW@peggleto-mobl5.ger.corp.intel.com>
X-Mailman-Approved-At: Tue, 19 May 2015 09:34:58 -0700
Cc: yocto@yoctoproject.org
Subject: Re: One recipe, two gits with destsuffix, how to patch?
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
X-List-Received-Date: Tue, 19 May 2015 12:48:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Sorry for the late, or veeery late reply, but your suggestion here seems 
to do the work.

Thanks for the help!

BR
Kalle

On 2015-01-27 11:42, Paul Eggleton wrote:
> On Tuesday 27 January 2015 10:29:12 Kalle Komierowski wrote:
>> I just modified my recipe with the patchdir.
>> SRC_URI = "
>> xxxxx.patch;patchdir=backports/
>>
>> I can see that the patches are copied to the destination where I want them
>> but for some reason they all fail when yocto tries to apply them. If I go
>> manually to the destination git and type "git am xxxxx.patch" the all apply
>> with no problem, I also tried to "patch -p1 < xxxxx.patch" and that worked
>> to. Maybe I should play a bit with the striplevel? But I do think that
>> yocto should be able to handle it from the point where I gave it the
>> patchdir=..
> The default striplevel is 1. If the patch is formatted typically, suspect this
> means that you'd need patchdir to be set to ../backports - does that not work?
>
> Cheers,
> Paul
>


