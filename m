Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A163EE0123C
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 13:22:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1SLMQSg007826
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Feb 2012 13:22:26 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 28 Feb 2012 13:22:26 -0800
Message-ID: <4F4D457F.7000306@windriver.com>
Date: Tue, 28 Feb 2012 16:22:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202281349020.2440@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Tue, 28 Feb 2012 21:22:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-28 01:51 PM, Robert P. J. Day wrote:
>
>    i asked this on the beagle list, and koen pointed out that it was
> probably more appropriate elsewhere (probably here).  what's the
> proper algorithm for building the leading-edge images for a beagle xM
> (rev C)?
>
>    i realize there's canonical support in a yocto tree for the
> beagleboard xM, but koen suggested i really want to use the meta-ti
> layer for that instead.  (i'm guessing i'd want the same thing for my
> pandaboard ES as well.)

It is true that the beagleboard is a hardware reference board in the
yocto consolidated kernel tree and meta-yocto layers. That means that
it gets the yocto standard QA builds and boot testing.

That being said, if you are looking for the latest + specific features
then you've been pointed in a good direction .. meta-ti will meet your
needs.

As for disentangling and reducing questions in this area .. rest assured,
we are working on it.

Cheers,

Bruce

>
>    so is that the best bet?  a pointer to any page where someone
> documents this would be just fine, thanks.
>
> rday
>


