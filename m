Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7339E00CF1; Fri, 10 Nov 2017 14:53:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.rama01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399F2E00CEC
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 14:53:52 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id 72so3414649itl.5
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 14:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=mRBv2ZaWtgH6vQDYgltVmFjVn0OyVB+q1DZCvCV4JrU=;
	b=fWbSmf1S4h7jEahtcbbNXToZTojo34Jps7w8TgNlo6IsVORCFJNHdR+VO4G63nYt8/
	Oel0QDBwDmp1I1uloiewth6jyrSJFfJ8Rv5wJLMM34TWkXS8fuSuHimqnUvEvmctj4Sg
	I2SSrk5nTxkBrSPAG3T0Fa/UvwoYZCan0wYPcsD2ZaMBEJlc2hsf0EaZX2KWg+0e8IM+
	7pCMtqPsWxujAQn1b46nI68G8DbGepkyqymXmbDWUc/5jO15+sBxGr+wvzd20lzQ3Tgb
	pvrhvQrVpkVH9HoOg2iJj321aryC2LHG2hknt1SL43dmTe8OXc47OlI8Vz4UMAYvY5oW
	8XoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=mRBv2ZaWtgH6vQDYgltVmFjVn0OyVB+q1DZCvCV4JrU=;
	b=MnFcDrL52pax0QcifQ8NUftylBdWJ0SssrjE1Z17K4rgT1KTe5jPHncLrmnkhi/g2Y
	bzU3yHVTn0Sk0fJkIZMpN22mz0WEgC5YXRqBaD+5i3thwC/jBjyW2s/RQs0moMxMagtj
	VUOtmt3rT+OCIgD7yVddpcmO5NDF8QWZ5UrVxEras3kgnmeIDAP+MtYsM1Zr+j8P2gJ1
	NMi8mb6LByMtiCX8e/N9XZiX78smbUbv7FZsyIX5lRG3Ck0Z5BbcEuyo4oQhrLzdDI8B
	jyLFXu87GS9i+XKmD6mykVMUFOAQN21tJkPYegQqzB+SO1Xr28zfojXIh/McDYW7ZRER
	sKuQ==
X-Gm-Message-State: AJaThX6yJShfbrOTsh4p23R9LAm2ARvXCoYkjo/5MSgt+uNQeQysbBkv
	0d9R3ghSjlPD3gyADtOjDfO8oQ==
X-Google-Smtp-Source: AGs4zMaLctgFQWA961dXhmjaGaP7lku0bBqqu6eKADIo+t81tA2ZvwcKcl3sstrLieeVe77wmAGEaw==
X-Received: by 10.36.29.208 with SMTP id 199mr2407359itj.40.1510354431895;
	Fri, 10 Nov 2017 14:53:51 -0800 (PST)
Received: from [192.168.0.1] (50-77-232-178-static.hfc.comcastbusiness.net.
	[50.77.232.178]) by smtp.googlemail.com with ESMTPSA id
	z76sm5163868ioi.57.2017.11.10.14.53.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Nov 2017 14:53:50 -0800 (PST)
To: yocto@yoctoproject.org
References: <5A03AB30.5040907@gmail.com> <5A04E9CD.8050909@gmail.com>
From: John Rama <john.rama01@gmail.com>
Message-ID: <5A062DFF.3030906@gmail.com>
Date: Fri, 10 Nov 2017 17:53:51 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <5A04E9CD.8050909@gmail.com>
Subject: Re: dpkg --print-architecture returns wrong result
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
X-List-Received-Date: Fri, 10 Nov 2017 22:53:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

This issue is already addressed by the following commit.

https://vendor2.nginfotpdx.net/gitlab/ypp/poky/commit/aca6dae9dcdde59c3aeb0a9afd1a9538f1288e3a?view=inline
https://patchwork.openembedded.org/patch/132494/

John

On 2017/11/09 18:50, John Rama wrote:
>>> However, when checking with following commands, it tells armel.
>>> # dpkg --print-architecture
>>> armel
>>>
>>> I think "dpkg --print-architecture" returns wrong result. 
> 
> I debugged further on this problem.
> "dpkg --print-architecture" is just returns "ARCHITECTURE" which is defined by configure script. 
> In configure script, ARCHITECTURE is defined as followings.
> 
> dpkg_arch=$($srcdir/run-script $PERL scripts/dpkg-architecture.pl -t$host -qDEB_HOST_ARCH 2>/dev/null)
> where $host is arm-poky-linux-gnueabi.
> 
> When running dpkg-architecture.pl, I see following warning.
> 
> $ scripts/dpkg-architecture.pl -t arm-poky-linux-gnueabi -qDEB_TARGET_ARCH
> dpkg-architecture.pl: warning: default GNU system type arm-linux-gnueabi for Debian arch armel does not match specified GNU system type arm-poky-linux-gnueabi
> armel
> 
> Does -t "arm-poky-linux-gnueabi" is appropriate ?
> Or arm-poky-linux-gnueabi is correct, but the behavior of dpkg-architecture.pl is wrong ?
> 
> Any feedback is highly appreciated.
> 
> John
> 
> On 2017/11/08 20:11, John Rama wrote:
>> Hi, Yocto specialists
>>
>> I've built the whole system with deb package,
>> and trying to use package feed feature of yocto.
>>
>> When try trying to install some package from target, I faced following error.
>>
>> # apt-get install fontconfig-utils
>> ....
>> package architecture (armhf) does not match system (armel)
>> ....
>>
>> When checking the install package of the target system, everything is armhf architecture. 
>> # dpkg -l 
>> ...
>> ||/ Name                                           Version                     Architecture Description
>> +++-==============================================-===========================-============-===========================================================================================
>> ii  alsa-conf:armhf                                1.1.0-r0                    armhf        ALSA sound library
>> ii  alsa-conf-base:armhf                           1.1.0-r0                    armhf        ALSA sound library
>> ii  alsa-lib:armhf                                 1.1.0-r0                    armhf        ALSA sound library
>> ...
>>
>> However, when checking with following commands, it tells armel.
>> # dpkg --print-architecture
>> armel
>>
>> I think "dpkg --print-architecture" returns wrong result. 
>>
>> I'm using toolchain "arm-poky-linux-gnueabi-gcc" and result of dumpmachine option is as followings.
>> $ arm-poky-linux-gnueabi-gcc -dumpmachine 
>> arm-poky-linux-gnueabi
>>
>> I have no idea how to tell yocto to configure the target system correctly.
>> Any feedback is highly appreciated.
>>
>> Kind Regards,
>> Jonh Rama
>>
> 


