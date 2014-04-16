Return-Path: <sstncr@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F90E00C02
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 12:04:42 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hm4so1762406wib.4
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 12:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sRJU52O6gdSun/DmmaN/t2vrw1GVIz1hr5sjEGIePHo=;
	b=B59kJc1jPxooQvleSgeDA4w58l/QtS5f0QZNA9AV9uhbHRpYYzcdaoZPdZweUwHkhv
	qimOddjSknprZUaiHXzP1gyRh55PdxXoAiEmZn8Q5cz8y36lpjeR60iMV6+LpI5YImVz
	ct6ztb3phXNFDS4qXIsLW3q9vsCt9VZsGGpQfYCoK8G9QITuciteGWrbpT6Oz/73WEan
	cPhhmqvtR5GFdxCJXPLm9h8qMHdTp0ECEbTiTjUWxZ5cQVZbqXj8Qx6818MaLm0d+shh
	a2sxm8PFleNdsZ0JWvuDj7LUZxJcb2EXGaVD2OMG/+UGMxpistfY7bi4bMSIoT88SNCs
	+fDA==
MIME-Version: 1.0
X-Received: by 10.180.13.8 with SMTP id d8mr8914713wic.13.1397675081827; Wed,
	16 Apr 2014 12:04:41 -0700 (PDT)
Received: by 10.217.106.198 with HTTP; Wed, 16 Apr 2014 12:04:41 -0700 (PDT)
Received: by 10.217.106.198 with HTTP; Wed, 16 Apr 2014 12:04:41 -0700 (PDT)
In-Reply-To: <534EA868.6090207@ti.com>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org>
	<20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <1397605018.15843.119.camel@ted>
	<20140416011230.GH11339@denix.org>
	<20140416012043.GI11339@denix.org>
	<CAMKF1sqK1K2tS86aRMR-n1jANS5jaYN_6Nv0nGn8hbuJ58P19A@mail.gmail.com>
	<534EA868.6090207@ti.com>
Date: Wed, 16 Apr 2014 22:04:41 +0300
Message-ID: <CANr+NRvyq4g8B+V+yB+yO2-oiPoatkOotT6tdyJCKQjJorRsYw@mail.gmail.com>
From: Stefan Stanacar <sstncr@gmail.com>
To: William Mills <wmills@ti.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Wed, 16 Apr 2014 19:04:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2437cc38a8d04f72d9684

--001a11c2437cc38a8d04f72d9684
Content-Type: text/plain; charset=UTF-8

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6165

Link to the two kernels at the end of the first comment.
On Apr 16, 2014 6:57 PM, "William Mills" <wmills@ti.com> wrote:

