Return-Path: <matthias.schoepfer@identpro.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C3FBE00CDC; Tue, 27 Mar 2018 02:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.74 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Mar 2018 02:09:50 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A92BFE00CA1
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:09:49 -0700 (PDT)
Received: from SBS-IDENTPRO.intranet.identpro.net ([176.95.137.65]) by
	mrelayeu.kundenserver.de (mreue103 [212.227.15.183]) with ESMTPSA
	(Nemesis)
	id 0LoJRp-1eLNAm0tJZ-00gEml; Tue, 27 Mar 2018 11:04:41 +0200
Received: from SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) by
	SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) with mapi id
	14.01.0438.000; Tue, 27 Mar 2018 11:04:40 +0200
From: =?Windows-1252?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>, Peter Balazovic
	<balazovic.peter@gmail.com>, Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: [yocto] scipy recipe
Thread-Index: AQHTvIcgotqwIFrfW0WRlMSMHcZZhQ==
Date: Tue, 27 Mar 2018 09:04:39 +0000
Message-ID: <C44683C49AD51C4AB28DA746E48E358701062A71@SBS-IDENTPRO.intranet.identpro.net>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<BY2PR02MB3478CD4565AE85F89F611FEB9AD0@BY2PR02MB347.namprd02.prod.outlook.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [176.95.137.65]
MIME-Version: 1.0
X-Provags-ID: V03:K0:X+Td6nkl7gS/LEP9QwXfu/vEI6IfI8h2K9wp78PbmYggUOZcJuC
	4fLHHuzjIIcCRidU6/wdW6SRWDXetGxdsaMvZKOYT5v7iDf47/T31afPw+zXgUrdixM33Gp
	fqqzSxBO9N9GKnqaANFV51pedYpy2bva+xdwbSnFjukH1ZC0zePQDy06g243GtsqXYYaxpG
	AvBW+oFKD5A80QKgS8gdg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:aoRguu4s/ls=:xplPlPUErECNAIhh4c4D4D
	ARdevyI+i5rGGMMo1H/895mDJFdATzabTGKQ+MHs81sCOh6SVCjTYkynRg6CIcAxId/rMqxHq
	KQmFfsY2G05hEK3jCdJ4TZbKl2PXCUgPbRlW1PWW5iAiHvH1InBfa8+ZIVS/7Y5TESH7udULP
	Zy1A3/FghhT000AciV9Ppk0MyA5ipVEDfHbByv/Bge4VirSRUnCvAg2qEW0DNZJe18lL3dcEZ
	Nw9B1KoIjIpvw2yfZSwI2cisQR+DsyjuryuNRkTKsDDmcKAXgF3xU5WoU8zVT1l5skIwg52Q1
	Mi4w1jUaJDjqiXYCF0sD3Ulaq1KBR5WBt8r41QrqcNT5xVNXOPe60JI4aICnWTsSvXTvC6/d1
	o9rqrtQojQFYXXRJepQAX2Isnsk2r+CTB1+kAHngYRh0ev/OYqcYg9juclBs+38DLdmGyrb1c
	D9KsDRKDekga+BnGLQBs/hQMYYPIKpHiRWF8VNHxvk9XTGejZ5o7Uc211zkbzblDZBxMYIxj+
	gLxrIY/lue1CTH4+iH9XEGU/7EQYR/qcEp8QOaJ3dYrskA/Ke3nYH4mi8PSEMUWFT3oBHHBIX
	urNZwagO5CYO2vG6LQZ4mhxvzJFRH5ze6aAtk9WFRfEtwA6xwCTnVPAUI5aLD3CeM3Vm9XyFx
	JdTPxc6QTFwfzNpK4m7sPrucuQYnG+myCLSvDkrvvyj0fRYu3zGS37ob8mhsTZtuYQTHSAWKZ
	OV8Gc59ror/EdqGj40mLAMwwM1yJH7gKoNrUk63KzzBaPIa0ZJ/tpO38CyE=
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
X-List-Received-Date: Tue, 27 Mar 2018 09:09:52 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi!=0A=
=0A=
It turns out that openblas cross compile as I posted it is broken. It=0A=
only works because my "cross-compile" is from amd64 to amd64...=0A=
=0A=
Regards,=0A=
=0A=
	Matthias=0A=
=0A=
On 03/26/2018 10:57 PM, Manjukumar Harthikote Matha wrote:=0A=
> =0A=
>> -----Original Message-----=0A=
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org]=0A=
>> On Behalf Of Matthias Sch=F6pfer=0A=
>> Sent: Friday, March 23, 2018 3:08 AM=0A=
>> To: Peter Balazovic <balazovic.peter@gmail.com>; Yocto-mailing-list=0A=
>> <yocto@yoctoproject.org>=0A=
>> Subject: Re: [yocto] scipy recipe=0A=
>>=0A=
>> Hi Peter,=0A=
>>=0A=
>> I managed to get scipy to cross compile, since I was in a hurry, and hav=
e no deeper=0A=
>> understanding of python / distutils / setuptools, it turned out to be an=
 ugly hack (but=0A=
>> obviously I was not the first one to do ugly things there ;) )=0A=
>>=0A=
>> Maybe you have had some progress as well, and we can figure out a nicer =
solution.=0A=
>>=0A=
>> See the attached files, involving openblas, a bbappend for python-numpy =
and=0A=
>> python-scipy.=0A=
>>=0A=
> =0A=
> Thanks Matthias, will try this out=0A=
> =0A=
> Thanks,=0A=
> Manju=0A=
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

