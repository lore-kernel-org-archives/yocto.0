Return-Path: <kevin.thierry@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF67E004E0; Fri,  1 Aug 2014 08:34:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 253D5E003D8
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 08:34:30 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id u56so4480057wes.0
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 08:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=tnyW6HtQs+BlMivmlyGzD57bfgcoLXz848INfq3koK4=;
	b=FVcCZEr0VVyb3lVV8RjaTMAJpogYagpKf2E1td2RPVclqmvGGGciXD32FQSC54xJf7
	aVVjnJp0iybsTzNcmvC2DxlnNVJx6PBS6lU6JgsiXoRreLxQhd6QAXWzA6Fm+49GDHkS
	Kz4uO51LGJCt7yaf311qMknbzDMZ5COV8Eutc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=tnyW6HtQs+BlMivmlyGzD57bfgcoLXz848INfq3koK4=;
	b=an2l14GKWTwIPfI90XAbCWaOZegXta18CePAnfFRjjd30dyNVruoOy1RfxDN57C45O
	qUaIZsZqCMpuSjuvxpQ4penAj42zwzkMJju0CKeJVNKFRcZKq5fTwe2+hNklmdpbODBS
	DYmc5oRp40qIbccSeyz1d8S0z2JLpXwc+k/Ng3X++CzAk3bASD4ue3aZLnoDxdEsWP21
	MAeWeU+liQwscGmvQAnOeYfHBoxvFSMKRYiyZeuo0/F51v3D+pXHRwZy2b7klJHpYgHD
	n0VzLN1ylM/YIwD9d/5hA//QjoG/vZ46AKBjyT4FgRpn6CvE80u46WJgaRJKje6wAnBd
	nMAA==
X-Gm-Message-State: ALoCoQljP4IDIuLAc/9SwAr4+1OaT+5+xotyyGbUbUqybra3S4gRtp549t0wfKrit7XPn3WfLbEM
X-Received: by 10.194.22.166 with SMTP id e6mr9303222wjf.88.1406907266827;
	Fri, 01 Aug 2014 08:34:26 -0700 (PDT)
Received: from [10.19.3.25] ([46.18.96.46])
	by mx.google.com with ESMTPSA id m8sm21662221wjy.35.2014.08.01.08.34.26
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Aug 2014 08:34:26 -0700 (PDT)
Message-ID: <53DBB576.2000905@open.eurogiciel.org>
Date: Fri, 01 Aug 2014 17:42:46 +0200
From: =?ISO-8859-1?Q?K=E9vin_THIERRY?=
 <kevin.thierry@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	ronan <ronan.lemartret@open.eurogiciel.org>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
	<53DBA665.7080002@open.eurogiciel.org>
	<53DBB20B.8020307@dynamicdevices.co.uk>
In-Reply-To: <53DBB20B.8020307@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 15:34:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit


On 01/08/2014 17:28, Alex J Lennon wrote:
> On 01/08/2014 15:38, Kévin THIERRY wrote:
>> Hi Alex,
>>
>> Can you check if the filesfind-supplements and find-supplements.ksyms
>> exist by trying this please:
>>
>> bitbake rpm-native -c devshell
>> ls -l scripts/find-supplements{,.ksyms}
>>
>> And tell us the output.
> I think it's the bash vs dash issue rearing its head again
That's what I was thinking.
>
> Replacing
>
>   install -m 755 scripts/find-supplements{,.ksyms} ${D}${prefix}/lib/rpm
>
> with
>
>   install -m 755 scripts/find-supplements ${D}${prefix}/lib/rpm
>    install -m 755 scripts/find-supplements.ksyms ${D}${prefix}/lib/rpm
>
> in rpm-extraconf.inc got me further, onto an error about a missing "pushd"
>
> This made me think it was a shall issue and sure enough reconfiguring
> back to bash with
>
> dpkg-reconfigure dash
>
> fixed the problem.
>
> I'm not sure of the Yocto policy on dash vs bash but I've been using
> dash without problems in general for some time now
I don't know either but I think it's best to be compliant with both bash 
and dash, I will try to correct those issues in order to be 
dash-compliant. Thanks a lot for the feedback ;)

Regards,
Kevin

