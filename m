Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 807F4E00BAD; Wed, 16 May 2018 02:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE39E00A04
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 02:18:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w4G9HRtY023044
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 May 2018 02:17:48 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 16 May 2018 02:17:19 -0700
To: Mauro Ziliani <mauro@faresoftware.it>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <706c8cbc-b5ac-e456-5a30-199aeb596766@faresoftware.it>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <73c581a0-101f-b58a-bec5-fb34400582e2@windriver.com>
Date: Wed, 16 May 2018 17:19:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <706c8cbc-b5ac-e456-5a30-199aeb596766@faresoftware.it>
X-Originating-IP: [128.224.162.218]
Subject: Re: Set root password from a recipe
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
X-List-Received-Date: Wed, 16 May 2018 09:18:18 -0000
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Transfer-Encoding: 7bit

Such setting should be in global conf files like <distro>.conf or 
local.conf.
Setting root password from a recipe does not have effect.

If you really want to set a root password from recipe, maybe you need to 
take a look at base-passwd recipe.

'-P' is an option added to support clear text password. The patch only 
applies to shadow-native.
So it does not affect the shadow on target.

Best Regards,
Chen Qi

On 05/16/2018 04:46 PM, Mauro Ziliani wrote:
> Hi all.
>
> I need to set a well know password for root user.
>
> I follow the istruction to do this with
>
>
> inherit extra_users
>
> EXTRA_USERS_PARAMS = " \
>
>     usermod -P secret root; \
>
> "
>
>
> But it does not work.
>
> I think the problem i for usermod
>
> I sse the man page and the -p parameter needs the output of crypt(3) 
> function.
>
> While -P parameter (p-uppercase) is not a valid parameter for usermod
>
>
> Any idea?
>
>
> Thanks
>
>    Mauro
>


