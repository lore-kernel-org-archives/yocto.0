Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E654BE003DB; Fri, 27 Jan 2017 09:48:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D2FE0030B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 09:48:17 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 204so25498587pge.2
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 09:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=nLBYIWkqTwrcMSm1uN9OM4ohnkjkKj24UMWQ44N3JsQ=;
	b=fkHVBM3gBJao60i9OHFv0nrG1zv03ec2ds52D9PWNWTyX/HqATZUrTtohlVs6QMhTA
	82mt43Cmm8gzqP8FMk29/HUadqVSesm0CK6Z4cplus3W7rMyqHgEGzfknt2seuewopV3
	TCqMuVZ4S3SkBDIvLwLuy0h40kLcN/eZ1Vp/I0Xv65i+EVE15lbktTPgUQm6IEeZlB8e
	OP2oRL+mCWioBjsQ9Dli+jNmrRVAJoQ3v2oXXQivjGsT6Jt9ASJ1hoT4XjFQyaI0V6F7
	Cqma4SmaQzpW9tAZ6V7ZTVTBsjxNMmMteYDCT6eJNEqYgSjCdC77HZ3DtNZcVWt3gJ3X
	zsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=nLBYIWkqTwrcMSm1uN9OM4ohnkjkKj24UMWQ44N3JsQ=;
	b=Bredv2O1LYRDWk2NwlPS59SsWpot5yoGVBmxkGuryx/CPwmnJNMhzjMcVLF2p14CUc
	nv6kCdIM1SRRoy0wcVda/diz5e4M2f8oy07/Krl3RdO4A7yPrkqm+MPspUh+krq4hUEB
	tpJZfV8n9IZqngBItT+GZ8Lm3tCtz8uv5cbxKESQn0m85Kz1ngYoYM24G6DIxlHkCWyW
	yXimcprAsYeRqrC9mz929HISi/XJ2HQ+6A2JYhs5gK5/NRYZTsddRoTCh0qDNomr7Bwk
	uB9w6OvpSqi99EIaLqIVzvBEQVgtspialsWkMaC52VmgRDfQI/0sPSifyHBPyuukwpdq
	+cWQ==
X-Gm-Message-State: AIkVDXKkJXFLmD4bm56dFkel/9IZQshGP1B7nlXzC8AMmR2jeXFxCdd5h23tda4UIdgsYQ==
X-Received: by 10.84.231.9 with SMTP id f9mr14337233plk.28.1485539297551;
	Fri, 27 Jan 2017 09:48:17 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6d8d:a1ec:12d:52de])
	by smtp.gmail.com with ESMTPSA id
	u14sm12921992pfg.18.2017.01.27.09.48.16 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jan 2017 09:48:17 -0800 (PST)
To: yocto@yoctoproject.org
References: <CABh+fob2rRDKGYhGRm5bjHZU+v-KoKvCaTHDEFNNmmmMYPS82w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <6f056f82-585f-128e-12d7-44079423428e@gmail.com>
Date: Fri, 27 Jan 2017 09:48:16 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CABh+fob2rRDKGYhGRm5bjHZU+v-KoKvCaTHDEFNNmmmMYPS82w@mail.gmail.com>
Subject: Re: Change default OS in YOCTO poky distro
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
X-List-Received-Date: Fri, 27 Jan 2017 17:48:20 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 1/27/17 6:59 AM, nitish jha wrote:
> Hello All, 
> 
> I have few question regarding Yocto poky distribution, it may be very
> silly question but if somebody could help to clear my doubts it will be
> very useful.
> 
> Q1. What is the default OS in Yocto Poky build.

Yocto tools and infra helps you to generate a Linux based OS

> 
> Q1. What Steps I need to do in case I want to have some different
> OS(Android) or Type 1 Hypervisor on my Yocot Poky distro, which layers I
> need to add or remove from default Yocto Poky distro
> 

you have bunch of options look into meta-virtualization
http://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization

> 
> Thanks and Regards
> 
> -- 
> *Nitish Jha*
> 
> 
> 

