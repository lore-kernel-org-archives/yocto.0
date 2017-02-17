Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA24EE008D0; Thu, 16 Feb 2017 18:09:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ADC3E00724
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 18:09:04 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id y6so2375890pgy.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 18:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=H/xpp2k/6154Df2u9Ox3RE2ylsxKFBpAk77wVcl1Jqo=;
	b=Q/Ia3OsRVGP4grug/KVO4qmNxCv3OqiIt2CDfZ6UgfYQCHG3YmG09Sm6+AIip5/Yqj
	Tz3UAqWJkiYpu8XSm98Cd+4z3oVu58NgLumrpb+wGSMBQuDByCQjY2v4hqfXDTXDNCJM
	GoDgc4LZ0LHVsub0f6YJimNfrdC3lszZv3oeR+wBpIpN5jdtQ2fRmA8swUkIZDpLCidc
	wvmProyuXD1rWJZwIltH5HR8vBmqFMVawposQUt1qUaxhpsMRY7bZPTWON9nbghwIoaJ
	TN5Q9eJUKfH8ABrF8lf/YNmVF4XKScwBWsXz5Pb5g9QqITJNaj+A2d8yiKbxh/ExxAiI
	V2Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=H/xpp2k/6154Df2u9Ox3RE2ylsxKFBpAk77wVcl1Jqo=;
	b=Jk67Ri+8m7GTp1dXAbIZfKjZ8dNcorstGzm4soX5gl5/whpUlByT6YKcp8uP9kucCf
	9E+y7AAVwyMC5mfFE8QkmYybizdCkTFukGhn3R7HDVepipi08mc1gTJJ5svKcUJ2JwAq
	7n9te09oP0b1MPSVWDpmXnKP9CHdXOHA59Jjo3r2klqT6MER4MHOdylRSBT1nFCBFMZB
	MpmkdB4fCSrrDlov4Rqowq2IMabFgsqe9ysHBdG3BEa5mzbqKie7SFHYnPvdC/iKacEZ
	MhYhZyOu/Sv3rn8H0lt1cCctycsfygimgxGcnLt/UFRfxS0DX5YPJN0ZOXutImXaQtv8
	0C5A==
X-Gm-Message-State: AMke39kJhpQBlSyvZct5hb4eLcCn1PqJeS9q5LtEuTHhnYOyoz5DzKyRi6EIjIXVFwro8w==
X-Received: by 10.99.178.89 with SMTP id t25mr6748432pgo.183.1487297344252;
	Thu, 16 Feb 2017 18:09:04 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:dcfa:13bf:34d0:bc6f])
	by smtp.gmail.com with ESMTPSA id
	l22sm15913399pgc.43.2017.02.16.18.09.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 18:09:03 -0800 (PST)
To: yocto@yoctoproject.org
References: <d75a5d99-f1c8-f106-8264-50d03a5f5e2a@mlbassoc.com>
	<7b993ea1-ffde-c3a7-b125-63c857808013@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <88cac78b-712a-5d79-7f83-4d5d3269d093@gmail.com>
Date: Thu, 16 Feb 2017 18:09:02 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <7b993ea1-ffde-c3a7-b125-63c857808013@mlbassoc.com>
Subject: Re: [meta-raspberrypi] WiFi on rpi3?
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
X-List-Received-Date: Fri, 17 Feb 2017 02:09:05 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 1/20/17 3:52 AM, Gary Thomas wrote:
> On 2017-01-20 12:30, Gary Thomas wrote:
>> Can someone give me pointers to get the onboard WiFi on the
>> RaspberryPi3 going?  What kernel settings/hoops I need to do,
>> what packages I might need, etc?
>>
>> Thanks
>>
> 
> Actually, I've found that with an older kernel (4.1.21) the WiFi
> device is discovered, but with the newer kernels (4.4.x and 4.9.x)
> it's not.
> 
> Any clues?
> 

Please try out the patch I posted to ml

https://lists.yoctoproject.org/pipermail/yocto/2017-February/034624.html

or from my gh fork.

https://github.com/kraj/meta-raspberrypi/commit/6ce6e57782c23fd21ad47286ac8b809ce989ea78

and let us know.

Cheers
-Khem

