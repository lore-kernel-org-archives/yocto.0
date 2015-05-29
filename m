Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63CFFE00988; Fri, 29 May 2015 12:37:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 180FDE0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:37:41 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so22272837igb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=lySwjhwrkLf/oiOwPVueJa/IHYj8xDX9lgy+ZeTbBqI=;
	b=nM5y0H5Vw65h2gkbXrktGuC0mbM4sgXXID4rEjhE2NTuNsR0zl6jzl+EjzYQ//MrA5
	KB1XfjA70RlvFHwtEbhPcOjk00aRS9QRQpdGCYw7DnmPfCv5zWUtOIyIlKZiVCrKyFIK
	EIKhBxGkJgsd84bHAl4ZYXiZvpyEzqmK5vBGD0AZXRByZskUdMoaTSUyNZnkI2k3pWt0
	B7gisSZbZ1hLSP/Z0OCI/lkNG7XvBT3XMGdu2mPv6k9dd9WuTJwisH+JnTsQKJmyrkkD
	PT+sG4M0Abyuc4okD//J0hdm+ecmtEpX6aBz6WDItcmxlV+CMYzcFHYvTo232chXDxL3
	lBng==
X-Received: by 10.50.225.35 with SMTP id rh3mr5985619igc.29.1432928260715;
	Fri, 29 May 2015 12:37:40 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	w124sm4028848iod.3.2015.05.29.12.37.38
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 12:37:40 -0700 (PDT)
Message-ID: <5568BFFE.6020303@gmail.com>
Date: Fri, 29 May 2015 15:37:34 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nicholas Krause <xerofoify@gmail.com>, 
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
	<5568BC20.7080703@gmail.com>
	<B1A8DC16-337A-45ED-BF82-2F34487B32C4@gmail.com>
In-Reply-To: <B1A8DC16-337A-45ED-BF82-2F34487B32C4@gmail.com>
Cc: "Hart, Darren" <darren.hart@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Question on building out-of-tree modules on the target
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
X-List-Received-Date: Fri, 29 May 2015 19:37:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 05/29/15 15:28, Nicholas Krause wrote:
> On May 29, 2015 3:21:04 PM EDT, Trevor Woerner <twoerner@gmail.com> wrote:
>> If it were me, I'd just remove that section altogether. I'm of the
>> opinion that doing development work on the target is wrong (if for no
>> other reason than to prove your cross-development setup is working
>> correctly), but that's just me.
>>
>> ;-)
> Your assuming the target isn't powerful enough for compiling. What if it is?

That's why I included that part in parenthesis :-) Many "embedded"
devices are well powerful enough for compiling, but doing all your
development on the host computer demonstrates your cross-development
environment is properly configured for all development tasks.

