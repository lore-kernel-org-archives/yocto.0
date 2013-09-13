Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 186A4E0154E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 02:49:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2013 02:46:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,897,1371106800"; d="scan'208";a="377641724"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2013 02:49:00 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.226]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.234]) with mapi id
	14.03.0123.003; Fri, 13 Sep 2013 10:47:00 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Diego Gonzalez <diego.gonzalez@horus.es>
Thread-Topic: [yocto] Hob Question
Thread-Index: AQHOsGYv1mf81nrQHECa8SGdQJfg0Q==
Date: Fri, 13 Sep 2013 09:47:00 +0000
Message-ID: <CE589A64.32899%belen.barros.pena@intel.com>
In-Reply-To: <1379001602144053500@horus.es>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.237.224.163]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob Question
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
X-List-Received-Date: Fri, 13 Sep 2013 09:49:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <9F0A1A327EDE2B42AA6C9DA1E338D5FA@intel.com>
Content-Transfer-Encoding: quoted-printable

On 12/09/2013 17:00, "Diego Gonzalez" <diego.gonzalez@horus.es> wrote:

>Hola Bel=E9n,
>
>Thank you for your answer! You assumed wrong , I'm building with Yocto
>Project Dylan release, so I think that's why I can't see the button...
>However I have a newbie question . What is the difference between Dylan
>and Master branch ?

Dylan is the latest stable release of the Yocto Project:

https://www.yoctoproject.org/downloads

Master is the Git branch where active development takes place, which you
can clone from:

http://git.yoctoproject.org/git/poky


I hope this explains,

Bel=E9n

>
>Saludos,
>
>
>
>Diego Gonz=E1lez Gonz=E1lez
>Dpto. de Control Industrial
> =

>HORUS HARDWARE S.A.
>Pol Ind Europolis C/Berna n=BA4
>28232 Las Rozas de Madrid
>diego.gonzalez@horus.es <mailto:enrique.fernandez@horus.es>
>
>
>
>On Thu, 09/12/2013 05:01 PM, "Barros Pena, Belen"
><belen.barros.pena@intel.com> wrote:
>
>On 12/09/2013 12:03, "Diego Gonzalez" <diego.gonzalez@horus.es> wrote:
>
>>Hello,
>
>Hola Diego
>
>>
>>I just read this blog
>>https://www.yoctoproject.org/blogs/belenbarrospena/2013/saving-your-hob-c
>>u
>>stomised-builds-image-recipes , which explains how to save your hob
>>customized images . However when it finished to build my image I can't
>>save it because there's
>> not Save Image recipe button. How I can save it? Why I can't see this
>>button?
>
>I am assuming you are building with the Yocto Project master branch: the
>feature is not available on the Dylan release.
>
>If you are, the 'Save image recipe' button will display only when you edit
>the Yocto Project image recipe you are starting from (I.e. If you add
>/remove some packages to / from it). If you build one of the Yocto Project
>image recipes as they come, without making any changes to the package
>list, the save option will not show.
>
>If you are changing the package list and still cannot see the save option,
>something is not working as it should. Can I ask you to open a bug if
>that's the case? You can do so at
>http://bugzilla.yoctoproject.org/ <http://bugzilla.yoctoproject.org/>
>
>Saludos,
>
>Bel=E9n
>
>>
>>
>>Diego Gonz=E1lez Gonz=E1lez
>>Dpto. de Control Industrial
>> =

>>HORUS HARDWARE S.A.
>>Pol Ind Europolis C/Berna n=BA4
>>28232 Las Rozas de Madrid
>>diego.gonzalez@horus.es <enrique.fernandez@horus.es>
>>
>>
>
>---------------------------------------------------------------------
>Intel Corporation (UK) Limited
>Registered No. 1134945 (England)
>Registered Office: Pipers Way, Swindon SN3 1RJ
>VAT No: 860 2173 47
>
>This e-mail and any attachments may contain confidential material for
>the sole use of the intended recipient(s). Any review or distribution
>by others is strictly prohibited. If you are not the intended
>recipient, please contact the sender and delete all copies.
>
>
>
>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


