Return-Path: <prvs=0155dabe15=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E36C3E00C4B; Tue, 13 Dec 2016 00:53:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_PH_BODY_ACCOUNTS_PRE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.184 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
	"accounts
	*      suspended", "account credited", "account verification"
X-Greylist: delayed 111 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Dec 2016 00:53:36 PST
Received: from mx12-14.smtp.antispamcloud.com (mx12-14.smtp.antispamcloud.com
	[46.165.232.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D98BE00A1E
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 00:53:36 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx12.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cGiq5-0007oz-Ha; Tue, 13 Dec 2016 09:53:34 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 13 Dec 2016 09:53:32 +0100
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <78ba92ed-4828-a59e-c96e-809473985d6b@topic.nl>
Date: Tue, 13 Dec 2016 09:53:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarwy3Yf5i+byKl6pUyknU7g+5s7gTL9ApoG8PDIYbbkxcxb1NmL4SS6PNPrgDfpvI3ZqzF
	T2J9K1pLxtZHbPNr0KB4PYvpxJqLtlDB4JhOs/rj6ZwB92f8lif9VFb93BO/QLnJIzaxVLmo172a
	CPBRz4LquLtHkm2WG904pQWwsR+I12LvyHECblh5W5zDrIOtOZfrFYvEvQD3E9jZ0NZfSXi8Ksk+
	aedMfNWSnJswrtlNaBB1cPRDQ8eTDZZlrbkugZtpK73q0EWFct2mF6mRhPOnSGtDOW/IeYce2Wq8
	Kn5PWpuDzmWIKo73PrltnLG4RVuDQEdKm65cTUbfWaDAny7D7RhMOrg7fR4O/NaYVInf7atROiED
	UTjlhcdXluKCo1QTtD1a+e1dr1U8v0rhwD7y3deP8vNnmz84mDUvZqxnESngG/tNYRSgrMVB+thR
	7JFhVHSlrKDhy22ThtG39l2DwIE7VKe+bqpcdCns72R1XzSZlNoenRqFa0wOmjcLf0xtg4Ql0Tjr
	YmWDgTJ2lCoBIkUL/j1Y48GvmeURQjjEVK0SxG5jdoTlpJvo45e5qpa7V8NXPSB4yY8R8OtQcPHT
	3EIa+jwweJRWAPvvdZobjfyyyJ2bDR6Yy7cd1WMMRQ==
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.31)
X-Classification: unsure/combined
X-Recommended-Action: accept
Subject: Re: suggestions for version controlling multi-layer reproducible builds?
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
X-List-Received-Date: Tue, 13 Dec 2016 08:53:38 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 12-12-16 16:20, Robert P. J. Day wrote:
>
>   (if there's already a doc section for this somewhere, a pointer to
> it would be just ducky.)
>
>   if one is building an image for a releasable, commercial product,
> and that image involves pulling in numerous layers, then dumping all
> sorts of proprietary apps on top of it, what are the possibilities for
> how to version number the released images such that, if a client has
> an issue, they can identify precisely the state of components that
> went into the system they're working with?

I always make a top-level git repository for the project. It contains all t=
he=20
"meta" layers as submodules (sometimes nested).

That way, the version of the top layer is the version of the whole product =
and=20
can be reproduced any time.

>   in addition to all of the layers involved in the build, one has to
> take into account that, when critical bugs are identified, an updated
> RPM might be sent out and applied, whereupon that system's version
> number is no longer perfectly accurate. in the end, the state of
> someone's running system will be determined by a possibly huge
> combination of selected packages, preferred package versions, build
> config options, additional user space apps, hot fixes that have been
> applied and so on.

The only way to version such a system is to actually dump the whole package=
=20
version table (e.g. "opkg list-installed"). You could compare the table to =
the=20
initially installed one and only send the difference, as an optimization.

>   what sort of meaningful "version number" can be applied to something
> like that? i'm sure at least a few other people have to be doing
> something like that, so i'm open to suggestions.

Version "numbers" are for marketing purposes only and have no useful meanin=
g=20
in version management. The git hash is the "technical" version number. Crea=
te=20
a table somewhere to map the commercial version number to a git hash. The=20
simplest implementation is to "tag" the version numbers in the top-level=20
repository.



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






