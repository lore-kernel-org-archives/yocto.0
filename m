Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1C94E00A3C; Thu, 13 Aug 2015 23:42:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 540D1E00707
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:42:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E6g1nB005531
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 13 Aug 2015 23:42:01 -0700 (PDT)
Received: from [128.224.162.176] (128.224.162.176) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.235.1;
	Thu, 13 Aug 2015 23:42:00 -0700
Message-ID: <55CD8DB7.5050304@windriver.com>
Date: Fri, 14 Aug 2015 14:41:59 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>
References: <55CB0D29.9070206@windriver.com>
	<20150812130556.GA16995@mentor.com>
In-Reply-To: <20150812130556.GA16995@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] How about remove libcap-ng from meta-selinux?
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
X-List-Received-Date: Fri, 14 Aug 2015 06:42:02 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/12/2015 09:05 PM, Joe MacDonald wrote:
> [[yocto] [meta-selinux] How about remove libcap-ng from meta-selinux?] On 15.08.12 (Wed 17:08) wenzong fan wrote:
>
>> Hi All,
>>
>> There's a libcap-ng in meta-oe layer, it has been updated to 0.7.7 and the
>> one in meta-selinux is 0.7.3.
>>
>> How about removing the one in meta-selinux and get this layer depends on
>> meta-oe? Any suggestions?
>
> The last time we had this discussion my sense was that most users of
> meta-selinux wanted to continue with it only depending on oe-core.
> That's my preference as well.
>
> I'm happy to merge an updated version of libcap-ng (or maybe I'll get to
> it myself, since I've known about it since Armin removed it from
> meta-security, that was the time of the last discussion, I think).
>
> All I'm saying right now is that this isn't a case of accidental
> duplication of recipes in multiple layers, it's the result of a
> conscious decision.  It's totally worthwhile re-visiting that decision,
> though to make sure the reasons are still valid.
>

Thanks for clarifying this, just send out an update patch for libcap-ng.

Wenzong

