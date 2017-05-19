Return-Path: <prvs=0312044281=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D61E00B58; Fri, 19 May 2017 06:08:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0DDFE00B47
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 06:08:29 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1dBgNP-0003Qn-U6; Fri, 19 May 2017 13:47:26 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 19 May 2017 13:47:21 +0200
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <370377A93E714B81A54709E200F398A6@PAULD>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
Date: Fri, 19 May 2017 13:47:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <370377A93E714B81A54709E200F398A6@PAULD>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.20)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNHDH
	crLeqvqOs9wk4k3rVVckvByOn7D99HTWklieDr8XsDr/MTZHnVH9qG2jiddxYmbjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAANeo6Hr4UJMIZEVOGlXeApA3I626B4k1VCg2pmPRu/tsmdFdk4gcG1z7gLdTKWLZzudZVQJt8
	ZR5aVsDkq8qIPL3upx1n/FUf/NwbTI+uRoXlWvXEyVXmV1DcCGMoc6ig/SVaKi0jvtxxX4zA29pu
	2ONYQFX+rhdRbxagFZk9QeUTMKkbMlXz2JUArHA+14sz3sbskoLsCzHbimU89cr33RKm353ztx8x
	waw1cKnsBGxm83Bq3Dr745Bh95etgupgGplHcpVCCoX989hgB8R+yFNe0necuBmgAaEH47pnSozS
	cx6dixYXWS0UC4sPAz0+8BF3DRrJpyZTOMu3rtnjC1dVG3udxDVjJl88/rWN0QJAZs8O0qGELL5L
	HSCgBqXfiEc3YcCUDBl3OGV65ZQULuQ0Yt6sBXejfJJliPYr+dmcA/mPIiGsgx4YWTZHK4qfodXu
	ArWBRff4kMYQRRcY0ax/4u0cvPc0s7twjYkYoiJnOG5aVZMr0xGp2/mDONUuMS+4ayUpOtEhdxek
	WDmK9g==
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
X-List-Received-Date: Fri, 19 May 2017 13:08:31 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 19-05-17 03:43, Paul D. DeRocco wrote:
> If I'm doing multiple unrelated Yocto based projects, and they use the
> same version of Yocto, and the same metadata (except for my own layers),
> am I right in assuming that I can share everything in poky, downloads, an=
d
> sstate-cache, and I only need separate build directories? (I normally put
> downloads and sstate-cache next to my build directory, rather than inside
> it.)
>

You can share BOTH the downloads and sstate-cache. You can safely share=20
sstate-cache between various versions of Yocto (OE) and distros, machines,=
=20
etc., it was designed just for that.

Our build server keeps a single sstate-cache for about 30 projects, with 4=
=20
versions of OE, 3 distros, and a dozen MACHINE configs. No problems encount=
ered.


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