>
> On 04/15/2014 11:31 PM, Khem Raj wrote:
>
>> On Tue, Apr 15, 2014 at 6:20 PM, Denys Dmytriyenko <denis@denix.org>
>> wrote:
>>
>>> On Tue, Apr 15, 2014 at 09:12:30PM -0400, Denys Dmytriyenko wrote:
>>>
>>>> On Wed, Apr 16, 2014 at 12:36:58AM +0100, Richard Purdie wrote:
>>>>
>>>>> On Tue, 2014-04-15 at 15:43 -0400, Denys Dmytriyenko wrote:
>>>>>
>>>>>> I don't yet know what is going on, but building in the same directory
>>>>>> with
>>>>>> sources (B = S) makes it work regarless of the path length:
>>>>>>
>>>>>> /OE/RAM/poky-111111111111111111111111111111
>>>>>> 111111111111111111111111111111111111111111111111111111111111
>>>>>> 111111111111111/222222222222222222222222222222
>>>>>> 22222222222222222222222222222222222222/333333333333333333333333333333
>>>>>> 3333333333333333333333/tmp/work/beaglebone-poky-linux-
>>>>>> gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>>>>>>
>>>>>> So, I just commented out setting kernel-specific B in linux-yocto.inc
>>>>>> and any
>>>>>> kernel now boots with long path:
>>>>>>
>>>>>> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>>>>>>
>>>>>> I'm copying Richard and Bruce directly to see if they may have a
>>>>>> quick insight
>>>>>> and/or accept it as a workaround for the release. I'll keep digging
>>>>>> further,
>>>>>> but if anyone cares to verify the above workaround works for them, I
>>>>>> would
>>>>>> appreciate. Thanks!
>>>>>>
>>>>>
>>>>> I'm travelling and don't have hardware so I'm limited in what I can
>>>>> look
>>>>> at right now. I suspect this workaround "works" because it makes the
>>>>> "beaglebone-standard-build" extra characters on the path. I have a
>>>>> feeling your -1111111 test above may have reused sstate or something
>>>>> like that and given misleading results. I'd be interested in the
>>>>> vmlinux
>>>>> file from the build above to see if the poky-111111 pathnames are in
>>>>> there (they get stripped out when you create the zImage).
>>>>>
>>>>
>>>> Nope, I was fooled by sstate once, so this time I tested with
>>>> cleansstate and
>>>> compared timestamps of the kernel when it boots - it is definitely the
>>>> new
>>>> one. And to make sure 'beaglebone-standard-build' extra suffix doesn't
>>>> affect
>>>> it, I increased the path length even further - that extra level with
>>>> 333 is
>>>> there to over-compensate, as it was failing before even with just 111
>>>> and 222
>>>> levels only... Looks like Gary was also able to verify it.
>>>>
>>>> But, you are right about vmlinux - it doesn't have those paths in there
>>>> any
>>>> more! I've seen them there when building with B != S, but they are gone
>>>> when
>>>> building with B = S. Wondering why. You can check it for yourself:
>>>>
>>>> http://arago-project.org/files/short-term/misc/vmlinux-
>>>> 3.14.0-yocto-standard
>>>>
>>>
>>> And, as a follow up, all those long paths in vmlinux when built with B
>>> != S
>>> point to sources. Here are few examples:
>>>
>>> B != S strings:
>>>
>>> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/
>>> linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux/init/main.c
>>> earlycon
>>> 4Malformed early option '%s'
>>> 3Starting init: %s exists but couldn't execute it (error %d)
>>> ...
>>> 6Trying to unpack rootfs image as initramfs...
>>> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/
>>> linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/
>>> linux/init/initramfs.c
>>> 6rootfs image is not initramfs (%s); looks like an initrd
>>> TRAILER!!!
>>> ...
>>> %lu.%02lu BogoMIPS (lpj=%lu)
>>> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/
>>> linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/
>>> linux/arch/arm/vfp/vfpmodule.c
>>> 6VFP support v0.3:
>>>
>>>
>>> B = S same strings:
>>>
>>> init/main.c
>>> earlycon
>>> 4Malformed early option '%s'
>>> 3Starting init: %s exists but couldn't execute it (error %d)
>>> ...
>>> 6Trying to unpack rootfs image as initramfs...
>>> init/initramfs.c
>>> 6rootfs image is not initramfs (%s); looks like an initrd
>>> TRAILER!!!
>>> ...
>>> %lu.%02lu BogoMIPS (lpj=%lu)
>>> arch/arm/vfp/vfpmodule.c
>>> 6VFP support v0.3:
>>>
>>>
>>> So, that explains why B = S works regardless of the location, as it
>>> doesn't
>>> embed full path to source files...
>>>
>>>
>> seemingly there could be rodata segment overflow issue. Can you do the
>> kernel build with say linker from dora build
>> and see if it still fails.
>>
>>
> It would be interesting to see if the rodata segment (or segment it
> contributes to) between working and non-working versions were crossing
> some magic power of 2 value.
>
> Are there two images published from the same build machines with just
> the path difference?  I would like to see one that was just under the
> wire and one just a bit too long.  Denys, you have that?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c2437cc38a8d04f72d9684
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D6165">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6165</a></p>
<p dir=3D"ltr">Link to the two kernels at the end of the first comment.</p>
<div class=3D"gmail_quote">On Apr 16, 2014 6:57 PM, &quot;William Mills&quo=
t; &lt;<a href=3D"mailto:wmills@ti.com">wmills@ti.com</a>&gt; wrote:<br typ=
e=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
On 04/15/2014 11:31 PM, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tue, Apr 15, 2014 at 6:20 PM, Denys Dmytriyenko &lt;<a href=3D"mailto:de=
nis@denix.org" target=3D"_blank">denis@denix.org</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tue, Apr 15, 2014 at 09:12:30PM -0400, Denys Dmytriyenko wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Wed, Apr 16, 2014 at 12:36:58AM +0100, Richard Purdie wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tue, 2014-04-15 at 15:43 -0400, Denys Dmytriyenko wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I don&#39;t yet know what is going on, but building in the same directory w=
ith<br>
sources (B =3D S) makes it work regarless of the path length:<br>
<br>
/OE/RAM/poky-<u></u>111111111111111111111111111111<u></u>111111111111111111=
111111111111<u></u>111111111111111111111111111111<u></u>111111111111111/<u>=
</u>222222222222222222222222222222<u></u>222222222222222222222222222222<u><=
/u>22222222/<u></u>333333333333333333333333333333<u></u>3333333333333333333=
333/tmp/<u></u>work/beaglebone-poky-linux-<u></u>gnueabi/linux-yocto/3.14+<=
u></u>gitAUTOINC+928d7b2dda_<u></u>0143c6ebb4-r0/linux<br>

