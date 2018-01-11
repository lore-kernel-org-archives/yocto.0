Return-Path: <prvs=05492bd55b=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1D69E00E92; Thu, 11 Jan 2018 07:41:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.2.203 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx6-out12.antispamcloud.com (mx6-out12.antispamcloud.com
	[95.211.2.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55414E00D32
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 07:41:17 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx35.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1eZZU0-00049n-3m
	for yocto@yoctoproject.org; Thu, 11 Jan 2018 10:49:12 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 11 Jan 2018 10:49:09 +0100
To: <yocto@yoctoproject.org>
References: <CAGMdoFkPU8cyvNftjRXtmc0GyYXi0LNMh9TJ=A8cgrSjKRecBA@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <6b540d61-dac4-0fe7-f1d4-2f428ceecf39@topic.nl>
Date: Thu, 11 Jan 2018 10:49:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAGMdoFkPU8cyvNftjRXtmc0GyYXi0LNMh9TJ=A8cgrSjKRecBA@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-AntiSpamCloud-Domain: topic.nl
X-AntiSpamCloud-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-AntiSpamCloud-Outgoing-Class: unsure
X-AntiSpamCloud-Outgoing-Evidence: Combined (0.16)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5sbW+O8Tk3tdcM8bPu1yW/YXv9krsgRhBn0ayn6qsUc7w6SccWMDC+EB
	BTuK3o3KEyQlGLPaobytuzUKW+xz+P7PAjZ7O57DDW7DOa/HBoJsBMmyNbDn7R5kilAhwr3KtIuk
	b+536l3+pqAIhIa/zGXEwTmvXfAfWNAj7jnT7D41vmOVq23tbQw2LZ3RX+IyZmptLDQVVEkr0fd3
	TM0QBRM62G/U67cKaa0HbaH2D8o8DZ7dAk4PIDlJHa9u6GsEq/Ke8s8utGHT8Q5pJWi2MVr7Evam
	8tYC7wyZQ4fzB8++QUwbiOFfV2Jvu+B3DrH1MxO3mU2z2ywUcjN7x2PlCANg9et9Fj8PSGjy/Yn8
	oAWNeQ26l+6g7IYTcpkQV1OwCLwqyT5p50x81ZKcmzCu2U325+uTFUuzvo8URmhDaMaDm2krverQ
	RYVy3aYXqZGE8/jHXabDECB8Ge2rA5iD/Uv1GXxLJFjVApPQIqy2JQrfHOhaDqil5cRRI+xFj+oA
	aV41o9VrjAeNJ9smtTtXQ0oDM3MqXJNR3HP/1Yc3NvMZe+wSBz2Jns4L1GvpZhMBg6pNOztXlWSK
	pkGC4CGlNdMT+ku21JaTB5qStahrKVgPVgPnVJ/XVzeYFcmG/F6Ke3busEYbN8ZHbA2aDQoPs14F
	1eyLQy2w9z09mYJgvrgM3KAiKBVOlKRdIMRGU1PzqHLYM3A6BXfvel8OEFDbU51o20LdLIBDdLpb
	1+HIem1e7wJBYp+ZsNNJP+E7eBiykSAO2w7cJBbO0Dp55x3tfB5ifFDKEuqo+y7SM5LKmlqkoFOu
	sSFNODEeaAGGwf+43yv5Ak2qvu+ROAO1/CQ6vNXkaefkrOKu/tjx3ISz3q2wkvFcgTxJ6GKpm6ms
	GRxItWOYB+g+5a8O5B8fYHZUAk0=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: fstab entry not mounting at boot-up
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
X-List-Received-Date: Thu, 11 Jan 2018 15:41:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 05-01-18 20:43, Edward Wingate wrote:
> My system has a USB-SSD drive and I added this to my fstab:
> /dev/sda1  /mnt/drive    auto   defaults,nonempty  0 0
>=20
> But it doesn't get mounted on start-up.  I can use "mount -a" after
> start-up and it mounts successfully.
>=20
> Everything else in fstab gets mounted on boot.  Does anyone know why
> my new entry doesn't?

Wild guess: "/mnt/drive" does not exist yet when the fstab is processed dur=
ing=20
startup. That will cause mount to fail.


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




