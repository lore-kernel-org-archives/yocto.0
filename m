Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 043ABE00C78; Thu, 23 Nov 2017 06:29:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6399AE00A62
	for <yocto@yoctoproject.org>; Thu, 23 Nov 2017 06:29:23 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 07E612602C4
Message-ID: <1511447360.16081.8.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 23 Nov 2017 15:29:20 +0100
In-Reply-To: <CAJ2oMhKJyZnKSWEuMaMPC8g4jYGi4LC5kUatBY0mUrU480sBxw@mail.gmail.com>
References: <CAJ2oMhKJyZnKSWEuMaMPC8g4jYGi4LC5kUatBY0mUrU480sBxw@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: snmp is not installed, only snmpd
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
X-List-Received-Date: Thu, 23 Nov 2017 14:29:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-11-23 at 16:08 +0200, Ran Shalit wrote:
> Hello,
> 
> Does anyone knows how I can add snmp to yocto, I manage to have
> /etc/snmp/snmpd.conf , but not snmp.conf.
> 

According to the recipe it seems that no conf files are provided for snmp.
snmp seems to be the client and maybe doesn't need snmp.conf.

> This is what I tried:
> I added CORE_IMAGE_EXTRA_INSTALL += "net-snmp net-snmp-server
> net-snmp-libs net-snmp-mibs" , yet snmp.conf is missing
> 
> I also tried to restart snmp as following:
> root@imx6qsabresd:/etc/openvivoe# systemctl restart snmp.service
> Failed to restart snmp.service: Unit snmp.service not found.
> 

I suppose that snmp is the client so you don't have a service to start the client.
Just use it in a command line.
try :
	# find / -name *snmp*

This command will locate all files containing snmp and will show you if snmp binaries are installed
or not.

> But snmpd service seems to exist in image:
> root@imx6qsabresd:/etc/openvivoe# systemctl restart snmpd.service
> 
> Thank you for any idea,
> Ran
-- 
Fabien

