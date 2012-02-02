Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 999B4E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 12:45:26 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 02 Feb 2012 12:45:26 -0800
Received: by iabz7 with SMTP id z7so3893572iab.25
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 12:45:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.208.1 with SMTP id ma1mr6283296igc.4.1328215525428; Thu, 02
	Feb 2012 12:45:25 -0800 (PST)
Received: by 10.50.190.161 with HTTP; Thu, 2 Feb 2012 12:45:25 -0800 (PST)
In-Reply-To: <4F2AE4A1.4030600@linux.intel.com>
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com> <4F2AC9A5.5040706@gmail.com>
	<4F2ACB7F.4010509@gmail.com> <4F2ADFE4.3050702@linux.intel.com>
	<CANFv2EkyMa0BSSKRm7VarTFM0xH2boJjWT8RZs8-iVegO3NPpw@mail.gmail.com>
	<4F2AE4A1.4030600@linux.intel.com>
Date: Thu, 2 Feb 2012 12:45:25 -0800
Message-ID: <CAPhnLPBTCR1g2=Ph-v50FJF5Yz+aoHV0hY5HztLk7mHqD8fSbw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 20:45:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 2, 2012 at 11:31 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 02/02/12 11:15, James Abernathy wrote:
>>
>> On Thu, Feb 2, 2012 at 2:11 PM, Joshua Lock <josh@linux.intel.com
>> <mailto:josh@linux.intel.com>> wrote:
>>
>>
>>
>> =A0 =A0On 02/02/12 09:44, jfabernathy wrote:
>>
>> =A0 =A0 =A0 =A0On 02/02/2012 12:36 PM, jfabernathy wrote:
>>
>> =A0 =A0 =A0 =A0 =A0 =A0On 02/02/2012 12:06 PM, Mark Hatle wrote:
>>
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0On 2/2/12 10:08 AM, jfabernathy wrote:
>>
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0On 02/01/2012 10:59 PM, jfabernat=
hy wrote:
>>
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Am I the only one seeing =
this dead link? I'm
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0building from master and
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0can't get to this link th=
at draws the error:
>>
>>
>> =A0http://cgit.freedesktop.org/__libva/snapshot/libva-1.0.12.__tar.bz2
>>
>>
>> =A0<http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2>
>>
>>
>> =A0 =A0This is supposed to be a transient error but so far as I can see =
the
>> =A0 =A0fd.o cgit is still down.
>>
>>
>> =A0 =A0 =A0 =A0Just noticed that what's on the Yocto mirror is
>> =A0 =A0 =A0 =A0libva_0.31.0-1+sds9.1ubuntu1.__tar.gz ), but the recipe i=
s
>>
>> =A0 =A0 =A0 =A0calling for a
>> =A0 =A0 =A0 =A0newer version, libva-1.0.12.tar.bz2
>>
>>
>> =A0 =A0I don't see libva-1.0.12 anywhere in poky or meta-yocto, the mirr=
or
>> =A0 =A0is only updated once the autobuilder has seen the recipe and
>> =A0 =A0downloaded the object to mirror.
>>
>> =A0 =A0After a quick google I can't find a libva newer than 0.32.0+1sds2=
 -
>> =A0 =A0where did you get your libva recipe from?
>>
>> If I checkout master on poky and meta-intel and run the normal crownbay
>> (not the no-EMGD version) I get this error. Also on 1.2_M2 tag.
>> JIm A
>
>
> Whoops, I wasn't looking in the common directory - sorry about that.
> That version of the Libya recipe has existed since November 26th, we real=
ly
> should be mirroring that.
>
> Beth, are we updating the mirrors with packages fetched during builds of
> BSP's?

For meta-intel BSPs, the source mirror is internal to the Intel
autobuilder at the moment. James, if you could open a bug up on this.
I have a few ideas on how to fix it from a process standpoint but I
want to think about it a bit and don't want this to get lost in the
shuffle.

> Sadly, (so far as I can tell) it looks like libva stopped hosting tarball
> releases and rely only on the snapshot functionality of git to supply
> tarballs. Which is fine until something like this happens.

I've sync'd libva* up to the source mirror from our internal, James
should be good now.

>
> If you can find a tarball of libva-1.0.12 from a source you trust you can
> download it and dump it in your DL_DIR to proceed your build.
>
>
> Cheers,
> Joshua
> --
> Joshua Lock
> =A0 =A0 =A0 =A0Yocto Project "Johannes factotum"
> =A0 =A0 =A0 =A0Intel Open Source Technology Centre

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

