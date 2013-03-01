Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 298CFE00429
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 09:29:44 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r21HTg15028821
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Mar 2013 09:29:42 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.328.9;
	Fri, 1 Mar 2013 09:29:42 -0800
Message-ID: <5130E57C.5090802@windriver.com>
Date: Fri, 1 Mar 2013 12:29:32 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <CAHUNapRBgEjmtJNCsY+t59uJ8p1+HzJuQKaJxNExbPx_fJKZZQ@mail.gmail.com>
In-Reply-To: <CAHUNapRBgEjmtJNCsY+t59uJ8p1+HzJuQKaJxNExbPx_fJKZZQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux 3.8
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
X-List-Received-Date: Fri, 01 Mar 2013 17:29:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-01 11:42 AM, Trevor Woerner wrote:
> Given that Greg KH has publicly stated linux-3.8 is not a long term
> stable kernel, is it worth the effort to support it in Yocto?

We don't need LTSI to make a kernel worth supporting. We pick our
kernels based on the timing of the Yocto release schedule (the
time and criteria are documented on the yoctoproject wiki IIRC).

But note, Greg is talking specifically about LTSI, we don't
expect more than one LTSI per year, and we are already locked into
the LTSI 3.4. We've known Greg's strategy and plans for a while, so
this isn't a surprise. He'll do his normal -stable releases for
3.8 and drop them once 3.9 arrives, which is also expected.

Cheers,

Bruce



>
> http://www.kroah.com/log/linux/3.8-is_not_longterm_stable.html
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


