Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A16E2E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 07:29:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0BFTOPi020375
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jan 2012 07:29:24 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Jan 2012 07:29:24 -0800
Message-ID: <4F0DAACB.3010603@windriver.com>
Date: Wed, 11 Jan 2012 10:29:15 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
In-Reply-To: <CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jan 2012 15:29:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-11 10:20 AM, Brian Hutchinson wrote:
> On Wed, Jan 11, 2012 at 9:57 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> It will. I sent patches recently to make that the preferred version
>> in the master branch. Cherry picking that change would probably
>> be all you would need.
>>
>>
>>> 2.  Is the example for setting up for kernel modification in the
>>> development manual still valid for Edison?
>>
>>
>> Should be.
>>
>
> Would I get that change if I just did a git pull or do I have to do
> something else?  I did a git pull to update my Edison checkout last
> night realizing that I hadn't done one in a while and then ran a new
> clean build and still ran into the same problem.  After triple
> checking my work I figured it was time to post.

Just so I'm clear. You are asking about the switch to 3.0 as the
default ? If so, that was only done in master for the upcoming 1.2
release and not on the edison branch, so you wouldn't pick it up
by pulling.

Cheers,

Bruce

>
> Regards,
>
> Brian


