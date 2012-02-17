Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C700DE003E3
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 10:50:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1HIoZgm010361
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 10:50:36 -0800 (PST)
Received: from Macintosh-5.local (147.11.117.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 17 Feb 2012 10:50:35 -0800
Message-ID: <4F3EA17B.7010906@windriver.com>
Date: Fri, 17 Feb 2012 10:50:35 -0800
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <2046170.9fCjTlmZqN@helios>
In-Reply-To: <2046170.9fCjTlmZqN@helios>
Cc: Peter Seebach <peter.seebach@windriver.com>
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Fri, 17 Feb 2012 18:50:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

We're looking into this issue.  You should never get the "pseudo: You must set 
the PSEUDO_PREFIX environment variable to run pseudo." message.  This means 
something appears to have avoided the wrappers.

I'll let you know once we figure out something.

--Mark

On 2/17/12 9:35 AM, Paul Eggleton wrote:
> Hi all,
>
> I'm trying to extend buildhistory to write out the metadata revisions just
> before it does the commit to the buildhistory repository, and I'm having some
> pseudo-related trouble. The structure is a little unusual, in that the
> execution flow is an event handler that calls a shell function (via
> bb.build.exec_func()) and during parsing this function an ${@...} reference to
> a python function is evaluated, which then calls os.popen(), at which point I
> get the error "pseudo: You must set the PSEUDO_PREFIX environment variable to
> run pseudo."
>
> I don't need pseudo at this stage. I've tried setting PSEUDO_DISABLED=1 and
> even PSEUDO_UNLOAD=1 just prior to the os.popen() call (or within it) and
> despite evidence that pseudo is taking notice of these being set in other
> contexts (when the function is called from elsewhere) even when doing this I
> still get the error above. I could rearrange the structure to avoid this
> execution flow however that would bar me from reusing existing code that we
> have for getting the metadata revision.
>
> Any suggestions?
>
> Cheers,
> Paul
>


