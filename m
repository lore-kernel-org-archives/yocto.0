Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 887A7E00CC9; Sat, 16 Jun 2018 10:28:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f49.google.com (mail-pl0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23C60E006F1;
	Sat, 16 Jun 2018 10:28:13 -0700 (PDT)
Received: by mail-pl0-f49.google.com with SMTP id 31-v6so6915735plc.4;
	Sat, 16 Jun 2018 10:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=6+fJBP19cKz7el4glNQ3rS2K4eVrvccdr2QKk0G7TIg=;
	b=HVYE2dmwv1WsfS+mktsZ0j2SajZQQXGafIXYJHaZvNoV6V99JSUyHVlBzz3kEEZgAc
	8RTzhd36Ed6CIy0EplGSqMTNGYvuExbuFesXfoZd4KNzaMiEXYNQqB+dVTOuLF3hIpNc
	bvFRwb7pnPR+GyAO0Vrg/66L1LYk3VvbRCTXu20nTRLpO1/bpmt380QhILJDNrMcQV24
	YPxbOEAp7GqDqhB0nkCacsNfa5XBMdgr0lcSDGXu9lx7jjjEccAzzi6WP+Iq9CIbkArZ
	6+OXTjRVJyaL0rx4JAu0a0knO5YNEuIJIOCpLpwwbbG+vw0s3Gw6Ng/3A+QweAl/lxCJ
	1oSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=6+fJBP19cKz7el4glNQ3rS2K4eVrvccdr2QKk0G7TIg=;
	b=abp0pcqffxvPTGzMGxhO7lFiGolVNfdAWRqn8daZcbnl5PiioVaz9vJVGJwzjH3qoY
	0SEyARw1nSNtDpJJCfgDR9Q2z3gVM7QzBkkwaQgucyHsUUwdbO6tCm7JFLdgWXLY9evP
	S8ovz4Pv3YIdFmDMsj0PiGA0TjkmgUcWxIN0NqTpbzLEVNGRn2Qqha42ppToX0F0/DGO
	wRGyu+4x/cj6N93yeF0RsmkGDN+ecsa3Rl+gYTLBjDAKejmej4eKdRjlcabovwKtW7A7
	7v02T0oumkqaLSMgn9j/9ATR7zWQoBzFkfrJ/vLUVLc3EvT6TevTQ6dQCXa2Dn99dSQ8
	HhGA==
X-Gm-Message-State: APt69E3xPAvQbvujJ/6Z4W8zo8hmC+tf1SGnw6/fAJliQN++wIlCaxDk
	B7lNQd7qORlsndYvpSiXdyu9TG0q
X-Google-Smtp-Source: ADUXVKKFq+iqPSO3nnkdrb7qWRHZpB3QQ6Y5HyykhNi++9ljjk86/nlm/P0BmegBaudUr+E0JMXCSA==
X-Received: by 2002:a17:902:bb8a:: with SMTP id
	m10-v6mr7312519pls.236.1529170093201; 
	Sat, 16 Jun 2018 10:28:13 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:18ae:33e5:ebd2:f6d2])
	by smtp.gmail.com with ESMTPSA id
	o87-v6sm19602200pfa.106.2018.06.16.10.28.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 Jun 2018 10:28:12 -0700 (PDT)
To: Karim ATIKI <karim_atiki@hotmail.com>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB5PR01MB135004DD435A63B34EAED624927C0@DB5PR01MB1350.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <c5a634a3-cb1f-95fc-9e44-459d5fb99024@gmail.com>
Date: Sat, 16 Jun 2018 10:27:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <DB5PR01MB135004DD435A63B34EAED624927C0@DB5PR01MB1350.eurprd01.prod.exchangelabs.com>
Subject: Re: [bitbake] fsl-image-xwayland DISTRO -- can't get rid of dev packages.
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
X-List-Received-Date: Sat, 16 Jun 2018 17:28:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Karim

On 6/15/18 6:29 AM, Karim ATIKI wrote:
> Hi all,
> 
> 
> I've created a custom image based on core-image.
> 
> It runs for an i.MX6 and i.MX8.
> 
> I've installed only Qt, gstreamer and xwayland stuff.
> 
> 
> I've removed dev-pkgs, dbg-pkgs and staticdev-pkgs from IMAGE_FEATURES.
> 
> 
> Finally, in the created image, ALL the dpg, dev packages have been 
> installed, with tons of .h header files. static .a files etc.
> 
> I've tried everything and just can't figure out how to get rid of them.
> 
> 
> Any idea ?
> 

It seems that some dev packages are still being pulled in you might want 
to check output of

bitbake -g <image>

which will be in bunch of dotty files, that can show what is being 
pulled and why

> 
> Thanks.
> 
> 
> K.
> 
> 

