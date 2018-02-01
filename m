Return-Path: <jpmv27@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29497E00E44; Thu,  1 Feb 2018 12:15:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpmv27[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.184.201 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic301-32.consmr.mail.ne1.yahoo.com
	(sonic301-32.consmr.mail.ne1.yahoo.com [66.163.184.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F34ADE00CE8
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 12:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1517516100; bh=xpgPklw/9KqQmQhSCHERSnx1lD1EC6H/ekdLobNi2JM=;
	h=Subject:To:References:From:Date:In-Reply-To:From:Subject;
	b=SxjtRyiNBxvQ4DBpmV0uayAHy6VIkPXD2sZiYwENFJ+f9WSTPbW/tcbQ5xStQrXLOJH7V9cVjyg7jv+W44hk/S1JPEd5V0zw7Rnp5Ip4bKAi0WhhdBvdyiWGpi+FF5A7UCyqFy9iVod73kHLWoPzQWy7ZFpgJxWsT9JCapXjNige64bpHyRB4ekGb69XaTIEf0wfmpSyYh2t6lovRrk0yKcaKsTxCiJ45gQY352GAeG4YWgP6JnTsKgP2SenEBg64IG4b6nn+MtA5xbPKCohpJyoJ3NExFvhQVhuR2reOi2EjhPpwK8onI9uYW3qOsQmr4v88Nx2vZXc35O5tYBPCQ==
X-YMail-OSG: 7SEYwzwVM1lW804pC9CMobx4h_wsSrW3Cc9aIbSzH2uZps89kgOC6gJNE85M5sa
	sz9DitmPQMrE2BQE9zo05idHwDv.2md58pqBHcdSZA67F4LXBuUN5IRkbilyMn.BFBgYb27O4rN3
	rEU8XqzKnCb0k6LFBWYvB0.kIyAB3_Mtgclcb6hqFoW2AmfixUSnL3WMzUu86xMoIb4NO9gqy2ks
	ifHvoZUH6sHj_eC968HXTR.qcWfjh.UQ2KkcVqOTkL3mdU5B4zv5QKcjPiYnSD7Z.Xp1fulWfI12
	HE.jhxnFatej5m3iky5HXY6NxdW.jD7Ccz..k7j9PAHDBplkwUCK6sRK2hrrQy39DNfY7CWD4HDn
	mYtOeoO9gsHPMNjyEkvLzbDs_PMgBocmHu8OTwVsrDUdkKqa7CXD49RRnI99BShAZWfB_4v0Q2PV
	abphVhTIrdfGyLXfwzBRlg9BSCVkX1jPbbkayyC5htgb1bbkKfYv1ZXHfELrynkz4DhPucASjPxY
	CiMGtVT1di9QJzPQ-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.ne1.yahoo.com with HTTP;
	Thu, 1 Feb 2018 20:15:00 +0000
Received: from smtp231.mail.ne1.yahoo.com (EHLO [10.11.12.90])
	([10.218.253.210])
	by smtp402.mail.ne1.yahoo.com (JAMES SMTP Server ) with ESMTPA ID
	473d31072013fc6e596af6a098fa4806 for <yocto@yoctoproject.org>;
	Thu, 01 Feb 2018 20:14:58 +0000 (UTC)
To: yocto@yoctoproject.org
References: <20180109155456.GA19053@localhost>
	<CAJTo0LYfpUa+A-A5ib6zOobo6hoKSJRKmvXcwoe+RrWcmMiZgQ@mail.gmail.com>
From: Martin Vuille <jpmv27@yahoo.com>
Message-ID: <7f4e8622-a1cd-5538-628a-cdeabc5c4672@yahoo.com>
Date: Thu, 1 Feb 2018 15:14:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYfpUa+A-A5ib6zOobo6hoKSJRKmvXcwoe+RrWcmMiZgQ@mail.gmail.com>
Subject: Re: applying patches depending on the image's name
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
X-List-Received-Date: Thu, 01 Feb 2018 20:15:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Ross,

This "two different kernels" feature would be useful to me.

Where can I find out how to use it?

Regards,
MV

On 01/11/18 12:34, Burton, Ross wrote:
> No, because images are built from packages, and the packages have already
> been built by the time the image is considered.
> 
> Using master you can build two different kernels in the same build and have
> different kernels in different images.
> 
> Ross
> 
> On 9 January 2018 at 15:54, Vadim Intelegator <
> v.intelegator@sirinsoftware.com> wrote:
> 
>> Hello,
>>
>> I have several images (image-a.bb and image-b.bb) in a yocto layer and
>> want to apply different patches to the kernel depending on the current
>> image name.
>> How can that be done?
>>
>> Thank you in advance.
>>
>> --
>> Vadim
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> 
> 
> 

