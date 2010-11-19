Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64A704C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 17:07:34 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAJN7XTB029582
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 19 Nov 2010 15:07:33 -0800 (PST)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.113]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Fri, 19 Nov 2010 15:07:33 -0800
From: "deVries, Alex" <Alex.deVries@windriver.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] Documenting Poky dependencies
Thread-Index: AQHLhx07h7LNHXVktEOCWz4S7qlj1JN4PWKAgAEH44CAAKzLAIAAAueA
Date: Fri, 19 Nov 2010 23:07:32 +0000
Message-ID: <BC66F996-0C01-4929-96C4-C738A09E5BC3@windriver.com>
References: <1290083764.2487.24.camel@scimitar>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BC73A014@orsmsx501.amr.corp.intel.com>
	<1290170323.9343.8.camel@scimitar> <4CE700C4.3070403@linux.intel.com>
In-Reply-To: <4CE700C4.3070403@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.144.184]
MIME-Version: 1.0
Cc: Joshua Lock <joshua.lock@intel.com>,
	"<yocto@yoctoproject.org>" <yocto@yoctoproject.org>
Subject: Re: Documenting Poky dependencies
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Nov 2010 23:07:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <74F4F8FB5D7BE3429B2A6823117F909A@corp.ad.wrs.com>
Content-Transfer-Encoding: quoted-printable


I have a couple of things to say on this topic.

First, swabber is intended to generate a list of packages that were used in=
 build.  So by profiling a build, you should know what packages you used fr=
om the host, and what built native/target packages required them.  You may =
consider using that as input to whatever user-oriented document that is bei=
ng created.=20

Swabber currently generates such a list that can easily be fed into an auto=
mated host package checking tool (which we have as part of Wind River Linux=
).

Swabber lets you create white and black lists, as well as file filters.  Th=
is helps you highlight dangerous packages, and not bother listing the obvio=
us requires (eg. glibc).  The lists are per-distribution and generic.

Also, host package dependencies should ultimately be per-package.  For inst=
ance, you could require everyone to require all the tools needed to build a=
ll of X, but it'd be better that you'd only need to install those packages =
if you were actually building X.  That would mean adding meta data to the e=
xisting recipes that would say what host packages are required.

There are other issues with how to support different distributions.  This c=
an be difficult because of package naming and matching files to packages. I=
 have some ideas on how to do this, but it is still a bit early.

- Alex



On 2010-11-19, at 5:57 PM, Darren Hart wrote:

> On 11/19/2010 04:38 AM, Joshua Lock wrote:
>> On Thu, 2010-11-18 at 12:54 -0800, Stewart, David C wrote:
>>> Thanks for doing this!
>>>=20
>>> Some ScottR ARs below.
>>>=20
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>> bounces@yoctoproject.org] On Behalf Of Joshua Lock
>>>> Sent: Thursday, November 18, 2010 4:36 AM
>>>>=20
>>>> Hi all,
>>>>=20
>>>> I've been thinking about the issue of documenting Poky's dependencies =
in
>>>> the handbook.
>>>> At the moment the handbook includes a list of required packages and th=
en
>>>> explicitly lists commands to install those packages on Ubuntu.
>>>>=20
>>>> What I'd like to propose is that we list the required dependencies in
>>>> the handbook and then link to a wiki page where we can list explicit
>>>> instructions for various distributions.
>>>>=20
>>>> This allows us to document the process for as many distributions as
>>>> possible without cluttering the handbook. An alternative would be to a=
dd
>>>> this to an appendix but I quite like the idea of people being able to
>>>> edit and add to this information without having to use git.
>=20
> That makes sense, although keeping current Ubuntu and Fedora doesn't take=
 much space and saves some large percentage (90%?) of our userbase from hav=
ing to follow one-more-link to get the required steps.
>=20
> I'd also like to see the sanity checker do a better job at listing packag=
e names rather than command names in a format that can be copy and pasted i=
nto an aptitude or yum install command. If done right, this would basically=
 eliminate the need for any explicit list in the documentation.
>=20
> --=20
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


