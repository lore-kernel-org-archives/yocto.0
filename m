Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD67E004F2; Thu, 21 Aug 2014 12:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 87F7EE0044A
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 12:19:06 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Thu, 21 Aug 2014 21:19:04 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 3DACE28C6CD;
	Thu, 21 Aug 2014 21:19:04 +0200 (CEST)
Date: Thu, 21 Aug 2014 21:19:04 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140821191904.GA30675@sestofb10.enea.se>
References: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
MIME-Version: 1.0
In-Reply-To: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] update jdk and jre to version 67
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
X-List-Received-Date: Thu, 21 Aug 2014 19:19:12 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Vladimir,

On Thu, Aug 21, 2014 at 05:01:47PM +0000, Vladimir Redzhepov wrote:
> From f0305398a51435f407e41a8f0eaf83f8bdd13cca Mon Sep 17 00:00:00 2001
> 
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> 
> Date: Thu, 21 Aug 2014 19:43:29 +0300
> 
> Subject: [PATCH] update jdk and jre to version 67
> 
>  
> 
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> 
> ---
> recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++-----
<snip>
In addition to Martin's review comments, patch doesn't seems to apply properly:

Applying: update jdk and jre to version 67
fatal: corrupt patch at line 27
Patch failed at 0001 update jdk and jre to version 67

Best Regards,
Maxin

