Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A8DE006E9;
	Mon, 11 Mar 2013 07:34:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2BEYX9H019860
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Mar 2013 07:34:34 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 11 Mar 2013 07:34:33 -0700
Message-ID: <513DEB6C.7050903@windriver.com>
Date: Mon, 11 Mar 2013 10:34:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com> <513A75CB.3050308@windriver.com>
	<CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
	<513D4F78.9010307@windriver.com>
	<CACzyEJ-YObwTGoOcLGXGiXeoLia+RdtcLmSt9gDLXJG5hBHeoA@mail.gmail.com>
In-Reply-To: <CACzyEJ-YObwTGoOcLGXGiXeoLia+RdtcLmSt9gDLXJG5hBHeoA@mail.gmail.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Mon, 11 Mar 2013 14:34:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-10 11:32 PM, Insop Song wrote:
> On Sun, Mar 10, 2013 at 8:28 PM, Bruce Ashfield
>>
>> Expect that the yocto project hosted meta-realtime will appear in a
>> week or so. I'm doing the legwork at the moment, but with some travel
>> in the upcoming week, the initial push will be delayed by a few days.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>
> That's great!
> I saw the place holder on the git.yoctoproject this morning.
> Please let me know if you need anything for me to do or test.
>

I've pushed a bit more of the initial layer structure to the repository.
I'm not rationalizing a few items from your existing layers, and similar
repositories into the single meta-realtime.

As an example, I have a schedtool recipe that uses the 
git://gitorious.org/sched_deadline/schedtool-dl.git
repository with a 4 patch series to enable full sched_deadline/EDF
support versus the custom repository that you created on github.
We'll work to unify the edf and other -rt support in the upstream
projects, so we want to reference those trees whenever possible (unless
we get so much development, that a tracking tree makes sense).

Also, don't be concerned that I show up as the only maintainer in the
meta-realtime layer, as I merge parts from your existing layer, credit
will be given and if it is ok with you, I'll have you down as a maintainer
or co-maintainer where it makes sense.

Since I'm going to be out of the office for the next few days, I may
push out my initial merges without much testing, so if you have a
chance to test, and send patches .. that would be a great help.

Cheers,

Bruce

> Regards,
>
> Insop
>


