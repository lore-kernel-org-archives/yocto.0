Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ADCEE00796
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 09:27:17 -0800 (PST)
Received: by mail-ve0-f176.google.com with SMTP id oz11so1574628veb.21
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 09:27:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=Ybf7d7GM8do16oW3l/AajTvkGfa+aqAaEQ2fPCaPVQU=;
	b=mpLHJK8sjMu+0Fr91A7Utt9rDi/LjBNp5GL+TBB84lQ4ypihnksrph0mp55NQ6KqsS
	BPMCUE1TkRAkHQ1t0RMwL3o0EaUrPXkr0tpUY+QTZ2hmvSZVE2dgyjMBtTzHjE2wKWoh
	wPxL27Ve4laPCMlccm7x6wcsBzAYn6lLsldSm4vG0Lmx2hdgb0IzdRbtvfbQlVymgeFi
	alw+8omlRcTa1fv0ybW3RfOXoxbYVzB3kB+jfKalLUvyTzJ5i2j5869O1EUyUit409F4
	LmPxg60BYf4o6J1B5j9vKImM2t39MZg8bJh+Sk3yylDNtsEraZeJ8Im9C3fR1yQoMroN
	L6MQ==
X-Gm-Message-State: ALoCoQmoTDUYuQARCzpAuEH1sbWWfu+3AOcJmNJdka6QqUd6dDp8rjVPmjLvyZQK3m5d46NhGprd
MIME-Version: 1.0
X-Received: by 10.220.172.129 with SMTP id l1mr213996vcz.75.1386955637000;
	Fri, 13 Dec 2013 09:27:17 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Fri, 13 Dec 2013 09:27:16 -0800 (PST)
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619FB4B41@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPA93Ca1UkiFDgaYt+4zaqna0qsLsG3eiv6eu_cob3tkpA@mail.gmail.com>
	<1FFB62CE8AEB0D4298B51122D8903E9619FB4B41@IRSMSX104.ger.corp.intel.com>
Date: Fri, 13 Dec 2013 17:27:16 +0000
Message-ID: <CAPhnLPC1ZzR3=ZHG5pQ_kffsBptSKUY5uro51c7DhdPGE+6utw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
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
X-List-Received-Date: Fri, 13 Dec 2013 17:27:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,

Yes, DISTRO_VERSION didn't get flipped before the main build and as
folks won't be starting QA until monday, this gives us a chance to
rebuild with the right DISTRO_VERSION and a corrected build-appliance
build (SRCREV for it will be flipped post build and is not required
for it to be built).

-b

On Fri, Dec 13, 2013 at 5:15 PM, Georgescu, Alexandru C
<alexandru.c.georgescu@intel.com> wrote:
> There will be some changes coming in, so please hold testing until next w=
eek when a new build will arrive.
>
> Thanks,
> Alex.
>
> -----Original Message-----
> From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
> Sent: Friday, December 13, 2013 3:56 PM
> To: Georgescu, Alexandru C; yocto@yoctoproject.org; Zhao Yi; Otavio Salva=
dor
> Subject: Status of dylan and dora point releases
>
> All,
>
> With the failures we saw last night on the dylan point release, we're goi=
ng to ask folks to switch QA efforts to the dora point release which should=
 be finished building shortly. The build appliance will be built out of ban=
d in order to fix some autobuilder build issues on it and then added to the=
 rc2 area.
>
> http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2
>
> bitbake     1484905373ad717cedcaef37a0addd
> e034ebdc60
> eclipse-poky-juno     2fa1c58940141a3c547c8790b8a6832167e8eb66
> eclipse-poky-kepler     ad74249895f882a8f00bdeef7a0f7c18998cc43e
> meta-fsl-arm     c7cc5d5f451c9d12df9f11314f4a58ecc347b1f5
> meta-fsl-ppc     b5732aeadc9eb0de933f52d0949412e12f8486bd
> meta-intel     c86e39dd06571458c7dee6cf289d5b470c98f4bd
> meta-minnow     edf75553643face7a0dd5b16085d59a90eb4af8d
> meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
> oecore     d68c267f3387d7fe221d3c5653a66db8b1f78fd8
> poky     7a0033cc4e1f590c5a936671f351a1b251e16726
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

