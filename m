Return-Path: <prvs=00958644a2=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1154E00E6B; Thu, 13 Oct 2016 23:00:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.244.64.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1142 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Oct 2016 23:00:22 PDT
Received: from mx18-05.smtp.antispamcloud.com (mx18-05.smtp.antispamcloud.com
	[207.244.64.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EEB7E00CCA
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 23:00:22 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1buvF5-00053T-4C
	for yocto@yoctoproject.org; Fri, 14 Oct 2016 07:41:17 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 14 Oct 2016 07:41:13 +0200
To: <yocto@yoctoproject.org>
References: <CALbNGRRHQJGxcNCLNN+q4YGeV=VwfPbtO_XrcoMj-ngQkjSiqw@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <8ab5758c-c2e2-db35-c5fa-abc107c3ef1b@topic.nl>
Date: Fri, 14 Oct 2016 07:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRRHQJGxcNCLNN+q4YGeV=VwfPbtO_XrcoMj-ngQkjSiqw@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t6mx
	j3Zz/WM/IwRyPjIHIwDVB7olDt4zb8dsouLcxcbEd2XrW4jl5YA41PkF4XvoojwJWw42swm4bO6g
	acpMpzKAsmN/Lb+FQ/HEaohPJy4sx1hqmEa9iilDbgon2SBEMwR1Cbr/gA0Hb9IMgtxSpQPVCZ1m
	y7qTGj+pYSPpnV3taEKYvM7FMBxCYVZUBGGA2ntmL1IOux+wiS7a7xut+NpifFDKEuqo+y7SM5LK
	mlqkSSzm7P5LFQTh7xAIEq/JANELms9PgUTO7N3X8VVCH5Tejl+klpcKS8WcpGJHUE5QmdySlZou
	9qHIGOZDEEo7O6ELVSrXu1Q3s0Dk1D5TiiVga8sJFDUhvJ7BMUbUKCRIMiPLyoQzvILSDO18VtgB
	XV1z/z4WnEoC8C13cWABWljMJUuewaNdgFhoy6E5hGQo6J1fhOzjF0b4LXcjJZ5lojEMqtzJ1njt
	3WX6t7gEp256Mn2LvZcHnl+qWjt8ZNLnihyMiH+f+SmwfmZ/JPSGbtlbWpw95PUjgvuRiAeCIlI=
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.14)
X-Recommended-Action: accept
Subject: Re: Big endian ARM machine with NEON wanted
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
X-List-Received-Date: Fri, 14 Oct 2016 06:00:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 13-10-16 19:20, Andreas M=C3=BCller wrote:
>
> Does anybody know a big endian and common machine supporting NEON? I
> would need one for testing my port of portaudio.


Most ARM systems can run in both big-endian and little-endian modes. Somewh=
ere=20
early during boot this choice is being made.

Having said that, since big-endian machines are getting rare, there's very=
=20
little support for big-endian ARM systems. Most (if not all) boards can run=
=20
big-endian, but software support is usually lacking, in particular in the=20
bootloader parts where this matters.

If it's just for testing some software, maybe you can use a QEMU machine?


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






