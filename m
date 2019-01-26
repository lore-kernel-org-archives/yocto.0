Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD69CE00C5F; Sat, 26 Jan 2019 07:54:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 215D7E00B9D
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2019 07:54:22 -0800 (PST)
Received: from [192.168.24.172] ([79.2.65.198])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id V3uL1z0044GeqKz013uLGX; Sat, 26 Jan 2019 16:54:21 +0100
To: yocto@yoctoproject.org
References: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <2fb177cf-844c-6127-521b-bbb2eb49fee4@faresoftware.it>
Date: Sat, 26 Jan 2019 16:54:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1548518061; bh=UwlaG79TGyMn8zOLzIByG/TLG+bIdqX/bkz96+bDpqI=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=Q7abf4HCxudLAHjDj1Z6si/TDIIOPqkQ5h0gJHZOJ21IFfTpQXCG2uJJEqAGkfnX5
	xCsIdxlCLnBW8EDqA3IuaukZ0f55ZzfT0wuHBdXDb8nIMdEGYKCHbc4/O8u34tK7rQ
	0aSOr7IypfaIh+EZ5TOaBtNL3JKkTwHIyO1H6KdjVsJ3aN/iRXDiLQiPYUTeUb5aff
	gjb3RB1mUwNjJazUbxwJoC2UIhlikL0sFT01p9cj7Q49gzwDLJlJgrQzC5hXadqDsz
	mJGvSiNpluDn6Duhl90JhGxyacVSgweldruBn+XGoBNDpF9gypXe9vFhrKmb24mdrd
	0qVjwYuHl6mow==
Subject: Re: Fetch from git every bitbake
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
X-List-Received-Date: Sat, 26 Jan 2019 15:54:25 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I try AUTOREV in my recipe, but bitbake doesn't check the git repository 
for newer versions.

I need to do

bitbake app -c cleanall

bitbake app


to update sources from repository.


Where I mistake?


Regards,

   MZ


Il 17/01/19 15:06, Mauro Ziliani ha scritto:
> Hi all.
>
> How can I force the pull from git repository of my app every time I do
>
> bitbake app
>
>
> Best regards,
>
>   MZ
>

