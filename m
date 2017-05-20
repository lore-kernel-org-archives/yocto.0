Return-Path: <prvs=0313490f80=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABB7EE00ACE; Sat, 20 May 2017 02:52:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.244.64.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx18-09.smtp.antispamcloud.com (mx18-09.smtp.antispamcloud.com
	[207.244.64.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03452E00826
	for <yocto@yoctoproject.org>; Sat, 20 May 2017 02:52:44 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1dC13v-00076Q-9n
	for yocto@yoctoproject.org; Sat, 20 May 2017 11:52:41 +0200
Received: from [192.168.1.17] (85.150.144.104) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Sat, 20 May 2017 11:52:36 +0200
To: <yocto@yoctoproject.org>
References: <370377A93E714B81A54709E200F398A6@PAULD>
	<13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <65fdbdb4-4169-edba-47ae-5b8e089475b6@topic.nl>
Date: Sat, 20 May 2017 11:52:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
X-Originating-IP: [85.150.144.104]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNI3t
	zf9u77Vs6WyyrQBDHUhOoC8Df89Df+Iw24116T8EJbSZOKvwsVWii4aapL5Fc2bjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAANeo6Hr4UJMIZEVOGlXeApA3I626B4k1VCg2pmPRu/tskf5/TYDgMlItcdvlbk2cyRZFr7j9y
	a9aYrEERw6Xrxb3upx1n/FUf/NwbTI+uRoXlWvXEyVXmV1DcCGMoc6ig/SVaKi0jvtxxX4zA29pu
	2ONYQFX+rhdRbxagFZk9QeUTMKkbMlXz2JUArHA+14sz3sbskoLsCzHbimU89cr33RKm353ztx8x
	waw1cKnsBGxm83Bq3Dr745Bh95etgupgGplHcpVCCoX989hgB8R+yFNe0necuBmgAaEH47pnSozS
	cx6dixYXWS0UC4sPAz0+cDD6uazPNtbbsm0psq+nyldVG3udxDVjJl88/rWN0QJAZs8O0qGELL5L
	HSCgBqXfiEc3YcCUDBl3OGV65ZQULuQ0Yt6sBXejfJJliPYr+dmPe8G0X48XiWxepWVfcMVZSJ+G
	o/MVVTJEGXfbPT6dmiejWzj+l6oKAXkmxo75jgs=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: What can I share between projects?
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
X-List-Received-Date: Sat, 20 May 2017 09:52:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 19-05-17 13:47, Mike Looijmans wrote:
> On 19-05-17 03:43, Paul D. DeRocco wrote:
>> If I'm doing multiple unrelated Yocto based projects, and they use the
>> same version of Yocto, and the same metadata (except for my own layers),
>> am I right in assuming that I can share everything in poky, downloads,=20
>> and
>> sstate-cache, and I only need separate build directories? (I normally pu=
t
>> downloads and sstate-cache next to my build directory, rather than insid=
e
>> it.)
>>
>=20
> You can share BOTH the downloads and sstate-cache. You can safely share=20
> sstate-cache between various versions of Yocto (OE) and distros,=20
> machines, etc., it was designed just for that.
>=20
> Our build server keeps a single sstate-cache for about 30 projects, with=
=20
> 4 versions of OE, 3 distros, and a dozen MACHINE configs. No problems=20
> encountered.

In addition to that, you can share the whole thing ("tmp") for projects=20
that use the same local.conf and the same OE version. Building various=20
images for about 20 different machines with over 4 different=20
architectures (MIPS and ARM variants) in the same directory works just=20
fine and drastically reduces build times since they can share about=20
everything that's not unique to each machine.


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



Join our presentation at Electronics & Applications 2017:
FPGA for real-time data processing, subject =E2=80=9CHardware platform for =
industrial ultrasound steel plate Inspection=E2=80=9D Topic Embedded System=
s - Herman Kuster, 1st June 10 AM

Visit http://eabeurs.nl/author/612884/ for more information


