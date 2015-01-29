Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30D09E00827; Thu, 29 Jan 2015 02:06:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1D25FE006EF
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 02:06:52 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Thu, 29 Jan 2015 11:06:46 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: akuster <akuster@mvista.com>, "Damian, Alexandru"
	<alexandru.damian@intel.com>
Thread-Topic: [yocto] HEADSUP - CVE 2015-023 remote code execution in glibc
Thread-Index: AQHQOuw8q9XqIn5r00ajvNHhnjlpAZzVoUuAgAE7ebA=
Date: Thu, 29 Jan 2015 10:06:46 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48258537D9@SESTOEX04.enea.se>
References: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
	<54C9084F.30609@mvista.com>
In-Reply-To: <54C9084F.30609@mvista.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: HEADSUP - CVE 2015-023 remote code execution in glibc
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
X-List-Received-Date: Thu, 29 Jan 2015 10:06:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> Subject: Re: [yocto] HEADSUP - CVE 2015-023 remote code execution in glib=
c
> Alexandr,
> On 01/28/2015 03:17 AM, Damian, Alexandru wrote:
>> More details
>>
>>http://www.openwall.com/lists/oss-security/2015/01/27/9
>>
>> redhat bug and patch
>>
>>https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-0235
>>
>> Do we need to open a bug to track this ?
>    I am working on patches already. if you opened a bug, please send me t=
he #.
> - Armin

Hi guys,

I opened a bug for this yesterday, (Bug 7258 - glibc: __nss_hostname_digits=
_dots() heap-based buffer overflow (CVE-2015-0235)) but closed it since thi=
s doesn't affect us.
=20
There is another glibc issue (CVE-2013-7423?) being discussed,  I think thi=
s is also fixed in 2.20.

<solardiz> glibc "getaddrinfo() writes DNS queries to random file descripto=
rs under high load" https://sourceware.org/bugzilla/show_bug.cgi?id=3D15946=
 "Fixed in 2.20"

//Sona

