Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D4BACE012F3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 04:51:57 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r1KCw8dH001406; Wed, 20 Feb 2013 12:58:09 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id iCe8L4Z6wYBy; Wed, 20 Feb 2013 12:58:08 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r1KCvtMo001386
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Wed, 20 Feb 2013 12:58:00 GMT
Message-ID: <1361364668.13247.14.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, yocto
	<yocto@yoctoproject.org>
Date: Wed, 20 Feb 2013 04:51:08 -0800
In-Reply-To: <CAPhnLPDViQzWOD2kHQ7g=omLutmNdBJ1eqzCzMnS6kBNo87+UA@mail.gmail.com>
References: <CAPhnLPDViQzWOD2kHQ7g=omLutmNdBJ1eqzCzMnS6kBNo87+UA@mail.gmail.com>
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
Cc: McClintock Matthew-B29882 <B29882@freescale.com>, yocto@yoctoproject.org,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly build
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
X-List-Received-Date: Wed, 20 Feb 2013 12:51:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-02-19 at 21:01 -0800, Flanagan, Elizabeth wrote:
> I'm currently at ELC and am going to be a little slow with email.
> However, tonight I will be building M4 rc1. We are looking pretty
> green and had been hoping to use the last build for rc1, but we want
> to get it a little closer as to have it all green. I will be building
> it from current master head and will branch/tag in the morning. If you
> maintain a layer that I don't have branch access for, please create
> the milestone branch for it from the git hashes I send out in the
> morning. Thanks.

We continued to have a build issue which I traced back to the recent
bitbake fetcher changes. I've reverted a part of that and rebuilt master
and its looking even better than the previous build, lots of green. I
think we'll therefore be going with that revision
(7d22ef28e64de06b6238d0ef9b664c0bee6efa46) for M4-rc1, assuming the rest
builds out ok.

Cheers,

Richard


