Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA0DFE00C93; Wed,  5 Dec 2018 23:06:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58F54E00C7E
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 23:06:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wB676Pe7005928
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 5 Dec 2018 23:06:26 -0800 (PST)
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 5 Dec 2018 23:06:25 -0800
To: Mauro Ziliani <mauro@faresoftware.it>, Yocto Project
	<yocto@yoctoproject.org>
References: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <f04024b0-8bc0-db7d-7892-f95f487e2d8d@windriver.com>
Date: Thu, 6 Dec 2018 15:13:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
X-Originating-IP: [128.224.163.141]
Subject: Re: connmand+dbus. Which alternatives?
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
X-List-Received-Date: Thu, 06 Dec 2018 07:06:32 -0000
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Transfer-Encoding: 7bit

wifi connection could be managed by wpa-supplicant.

Best Regards,
Chen Qi

On 12/06/2018 02:50 PM, Mauro Ziliani wrote:
> Hi all.
>
> I'm working on a imx6dl sabresd project with an usb wifi dongle (edimax
> EW7811un)
>
> My app uses Connman by DBus to manage ethernet and wifi connections.
>
> Normally the sytstem works well. Sometimes, randomly, the system freeze
> or the app crashes.
>
> I made many test and this happens when the system is connected to a SSID.
>
> So I suspect that the problem is in connamd_1.31+dbus_1.10.6
>
>
> I'm using Yocto fsl 4.1.5-2.0.1 qith Qt5 5.6.2
>
>
> Can you suggest me an alternative to connmand?
>
>
> Best regards,
>
>    MZ
>


