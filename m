Return-Path: <prvs=04000ec90c=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4142E00D05; Tue, 15 Aug 2017 00:58:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1934 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Aug 2017 00:58:04 PDT
Received: from mx12-04.smtp.antispamcloud.com (mx12-04.smtp.antispamcloud.com
	[46.165.232.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DE3E00C98
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 00:58:04 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx3.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1dhWER-0005Q3-Ln
	for yocto@yoctoproject.org; Tue, 15 Aug 2017 09:25:49 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 15 Aug 2017 09:25:42 +0200
To: <yocto@yoctoproject.org>
References: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
	<1502737813.26251.119.camel@genivi.org>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <f6a1b7cc-f5fc-b891-bed5-3aa0f33632e1@topic.nl>
Date: Tue, 15 Aug 2017 09:25:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1502737813.26251.119.camel@genivi.org>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.19)
X-Recommended-Action: accept
X-Filter-ID: PqwsvolAWURa0gwxuN3S5YEa3T7JuZT23fGO2rGt3ZgWMD8gia7lRmdoHJ3n0cm6Vtfp9X1ZBchZ
	wvx8a7dTUQWF0kx98HH3GX+iQK7NiP6LBDMrD7q/cJogwbqzsuokIXMJ1U4MKKnQ5SAJ1V9dkP9x
	bu57BDazLmklZgT7xzZxOQNlTKUd6Gmm2gNuXYh9MN2MFRJ3DnzQRKquJ7sqhdm5sM1dZmdEjaKA
	Z+oyX0Q8CVsONrMJuGzuoGnKTKcygLJjfy2/hUPxxGqITycuLMdYaphGvYopQ24KJ9kgRDN3pbXn
	aMbbC1QSUBxihEsjBWOBqoptsYkcljagCMIDypReAQCFQo+KUtaSCrVTlxOfVsst/QEVbupaaYfx
	KYRJ8ar4sO9kYmr7/nmchPR9GwS0RTbIegwn2yn+XE4z9zMbAT/bTGM3eqpSRQBxZnohP/QlTB+Z
	ayVj03020Dl6XHhFkh3vmu1Ql1uNiJo+GRYZQGxcFxcrkq+IKIlinlm7VgW9/bktU41htiJ8fk7N
	kPOW6bvL9DC431WlF1LxckxMBAJkcsAhDD4OTTRkzMU8wEcoUrOHvmLbp+MuiSjK7XlZf4VXxgrX
	CHsk7sBwEX2MBTSlBW6uKW5DZvolgvhL+FZhCFbntMIjONZbgXVsv/vg7iEFLP+SSY+Av5+AiC4E
	fFp0dHaiNcGN2u6+praaGGAt5riEHBLIXoF4SQ9yPzmTEtsbaHKnw0N+NODM6okXxtfcMda4cwZ8
	rh64tcarXOWTNe7V3DRZwGi/g5L8wA/x3X0BF7Fa0YjOTdIZowOYKBooIIeAsENqHR9V+xuiTyNT
	hLETx3MCX30jzVJuUQCKVEUaai3SkpKNLAI51RCKe72V7y3QDXL8JTpxprEN
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: release management
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
X-List-Received-Date: Tue, 15 Aug 2017 07:58:06 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 14-08-17 21:10, Gunnar Andersson wrote:
>=20
> Hey Russell
>=20
> I don't claim to be an authority on best practices but I will share some
> thoughts.
>=20
> On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:
>> Hello.
>>
>> As I learn more about yocto and more importantly gain practical experien=
ce
>> with it I have started to think about my release structure.  Is there a
>> =E2=80=9Cbest practices=E2=80=9D document or something like that that sp=
eaks to this?
>> For example, how does everyone deal with =E2=80=9Cexternal=E2=80=9D meta=
 layer
>> dependencies?  My software uses poky and meta-openembedded, of course.
>=20
> We simply use a parent project [1] that includes git submodules, one per
> yocto layer.  I'm of the opinion that if git (only) can be used, why
> introduce other tools?   But it requires you to learn and master that
> feature.
>=20

We arrived at exactly the same setup. One parent repository that contains t=
he=20
project-unique recipes, and submodules for the layers it needs.

It's a lot better than attempting to script things. For one thing, git will=
=20
tell you the state of the submodules.

If I rembemer correctly, Android builds use a tool to manage the layer=20
repositories. I didn't much like it though. And "yet another tool"...


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




