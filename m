Return-Path: <machida.yuki@jp.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7F7BE0090A; Tue, 19 Jan 2016 02:08:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [202.219.69.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 616 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Jan 2016 02:08:38 PST
Received: from mgwkm02.jp.fujitsu.com (mgwkm02.jp.fujitsu.com [202.219.69.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD9DE008F5
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 02:08:37 -0800 (PST)
Received: from kw-mxoi1.gw.nic.fujitsu.com (unknown [192.168.231.131]) by
	mgwkm02.jp.fujitsu.com with smtp
	id 368c_4750_3ba10387_4d63_4384_a387_8295e84ffb1e;
	Tue, 19 Jan 2016 18:58:17 +0900
Received: from m3051.s.css.fujitsu.com (m3051.s.css.fujitsu.com
	[10.134.21.209])
	by kw-mxoi1.gw.nic.fujitsu.com (Postfix) with ESMTP id 9DA22AC029D
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 18:58:17 +0900 (JST)
Received: from omame (omame.fct.css.fujitsu.com [10.24.14.171])
	by m3051.s.css.fujitsu.com (Postfix) with ESMTP id 861AFE2;
	Tue, 19 Jan 2016 18:58:17 +0900 (JST)
Received: from [10.24.19.86] (ubi86.utsfd.cs.fujitsu.co.jp [10.24.19.86])
	by omame (Postfix) with ESMTPSA id 6D5231E0089;
	Tue, 19 Jan 2016 18:58:17 +0900 (JST)
To: Larry Goss <Larry.Goss@enea.com>, yocto@yoctoproject.org
References: <37573EC8CA5E1846A6DF0BDECDD7DA9329CC1E62@SESTOEX04.enea.se>
From: Yuki Machida <machida.yuki@jp.fujitsu.com>
Message-ID: <569E08B5.8050502@jp.fujitsu.com>
Date: Tue, 19 Jan 2016 18:58:13 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <37573EC8CA5E1846A6DF0BDECDD7DA9329CC1E62@SESTOEX04.enea.se>
X-TM-AS-MML: disable
Subject: Re: ipv6 testing
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
X-List-Received-Date: Tue, 19 Jan 2016 10:08:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

 > Does Yocto do any IPv6 conformance testing?
We are using IPv6 Ready Logo Conformance Test.
It can check the basic function of IPv6.

What’s IPv6 Ready Logo
https://www.ipv6ready.org
IPv6 Ready Logo test suite
http://www.tahi.org

Embedded Linux Distributor of Fujitsu includes
LTSI Kernel and is built with Yocto Project.
We are testing our distribution by IPv6 Ready Logo Conformance Test.
http://www.fujitsu.com/downloads/JP/archive/imgjp/group/fct/v4/events/exhibit/ipv6-evaluation-status-of-ltsi-r004.pdf

Best regards,
Yuki Machida

On 2016年01月16日 03:52, Larry Goss wrote:
> Hi,
>
> Does Yocto do any IPv6 conformance testing?
>
> Thanks,
>
> *Larry Goss*
>
> Sr. Field Applications Engineer
>
> Enea North America
>
> *Email*: larry.goss@enea.com**
>
> *Phone*: (603) 475-1087
>
> http://www.enea.com/
>
> ________________________________________________________________________________________________________________________________
>
> This message, including attachments, is CONFIDENTIAL. It may also be privileged or otherwise protected by law. If you received this email by mistake please let us know by reply and then delete it from your system; you should not copy it or disclose its contents to anyone. All messages sent to and from Enea may be monitored to ensure compliance with internal policies and to protect our business. Emails are not secure and cannot be guaranteed to be error free as they can be intercepted, amended, lost or destroyed, or contain viruses. The sender therefore does not accept liability for any errors or omissions in the contents of this message, which arise as a result of e-mail transmission. Anyone who communicates with us by email accepts these risks.
>
>
>

