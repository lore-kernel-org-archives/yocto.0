Return-Path: <matthias.schoepfer@identpro.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9A41E007DA; Mon, 26 Mar 2018 01:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9BCAE00708
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 01:22:38 -0700 (PDT)
Received: from SBS-IDENTPRO.intranet.identpro.net ([176.95.137.65]) by
	mrelayeu.kundenserver.de (mreue001 [212.227.15.167]) with ESMTPSA
	(Nemesis) id 0LhoIM-1eENPb1XXu-00n8Wi for <yocto@yoctoproject.org>;
	Mon, 26 Mar 2018 10:22:37 +0200
Received: from SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) by
	SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) with mapi id
	14.01.0438.000; Mon, 26 Mar 2018 10:22:32 +0200
From: =?Windows-1252?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: [yocto] scipy recipe
Thread-Index: AQHTvIcgotqwIFrfW0WRlMSMHcZZhQ==
Date: Mon, 26 Mar 2018 08:22:31 +0000
Message-ID: <C44683C49AD51C4AB28DA746E48E35870101CEBA@SBS-IDENTPRO.intranet.identpro.net>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<531bef5a-d363-a751-29fa-4bd9872020ec@balister.org>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [176.95.137.65]
MIME-Version: 1.0
X-Provags-ID: V03:K0:hpbixIBYc2st8Un5IDBHS8BAyDeNtW9wNVBaTgZpUlK2EjGyMvb
	csKdmJIg1pT2tZhjyuqDhScSgB45BVT5/pU4W8PF2rLNSA35LIzFYfWqIV3S7EmpubCNiar
	u+Ko+9eSUdBGZSGehEVBO1vvcFX916yYlwWTaG1vpVbd+hJKfiLiuAD2Fz5l90Af2R6x8s1
	0hAiEjgBKwqQkyxYw5fZA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:gEp9a/yN5vY=:IpDUVar28iFz10ownzG2ee
	2DNEq81moVISDhwKngyvaEKs+vAoFSLQGu+bCUD+46OczOxLz2PmLj4jzEmiCCl/G0rgbEyCY
	PaJIpvDNFhZDBYbU5WKonM4HYSYcEbYokXJbIMQlv6Iv19ahZonyNrnnWpZu6I9rQDEuRKgTr
	Zxup2ikUpjZJRMYtzDsiviuNY/mHAYmzqgvypOBKEELeWIACs3GQZLDqWP/lzryf9P/t1GK3q
	f1YlglsvfZhtA6U8nmR6ldctxOgWiYr6JHmO98QHHhcB+IFu3h2/gMyrBAuR/h7FZpuEwmMrQ
	4p2d+FwOipvyEbYFdWtS9qV6qpLgw8dJ6l0kinB+1q2HRyMGwU79nMc+jCqntqSgpF7e7yMEU
	2aFnAJQirczyhmUySjvf75ST4Gzd6VKA1tV/4UDlTqIzHe7iNneQTBVK7AjS/TG7Je/FXVL+j
	tZYigCqmbDlKh+Y6LeVoPAV3Qt4f8hmc+emj0xqliabkzbJ5s671nRvZVw5AZgTNT5h2Nq3tV
	3q6R6ZkhxKig9w1KDfkYXqmdHL0jpio8WdoFLGt19f1yQtoOjd3yMsku75xe0gOoGdfXedEwa
	v1PTvXRVB3yH+AW5R2elyAParHOH4UyVIiOQNHbax6v58YVBnx5Fe4EHsyUQVeVJVmEOQ/x6e
	yEGCuFISBWEUN+FvZHiHYr4VwhLdKyJDmyR/hvupMs2JW2G5PzMUt6o2VuGJJpuIEqCCsL0A1
	pjVXzp0DM2cXBqCnjwJ9/Gp4x+DjMFeuHNBHe5gVTYIh1E8ilBytsZGjPLg=
Subject: Re: scipy recipe
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
X-List-Received-Date: Mon, 26 Mar 2018 08:22:39 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Philip,=0A=
=0A=
I needed to patch numpy because scipy uses numpy.distutils a lot.=0A=
=0A=
Regards,=0A=
=0A=
	Matthias=0A=
=0A=
On 03/24/2018 05:48 PM, Philip Balister wrote:=0A=
> On 03/23/2018 06:07 AM, Matthias Sch=F6pfer wrote:=0A=
>> Hi Peter,=0A=
>>=0A=
>> I managed to get scipy to cross compile, since I was in a hurry, and=0A=
>> have no deeper understanding of python / distutils / setuptools, it=0A=
>> turned out to be an ugly hack (but obviously I was not the first one to=
=0A=
>> do ugly things there ;) )=0A=
>>=0A=
>> Maybe you have had some progress as well, and we can figure out a nicer=
=0A=
>> solution.=0A=
>>=0A=
>> See the attached files, involving openblas, a bbappend for python-numpy=
=0A=
>> and python-scipy.=0A=
> =0A=
> I'm confused why you need the bbappend for numpy?=0A=
> =0A=
> The recipe in OE-Core should be solid without patches.=0A=
> =0A=
> Other than that, this is very interesting stuff.=0A=
> =0A=
> Philip=0A=
> =0A=
> =0A=
>>=0A=
>> Regards,=0A=
>>=0A=
>> 	Matthias=0A=
>>=0A=
>>=0A=
>>=0A=
> =0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Dr.-Ing. Matthias Sch=F6pfer=0A=
=0A=
Softwareentwicklung=0A=
=0A=
____________________________________=0A=
=0A=
IdentPro GmbH=0A=
Camp-Spich-Str. 4=0A=
53842 Troisdorf=0A=
=0A=
Tel:   +49 (0)2241 / 866 392 46=0A=
Fax:   +49 (0)2241 / 866 392 99=0A=
eMail: matthias.schoepfer@identpro.de=0A=
=0A=
http://www.identpro.de=0A=
=0A=
identplus=AE =96 Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.=
=0A=
=FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen Sie das=
=0A=
Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrechner.=0A=
=0A=
identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
=0A=
---------------------------------=0A=
IdentPro GmbH=0A=
Member of Dr. Wack Holding GmbH & Co.KG=0A=
Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
Gesch=E4ftsf=FChrer: Michael Wack=0A=
Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
WEEE-Reg.-Nr. DE 79026890=0A=

