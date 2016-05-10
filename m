Return-Path: <emilmih@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66494E00E15; Tue, 10 May 2016 15:30:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (emilmih[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB15E00E0F
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 15:30:26 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id c189so10880341pfb.3
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 15:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=iusQrWTZh0L+3AXnkdW9L9Ko40w+7F7FV9ZItwEF1TU=;
	b=v42TgPvv5N8HtqowJsGmxFDtlY0YuIxbEb2vGg0UdgTSJntj+kEuyRAwzSoqkvpYbj
	sRO5Wy7dajDKF9SnbYsmb+hjqerXTB/WQxn9sNiJZAH2QWIlVPeyiBXESe039hWE2UXQ
	5pyyTDFYbivbJxrlDH2GllXWuem7MaaWJl6lK6eFQ2TqiWc0m+uFjNFR29ao1HeWPWez
	5CLhrYVSh6zse/unh6WXo0j8NEzfIYer5PnHVdN6W7UNryEM0+q2hYKifWgA0JJlob6S
	lOiWjqvSvbRXsylJe7Rr0UYY166MYz1UaGb/s/I7MPCfliNDWG98BwhFi2fwH4BxINPu
	8PKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=iusQrWTZh0L+3AXnkdW9L9Ko40w+7F7FV9ZItwEF1TU=;
	b=mBMiKVAD0IgAOpmwbiaALYj1Pmv/30swsQxpm+JUzY8/tL7n6uped1Wtr08BLQtkv8
	UOplvFUbarOvIirJww/capt6Ev+R3arkoiYQ0IVwPHSg/+CB4drT6S+6YQCfcF2+jCzY
	gAgGn4FJoXNc1B3ZOmPvDfjhJy2N36pcQU0mgltbZOvjtUBXEi2RKo1okeAS/8hq/woh
	f14AWg7kHLfrO+/OnSNZtxTNK3EFHLctgBQueEjKDc0ofiv7zpe4zzX4vNPl3K49KL9S
	N6kASQ9yze5/pIfUHys5SSghgCJfurGZQN1kFkqNLkJnsIZ5faNd8E3hBAFEMgpz4Xx7
	y/6w==
X-Gm-Message-State: AOPr4FVEg3hd+G4qBo30k7yor+hTjl3umLzmJDhKVkBVtHM8w0oMS4BrVAoysbPmDiR78Q==
X-Received: by 10.98.5.196 with SMTP id 187mr62319407pff.103.1462919426142;
	Tue, 10 May 2016 15:30:26 -0700 (PDT)
Received: from [10.8.100.105] (rrcs-74-62-253-130.west.biz.rr.com.
	[74.62.253.130]) by smtp.gmail.com with ESMTPSA id
	lg8sm6791833pab.48.2016.05.10.15.30.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 10 May 2016 15:30:24 -0700 (PDT)
To: Mark Hatle <mark.hatle@windriver.com>,
	"Maxin B. John" <maxin.john@intel.com>
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
	<fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
	<e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
	<20160506091048.GA11082@mbabyjoh-desk.ger.corp.intel.com>
	<76de089c-50fb-95dc-bc93-956102ecd13b@windriver.com>
From: "Mihaylov, Emil" <emilmih@gmail.com>
Message-ID: <20acec65-acc4-f236-b698-9851065e0368@gmail.com>
Date: Tue, 10 May 2016 15:30:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <76de089c-50fb-95dc-bc93-956102ecd13b@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Tue, 10 May 2016 22:30:29 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

did anybody overcome this issues and made it work ?



On 5/6/2016 10:49 AM, Mark Hatle wrote:
> On 5/6/16 4:10 AM, Maxin B. John wrote:
>> Hi Emil,
>>
>> On Thu, May 05, 2016 at 10:43:08AM -0700, Mihaylov, Emil wrote:
>>
>>> hi Mark,
>>>
>>> my oracle-jse-jdk_1.7.0.bb
>>>
>>> looks like this
>>>
>>> -----------------------------------------------
>>>
>>> # Automatically choose java package based on target architecture
>>> DEPENDS += "libav gtk+ libxslt libxtst"
>>  From the error, I assume that you are using "RPM" as package manager in your
>> local.conf:
>>
>> PACKAGE_CLASSES ?= "package_rpm"
>>
>> Could you please try to build again with "ipk or deb" as mentioned in the README
>> file in meta-oracle-java repo ?
> This will like result in a package that installs -- but not one that works.
>
> RPM has additional checking that ipk and deb do not.  (ipk and deb don't support
> SONAME style dependencies due to design differences.)
>
> So these recipes need to work in all three package formats, and most of the time
> RPM finds run-time errors the others overlook due to this.
>
> --Mark
>
>> Best Regards,
>> Maxin
>>


