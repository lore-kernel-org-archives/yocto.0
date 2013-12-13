Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D06CE007B0
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 12:10:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2013 12:06:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,481,1384329600"; d="scan'208";a="424394157"
Received: from unknown (HELO [10.255.12.47]) ([10.255.12.47])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2013 12:10:08 -0800
Message-ID: <52AB699F.7060909@linux.intel.com>
Date: Fri, 13 Dec 2013 12:10:07 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	"Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
References: <CAPhnLPA93Ca1UkiFDgaYt+4zaqna0qsLsG3eiv6eu_cob3tkpA@mail.gmail.com>	<1FFB62CE8AEB0D4298B51122D8903E9619FB4B41@IRSMSX104.ger.corp.intel.com>
	<CAPhnLPC1ZzR3=ZHG5pQ_kffsBptSKUY5uro51c7DhdPGE+6utw@mail.gmail.com>
In-Reply-To: <CAPhnLPC1ZzR3=ZHG5pQ_kffsBptSKUY5uro51c7DhdPGE+6utw@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Status of dylan and dora point releases
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
X-List-Received-Date: Fri, 13 Dec 2013 20:10:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2013 09:27 AM, Flanagan, Elizabeth wrote:
> All,
>
> Yes, DISTRO_VERSION didn't get flipped before the main build and as
> folks won't be starting QA until monday, this gives us a chance to
> rebuild with the right DISTRO_VERSION and a corrected build-appliance
> build (SRCREV for it will be flipped post build and is not required
> for it to be built).
>

Please try to complete the build before Sunday your time, so that the 
folks in Asia can start testing on their Monday Morning.

Thanks
	Sau!

> -b
>
> On Fri, Dec 13, 2013 at 5:15 PM, Georgescu, Alexandru C
> <alexandru.c.georgescu@intel.com> wrote:
>> There will be some changes coming in, so please hold testing until next week when a new build will arrive.
>>
>> Thanks,
>> Alex.
>>
>> -----Original Message-----
>> From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
>> Sent: Friday, December 13, 2013 3:56 PM
>> To: Georgescu, Alexandru C; yocto@yoctoproject.org; Zhao Yi; Otavio Salvador
>> Subject: Status of dylan and dora point releases
>>
>> All,
>>
>> With the failures we saw last night on the dylan point release, we're going to ask folks to switch QA efforts to the dora point release which should be finished building shortly. The build appliance will be built out of band in order to fix some autobuilder build issues on it and then added to the rc2 area.
>>
>> http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2
>>
>> bitbake     1484905373ad717cedcaef37a0addd
>> e034ebdc60
>> eclipse-poky-juno     2fa1c58940141a3c547c8790b8a6832167e8eb66
>> eclipse-poky-kepler     ad74249895f882a8f00bdeef7a0f7c18998cc43e
>> meta-fsl-arm     c7cc5d5f451c9d12df9f11314f4a58ecc347b1f5
>> meta-fsl-ppc     b5732aeadc9eb0de933f52d0949412e12f8486bd
>> meta-intel     c86e39dd06571458c7dee6cf289d5b470c98f4bd
>> meta-minnow     edf75553643face7a0dd5b16085d59a90eb4af8d
>> meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
>> oecore     d68c267f3387d7fe221d3c5653a66db8b1f78fd8
>> poky     7a0033cc4e1f590c5a936671f351a1b251e16726
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>
>
>

