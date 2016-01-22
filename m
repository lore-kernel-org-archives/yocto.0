Return-Path: <machida.yuki@jp.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5416E00903; Fri, 22 Jan 2016 01:10:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [211.128.242.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 604 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Jan 2016 01:10:04 PST
Received: from mgwym04.jp.fujitsu.com (mgwym04.jp.fujitsu.com [211.128.242.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C14CE00803
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 01:10:04 -0800 (PST)
Received: from yt-mxoi2.gw.nic.fujitsu.com (unknown [192.168.229.69]) by
	mgwym04.jp.fujitsu.com with smtp
	id 16b5_3189_2fe4c9e8_b9b6_4002_b2f9_9863816f79a5;
	Fri, 22 Jan 2016 17:59:49 +0900
Received: from m3050.s.css.fujitsu.com (msm.b.css.fujitsu.com [10.134.21.208])
	by yt-mxoi2.gw.nic.fujitsu.com (Postfix) with ESMTP id 24454AC00B0
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 17:59:49 +0900 (JST)
Received: from omame (omame.fct.css.fujitsu.com [10.24.14.171])
	by m3050.s.css.fujitsu.com (Postfix) with ESMTP id 1BA6E164;
	Fri, 22 Jan 2016 17:59:49 +0900 (JST)
Received: from [10.24.19.86] (ubi86.utsfd.cs.fujitsu.co.jp [10.24.19.86])
	by omame (Postfix) with ESMTPSA id F37F91E0089;
	Fri, 22 Jan 2016 17:59:48 +0900 (JST)
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MA1PR01MB0056C008588A2F442A072B6182C30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
From: Yuki Machida <machida.yuki@jp.fujitsu.com>
Message-ID: <56A1EF84.80101@jp.fujitsu.com>
Date: Fri, 22 Jan 2016 17:59:48 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB0056C008588A2F442A072B6182C30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
X-TM-AS-MML: disable
Subject: Re: Syslog Related testcases are failed in yocto LTP
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
X-List-Received-Date: Fri, 22 Jan 2016 09:10:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

 > I build the LTP-2015-01-19 with yocto and I ran the runltp script on my board I got error with the syslog related test cases.
What it has happen error?
If it is possible to send a test log,
I may be able to give any advice for you.

Best regard,
Yuki Machida
On 2016年01月21日 21:10, Raghavendra Kakarla wrote:
> Hi All,
>
>
> I build the LTP-2015-01-19 with yocto and I ran the runltp script on my board I got error with the syslog related test cases.
>
>
> Could please give me the some info such that I will resolve the issue.
>
>
> Thanks in advance.
>
>
> Regards,
>
> Raghavendra K.
>
>
>

