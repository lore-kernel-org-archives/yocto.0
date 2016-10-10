Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29B34E007D3; Sun,  9 Oct 2016 21:48:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED7C3E00777
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 21:48:45 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u9A4mhho011694
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 9 Oct 2016 21:48:43 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.3.156]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Sun, 9 Oct 2016 21:48:42 -0700
From: "Hatle, Mark" <mark.hatle@windriver.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] [layerindex-web][PATCH v2 00/12] Add Distro,
	dependency and recommends detection, and import_project
Thread-Index: AQHSIMe3e2R47ubiM0ikS30vJCm/OaChVW8A///MJ5I=
Date: Mon, 10 Oct 2016 04:48:41 +0000
Message-ID: <22009FF1-52AB-447C-9193-C60FFEC966E6@windriver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<16da8ce7-7355-fe97-7abe-20cd3a64e2c7@windriver.com>,
	<2819650.EJqT4j8vUA@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2819650.EJqT4j8vUA@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "Howlett, Liam" <Liam.Howlett@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [layerindex-web][PATCH v2 00/12] Add Distro, dependency and recommends detection, and import_project
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
X-List-Received-Date: Mon, 10 Oct 2016 04:48:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> On Oct 10, 2016, at 2:54 AM, Paul Eggleton <paul.eggleton@linux.intel.com=
> wrote:
>=20
>> On Fri, 07 Oct 2016 13:20:50 Mark Hatle wrote:
>> FYI, I have made sure these are re-based on top of paule/django18 and pu=
shed
>> to:
>>=20
>> git://git.yoctoproject.org/layerindex-web mhatle/django18
>>=20
>> BTW for me upgrading from paule/django18 to this version.  I only had to=
 run
>> 'manage.py syncdb'.
>>=20
>> This created the new database and added the missing field for the recomm=
end.
>=20
> I'm not sure how that worked there but it doesn't work here. If I take a=
=20
> database that works on paule/django18, run syncdb then open the admin=20
> interface and click on "Layer branches" I get:
>=20

We found a severe lack of instructions for creating migrations.  There were=
 instructions for adding and deleting full DBs but not changing them.  We w=
ill need pointers or help to resolve this.

>  no such column: layerindex_layerbranch.collection

I never got that, but I'm also running SQLite.  May be the difference.

> I'm afraid we really do need to create migrations whenever we change the=
=20
> models.

Based on your prior comments we failed to find ANY reasonable examples, doc=
s or instructions on doing this.  So we are stuck without help.

> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

