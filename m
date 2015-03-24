Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0EA7E0091D; Tue, 24 Mar 2015 15:15:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14279E008D4
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 15:15:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 24 Mar 2015 15:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,460,1422950400"; d="scan'208";a="685065788"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga001.fm.intel.com with ESMTP; 24 Mar 2015 15:15:14 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.237]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.03.0195.001; Tue, 24 Mar 2015 15:15:13 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: Randy Witt <randy.e.witt@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  nightly-world-lsb.conf: Do world builds for poky-lsb
Thread-Index: AQHQZntu4I23WsHPzkSm8XktTyTJep0sodsA//+RK4A=
Date: Tue, 24 Mar 2015 22:15:12 +0000
Message-ID: <D1372FDE.4D2F0%tracy.graydon@intel.com>
References: <1427236868-26847-1-git-send-email-tracy.graydon@intel.com>
	<5511DC78.6010005@linux.intel.com>
In-Reply-To: <5511DC78.6010005@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.7.200.117]
MIME-Version: 1.0
Subject: Re: nightly-world-lsb.conf: Do world builds for poky-lsb
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
X-List-Received-Date: Tue, 24 Mar 2015 22:15:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <59D7C5B48C9A18408ACE2AB510A1CD42@intel.com>
Content-Transfer-Encoding: quoted-printable

Crap. You are right. There is a change in here that shouldn=B9t be. Fixing
that.=20

Thank you for catching that. I was on the wrong local branch.

-t

On 03/24/15, 2:51 PM, "Randy Witt" <randy.e.witt@linux.intel.com> wrote:

>On 03/24/2015 03:41 PM, Graydon, Tracy wrote:
>> [YOCTO #7261]
>>
>> Do world builds for poky-lsb. This patch adds the new nightly-world-lsb
>>buildset
>> to fix bug #7261. Also added it to the normal nightly.conf trigger
>> and yoctoAB.conf.
>>
>> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
>> ---
>>   buildset-config.controller/nightly-world-lsb.conf | 22
>>++++++++++++++++++++++
>>   buildset-config.controller/nightly.conf           |  4 +---
>>   buildset-config.controller/yoctoAB.conf           |  6 +++---
>>   3 files changed, 26 insertions(+), 6 deletions(-)
>>   create mode 100644 buildset-config.controller/nightly-world-lsb.conf
>>
>> diff --git a/buildset-config.controller/nightly-world-lsb.conf
>>b/buildset-config.controller/nightly-world-lsb.conf
>> new file mode 100644
>> index 0000000..e9782a9
>> --- /dev/null
>> +++ b/buildset-config.controller/nightly-world-lsb.conf
>> @@ -0,0 +1,22 @@
>> +[nightly-world-lsb]
>> +builders: 'example-worker'
>> +repos: [{'poky':
>> +            {'repourl':'git://git.yoctoproject.org/poky',
>> +             'layerversion':{'core':'meta',
>>'yoctobsp':'meta-yocto-bsp'},
>> +             'branch':'master'}},
>> +        {'meta-qt3':
>> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
>> +             'branch':'master'}}]
>> +steps: [{'SetDest':{}},
>> +        {'CheckOutLayers': {}},
>> +        {'RunPreamble': {}},
>> +        {'GetDistroVersion' : {'distro': 'poky'}},
>> +        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' :
>>'x86_64',
>> +                            'buildhistory' : False, 'multilib': True,
>> +                            'distro': 'poky-lsb'}},
>> +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>> +        {'BuildImages': {'images': 'world'}},
>> +        {'SendErrorReport': {}},
>> +        {'UploadToasterEventlog': {}},
>> +        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
>> +
>> diff --git a/buildset-config.controller/nightly.conf
>>b/buildset-config.controller/nightly.conf
>> index e8498f1..e422ede 100644
>> --- a/buildset-config.controller/nightly.conf
>> +++ b/buildset-config.controller/nightly.conf
>> @@ -75,10 +75,8 @@ steps: [{'SetDest':{}},
>>           {'BuildImages': {'images': 'universe -c fetch'}},
>>           {'TriggerBuilds': {'schedulerName': 'main-build',
>>'waitForFinish': 'True',
>>                              'schedulerNames': {'minnow': {},
>>'minnow-lsb': {},
>> -                           'nightly-arm': {}, 'nightly-arm-lsb': {},
>>                              'nightly-fsl-arm': {},
>>'nightly-fsl-arm-lsb': {},
>>                              'nightly-fsl-ppc': {},
>>'nightly-fsl-ppc-lsb': {},
>> -                           'nightly-mips': {}, 'nightly-mips-lsb': {},
>
>I'll admit that I'm not that familiar with the autobuilder, but this
>looks like=20
>some builds are being turned off, but the commit message doesn't mention
>that.
>
>>                              'nightly-multilib': {}, 'nightly-x32': {},
>>                              'nightly-ppc': {}, 'nightly-ppc-lsb': {},
>>                              'nightly-x86-64': {},
>>'nightly-x86-64-lsb': {},
>> @@ -87,7 +85,7 @@ steps: [{'SetDest':{}},
>>                              'schedulerNames_nowait' :
>>{'build-appliance': {},
>>                              'eclipse-plugin-kepler': {},
>>'eclipse-plugin-juno': {},
>>                              'nightly-non-gpl3': {}, 'nightly-oecore':
>>{},
>> -                           'nightly-world':{}, 'nightly-intel-gpl': {},
>> +                           'nightly-world':{}, 'nightly-world-lsb':{},
>>'nightly-intel-gpl': {},
>>                              'poky-tiny': {}, 'buildtools': {},
>>                              'nightly-qa-systemd': {},
>>'nightly-qa-extras': {},
>>                              'nightly-qa-logrotate': {},
>>'nightly-qa-pam': {},
>> diff --git a/buildset-config.controller/yoctoAB.conf
>>b/buildset-config.controller/yoctoAB.conf
>> index 9a07512..c087628 100644
>> --- a/buildset-config.controller/yoctoAB.conf
>> +++ b/buildset-config.controller/yoctoAB.conf
>> @@ -1,10 +1,10 @@
>>   [BuildSets]
>>   order: ['nightly', 'eclipse-plugin-juno',
>>           'eclipse-plugin-kepler', 'eclipse-plugin-luna',
>> -        'nightly-arm', 'nightly-arm-lsb', 'nightly-mips',
>> -        'nightly-mips-lsb', 'nightly-ppc', 'nightly-ppc-lsb',
>> +        'nightly-ppc', 'nightly-ppc-lsb',
>>           'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
>>           'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
>> -        'nightly-world', 'nightly-non-gpl3', 'nightly-oecore',
>> +        'nightly-world', 'nightly-world-lsb',
>> +        'nightly-non-gpl3', 'nightly-oecore',
>>           'nightly-intel-gpl', 'poky-tiny', 'build-appliance',
>>           'nightly-qa-extras', 'nightly-qa-systemd']
>>
>


