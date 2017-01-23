Return-Path: <prvs=0196117200=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D27F1E0082A; Mon, 23 Jan 2017 03:02:52 -0800 (PST)
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
Received: from mx12-14.smtp.antispamcloud.com (mx12-14.smtp.antispamcloud.com
	[46.165.232.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 833C9E00823
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 03:02:48 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx12.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cVcOb-0002XH-Lr
	for yocto@yoctoproject.org; Mon, 23 Jan 2017 12:02:47 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 23 Jan 2017 12:02:31 +0100
To: <yocto@yoctoproject.org>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
	<093001d27325$7dc14cd0$7943e670$@ln-systems.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <8ce61c39-5082-5540-ca6c-d234cf62d993@topic.nl>
Date: Mon, 23 Jan 2017 12:02:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <093001d27325$7dc14cd0$7943e670$@ln-systems.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.09)
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNCNL
	FxkHHff5e8q+HZfw+AvpjZ15EU/Kmp9GhdcS608CIA/gnE3uwmIu8NNisI65e2bjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAAdpU0oUDqng6Dyy2mQeofiY/1TbDcONpSU0+afBj9SKN1el35jO+WJBgrWGjAavfuifnL+9wg
	oTj4ygNPw1XfN1IUJ2+rCMPpQhII5VkEVC//8GRISD+lYCwA5l6/Q4nfg8y63jKKBrO1BroJmvb9
	eUfeSxHoryR0VpaMOdjZtRaRVYKU9W9tbmVXJBqdHHDml2fQHaY9hVoT9jGvxqBU4tidrpMZFgjz
	m7CJrS8itOkBIkUL/j1Y48GvmeURQjjEVK0SxG5jdoTlpJvo45e5qj8FIprDRrySYpUp+LukEmT2
	2Tm9+VW5+w8mFcFeBDsaimJBmbX4ZwV05IcNNAgTWJlUOpwpEkpu90COvViIG1i2pq4ZmiLrUtAf
	M6WT3J4Pfkthd2LyVdAPfnUAFBPBehq7WSP1cMFHnn3q6ZX9mk/rC0m0U7aWM2i+GYq4OX2p0Gou
	RcZrOe4J9pDXD8mk4Q==
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
X-List-Received-Date: Mon, 23 Jan 2017 11:02:52 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 20-01-17 14:59, colin.helliwell@ln-systems.com wrote:
> Thanks for all the pointers everyone. I=E2=80=99ve now got (in my distro =
conf):
>
> DISTRO_FEATURES_append =3D " systemd"
>
> DISTRO_FEATURES_remove =3D " sysvinit"
>
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
>
> PREFERRED_PROVIDER_udev =3D "systemd"
>
> PACKAGECONFIG_append_pn-systemd =3D " resolved networkd"

Thanks for the tip, I was also wondering why network didn't work with syste=
md.

Is there a reason why this has been disabled by default? It's strange to ha=
ve=20
a system without network as the default setup.

I would at least have expected network support to be enabled for any machin=
e=20
that has some networking features.




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






