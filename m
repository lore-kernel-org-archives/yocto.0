Return-Path: <machida.yuki@jp.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D627E00A92; Thu, 28 Jan 2016 18:08:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [211.128.242.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mgwym02.jp.fujitsu.com (mgwym02.jp.fujitsu.com [211.128.242.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92FE2E008F5
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 18:08:09 -0800 (PST)
Received: from yt-mxq.gw.nic.fujitsu.com (unknown [192.168.229.66]) by
	mgwym02.jp.fujitsu.com with smtp
	id 0600_2430_9c8be2cd_1a90_4af6_b9a2_ad9dad8f398d;
	Fri, 29 Jan 2016 11:08:04 +0900
Received: from m3050.s.css.fujitsu.com (msm.b.css.fujitsu.com [10.134.21.208])
	by yt-mxq.gw.nic.fujitsu.com (Postfix) with ESMTP id EE6BEAC03CD
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 11:08:02 +0900 (JST)
Received: from omame (omame.fct.css.fujitsu.com [10.24.14.171])
	by m3050.s.css.fujitsu.com (Postfix) with ESMTP id D561B17E;
	Fri, 29 Jan 2016 11:08:02 +0900 (JST)
Received: from [10.24.19.86] (ubi86.utsfd.cs.fujitsu.co.jp [10.24.19.86])
	by omame (Postfix) with ESMTPSA id BDF9C1E0089;
	Fri, 29 Jan 2016 11:08:02 +0900 (JST)
From: Yuki Machida <machida.yuki@jp.fujitsu.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MA1PR01MB0056C008588A2F442A072B6182C30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
	<56A1EF84.80101@jp.fujitsu.com>
	<MA1PR01MB0056D0CB0813ADC08D0D809A82C70@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
	<56A7448F.5030307@jp.fujitsu.com>
	<MA1PR01MB0056B21EF1C3D003B713BA2482D90@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <56AAC97B.5010406@jp.fujitsu.com>
Date: Fri, 29 Jan 2016 11:07:55 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB0056B21EF1C3D003B713BA2482D90@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
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
X-List-Received-Date: Fri, 29 Jan 2016 02:08:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Raghavendra Kakarla,

> I have the syslog-ng flavour of syslogd.

If it exists /sbin/syslogd, it remove this.
# rm -rf /sbin/syslogd
Then, Please excecute ./runltp.
# ./runltp -s syslog
LTP will test the syslog(2) by using the syslog-ng.

Please refer to the source code below for more information.
https://github.com/linux-test-project/ltp/blob/master/testcases/lib/daemonlib.sh#L29
https://github.com/linux-test-project/ltp/blob/master/testcases/kernel/syscalls/syslog/syslog-lib.sh#L68

Best Reards,
Yuki Machida

On 2016年01月27日 14:53, Raghavendra Kakarla wrote:
> Hi Yuki Machida,
>
> I have the syslog-ng flavour of syslogd.
>
>
> Regards,
>
> Raghavendra K.
>
>
> ________________________________________
> From: Yuki Machida <machida.yuki@jp.fujitsu.com>
> Sent: Tuesday, January 26, 2016 3:33 PM
> To: Raghavendra Kakarla; yocto@yoctoproject.org
> Subject: Re: [yocto] Syslog Related testcases are failed in yocto LTP
>
> Hi Raghavendra Kakarla
>
>  > Thank you for your response.
>  >
>  > I am attaching the log file with this mail.
>  >
>  > Please find the attachment.
> Thank you for your test log.
>
> It need setting syslogd for testing syslog(2).
> We know that it can test using syslog-ng.
>
> Do you use any syslogd in your system?
> What kind of syslogd do you have in your system?
> (e.g. syslog-ng, sysklogd, rsyslogd,busybox-syslogd, ...)
>
> Best Regards,
> Yuki Machida
>
> On 2016年01月25日 14:46, Raghavendra Kakarla wrote:
>  > Hi Yuki Machida,
>  >
>  > Thank you for your response.
>  >
>  > I am attaching the log file with this mail.
>  >
>  > Please find the attachment.
>  >
>  > Regards,
>  > Raghavendra K.
>  >
>  > ________________________________________
>  > From: Yuki Machida <machida.yuki@jp.fujitsu.com>
>  > Sent: Friday, January 22, 2016 2:29 PM
>  > To: Raghavendra Kakarla; yocto@yoctoproject.org
>  > Subject: Re: [yocto] Syslog Related testcases are failed in yocto LTP
>  >
>  > Hi
>  >
>  >   > I build the LTP-2015-01-19 with yocto and I ran the runltp script on my board I got error with the syslog related test cases.
>  > What it has happen error?
>  > If it is possible to send a test log,
>  > I may be able to give any advice for you.
>  >
>  > Best regard,
>  > Yuki Machida
>  > On 2016年01月21日 21:10, Raghavendra Kakarla wrote:
>  >> Hi All,
>  >>
>  >>
>  >> I build the LTP-2015-01-19 with yocto and I ran the runltp script on my board I got error with the syslog related test cases.
>  >>
>  >>
>  >> Could please give me the some info such that I will resolve the issue.
>  >>
>  >>
>  >> Thanks in advance.
>  >>
>  >>
>  >> Regards,
>  >>
>  >> Raghavendra K.
>  >>
>  >>
>  >>
>  >
>  > ______________________________________________________________________
>  > This email has been scanned by the Symantec Email Security.cloud service.
>  > For more information please visit http://www.symanteccloud.com
>  > ______________________________________________________________________
>  >
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________

