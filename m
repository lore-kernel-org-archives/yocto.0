Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88BCDE0121A
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2012 21:49:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q095n9EV020966
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jan 2012 21:49:09 -0800 (PST)
Received: from [128.224.162.219] (128.224.162.219) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 8 Jan 2012 21:49:09 -0800
Message-ID: <4F0A7FD4.20103@windriver.com>
Date: Mon, 9 Jan 2012 13:49:08 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4F06C43D.3090102@windriver.com> <4F074923.7030402@linux.intel.com>
In-Reply-To: <4F074923.7030402@linux.intel.com>
X-Originating-IP: [128.224.162.219]
Cc: yocto@yoctoproject.org
Subject: Re: Design Document of "Yocto 1656 Recipe creation/import script"
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
X-List-Received-Date: Mon, 09 Jan 2012 05:49:10 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年01月07日 03:18, Joshua Lock wrote:

Hi Joshua,

> Hi Kai,
>
> On 06/01/12 01:51, Kang Kai wrote:
>> This is the design document of "Yocto 1656 Recipe creation/import
>> script". Please help to review it.
>> Any suggestion is appreciate.
>
> You should check out autospectacle[1] that I linked to in the bug 
> report. It does a lot of guessing using clever tricks like searching 
> Freshmeat, doap files, READMES etc to get a description[2] and 
> analysing configure.ac[3], qmake[4], etc. to determine dependencies.

Thanks for your reply.
I have checked out and read the autospectacle, and show me the direction.
Right now I want to get the NAME, description, license and checksum, 
depends and some simple inheritance, do you think that is enough for 
this feature? If not, what's more?

Thanks & Regards,
Kai

>
> The autospectacle perl script is reasonably well commented and quite 
> readable.
>
> I'm not suggesting we adopt all of the features in it but many of them 
> are useful techniques for this effort.
>
> Regards,
> Joshua
>
> 1. https://meego.gitorious.org/meego-developer-tools/autospectacle/
> 2. 
> https://meego.gitorious.org/meego-developer-tools/autospectacle/blobs/master/autospectacle.pl#line1001
> 3. 
> https://meego.gitorious.org/meego-developer-tools/autospectacle/blobs/master/autospectacle.pl#line633
> 4. 
> https://meego.gitorious.org/meego-developer-tools/autospectacle/blobs/master/autospectacle.pl#line840


