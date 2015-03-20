Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42E5BE00779; Thu, 19 Mar 2015 18:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D1CE0076B
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 18:51:49 -0700 (PDT)
Received: by pdbcz9 with SMTP id cz9so93301735pdb.3
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 18:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=0hzUVDjqprB6jLH7K37Pq1KoIAELmnNc2fbOXv9760U=;
	b=pcEaLY+jba3nIXVsHnxip4/ifQx1u2dGK98VZ/DZCp1fawF2D3yNkTgmGcYx9k1h27
	f1b3aq1YW7+bffHx7WArc18TdFS+J5PhNwULaZIZUrQgKKLG2/8LMnkBAR71Iwz/QUrR
	sAEgJy2YRTqdCML8MbJjJtx9OUnFgZE/rh45FSRpis3o+UsiwRgHhGqB/jjwxB/R9qEq
	rMGfdj0dCNMdrSCRylhIm6AKLLOy/uk2HoHa0aZj+NAfGV/g3O7aPZjhBgjAPeZe6hYE
	MddpYg9IA/kfQ5yQdWuDi225bjP1YkPB4Z9WPiWDQ4zBw123s6RT5ewcrLh622UWrRnw
	lw3Q==
X-Received: by 10.66.66.7 with SMTP id b7mr183687146pat.9.1426816308945;
	Thu, 19 Mar 2015 18:51:48 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:a9cf:3f86:8337:c710?
	([2601:c:a700:3ba7:a9cf:3f86:8337:c710])
	by mx.google.com with ESMTPSA id
	fk15sm5149862pdb.19.2015.03.19.18.51.46 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Mar 2015 18:51:47 -0700 (PDT)
Message-ID: <550B7D2F.2020308@gmail.com>
Date: Thu, 19 Mar 2015 18:51:43 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFQ+DiiAF-r8C2+UpZA5ioR=sRCorZS1SJw1dH=FKkFG28xYcA@mail.gmail.com>
	<3117116.FDFJ4kzQ93@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3117116.FDFJ4kzQ93@peggleto-mobl.ger.corp.intel.com>
Subject: Re: meta-toolchain not always relocatable
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
X-List-Received-Date: Fri, 20 Mar 2015 01:51:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 03/19/2015 10:20 AM, Paul Eggleton wrote:
> Hi Marco,
>
> On Thursday 19 March 2015 17:46:44 Marco Cavallini wrote:
>> I am facing to a very odd behaviour installing the resulting meta-toolchain.
>> I launch
>> poky-glibc-i686-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.7.1.sh
>>
>> If I install in the default directory or in /opt/poky/test it works as
>> expected, but if I install in /opt/poky/1.7.1-cortexa9hf there is a
>> problem. Using YP older that dizzy it worked with a charm.
>>
>> $ ./poky-glibc-i686-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.7.1.sh
>> Enter target directory for SDK (default: /opt/poky/1.7.1):
>> /opt/poky/1.7.1-cortexa9hf
>> You are about to install the SDK to "/opt/poky/1.7.1-cortexa9hf".
>> Proceed[Y/n]? Extracting SDK...done
>> Setting it up...done
>> SDK has been successfully set up and is ready to be used.
>>
>> Now I can't use it calling the env setup as usual
>> $ .
>> /opt/poky/1.7.1-cortexa9hf/environment-setup-cortexa9hf-vfp-neon-poky-linux
>> -gnueabi
>>
>> the reason is that the resulting path is incorrect
>>
>> $ env | grep PATH
>> PATH=/opt/poky/1.7.1-cortexa9hf-cortexa9hf/sysroots/i686-pokysdk-linux/usr/b
>> in:/opt/poky/1.7.1-cortexa9hf-cortexa9hf/sysroots/i686-pokysdk-linux/usr/bin
>> /arm-poky-linux-gnueabi:.....
>
> Yes, I discovered this a few months ago and it got fixed in master:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7032
>
> It looks like we still haven't backported the fix to 1.7 though. Anibal, could
> you please take care of that?

I can if Anibal is working on other things. I have slowly back porting 
changes anyway for the next dizzy release.

- armin
>
> Thanks,
> Paul
>

