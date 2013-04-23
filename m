Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5086E01490
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 07:01:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3NE1HNd016379
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 23 Apr 2013 07:01:17 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 23 Apr 2013 07:01:16 -0700
Message-ID: <5176942C.9010401@windriver.com>
Date: Tue, 23 Apr 2013 10:01:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130404 Thunderbird/17.0.5
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1304230955180.16781@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304230955180.16781@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-dev manual: SCC Description File Reference seems incomplete
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
X-List-Received-Date: Tue, 23 Apr 2013 14:01:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-23 09:59 AM, Robert P. J. Day wrote:
>
>    currently psyching up to work my way through the kernel dev manual,
> and i noticed this:
>
> http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#scc-reference
>
> that reference list seems incomplete. at a *brief* glance:
>
> * no mention of the "force" directive
> * no mention "include" directive has optional following keywords, such
>    as "nocfg" or "inherit"
> * no mention of kconf keyword "required", which i've seen on occasion
>
>    again, that was a very brief observation, not meant to be a complete
> list.

There are already bugs open, and in progress documentation updates to
take care of this .. my remaining 1.4 action items. But putting out
release fires trumped finishing them for the past few weeks.

Cheers,

Bruce

>
> rday
>


