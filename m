Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8093DE0088A; Wed,  8 Oct 2014 15:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9FF8E00860
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 15:25:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2014 15:24:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,681,1406617200"; d="scan'208";a="482896998"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by azsmga001.ch.intel.com with ESMTP; 08 Oct 2014 15:24:42 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.56]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.86]) with mapi id
	14.03.0195.001; Wed, 8 Oct 2014 15:24:43 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Denys Dmytriyenko <denis@denix.org>, Trevor Woerner
	<trevor.woerner@linaro.org>
Thread-Topic: [yocto] YP documentation survey
Thread-Index: AQHP40Lhlp5BUcHGGUuhQdmxKgkLFZwmxhuQ
Date: Wed, 8 Oct 2014 22:24:42 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E41027@ORSMSX101.amr.corp.intel.com>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
	<CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
	<542EBBF2.3090607@linaro.org> <20141008205630.GN25997@denix.org>
In-Reply-To: <20141008205630.GN25997@denix.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP documentation survey
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
X-List-Received-Date: Wed, 08 Oct 2014 22:25:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Have you ensured that the host system has all the packages needed to build =
the docs?  The section http://www.yoctoproject.org/docs/1.6.1/ref-manual/re=
f-manual.html#required-packages-for-the-host-development-system lists out t=
he requirements needed depending on what you are building and the distro on=
 the host system. =20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Denys Dmytriyenko
>Sent: Wednesday, October 08, 2014 1:57 PM
>To: Trevor Woerner
>Cc: Yocto Project
>Subject: Re: [yocto] YP documentation survey
>
>For me, it fails with:
>
>fop: command not found
>
>Trying to install fop shows me about 100 (!) Java dependencies... Is this
>expected?
>
>--
>Denys
>
>
>On Fri, Oct 03, 2014 at 11:08:34AM -0400, Trevor Woerner wrote:
>>
>> On 09/30/14 14:22, Chris Hallinan wrote:
>> > My only comment: make it easier to build the latest docs from git.  I
>> > seem to always hit errors, and I've seen other posts about that, too.
>> > I just did a quick make DOC=3Dmega-manual on Daisy, and it failed with=
:
>> > "tar: mega-manual.html: Cannot stat: No such file or directory"
>> >
>> > make DOC=3Ddev-manual failed due to missing dependencies, and in the 3=
0
>> > seconds I spent while writing this e-mail, I couldn't figure out what
>> > to install on my U14.04 host to satisfy it.
>> >
>> > I don't have much use/fondness for html docs.  Give me a searchable
>> > PDF any day.
>> >
>>
>> Attached is the little shell script I run right after I run my other
>> shell script that updates all the layer repositories I follow :-)
>>
>> I only build the PDFs and I've never been successful building the mega
>> manual either (pdf, html, or otherwise).
>>
>> Getting the docs to build on my openSUSE system was also a challenge
>> since there are two packages which provide "docbook2x-texi" and I need
>> the _other_ one :-)
>
>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

