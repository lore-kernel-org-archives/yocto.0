Return-Path: <prvs=0196117200=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B90CE00828; Mon, 23 Jan 2017 00:57:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.184 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3582 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Jan 2017 00:56:55 PST
Received: from mx12-14.smtp.antispamcloud.com (mx12-14.smtp.antispamcloud.com
	[46.165.232.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D9F9E007EB
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 00:56:55 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx12.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cVZUx-0001da-BT
	for yocto@yoctoproject.org; Mon, 23 Jan 2017 08:57:08 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 23 Jan 2017 08:57:06 +0100
To: <yocto@yoctoproject.org>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
	<093001d27325$7dc14cd0$7943e670$@ln-systems.com>
	<CAMjhiJiRY9cC_+cGL9j0AfVqjhPnBz2hZZur6k2iOGOyUPhBgw@mail.gmail.com>
	<0aa701d2754c$f26ba1b0$d742e510$@ln-systems.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <71dd03a6-c54f-4ecd-f88e-c1695ff528d6@topic.nl>
Date: Mon, 23 Jan 2017 08:57:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <0aa701d2754c$f26ba1b0$d742e510$@ln-systems.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00507085574809)
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNKUF
	mCl2yvQqdf9wpoWdHILY9AsfAeocATMbWAcBLL+oZjbb77yg88Kx79jlT2hu1WbjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAAdpU0oUDqng6Dyy2mQeofiSsIxwrq20B8DodBySygpFJ1el35jO+WJBgrWGjAavfuifnL+9wg
	oTj4ygNPw1XfN1IUJ2+rCMPpQhII5VkEVC//8GRISD+lYCwA5l6/Q4nfg8y63jKKBrO1BroJmvb9
	eUfeSxHoryR0VpaMOdjZtRaRVYKU9W9tbmVXJBqdHHDml2fQHaY9hVoT9jGvxqBU4tidrpMZFgjz
	m7CJrS8itOkBIkUL/j1Y48GvmeURQjjEVK0SxG5jdoTlpJvo45e5qj8FIprDRrySYpUp+LukEmSW
	jvTLtYDyv6NwPdjCI8M6imJBmbX4ZwV05IcNNAgTWJlUOpwpEkpu90COvViIG1hxIqoCQc3HM3T0
	0zJWsAVPIny++hg9dJLqN5zmWqF/oL2zkpvPBVfBs+q9szCzvdEBg+fgOaDhnt+xLo9/BvXFw6Sc
	cWMDC+EBBTuK3o3KE6lZzkFSQnz/2x3rf2UPjGU=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Recommended-Action: accept
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
X-List-Received-Date: Mon, 23 Jan 2017 08:57:00 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 23-01-17 08:47, colin.helliwell@ln-systems.com wrote:
> Looking at it in more detail, it's perhaps more that not everything is ta=
ken up by systemd i.e. I have lots of symlinks to /dev/null in etc/systemd/=
system, with the corresponding/original SysV script still in /etc/init.d.  =
Things like banner, sysfs, urandom, dmesg (to name just a few).
> Maybe these don't matter but, as I say, it just seems like a bit of 'clut=
ter'
>
> Looking at one which does seem to switch over cleanly - dropbear - I'm pu=
zzled how the recipe [dropbear.inc, in poky/meta/recipes-core] appears to i=
nstall both init.d script and .service in its do_install, yet only one or t=
he other ultimately shows up in the rootfs..? (Relates to my other question=
 about how to determine the init type in do_install)

I suspect that "inherit systemd" is taking care of that.


>
>=20

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





-----Original Message-----
> From: Leon Woestenberg [mailto:leon@sidebranch.com]
> Sent: 21 January 2017 13:09
> To: colin.helliwell@ln-systems.com
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] Changing over to systemd (no dhcp)
>
> Hi Colin,
>
> On Fri, Jan 20, 2017 at 2:59 PM, <colin.helliwell@ln-systems.com> wrote:
>>
>> DISTRO_FEATURES_remove =3D " sysvinit"
>>
>> I suspect there=E2=80=99s also some de-cluttering needed e.g. init.d scr=
ipts still being installed as well as a .service.
>>
> I wouldn't expect these to be installed.  Which ones specifically?
>
> Regards,
>
> Leon.
>


