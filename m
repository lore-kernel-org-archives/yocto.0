Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B58BE00AB6; Mon,  9 Sep 2019 02:50:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,TRACKER_ID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 TRACKER_ID BODY: Incorporates a tracking ID number
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 430 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Sep 2019 02:50:05 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B674DE0097C
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2019 02:50:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 3193F212004;
	Mon,  9 Sep 2019 11:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	h=content-transfer-encoding:content-language:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject; s=default; t=
	1568021798; x=1569836199; bh=8Cqg3YDbOs3yP1EGAtUb6bd/QCkyzhRAPKg
	n/HYS6vI=; b=h/EClFWKqDUyIUSa5Zw1mnDGAAT4u3lyBxBugonCwnZHiNiT0Em
	tD0A0wZYCDc8UryiFyqR/ClkNi0hPxN0UgqJGMqf/4Mmg4y6Y0ipZLZXRP7tYic2
	zwnrjrF0to+29b9i0qQIp67YT5dnSPoW8Y1FKja0/xS6xb2tTo0QI7OG9wAo4xp3
	ZGOeptzc8K/XdiSUKc2hiP9j3QcQ5BSjrk2Z+ibQvhPB4B5jcn18+WwXmmTGYzjD
	BSK5M25Nmzc/YIs6/a/VH5C/EDJm0qx0ZaH2DbvSzuU1Ied+MEnWwalT9gJLy1oS
	RGnK0ruZGpzfucUwZXIebCEmwyYnEDwWQD/5RwWg06Z/lI1I3jbHBpUcZ2xWI7mM
	Ag5ApQw5C49nct2A9v+qnXCY9q9jWOyaRp3Wk7k8l+iiYf3fl44QQhcxJekfdnJP
	ZVDK+suVJgpy+thp14IG4U2+hKd0oIrFMer9NEx4dKLVdLhKe31T7Yb3MxIx2rSe
	Ig+s3t+xS6/IvP8Ql5XLwMFTLcdnQs3sWPSGIin1zJk7wS4qyPrnh4/s4qOuOtrF
	k9XBUyJgrRYfmht3Zb+rYUB9JhTOeMoVfL1cBjxaHAl7CeK67t6yua+o4wPiAT/B
	YW0Mt/M3GvC3+SSeiE6eLS56dyUmsPrTOKU4jto+KUrD2lhBa0vQAy5I=
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id PmwadGogxFOW; Mon,  9 Sep 2019 11:36:38 +0200 (CEST)
Received: from [192.168.18.127] (unknown [149.6.134.59])
	(Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id C7911212002;
	Mon,  9 Sep 2019 11:36:37 +0200 (CEST)
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWSVaxfwFvA5BYNoCS-6q80N0A__NyE5zLsVfCT3U+ugFA@mail.gmail.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <4ef46633-e257-3dc7-a1c4-e16b866c4115@basmevissen.nl>
Date: Mon, 9 Sep 2019 11:36:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSVaxfwFvA5BYNoCS-6q80N0A__NyE5zLsVfCT3U+ugFA@mail.gmail.com>
Subject: Re: Kenel 5.1.0 SRCREV
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
X-List-Received-Date: Mon, 09 Sep 2019 09:50:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 9/7/19 2:06 PM, JH wrote:
> Hi,
> 
> Anyone know what is the kernel 5.1.0 SRCREV?
> 
> Thank you
> 

e93c9c99a629c61837d5a7fc2120cd2b6c70dbdd

