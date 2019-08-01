Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7FB4E00D75; Thu,  1 Aug 2019 02:04:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EB2DE00BD5
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 02:04:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x71946Qu023451
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 1 Aug 2019 02:04:06 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 1 Aug 2019 02:04:05 -0700
To: <yocto@yoctoproject.org>
References: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <f881304f-668d-01c6-65ec-c26cf82199b5@windriver.com>
Date: Thu, 1 Aug 2019 17:17:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: Make the service the last run in boot
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
X-List-Received-Date: Thu, 01 Aug 2019 09:04:07 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2019 03:37 PM, JH wrote:
> Hi,
>
> How can I find the systemd last run service I can put it in my network
> application After=<last run tartget or service>?
>
> I need my network application service to be run at last in boot, I
> made After=connman and Requires=connman.service that did not work,
> always failed in boot, I have to manually restart the network
> application service which won't work in field operation.

I'd suggest you find out what you network service actually require.

> Searched from Internet, there is a blog Systemd: Run it last to create
> a custom.target After=multi-user.target, and put my network
> application service WantedBy=custom.target, that works well, but it is
> a little bit cumbersome to configure customer.target in Yocto bb file,
> enabling the customer.target is called systemctl isolate
> custom.target, the /etc/systemd/system/default.target link needs be
> changed to from multi-user.target to custom.target. I am not sure how
> it could be done in do_install, appreciate your tips.
>
> Thank you.
>
> Kind regards,
>
> - JH



