Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1814E00AD7; Thu,  9 Nov 2017 15:50:42 -0800 (PST)
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
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 455A7E009CB
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 15:50:41 -0800 (PST)
Received: by mail-it0-f52.google.com with SMTP id 143so2804977itf.1
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 15:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=Vj1snk51ZzulrP+QGkc+btOqsUJCXyOjoOCn0aXOlgM=;
	b=NndrFc9ZbnXS+f2TEepGK8bU893vKix+mMC2aDPMbd0jzkCtFGtRraJH+nLoPIgiRi
	Www0NkZN4T5EaebzPZEAOfLJBG8ciGEIYo/Ad0GhemYWmM7c+8/OuhBuWQd/GA4QhX9e
	6E4XPkKNcdcsHK6f3nLieciRQDMqBVJKpOxDPcCPVZSdLjN3g6YluzT0OyibPbEdfu9u
	4Tl7SOoFJLIHLRND7/cUgxOJJ/i8W0OkmRab28zHVB2wi1Wex4SN7mcfsJCIpYYztTW/
	IZra2e6m8+diGm7hDJDR+pfSuOXEK6aGap7BBnPuzGqqbuWW+vDPIUryld5di3bDvj/8
	Cikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Vj1snk51ZzulrP+QGkc+btOqsUJCXyOjoOCn0aXOlgM=;
	b=SgVXNzqB2JB0RX/lRkDVdGXPvUaRgWdNdb2+6q9gM2G9//QqIUUXAZw2WkOgD/jEnN
	r845LbZOV25iueeJGU0cIP5cqtPzW/hbhSqwHcRyEhN2TnveV05Gyb25eJHJwitGezn5
	1oiyZG0XOkLoKCxqo98UrpE8n7qQY+cu1uJ/ejWQhKVCiel05/P1iDyb3W29HL0OfZJd
	0PKdgT9szuDbpqSeAikUAToRj5X2FDA3p9fKEPqDJCbcfFo+H4LliJZRwxP8rOm7IkqN
	babpkRFfPSxCJ9jdtBAY/Z2CP2nPb98AnlMfRZwx28eKs9IAxZEafvkzPFXx4a3EnbN2
	zHPQ==
X-Gm-Message-State: AJaThX7X7a3ptW9qxOv5BuPOgiJmTs30DI9rCo6HdycMjxE/fJqjOr09
	tbuEQl0qx9QB5nzbjZEEiXEv4A==
X-Google-Smtp-Source: AGs4zMZ24M2EBhp0bv4kBUpXoQpQ0yPI+yr+oySBVysMMrs8KbvDuLVWsolSo4bX4PegY5gWJqeXmQ==
X-Received: by 10.36.194.7 with SMTP id i7mr1935539itg.21.1510271441102;
	Thu, 09 Nov 2017 15:50:41 -0800 (PST)
Received: from [192.168.0.1] (50-77-232-178-static.hfc.comcastbusiness.net.
	[50.77.232.178]) by smtp.googlemail.com with ESMTPSA id
	y133sm82236itf.7.2017.11.09.15.50.39 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Nov 2017 15:50:39 -0800 (PST)
To: yocto@yoctoproject.org
References: <5A03AB30.5040907@gmail.com>
From: John Rama <john.rama01@gmail.com>
Message-ID: <5A04E9CD.8050909@gmail.com>
Date: Thu, 9 Nov 2017 18:50:37 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <5A03AB30.5040907@gmail.com>
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
X-List-Received-Date: Thu, 09 Nov 2017 23:50:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

>> However, when checking with following commands, it tells armel.
>> # dpkg --print-architecture
>> armel
>> 
>> I think "dpkg --print-architecture" returns wrong result. 

I debugged further on this problem.
"dpkg --print-architecture" is just returns "ARCHITECTURE" which is defined by configure script. 
In configure script, ARCHITECTURE is defined as followings.

dpkg_arch=$($srcdir/run-script $PERL scripts/dpkg-architecture.pl -t$host -qDEB_HOST_ARCH 2>/dev/null)
where $host is arm-poky-linux-gnueabi.

When running dpkg-architecture.pl, I see following warning.

$ scripts/dpkg-architecture.pl -t arm-poky-linux-gnueabi -qDEB_TARGET_ARCH
dpkg-architecture.pl: warning: default GNU system type arm-linux-gnueabi for Debian arch armel does not match specified GNU system type arm-poky-linux-gnueabi
armel

Does -t "arm-poky-linux-gnueabi" is appropriate ?
Or arm-poky-linux-gnueabi is correct, but the behavior of dpkg-architecture.pl is wrong ?

Any feedback is highly appreciated.

John

On 2017/11/08 20:11, John Rama wrote:
> Hi, Yocto specialists
> 
> I've built the whole system with deb package,
> and trying to use package feed feature of yocto.
> 
> When try trying to install some package from target, I faced following error.
> 
> # apt-get install fontconfig-utils
> ....
> package architecture (armhf) does not match system (armel)
> ....
> 
> When checking the install package of the target system, everything is armhf architecture. 
> # dpkg -l 
> ...
> ||/ Name                                           Version                     Architecture Description
> +++-==============================================-===========================-============-===========================================================================================
> ii  alsa-conf:armhf                                1.1.0-r0                    armhf        ALSA sound library
> ii  alsa-conf-base:armhf                           1.1.0-r0                    armhf        ALSA sound library
> ii  alsa-lib:armhf                                 1.1.0-r0                    armhf        ALSA sound library
> ...
> 
> However, when checking with following commands, it tells armel.
> # dpkg --print-architecture
> armel
> 
> I think "dpkg --print-architecture" returns wrong result. 
> 
> I'm using toolchain "arm-poky-linux-gnueabi-gcc" and result of dumpmachine option is as followings.
> $ arm-poky-linux-gnueabi-gcc -dumpmachine 
> arm-poky-linux-gnueabi
> 
> I have no idea how to tell yocto to configure the target system correctly.
> Any feedback is highly appreciated.
> 
> Kind Regards,
> Jonh Rama
> 


