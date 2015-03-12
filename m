Return-Path: <benjamin.esquivel@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7AE0E0086D; Thu, 12 Mar 2015 08:58:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F5D0E00854;
	Thu, 12 Mar 2015 08:58:14 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 12 Mar 2015 08:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,389,1422950400"; d="scan'208";a="466369032"
Received: from besquive-mobl.zpn.intel.com (HELO [10.219.4.51]) ([10.219.4.51])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Mar 2015 08:51:02 -0700
Message-ID: <1426175872.12716.8.camel@besquive-mobl.amr.corp.intel.com>
From: Benjamin Esquivel <benjamin.esquivel@linux.intel.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Date: Thu, 12 Mar 2015 09:57:52 -0600
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48258ADF48@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48258AD7F4@SESTOEX04.enea.se>
	<2131862827.2912188.1426116488072.JavaMail.yahoo@mail.yahoo.com>
	<3230301C09DEF9499B442BBE162C5E48258ADF48@SESTOEX04.enea.se>
Organization: Intel OTC
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: "yocto-security@yoctoproject.org" <yocto-security@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bind: issue in trust anchor management can cause named to crash (CVE-2015-1349)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benjamin.esquivel@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Mar 2015 15:58:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2015-03-12 at 07:35 +0000, Sona Sarmadi wrote:
> Hi Alex,
> 
>  
> 
> Yes I agree with you but this is already a public CVE. Maybe in the
> future we will/should just discuss security related issues in the
> yocto-security@yoctoproject.org mailing list, but right now we don’t
> have many members so I copy to the yocto@yoctoproject.org list as
> well. 
> 
I think this list is not published in the yocto lists page:

https://www.yoctoproject.org/tools-resources/community/mailing-lists

And, who would be able to subscribe to it? invite-only? public?
 
>  
> 
> My intention is to make the list aware of security
> vulnerabilities/CVEs which keep coming all the time. I encourage
> everyone to do this. We will soon or later create a bug in Bugzilla if
> needed or just backport the CVE to our version or upgrade the recipes
> in the affected package to the version which is not vulnerable.
> 
>  
> 
> //Sona
> 
>  
> 
> From: Alexandru Vaduva [mailto:vaduvajanalexandru@yahoo.com] 
> Sent: den 12 mars 2015 00:28
> To: Sona Sarmadi; yocto-security@yoctoproject.org
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] bind: issue in trust anchor management can cause
> named to crash (CVE-2015-1349)
> 
> 
>  
> 
> Wouldn`t it be better for the bugs to be only mentioned on the
> security list?
> 
> 
> It is my opinion that know about a risk before it is fixed could cause
> more harm then good.
> 
> 
> What do you thing about this?
> 
> 
>  
> 
> 
>  
> 
> 
> Alex Vaduva
> 
> 



