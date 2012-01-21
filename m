Return-Path: <gizero@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5DACE00718
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2012 07:30:34 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so1422042vbb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2012 07:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=QPn5R1ey1WqTp0eGChDybgMIQ/4QCEo6Unxv5ruCkIM=;
	b=R8Bft2XOz0uR9OmRED/VSbgdRHIx2AjhtoqRF0jBVurzIAhUCin30evBrqMImfU+6m
	wex6Rt6JYYPFYUOgR6uE7qhjDgS7aHstjWejVKI3jJhYKl/kzJysSeyjr7nBTCd1snu8
	k6AdpBot3aOXbaxmp1m2ocIoVSdUlXe47Dec0=
MIME-Version: 1.0
Received: by 10.52.172.196 with SMTP id be4mr972523vdc.80.1327159833726; Sat,
	21 Jan 2012 07:30:33 -0800 (PST)
Received: by 10.220.46.194 with HTTP; Sat, 21 Jan 2012 07:30:33 -0800 (PST)
In-Reply-To: <4F199F63.6090209@windriver.com>
References: <CAC+thW1YcPzTJLLxXWcko3kwkZJFiT7tFrdX+iC5tZ-uBTEdtw@mail.gmail.com>
	<4F199F63.6090209@windriver.com>
Date: Sat, 21 Jan 2012 16:30:33 +0100
Message-ID: <CAC+thW1mPUSscuTxms5K3=8CRExy_dmk0orO9spaM-PKcNyO5Q@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: i486sx machine porting from oe-classic
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
X-List-Received-Date: Sat, 21 Jan 2012 15:30:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Mark!

On Fri, Jan 20, 2012 at 6:07 PM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
> On 1/20/12 8:07 AM, Andrea Galbusera wrote:
>>
>> Hi,
>>
>> In oe-classic there used to be a machine configuration for an i486sx
>> based machine called vortex86sx. In the past I was successful in
>> building a running image for such a target. Since I'd like to make a
>> new system based on vortex, my goal is to leverage the whole Yocto
>> Project infrastructure and port that old configuration to a BSP layer.
>> This will save me a lot of time in supporting developers with SDKs and
>> so.
>>
>> Since I could not find any BSP based on hardware older than i586 in
>> recent Yocto trees, I'm concerned about this. Do you know of any
>> obstacle in doing such a port? I'm mainly interested in building
>> images with no graphics for that target: core-image-minimal is a
>> reasonable reference for me.
>>
>> My plan was to initially lay out a new BSP by following guidelines
>> from Development Manual and BSP Guide. Then, what I suspect to be a
>> little trickier for my expertise, is the porting of the original
>> tune-i486sx.inc file to the current Yocto infrastructure. Is there any
>> document I can leverage to map the variables defined in the
>> oe-classic's syntax to the current ones for such a machine
>> configuration file?
>
>
> A few things you will need.. a tune file for the CPU, and a tune file for
> the machine/bsp... and you'll have to make sure that eglibc/Linux can sti=
ll
> run on that machine.
>
> I know a while back some changes were made to the GNU toolchain, include =
gcc
> to change default optimization levels and such, I don't know if this
> negatively impacted the ability to generate i486 compatible code.
>
>
>> The original i486 tune file was defining the following:
>>
>> TARGET_ARCH =3D "i486"
>> TARGET_CC_ARCH =3D "-march=3Di486"
>> PACKAGE_EXTRA_ARCHS =3D "486sx"
>> BASE_PACKAGE_ARCH =3D "486sx"
>> FEED_ARCH =3D "${BASE_PACKAGE_ARCH}"
>>
>> Are they still valid variables? Do I need any more?
>
>
> Variables have changed. =A0The following is likely what you want (not tes=
ted
> of course) meta/conf/machine/include/tune-i486.inc (based off of tune-i58=
6):
>
> DEFAULTTUNE ?=3D "i486"
> TUNE_PKGARCH_TMP =3D "${@bb.utils.contains("TUNE_FEATURES", "m32", "x86",
> "x86_64", d)}"
> TUNE_PKGARCH ?=3D "${@bb.utils.contains("TUNE_FEATURES", "i486", "i486",
> TUNE_PKGARCH_TMP, d)}"
>
> require conf/machine/include/ia32/arch-ia32.inc
>
> # Extra tune features
> TUNEVALID[i486] =3D "Enable i486 specific processor optimizations"
> TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "i486", "-march=
=3Di486",
> "", d)}"
>
> # Extra tune selections
> AVAILTUNES +=3D "i486"
> TUNE_FEATURES_tune-i486 ?=3D "${TUNE_FEATURES_tune-x86} i486"
> BASE_LIB_tune-i486 ?=3D "lib"
> PACKAGE_EXTRA_ARCHS_tune-i486 =3D "${PACKAGE_EXTRA_ARCHS_tune-x86} i386 i=
486"

I set up the custom layer following your suggestions and it's building
now... By inspecting the logs I see "-march=3Di486" applied to
compiler's command lines. I won't be able to test the kernel until
next Monday. I will follow up to let you know if it works.

Thanks!
Regards,
Andrea

