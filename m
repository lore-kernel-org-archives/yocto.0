Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6391FE00998; Thu, 23 Apr 2015 02:05:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C3C6E00930
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 02:05:52 -0700 (PDT)
Received: by pabsx10 with SMTP id sx10so12940390pab.3
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 02:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=9Gq3phYFZ7HLXGc3JHwDTh7RZ+aZb9PjAGokl3EISnU=;
	b=eFM4UaevJmuAta5+VbVm6nyXDK3XsPkVk9bEP5GZEC2uZGW+0Flu5g+BiTYsGHwn7D
	m8MCG/+yFpiuJ1gHwta9wsEX5vac7h8k6wSdS32djsocKrukOSvjborfL5BU83v+8g17
	4/6T7RjhhqA2AZ883v1pRnJLDTMDOsUWOotH/QU5Y5QORq+NAsvRfS3drB4Io7Deo6SF
	lyZ0gGAMlx9o4PtZkoxoU9tvCmDeF5PZWpKo+Jfyf5N32bncjIpC2loTIubK3nckN/PO
	Q+J9c0AWFD09YLYYXublOH5w0E8nSxuyG/9dOgrZ2xGjo7l8OzO5sf0kN2vQMLR36a9b
	Lpgg==
X-Received: by 10.70.134.133 with SMTP id pk5mr3359167pdb.133.1429779951850;
	Thu, 23 Apr 2015 02:05:51 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:19ef:2e02:c3b0:b4fc?
	([2601:9:3580:84c:19ef:2e02:c3b0:b4fc])
	by mx.google.com with ESMTPSA id b10sm7453774pdj.0.2015.04.23.02.05.50
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 Apr 2015 02:05:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3464582.nUN1vsFaMq@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 23 Apr 2015 02:05:49 -0700
Message-Id: <C4E8D5D0-DE13-4CA9-8B80-7291F39B3E29@gmail.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1508758.Rhv2PmRKWu@peggleto-mobl.ger.corp.intel.com>
	<F77E520E-C779-436E-B54F-F34D4D4561BE@gmail.com>
	<3464582.nUN1vsFaMq@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Thu, 23 Apr 2015 09:05:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Apr 23, 2015, at 1:45 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> On Wednesday 22 April 2015 23:49:41 Khem Raj wrote:
>>> On Apr 22, 2015, at 4:22 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com>
>>> wrote:>=20
>>> On Wednesday 22 April 2015 20:51:08 Brian Karcz wrote:
>>>> Thanks for pointing me to that. It sounds like exactly what I need. =
I
>>>> can't believe that I've not come across that in my searches. I =
suppose
>>>> its a matter of using the right search criteria.
>>>=20
>>> So I do want to mention one thing - we envisaged externalsrc more =
for
>>> situations where you temporarily want to build from an external =
source
>>> tree (for example, when you're in the middle of development). The
>>> expectation is that when you reach production you switch over to a
>>> standard repository
>>> specified in SRC_URI. Having said that there aren't any actual =
barriers to
>>> using it on a more permanent basis as it sounds like you may  be
>>> considering (although perhaps I've misunderstood.)
>>=20
>> Application development doesn=E2=80=99t end is what really happens, =
so developers
>> will need to keep using something like this forever on a given =
application,
>> and somehow externalsrc sounds temporary i.e. not included into =
regular
>> workflow.
>=20
> But does the source tree persist on one developer's machine? Or should =
it in=20
> fact be on a proper server in a repository of its own?

its on a SCM as well. Developer checks it out himself or via a tool for =
workspace management
now you have two ways to build it. One w/o externalsrc which is common =
for system integrators
but not much liked by developers. The other one is externalsrc which is =
well known method
for developers.

>=20
>>>> 2) can the SRC_URI now be omitted in the recipe since there is =
nothing to
>>>> fetch?
>>>=20
>>> You can leave it completely blank if you wish. In dizzy and earlier,
>>> SRC_URI is effectively ignored with externalsrc. In master and the
>>> just-released fido release, any local file:// references will still =
be
>>> fetched if present, remote URIs will be ignored.
>>=20
>> Will they be just fetched or also applied to source tree like in
>> non-externalsrc case. getting a  'prepared source tree' in an =
externalsrc
>> env is a big confusion point for developers where a given component =
is
>> building totally fine and if one want to use externalsrc then =
developer
>> needs to do =E2=80=98preparation of source tree=E2=80=99, so it seems =
post 1.7 we have
>> something inbetween solution ?
>=20
> They will be unpacked into the workdir as they would have been without=20=

> externalsrc. They do not go into the source tree.

hmm, it will then get my patches and put them in workdir, so then I =
should manually apply these patches
I see that if i have any config files etc. ( non-patch files) in SRC_URI =
ponting into local meta-data then they
will be available at WORKDIR location much like the case w/o externalsrc =
so thats probably slight improvemnt


