Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3603E00C99; Tue, 12 Sep 2017 11:12:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A574E00A39
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 11:11:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8CIBuQb000500
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 12 Sep 2017 11:11:57 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 11:11:55 -0700
To: "Reach, Jonathon A" <jonathon.a.reach@delphi.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1f6bdd0904f146ee9c3d1aae070e00b6@BLUPR6801MB0049.017d.mgd.msft.net>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <60ce8877-c259-b131-a8aa-3b57f59c87e5@windriver.com>
Date: Tue, 12 Sep 2017 13:12:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1f6bdd0904f146ee9c3d1aae070e00b6@BLUPR6801MB0049.017d.mgd.msft.net>
Cc: "Krzeszewski, John T" <john.t.krzeszewski@delphi.com>, "Bailey,
	Kirk A" <Kirk.A.Bailey@delphi.com>
Subject: Re: [meta-selinux] krogoth support
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
X-List-Received-Date: Tue, 12 Sep 2017 18:12:00 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/12/17 1:02 PM, Reach, Jonathon A wrote:
> Hello,
> 
>  
> 
> I currently have a krogoth based project that I need to add the meta-selinux
> layer to.
> 

(I've replied this offlist, but figured it should go to the list as well...)

Currently we do not have a krogoth branch.  I never worked on a specific product
that required it.

I generally branch when I know the system works for a particular branch.

I would suggest trying starting with either Jethro or Morty versions.  Most
likely you'll want Morty minus a few commits..

> 
> Does anyone know what it would take to accomplish this? Most poky patches fail
> as well as compilation issues with kernel features that postdate krogoth.
> 

If anyone else has already gotten a working version.  I'm willing to create a
krogoth branch to make it easier for people in the future.

--Mark

> 
> Appreciatively,
> 
>  
> 
> *Jonathon Reach*
> 
> Cyber Security Product Engineer
> Electronics & Safety
> 
>  
> 
> DELPHI_RGB_Mar2013 copy.png <http://www.delphi.com/>
> 
>  
> 
> 5825 Delphi Drive
> 
> Troy, MI 48098, USA
> 
>  
> 
> _jonathon.a.reach@delphi.com_
> 
> +1 586.291.0692
> 
>  
> 
> ****************************************************************************************
> Note: If the reader of this message is not the intended recipient, or an
> employee or agent responsible for delivering this message to the intended
> recipient, you are hereby notified that any dissemination, distribution or
> copying of this communication is strictly prohibited. If you have received this
> communication in error, please notify us immediately by replying to the message
> and deleting it from your computer. Thank you.
> ****************************************************************************************
> 


