Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC414E00CED; Fri, 18 Jan 2019 09:20:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 415F5E00C94
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 09:19:59 -0800 (PST)
Received: from [10.0.3.114] ([78.6.3.122])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id RtKy1z00L2dwwGE01tKyV6; Fri, 18 Jan 2019 18:19:59 +0100
To: yocto@yoctoproject.org
References: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
	<CAJTo0LZKCdj6SSQ3iu9CCQjtSC6WakQmfxhwiKNk0occ7k6Ofg@mail.gmail.com>
	<e42136b2-26e6-3e19-e139-7da98c4f1856@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <bd22d12c-c0d0-f58d-6658-9997e7059d10@faresoftware.it>
Date: Fri, 18 Jan 2019 18:19:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <e42136b2-26e6-3e19-e139-7da98c4f1856@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1547831999; bh=IOsJzHxakATi5FUMVa9SKiKzpFm5cws75BeIAVRkvzQ=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=G+vLrBvX94ldmtJ93XJtIKvu+V9ZGIRgq4GcD74uFwrMK+5k3XXhcMPeR+LqVcjnE
	b2wP/ROVAfaKiy0Ae/ctjgTelqrJI1Th4uBE8V1V0myEtVZsE0Op225f7X2O8p3hSi
	p0If6fPOPBMfmhmo2vSHxg/eRUagW0YIXknDfOmWNIMEtJ+Tja1U8Vx05DVUSUtVTP
	M6gWdrMoFyYZHB5O+nwQzeucUBOzyNK58FoD21HMXFHNsIxqEeZ1nQARmhWqWKmt1i
	HvMG7JGN9Iu1PqFJivZYIG1HoHQ9THtgN6hRppUGZIxPJtG73jDn8p2d0OwNf8+mfU
	tTNYjX7lgcIXg==
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
X-List-Received-Date: Fri, 18 Jan 2019 17:20:03 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

I try BB_SRCREV_POLICY in conf/local.conf

First I try

BB_SRCREV_POLICY := "clear"


Then I try

BB_SCREV_POLICY_pn-app := "clear"


app_1.0.bb is the recipe with


SRCREV="${AUTOREV}"

SRC_URI += " \

    file://git@sourcer/app.git \

"


I'm working with a mixed version of Krogoth/Jethro.


Any Idea?



Il 18/01/19 15:00, Mauro Ziliani ha scritto:
> I try AUTOREV in the recipe app_1.0.bb
>
>
> SRCREV := "${AUTOREV}"
>
> But it doesn't work.
>
> Which other variables could inhibit AUTOREV?
>
>
> MZ
>
> Il 17/01/19 15:09, Burton, Ross ha scritto:
>> Look up AUTOREV in the manual, that does exactly what you want.
>>
>> Ross
>>
>> On Thu, 17 Jan 2019 at 14:08, Mauro Ziliani <mauro@faresoftware.it> wrote:
>>> Hi all.
>>>
>>> How can I force the pull from git repository of my app every time I do
>>>
>>> bitbake app
>>>
>>>
>>> Best regards,
>>>
>>>    MZ
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

