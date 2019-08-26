Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F138AE00C9B; Sun, 25 Aug 2019 18:11:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E140FE009E6
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2019 18:11:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7Q1BQut021168
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 25 Aug 2019 18:11:27 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Sun, 25 Aug 2019 18:11:26 -0700
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWQUjuV8O9OJosai9PgXgsSuXu1mn5JVcMh00g4wRFwikQ@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <55a12754-ef4e-7985-cfcb-5331f76da56c@windriver.com>
Date: Mon, 26 Aug 2019 09:25:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQUjuV8O9OJosai9PgXgsSuXu1mn5JVcMh00g4wRFwikQ@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: To enable all service files
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
X-List-Received-Date: Mon, 26 Aug 2019 01:11:32 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/24/2019 04:16 PM, JH wrote:
> Hi,
>
> I have multiple services files defined in following statements, will
> it all automatically be enabled?
>
> SYSTEMD_SERVICE_${PN} = "${PN}.service app1.service app2.service
> app2.timer app3.service"
> SYSTEMD_AUTO_ENABLE_${PN} = "enable"
>
> Thank you.
>
> Kind regards,
>
> - jh

By design, yes.

Best Regards,

Chen Qi


