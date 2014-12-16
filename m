Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CD42E00752; Tue, 16 Dec 2014 12:14:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B21E003AB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:14:24 -0800 (PST)
Received: by mail-vc0-f175.google.com with SMTP id hy10so6773180vcb.34
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:14:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=sigf3ywxvRht+t0mSRl3jSKaWsBXic9bLFD9SlfT9B4=;
	b=JSzZC9eyfVVM60RWd9MC1KF5XT3THsYp2Loiay1q2mz2h8zFJM8gybRyWK6fC0ezFQ
	TBrGkx14SpdRPFPLtqVH9f8x5bNZWWmAo7QEkhJuq8anJWYS3o5BDhaoK1xiqvyRSTi1
	X1Uslhgdmw1XcyN/tpWEDxk5xLDKAjCne6UY/FhLfSYgE1EBgZC1K/IR81zUKbzUAmt0
	LIYj2sUn6GM1htroNEYKV0Ov6bRg4HEGuyf5nlsQNwldqjGwFiTQrqltbfZuEhlXaPQf
	im/jgnCF0W11vwXS0xFLNqEaXexcjBapNz2aTOumblD67pF3i9tPM7zDM7Vhm482N7ho
	6EQw==
X-Gm-Message-State: ALoCoQkiXvnsdd/NfXm6XGWmTJmxA7XKadSt/jYvhZstXybD14Lh5GykCSTI5ZBu7c17fFsesR6b
MIME-Version: 1.0
X-Received: by 10.52.135.43 with SMTP id pp11mr20258651vdb.11.1418760863840;
	Tue, 16 Dec 2014 12:14:23 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Tue, 16 Dec 2014 12:14:23 -0800 (PST)
In-Reply-To: <7686657984f84a938af3bdb15ef65992@BY2PR05MB048.namprd05.prod.outlook.com>
References: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
	<40cfd0ca83f94c9eb826ab2573d41453@BLUPR05MB037.namprd05.prod.outlook.com>
	<7686657984f84a938af3bdb15ef65992@BY2PR05MB048.namprd05.prod.outlook.com>
Date: Tue, 16 Dec 2014 20:14:23 +0000
Message-ID: <CAPhnLPDmOXvFJzwPri-p0DY1iwWZPBqb-WdD4qmAH+GRmcB5tg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autobuilder: How to set PREMIRRORS?
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
X-List-Received-Date: Tue, 16 Dec 2014 20:14:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2014-11-19 15:12 GMT+00:00 Bryan Evenson <bevenson@melinkcorp.com>:
> All,
>
> I'm getting close to implementing this feature, but I'm having some issue=
s getting auto.conf formatted correctly.  See below.
>
>> -----Original Message-----
>> From: Bryan Evenson
>> Sent: Monday, November 17, 2014 9:08 AM
>> To: Bryan Evenson; yocto@yoctoproject.org; elizabeth.flanagan@intel.com
>> Subject: RE: autobuilder: How to set PREMIRRORS?
>>
>> All,
>>
>> After looking through the autobuilder code, I don't see anywhere in whic=
h
>> PREMIRRORS can be set and used.  I see in CreateAutoConf.py that
>> PREMIRRORS is always set to "".  I don't think it'd be that difficult to=
 add
>> PREMIRRORS as a CreateAutoConf parameter for the buildsets.  I can work
>> on the change and submit the patch.  But before I start I have a few
>> questions:
>>
>> 1. I plan on implementing the PREMIRRORS parameter as an array, similar =
to
>> 'layerdirs' for CreateBBLayersConf.  For example:
>>
>> {'CreateAutoConf' : {'PREMIRRORS' : ['git://.*/.*
>> http://our/local/mirror/path/mirror/sources/ ',
>>       'ftp://.*/.* http://our/local/mirror/path /mirror/sources/ ',
>>       'http://.*/.* http://our/local/mirror/path/mirror/sources/ ',
>>       'https://.*/.* http://our/local/mirror/path/mirror/sources/ ']}
>>
>> would add the following to auto.conf:
>>
>>  PREMIRRORS =3D 'git://.*/.* http://our/local/mirror/path/mirror/sources=
/  \
>>       ftp://.*/.* http://our/local/mirror/path /mirror/sources/  \
>>       http://.*/.* http://our/local/mirror/path/mirror/sources/  \
>>       https://.*/.* http://our/local/mirror/path/mirror/sources/ '
>>
>> Does this sound reasonable, or would a different parameter format be
>> preferred?
>

I would actually do this similar to how we have DEVKERNEL_MUT_REPO.

PREMIRRORS =3D ['git://.*/.*
http://our/local/mirror/path/mirror/sources/', 'ftp://.*/.*
http://our/local/mirror/path /mirror/sources/', 'http://.*/.*
http://our/local/mirror/path/mirror/sources/', 'https://.*/.*
http://our/local/mirror/path/mirror/sources/']

> I am trying to add a single PREMIRROR using the syntax I specified above.=
  At this time it is getting inserted in auto.conf.  However, the system is=
 going into an infinite loop building the PREMIRROR path.  The added conten=
t to auto.conf at this time looks like:
>
> PREMIRRORS =3D " \
> http://.*.* http://server.repo.local/mirror/sources/ \n \
> "
>
> And from looking at log.do_fetch for the package that attempts to use the=
 PREMIRROR, the log is filled with "server.repo.localserver.repo.localserve=
r.repo.local" repeating.  Any tips on how PREMIRRORS should be built?
>
> Here's what I have so far in CreateAutoConf.py:
>
>             self.PREMIRRORS=3D""
>             fout =3D fout + 'PREMIRRORS =3D " \ \n'
>             if list(self.PREMIRRORS):
>                 for premirror in self.PREMIRRORS:
>                     fout =3D fout + premirror + ' \\\\n \ \n'
>             fout =3D fout + '" \n'
>
> Any tips on how to change things so PREMIRRORS is correctly parsed?
>

#make sure you add
#
#export PREMIRRORS=3D""
# to yocto-autobuilder-setup

if os.environ.get('PREMIRRORS') is not None:
    premirrors=3Dast.liternal_eval(os.environ.get('PREMIRRORS').encode('utf=
-8')
    fout =3D+ 'PREMIRRORS =3D "\ \n'
    for mirror in premirrors:.....

I think this should do what you're looking for.

> Thanks,
> Bryan
>

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

