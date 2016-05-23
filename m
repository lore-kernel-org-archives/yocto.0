Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81CB5E008D2; Mon, 23 May 2016 19:58:36 -0700 (PDT)
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
X-Greylist: delayed 46902 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 May 2016 19:58:30 PDT
Received: from mx6-12.smtp.antispamcloud.com (mx6-12.smtp.antispamcloud.com
	[95.211.2.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B46E8E008B8
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 19:58:31 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1b4qLa-0005hJ-In; Mon, 23 May 2016 15:56:46 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 23 May 2016 15:56:40 +0200
To: <S.Jaritz@esa-grimma.de>, <yocto@yoctoproject.org>
References: <OFD3CFEA30.52570675-ONC1257FBC.0049688D-C1257FBC.004AD217@esa-grimma.de>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <57430C17.3040409@topic.nl>
Date: Mon, 23 May 2016 15:56:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <OFD3CFEA30.52570675-ONC1257FBC.0049688D-C1257FBC.004AD217@esa-grimma.de>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarwxJHdyoAgR+PLF5zertxb+Yj3cs0nyTYhJaEBA9gYGszyfzEHDfeCqb0UETF2Pwf1oO8
	H6cm6kXZEcCzfDwyej/RR+8tX4aCdZFMAuzo2ArKllpZUap+0mYTj5LAwShzaBrVnitsydvpOZ9U
	A9ZW2yfcM2MQ5tdBx5okGR5aBXMTugNuylZsLevy5ia/a/+5aHcovBtceMenHPxU5a3FqpG0Zq1L
	XSu3rlGGdZSBKS3XPQwbnle21pUHnXNW1Wm96ZFVgpT1b21uZVckGp0ccOYJH6sC5oCk/8v9mZ1n
	Ys+9QOCe7aowgYngmPcm0y4syV/2HYZTKQ+r7Jt8D04J/YOLBDMrD7q/cJogwbqzsuokHxWj8Foi
	CTq0J+qn1IaJoNZeels3I4vsqtm1dXCnaLG9og1s35mw1E+5Gx3FeTul9zV0u0qe2Jq4j4QQWaTx
	c3pRgAE8QmaiSAxWIQ3rF5W2D/Ga1fZdqU1kLs7UmNCbWyZtXcdXYx1yuUdxkWGZYnvhFD04d1cC
	602jW+/F5IuZ3JKVmi72ocgY5kMQSjs7DKaXbglX/ovZpOVspMK7Tz6gWpXGccu6Ca7Ch+0hxAnV
	BXJZSxBzHg38wSXr+4SRQ3p8RRplBUq64p0VTdseciSeH5FPcjgYZD2SsIvVUe8xL7hrJSk60SF3
	F6RYOYr2
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 88.159.208.100
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.11)
X-Recommended-Action: accept
Subject: Re: How can I set a recipe that its binaries become available at cross-compile time?
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
X-List-Received-Date: Tue, 24 May 2016 02:58:36 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 23-05-16 15:37, S.Jaritz@esa-grimma.de wrote:
> Hej
>
> I a cmake based application, some code generation via dbusxx-xml2cpp. It =
is
> provided by the dbuss-c++ lib. A recipe can be found under:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi-demo/rec=
ipes-extended/dbus-c++?id=3Db90c2a20744e1e82b2169a88e68d7677bec907b6
>
>
> It working and it's compiling & linking, "dbusxx-xml2cpp" is included at =
the
> native build.
>
> How can I set a recipe that its binaries become available at cross-compil=
e time?

Simply adding the following to a recipe should make the command available i=
n=20
the PATH:

DEPENDS +=3D "dbus-c++-native"

(though your moving of the binary into a "dbg" package might disturb that. =
I'd=20
create a "utils" package for it)


Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






