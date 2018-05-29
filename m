Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C1A9E00BAF; Tue, 29 May 2018 08:37:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD8CE009D4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:37:12 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id p14-v6so7463446pfh.9
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=wEEbtcZHr4fIpFqSUilxKDQpQ5QxmxXfplybMaKami8=;
	b=EjPmHg22wznxLz6JGS7p/soZpJzSiMpQIfImXEzt8uMn9e9LH51kcrb+D+pGTIzyHU
	KEtdkNQ9Oe3RTgzsZfFAbszJss/kEclzemctFG4/wPpmTzgwdCk9r+19OrX5ESgMgepL
	lIBBD8FxCt38bP92TaO/007BERBltCMuptc8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=wEEbtcZHr4fIpFqSUilxKDQpQ5QxmxXfplybMaKami8=;
	b=IgEgPJEWGgGbfPFBdlj2HHYf4zDED/YvcJOFlRNjKUSw/Aqs/i4mpJf6x0qG4pVJyy
	zV6n1YkeVb3DxTV7XREoMpGivQXVs9QVhSR/Bl0wMBQ5P3G0tlgd3LpnBQoG0kZu++vj
	r4D8F/MrhQ5bDsHye9Qo9Oh4w72HsYXW8PPxmy8F8V4uk4naMxVOvMGvmvmj2Oi5rFRO
	EMWtdPNVGq1+bWeuqR6O1Bn1E4pvhvPU7CAyTGcLeLeh7mwJoRpgkmhAoNBEM9YEtPg5
	t6LnRj9SZOzuM1GatsYVJpCU8qVtCWz9kAY3MGl2cHlNg6E/D2YKXc8JyB8HuyhYBQHd
	R+xw==
X-Gm-Message-State: ALKqPweZExZfuOfqzqeg4dya1JS6M/+ExLmo+1vS1mcZSA0exhRf2Vpp
	sCPN0fHoD8Wzwf5n+BRR6fgHtA==
X-Google-Smtp-Source: AB8JxZrwZaRKrQeu848d2M2wQNJ1+nbMCYv9VpsNs+d27yuxif7MdV35GbGCcecQovZTlPNnxC1AWg==
X-Received: by 2002:a63:62c7:: with SMTP id
	w190-v6mr14557767pgb.104.1527608231924; 
	Tue, 29 May 2018 08:37:11 -0700 (PDT)
Received: from yct-lpt.lan (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	d71-v6sm54874763pfd.48.2018.05.29.08.37.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 May 2018 08:37:11 -0700 (PDT)
To: Stephano Cetola <stephano.cetola@linux.intel.com>,
	Trevor Woerner <twoerner@gmail.com>
References: <2c9b354f-cb29-d8ae-875f-123a45b045e6@linux.intel.com>
	<CAHUNapSC1zBx8vq1Z2p8pU-TV_r_-uXLHv_P+C4MuSti5Yz3_Q@mail.gmail.com>
	<064fd4f8-7cac-e354-a710-c61085e7fe84@linux.intel.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mhalstead@linuxfoundation.org; prefer-encrypt=mutual; keydata=
	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
	3/NAP+ls2GeZmVDZ
Organization: Linux Foundation
Message-ID: <3ffb78f7-8115-6040-988a-6fe2a1f79a46@linuxfoundation.org>
Date: Tue, 29 May 2018 08:37:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <064fd4f8-7cac-e354-a710-c61085e7fe84@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: [Call to Action] Yocto Project Bug Triage
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
X-List-Received-Date: Tue, 29 May 2018 15:37:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 05/29/2018 08:16 AM, Stephano Cetola wrote:
> On 5/29/18 8:00 AM, Trevor Woerner wrote:
>> Is someone working on putting together a (google?) calendar of the
>> various project (OE Yocto) meetings?
> Great question.
>
> Michael, do we have access to a Yocto Project google account?
>
> --S
>
I don't but I think this is being worked on currently. It appears new
meetings are being scheduled by theyoctoproject@gmail.com. Whoever
controls that account should be able to make the calendar public.

-- 
Michael Halstead
Linux Foundation / SysAdmin


