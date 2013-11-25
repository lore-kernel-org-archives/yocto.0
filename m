Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5BFE0071C
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:59:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2013 09:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,769,1378882800"; d="scan'208";a="414501092"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2013 09:59:04 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 25 Nov 2013 09:59:03 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.67]) with mapi id
	14.03.0123.003; Mon, 25 Nov 2013 09:59:03 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] [PATCH] Documentation: dev manual,	add a reference to
	poky-bleeding distro
Thread-Index: AQHO6gejxBj821AVakGfZZTnTla7/5o2O9uQ
Date: Mon, 25 Nov 2013 17:59:03 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F51390@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311240615540.543@oneiric>
	<3067877.hygbnmzJEU@helios>
In-Reply-To: <3067877.hygbnmzJEU@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Documentation: dev manual, add a reference to poky-bleeding distro
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
X-List-Received-Date: Mon, 25 Nov 2013 17:59:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I can add a caution box after applying the patch.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul Eggleton
>Sent: Monday, November 25, 2013 9:55 AM
>To: Robert P. J. Day
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] [PATCH] Documentation: dev manual, add a reference to
>poky-bleeding distro
>
>On Sunday 24 November 2013 06:18:55 Robert P. J. Day wrote:
>> As an actual example of using AUTOREV, refer the reader to the
>> Yocto-supplied poky-bleeding distribution.
>>
>> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>>
>> ---
>>
>> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
>> b/documentation/dev-manual/dev-manual-common-tasks.xml index
>> 6b60445..fba2484 100644
>> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
>> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
>> @@ -4405,6 +4405,36 @@
>>              is the name of the recipe for which you want to enable
>> automatic source revision updating.
>>          </para>
>> +
>> +        <para>
>> +            In fact, the Yocto Project provides a distribution named
>> +            <filename>poky-bleeding</filename>, whose configuration
>> + file
>> contains +            the line:
>> +            <literallayout class=3D'monospaced'>
>> +     require conf/distro/include/poky-floating-revisions.inc
>> +            </literallayout>
>> +            which pulls in the listed include file that contains
>> + numerous
>> lines of +            exactly that form:
>> +            <literallayout class=3D'monospaced'>
>> +     SRCREV_pn-gconf-dbus ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-common ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-config-gtk ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-desktop ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-keyboard ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-panel ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-panel-2 ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-themes-extra ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-terminal ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-wm ?=3D "${AUTOREV}"
>> +     SRCREV_pn-matchbox-wm-2 ?=3D "${AUTOREV}"
>> +     SRCREV_pn-settings-daemon ?=3D "${AUTOREV}"
>> +     SRCREV_pn-screenshot ?=3D "${AUTOREV}"
>> +     SRCREV_pn-libfakekey ?=3D "${AUTOREV}"
>> +     SRCREV_pn-oprofileui ?=3D "${AUTOREV}"
>> +            </literallayout>
>> +            and so on, allowing the developer to experiment with
>> + building a
>> distribution that +            tracks the latest development source for
>> numerous packages. +            </para>
>>      </section>
>>
>>      <section id=3D'creating-a-read-only-root-filesystem'>
>
>What's missing from this is something like "caution - poky-bleeding is not
>tested on a regular basis, if it breaks you get to keep all of the pieces"
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