<br>
So, I just commented out setting kernel-specific B in linux-yocto.inc and a=
ny<br>
kernel now boots with long path:<br>
<br>
#B =3D &quot;${WORKDIR}/linux-${PACKAGE_<u></u>ARCH}-${LINUX_KERNEL_TYPE}-<=
u></u>build&quot;<br>
<br>
I&#39;m copying Richard and Bruce directly to see if they may have a quick =
insight<br>
and/or accept it as a workaround for the release. I&#39;ll keep digging fur=
ther,<br>
but if anyone cares to verify the above workaround works for them, I would<=
br>
appreciate. Thanks!<br>
</blockquote>
<br>
I&#39;m travelling and don&#39;t have hardware so I&#39;m limited in what I=
 can look<br>
at right now. I suspect this workaround &quot;works&quot; because it makes =
the<br>
&quot;beaglebone-standard-build&quot; extra characters on the path. I have =
a<br>
feeling your -1111111 test above may have reused sstate or something<br>
like that and given misleading results. I&#39;d be interested in the vmlinu=
x<br>
file from the build above to see if the poky-111111 pathnames are in<br>
there (they get stripped out when you create the zImage).<br>
</blockquote>
<br>
Nope, I was fooled by sstate once, so this time I tested with cleansstate a=
nd<br>
compared timestamps of the kernel when it boots - it is definitely the new<=
br>
one. And to make sure &#39;beaglebone-standard-build&#39; extra suffix does=
n&#39;t affect<br>
it, I increased the path length even further - that extra level with 333 is=
<br>
there to over-compensate, as it was failing before even with just 111 and 2=
22<br>
levels only... Looks like Gary was also able to verify it.<br>
<br>
But, you are right about vmlinux - it doesn&#39;t have those paths in there=
 any<br>
more! I&#39;ve seen them there when building with B !=3D S, but they are go=
ne when<br>
building with B =3D S. Wondering why. You can check it for yourself:<br>
<br>
<a href=3D"http://arago-project.org/files/short-term/misc/vmlinux-3.14.0-yo=
cto-standard" target=3D"_blank">http://arago-project.org/<u></u>files/short=
-term/misc/vmlinux-<u></u>3.14.0-yocto-standard</a><br>
</blockquote>
<br>
And, as a follow up, all those long paths in vmlinux when built with B !=3D=
 S<br>
point to sources. Here are few examples:<br>
<br>
B !=3D S strings:<br>
<br>
/OE/RAM/poky/tmp/work/<u></u>beaglebone-poky-linux-gnueabi/<u></u>linux-yoc=
to/3.14+gitAUTOINC+<u></u>928d7b2dda_0143c6ebb4-r0/<u></u>linux/init/main.c=
<br>
earlycon<br>
4Malformed early option &#39;%s&#39;<br>
3Starting init: %s exists but couldn&#39;t execute it (error %d)<br>
...<br>
6Trying to unpack rootfs image as initramfs...<br>
/OE/RAM/poky/tmp/work/<u></u>beaglebone-poky-linux-gnueabi/<u></u>linux-yoc=
to/3.14+gitAUTOINC+<u></u>928d7b2dda_0143c6ebb4-r0/<u></u>linux/init/initra=
mfs.c<br>
6rootfs image is not initramfs (%s); looks like an initrd<br>
TRAILER!!!<br>
...<br>
%lu.%02lu BogoMIPS (lpj=3D%lu)<br>
/OE/RAM/poky/tmp/work/<u></u>beaglebone-poky-linux-gnueabi/<u></u>linux-yoc=
to/3.14+gitAUTOINC+<u></u>928d7b2dda_0143c6ebb4-r0/<u></u>linux/arch/arm/vf=
p/vfpmodule.c<br>
6VFP support v0.3:<br>
<br>
<br>
B =3D S same strings:<br>
<br>
init/main.c<br>
earlycon<br>
4Malformed early option &#39;%s&#39;<br>
3Starting init: %s exists but couldn&#39;t execute it (error %d)<br>
...<br>
6Trying to unpack rootfs image as initramfs...<br>
init/initramfs.c<br>
6rootfs image is not initramfs (%s); looks like an initrd<br>
TRAILER!!!<br>
...<br>
%lu.%02lu BogoMIPS (lpj=3D%lu)<br>
arch/arm/vfp/vfpmodule.c<br>
6VFP support v0.3:<br>
<br>
<br>
So, that explains why B =3D S works regardless of the location, as it doesn=
&#39;t<br>
embed full path to source files...<br>
<br>
</blockquote>
<br>
seemingly there could be rodata segment overflow issue. Can you do the<br>
kernel build with say linker from dora build<br>
and see if it still fails.<br>
<br>
</blockquote>
<br>
It would be interesting to see if the rodata segment (or segment it contrib=
utes to) between working and non-working versions were crossing<br>
some magic power of 2 value.<br>
<br>
Are there two images published from the same build machines with just<br>
the path difference? =C2=A0I would like to see one that was just under the<=
br>
wire and one just a bit too long. =C2=A0Denys, you have that?<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>

--001a11c2437cc38a8d04f72d9684--
