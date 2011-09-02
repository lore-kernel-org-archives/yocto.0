Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07093E00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 12:29:35 -0700 (PDT)
Received: from mail162-ch1-R.bigfish.com (216.32.181.173) by
	CH1EHSOBE010.bigfish.com (10.43.70.60) with Microsoft SMTP Server id
	14.1.225.22; Fri, 2 Sep 2011 19:29:33 +0000
Received: from mail162-ch1 (localhost.localdomain [127.0.0.1])	by
	mail162-ch1-R.bigfish.com (Postfix) with ESMTP id 1110412A02F2;
	Fri,  2 Sep 2011 19:29:33 +0000 (UTC)
X-SpamScore: -20
X-BigFish: VS-20(zzbb2dK9371K1b0bM1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail162-ch1 (localhost.localdomain [127.0.0.1]) by mail162-ch1
	(MessageSwitch) id 1314991772528719_6899;
	Fri,  2 Sep 2011 19:29:32 +0000 (UTC)
Received: from CH1EHSMHS022.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.243])	by mail162-ch1.bigfish.com (Postfix) with ESMTP id
	73E5819C0051;	Fri,  2 Sep 2011 19:29:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS022.bigfish.com
	(10.43.70.22) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 2 Sep 2011 19:29:31 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.002; Fri, 2 Sep 2011 14:29:30 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] RPM multilib package installation issue
Thread-Index: AQHMaYaVWl4p2YpWqEiD6/aZWrPpipU6kD2AgAAKGgCAAAyoAIAAGAAAgAAFswCAAAk5gA==
Date: Fri, 2 Sep 2011 19:29:29 +0000
Message-ID: <CAEsOVNepquHxYUJGFE9DVZ+9-SvmQQNEjamSuh50JasQf1ETVg@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
	<4E60FAC3.5030100@windriver.com>
	<CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
	<4E610DDA.9040701@windriver.com>
	<CAEsOVNczt5gLjp_FoF_voMbwSJ1ft8TNz5hdQvheQ20Lo3Sq0Q@mail.gmail.com>
	<4E6126C4.5020303@windriver.com>
In-Reply-To: <4E6126C4.5020303@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Sep 2011 19:29:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <74B1B8935D740643A9731AACCEAEC2DF@freescale.net>
Content-Transfer-Encoding: quoted-printable

FYI: ipkg appears to work fine if you have
MULTILIB_IMAGE_INSTALL and MULTILIB_PACKAGE_ARCH set.

Will file a bug shortly.

-M

On Fri, Sep 2, 2011 at 1:56 PM, Mark Hatle <mark.hatle@windriver.com> wrote=
:
> On 9/2/11 1:36 PM, McClintock Matthew-B29882 wrote:
>> On Fri, Sep 2, 2011 at 12:09 PM, Mark Hatle <mark.hatle@windriver.com> w=
rote:
>>> For everything I see, that should work.
>>>
>>> In classes/image.bbclass, RDEPENDS is augmented by the contents of
>>> IMAGE_INSTALL, LINGUAS_INSTALL, MULTILIB_IMAGE_INSTALL, and NORMAL_FEAT=
URE_INSTALL.
>>
>> The bitbake side is fine, It's getting put into RDEPENDS and all the
>> packages are beinh built properly. RPMs are built as well.
>>
>>> The place to start looking for this is within the log.do_rootfs in the =
rootfs
>>> directory you are working on. =A0You should see something that indicate=
s it's
>>> trying to install the "lib64-perl". =A0(in the case of RPM, it should e=
ventually
>>> rename it to "perl" -- but choose the 64-bit version.)
>>
>> However, I don't see code that invokes package_rpm.bbclass properly.
>> It looks like it could work, but no where is MLPREFIX set for image.
>> There is some override or something missing on my end or in the code
>> to properly export these vars for the ML rpm install scenario.
>>
>> Further more, from what I see no where in rootfs_rpm.bbclass do we
>> pass MULTILIB_PACKAGE_INSTALL into the list of packages to be
>> installed... thus they fall off. ipk looks like it might have this
>> stuff done.
>
> This looks like a typo of some sorts:
>
> image.bbclass:RDEPENDS +=3D "${IMAGE_INSTALL} ${LINGUAS_INSTALL}
> ${MULTILIB_IMAGE_INSTALL} ${NORMAL_FEATURE_INSTALL}"
>
> image.bbclass:export MULTILIB_PACKAGE_INSTALL ?=3D "${MULTILIB_IMAGE_INST=
ALL}"
>
> So you should be setting MULTILIB_IMAGE_INSTALL, this should feed into th=
e
> RDEPENDS and that should in turn seed the roofs stuff.. =A0So there looks=
 to be a
> disconnect of some sort between the implementation of the image.bbclass a=
nd the
> individual package_*.bbclasses.
>
> (The only place I see MULTILIB_PACKAGE_INSTALL is in rootfs_ipk.bbclass.)
>
> The way the rootfs_rpm (which uses package_rpm) gets the list of things t=
o
> install is via:
>
> package_linguas=3DINSTALL_PACKAGES_LINGUAS_RPM=3DLINGUAS_INSTALL
>
> package_to_install=3DINSTALL_PACKAGES_NORMAL_RPM=3DPACKAGE_INSTALL=3D"${I=
MAGE_INSTALL}
> =A0${FEATURE_INSTALL}"
>
> package_attemptonly=3DINSTALL_PACKAGES_ATTEMPTONLY_RPM=3DPACKAGE_INSTALL_=
ATTEMPTONLY=3DFEATURE_INSTALL_OPTIONAL
>
> Where you see RPM above, replace with ipk and deb and the same ordering s=
hould
> be used. =A0So based on that, RDEPENDS is being populated from the
> "image.bbclass", but nothing is populating the MULTILIB_IMAGE_INSTALL lik=
e it
> should be. =A0Either it needs to be added to the 'PACKAGE_INSTALL' or som=
ething
> similar needs to be invented and added to each of the rootfs_* types. =A0=
(Note,
> there needs to be a translation step between the definition of
> MULTILIB_IMAGE_INSTALL and where it's used.. since things like "zlib" can=
 become
> "libz1" via name translation. =A0(translation happens in runtime_mapping_=
rename if
> I remember correctly.. in image.bbclass)
>
> I'd suggest you file a bug about this in the yocto system. =A0We'll get s=
omeone to
> work on it... =A0(I agree it's broken BTW..) =A0The ipk usage may turn ou=
t to be an
> example for the deb and rpm usage... but the three should continue to be =
in sync
> for most of it.
>
> --Mark
>
>> -M
>>
>> -M
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


