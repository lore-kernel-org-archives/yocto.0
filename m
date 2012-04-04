Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 363A1E0137C
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 05:46:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q34CkTE9011050
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Apr 2012 05:46:29 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 4 Apr 2012 05:46:29 -0700
Message-ID: <4F7C429E.3000809@windriver.com>
Date: Wed, 4 Apr 2012 08:46:22 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1204040527590.4566@oneiric>
In-Reply-To: <alpine.DEB.2.02.1204040527590.4566@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should the dev docs match the dev yocto source?
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
X-List-Received-Date: Wed, 04 Apr 2012 12:46:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-04 05:29 AM, Robert P. J. Day wrote:
>
>    just noticed that BSP guide suggests 3.0 is the preferred linux
> kernel, while the source itself is now up to 3.2.  should those match?
> this is for *development* streams of both.

Not necessarily. It depends on the target. We haven't moved everything
to 3.2 yet.

It should probably say something more generic that choosing one of the
last two yocto validated kernels is the preferred starting point.

Cheers,

Bruce

>
> rday
>


