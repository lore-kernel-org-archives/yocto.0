Return-Path: <prvs=0193ebffb4=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA1BDE00A94; Fri, 20 Jan 2017 06:27:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.112.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx5-04.smtp.antispamcloud.com (mx5-04.smtp.antispamcloud.com
	[95.211.112.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D84EE0081A
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 06:27:37 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx5.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cUaAB-0003LL-1U; Fri, 20 Jan 2017 15:27:36 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 20 Jan 2017 15:27:33 +0100
To: Michael Gloff <mgloff@emacinc.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<40274d5f-c074-8ee5-bb41-5cb66f5da9bd@topic.nl>
	<CALXw4G6VmPJqb6tc+148SADpX-SauFR9GneZ51eBoMdfmcK=AA@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <cb2342be-f33b-e59d-b5e8-66f752110178@topic.nl>
Date: Fri, 20 Jan 2017 15:27:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CALXw4G6VmPJqb6tc+148SADpX-SauFR9GneZ51eBoMdfmcK=AA@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNKDZ
	A/QMRvUjwGAfcfdVswEfhpFWBxlLHsumwQBb/Q3g4nTn3jQkawo0LGbzbuPpm2bjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAAdpU0oUDqng6Dyy2mQeofiUvnyTstESieorSil/C2nDl1el35jO+WJBgrWGjAavfuifnL+9wg
	oTj4ygNPw1XfN1IUJ2+rCMPpQhII5VkEVC//8GRISD+lYCwA5l6/Q4nfg8y63jKKBrO1BroJmvb9
	eS8/gEZbIQzNpzl9FXiGPzJpwWXpE+sdjNmnXWjiNaLzpYbRm1I468S/yL0UV2VaFaHU7TvqT2so
	IjU4ke4l3yHonV+E7OMXRvgtdyMlnmWipt3MlrfVMPiosy1D17y+W2wRetLdPST6mA1fZaRFk5Z4
	ADVcdO1thjbcVckPwCgKInHPhNiH3NSHpRQdFLiVVNV0df1+ARMcUlNXLVWxy/18BrHvkSsNm9Qm
	kmrg2CBrlprCg1eH/Nhc39gnrWGZIEvYsHrWPhaldD42l+/HIePJfIBbHHxkB9Dtb9foJrWmwmmE
	UoS2KQnz6YQC4xUTPihImkWFsng/79WJmCURhHc=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Recommended-Action: accept
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Fri, 20 Jan 2017 14:27:39 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 20-01-17 07:15, Michael Gloff wrote:
> Mike,
>
> On Thu, Jan 19, 2017 at 3:18 AM, Mike Looijmans <mike.looijmans@topic.nl
> <mailto:mike.looijmans@topic.nl>> wrote:
>
>     On 18-01-17 16:10, colin.helliwell@ln-systems.com
>     <mailto:colin.helliwell@ln-systems.com> wrote:
>
>         We have a configuration for our embedded system which is working =
via
>         SysV, but
>         we=E2=80=99re investigating moving over to systemd.
>
>         Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone ha=
s technological arguments
>         for/against
>         then I=E2=80=99d be interested =E2=80=93 but I wanted to investig=
ate it anyway.
>
>
>     Just one. systemd is a bit larger. So it will increase the boot time =
if
>     your platform is I/O limited (many embedded systems are).
>
>     The good thing I noticed is that it shuts down a lot faster than
>     initscripts. (I don't understand why I can boot my system in 2 second=
s,
>     but shutdown takes over 5 seconds...)
>
>
> The 5+ seconds may be from sendsigs on shutdown or reboot:
>      echo "Sending all processes the TERM signal..."
>      killall5 -15
>     sleep 5
>      echo "Sending all processes the KILL signal..."
>      killall5 -9

OMG, indeed, this is utterly braindead!

An no one (except one of the systemd folks) has come up with a program that=
=20
just waits for the the processes to finish (with a timeout) and only uses t=
he=20
"-9" double barrel shotgun to finish only the ones that didn't respond?
(though doing that is rather pointless if the system power is about to be c=
ut=20
anyway...)



Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






