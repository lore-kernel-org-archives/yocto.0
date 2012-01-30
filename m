Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C72CE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:03:05 -0800 (PST)
Received: from durham.keylevel.com ([109.224.134.115]:63998
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1RrxYU-0003go-AQ; Mon, 30 Jan 2012 20:10:22 +0000
Message-Id: <B2B29916-0956-45B1-BCE2-BE38907AC90F@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPD+gYgUzsYaFvqjKWK2Sq=iXeKr6a5+HSakoPVHS1FCHw@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Mon, 30 Jan 2012 20:10:20 +0000
References: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
	<CAPhnLPD+gYgUzsYaFvqjKWK2Sq=iXeKr6a5+HSakoPVHS1FCHw@mail.gmail.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto & long-term reproducibility of rebuilds
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
X-List-Received-Date: Mon, 30 Jan 2012 21:03:06 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 30 Jan 2012, at 18:34, Flanagan, Elizabeth wrote:

> On Mon, Jan 30, 2012 at 8:34 AM,  <paul_nathan@selinc.com> wrote:
>> Hi,
>>
>> I am investigating Yocto for a build system here. Part of my  
>> requirements
>> for a build system is auditable/traceable builds that can be  
>> replicated long
>> into the future (our company has a 10 year warranty on our  
>> products, and we
>> build products for the multidecade term). Initial examination of  
>> Yocto shows
>> that it builds packages from a number of different domains online,  
>> which
>> will not meet our requirements - we'll have to store these packages  
>> to
>> ensure these packages exist in the correct version long into the  
>> future.  I
>> know we can manually edit the SRC_URI setting in .bb files, but the  
>> more
>> general problem of package archiving exists.
>>
>
> I would avoid manually editing SRC_URI.
>
> Set up PREMIRRORS and BB_FETCH_PREMIRRORONLY. That would ensure that
> you avoided any upstream contamination.
>
> I am interested in any information or recommendations other users of  
> the
>> Yocto system have on how they have solved this sort of design  
>> constraint.

This sounds like a good a good article for the 'How Do I...' section  
on the wiki. Or is there already something similar on there?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




