Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01C04E0084D; Fri, 12 Dec 2014 12:21:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C03D9E002A6
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 12:20:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sBCKKsBT008657
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 12:20:54 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 12 Dec 2014 12:20:54 -0800
Message-ID: <548B4E25.4060804@windriver.com>
Date: Fri, 12 Dec 2014 14:20:53 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <30C2D590D16A5C46ADFE6521910377984117EA89@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984117EA89@AZ-US1EXMB03.global.avaya.com>
Subject: Re: How long are stable branches maintained?
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
X-List-Received-Date: Fri, 12 Dec 2014 20:21:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/14, 7:48 AM, Vuille, Martin (Martin) wrote:
> I have read the information at
> https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
>
> I would like to know how long stable branches are maintained.
>
> If we are using daisy (1.6), how long can we count on point releases with
>
> security patches before we should plan to upgrade to a newer release?

Rough rule of thumb is the Yocto Project will support two releases at the same 
time, and releases occur roughly every 6 months.  So about 1 year from the time 
of release.  For instance:

Release     - Version - EOL
Fall 2014   - YP 1.7  -
Spring 2014 - YP 1.6  -
Fall 2013   - YP 1.5  - (Fall 2014)
Spring 2013 - YP 1.4  - Spring 2014
Fall 2012   - YP 1.3  - Fall 2013
Spring 2012 - YP 1.2  - Spring 2013
Fall 2011   - YP 1.1  - Fall 2012
Spring 2011 - YP 1.0  - Spring 2012
Fall 2010   - YP 0.9  - Fall 2011

As I said, this is a rule of thumb.  We recently released some updates to 1.5 to 
help close out the work and deal with some security defects.

But I wouldn't expect any further releases.  The maintainer of the branch may 
choose to include fixes submitted by community members, but is not under any 
obligation to.

If you are looking for support longer then the '2 release cycle', I strongly 
suggest that you look at a commercial OSV, or another commercial resource as 
they will be better at helping you with longer term issues.

--Mark

> MV
>
>
>


