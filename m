Return-Path: <emirelkholy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED46BE01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 11:08:26 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so7288126yhf.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 11:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=J1Pl4zFurf2ZJp2jXlHbx/KE3NOaAUvZMCHG4B5zD0I=;
	b=IvU190dIWiFFL9icFfg+IQDlC1GrMXifsb7zfwb03uw8YBikx4M36p9HmGiWJzP/Wd
	7vxiKBE3dqJK/PMITrpa4yE5v6Q3VPzRWEyHThTRnZ4gId3ES/LHzFNRZmuKuQmEIkEB
	w2s4diwQ8gB0Erk8N16axVYZIEpUZwNw7ZCIoCOXGe+AXScofetXZF6aofTrVy82E0mv
	P1yJ1xJH5wx96ybB6yQ60nKAY6iCuLRJTKqEs5+tArBbnf+gWbVQbwGCXWtd3DeNHvvl
	51K9VEFRGZx80lhVcnxgGh2pdqvlGFctR3z2uZPymmTEspk5CrW/uaGaoEOSCkfUy134
	QMvw==
MIME-Version: 1.0
Received: by 10.236.76.233 with SMTP id b69mr28635035yhe.52.1337710106138;
	Tue, 22 May 2012 11:08:26 -0700 (PDT)
Received: by 10.146.234.10 with HTTP; Tue, 22 May 2012 11:08:26 -0700 (PDT)
In-Reply-To: <mailman.2838.1337707734.2458.yocto@yoctoproject.org>
References: <mailman.2838.1337707734.2458.yocto@yoctoproject.org>
Date: Tue, 22 May 2012 14:08:26 -0400
Message-ID: <CAExZvuMoPyrQLZjcYsHzyQ2KPZY13=GUO1NJ__EmKWfsKvToDw@mail.gmail.com>
From: Emir Elkholy <emirelkholy@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 20, Issue 82
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
X-List-Received-Date: Tue, 22 May 2012 18:08:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Re: sending ioctl 5310 to a partition! (jfabernathy)

Thanks for the response. I'm trying to use an image that was provided
to me that has debugging support for the atom processor. My current
version of Yocto on my CRB works fine, but without debugging support.
I was provided with the following file which has the debugging
support:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/machines/cedar=
trail/cedartrail-edison-6.0.1.tar.bz2
After I unpack the tarball it has the three images that can be used, I
am trying to use the sdk image :
(/meta-intel/meta-cedartrail/binary/core-image-sato-sdk-cedartrail.hddimg).
This 2GB image is what I preloaded on the usb drive which allowed me
to run yocto from the usb. Is there a way to follow the instructions
provided with the image that was given to me? Should I just bitbake
the image that was given to me and follow the instructions? Just want
to make sure I'm understanding the solution.
Thanks,
Emir


On Tue, May 22, 2012 at 1:28 PM,  <yocto-request@yoctoproject.org> wrote:
> Send yocto mailing list submissions to
> =A0 =A0 =A0 =A0yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
> =A0 =A0 =A0 =A0https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
> =A0 =A0 =A0 =A0yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
> =A0 =A0 =A0 =A0yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
> =A0 1. Re: [PATCH] Fix X server on emenlow when built with gcc =A0 4.7.x
> =A0 =A0 =A0(Tom Zanussi)
> =A0 2. Re: runqemu qemux86 (Scott Garman)
> =A0 3. Re: runqemu qemux86 (James Abernathy)
> =A0 4. Re: sending ioctl 5310 to a partition! (jfabernathy)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Tue, 22 May 2012 10:31:25 -0500
> From: Tom Zanussi <tom.zanussi@intel.com>
> To: Christopher Hallinan <challinan@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH] Fix X server on emenlow when built with
> =A0 =A0 =A0 =A0gcc =A0 =A0 4.7.x
> Message-ID: <1337700685.32464.16.camel@elmorro>
> Content-Type: text/plain; charset=3D"UTF-8"
>
> On Mon, 2012-05-21 at 21:56 -0500, Christopher Hallinan wrote:
>> On Mon, May 21, 2012 at 2:30 PM, Tom Zanussi <tom.zanussi@intel.com> wro=
te:
>> > On Fri, 2012-05-18 at 23:02 -0400, Chris Hallinan wrote:
>> >> On Fri, May 18, 2012 at 6:25 PM, Tom Zanussi <tom.zanussi@intel.com> =
wrote:
>> >> > On Fri, 2012-05-18 at 17:38 -0400, Chris Hallinan wrote:
>> >> >> Note: this patch has already been submitted against other BSPs,
>> >> >> originally submitted to oe-core by Gary Thomas. =A0I ran into this=
 same
>> >> >> issue building MACHINE=3Demenlow on my own Z530 platform. =A0There=
 are
>> >> >> likely others as well where this needs to be applied.
>> >> >>
>> >> >> Upstream is here:
>> >> >> https://bugs.freedesktop.org/show_bug.cgi?id=3D18451
>> >> >>
>> >> >> PR has been bumped.
>> >> >>
>> >> >
>> >> > Hi, thanks for the patch - I see the problem and will pull this in =
as
>> >> > soon as I can build and test it, but am getting a patch failure in =
the
>> >> > build after pulling it in for testing. =A0I'll fix it up, but just
>> >> > mentioning it in case you had any ideas why it might work for you b=
ut
>> >> > fail here...
>> >> >
>> >>
>> >> Sorry, Tom.
>> >> Odd, I generated the patch using git diff, but didn't actually try to
>> >> apply it to an unpatched tree. =A0Looking at it, it isn't obvious why=
 it
>> >> fails. Someone with more git/patch foo than me could probably explain
>> >> it ;)
>> >>
>> >> This one works (for me) against current top of tree:
>> >>
>> >
>> > It must be a whitespace problem - I still couldn't apply it, so manual=
ly
>> > fixed it up here, patch below.
>> >
>> > I also added an Upstream-status: section to the patch.
>> >
>> > Also, before pulling it in, I'll need to have you send me your
>> > Signed-off-by: line.
>> >
>> > Unfortunately, the problem now is that although I am getting a sato
>> > desktop, it has no icons or mouse/keyboard and I see this in the
>> > Xorg.0.log:
>> >
>> > Backtrace:
>> > 0: /usr/bin/Xorg (xorg_backtrace+0x37) [0x80e2e37]
>> > 1: /usr/bin/Xorg (0x8047000+0x5bda6) [0x80a2da6]
>> > 2: linux-gate.so.1 (__kernel_rt_sigreturn+0x0) [0xffffe40c]
>> > 3: /usr/lib/xorg/modules/drivers/psb_drv.so (0xb769b000+0x690c)
>> > [0xb76a190c]
>> > 4: /usr/lib/xorg/modules/libexa.so (0xb71ab000+0xcd0a) [0xb71b7d0a]
>> > 5: /usr/lib/xorg/modules/libexa.so (0xb71ab000+0xd300) [0xb71b8300]
>> > 6: /usr/lib/xorg/modules/libexa.so (0xb71ab000+0xb5fd) [0xb71b65fd]
>> > 7: /usr/bin/Xorg (0x8047000+0xc60c0) [0x810d0c0]
>> > 8: /usr/bin/Xorg (CompositeGlyphs+0xb1) [0x819f131]
>> > 9: /usr/bin/Xorg (0x8047000+0xc2e1e) [0x8109e1e]
>> > 10: /usr/bin/Xorg (0x8047000+0xbdb2e) [0x8104b2e]
>> > 11: /usr/bin/Xorg (0x8047000+0x286cf) [0x806f6cf]
>> > 12: /usr/bin/Xorg (0x8047000+0x1bbca) [0x8062bca]
>> > 13: /lib/libc.so.6 (__libc_start_main+0xf5) [0x42892ba5]
>> > 14: /usr/bin/Xorg (0x8047000+0x1bea1) [0x8062ea1]
>> > Segmentation fault at address 0xc
>> >
>> > Fatal server error:
>> > Caught signal 11 (Segmentation fault). Server aborting
>> >
>> >
>> > Can you tell me which poky commit you're using?
>>
>> I haven't sync'd lately. I'm using
>> poky: f39ba520d6f2477c99839a92049b1bb279f092cf
>> meta-intel: bde31fd7e66faea865d24ff0858a9006b89e4e54
>>
>> Third time should be a charm. =A0With kergoth's help, I think I got this=
 patch format correct!
>>
>> Signed-off-by: Christopher Hallinan <challinan@gmail.com>
>
> Yep, third time was the charm - applied cleanly and booted into sato
> without problem...
>
> Pulled into meta-intel/master.
>
> Thanks!
>
> Tom
>
>> ---
>> =A0.../files/fix-bogus-stack-variables.patch =A0 =A0 =A0 =A0 =A0| =A0204=
 ++++++++++++++++++++
>> =A0.../xorg-xserver/xserver-psb-1.7.99.2.inc =A0 =A0 =A0 =A0 =A0| =A0 =
=A05 +-
>> =A02 files changed, 207 insertions(+), 2 deletions(-)
>> =A0create mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/f=
ix-bogus-stack-variables.patch
>>
>> diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-=
stack-variables.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/fi=
x-bogus-stack-variables.patch
>> new file mode 100644
>> index 0000000..5c9581a
>> --- /dev/null
>> +++ b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-v=
ariables.patch
>> @@ -0,0 +1,204 @@
>> +diff --git a/Xext/xace.c b/Xext/xace.c
>> +index e10d837..c757cad 100644
>> +--- a/Xext/xace.c
>> ++++ b/Xext/xace.c
>> +@@ -87,7 +87,18 @@ void XaceHookAuditEnd(ClientPtr ptr, int result)
>> + =A0*/
>> + int XaceHook(int hook, ...)
>> + {
>> +- =A0 =A0pointer calldata; =A0 =A0 =A0 /* data passed to callback */
>> ++ =A0 =A0union {
>> ++ =A0 =A0XaceResourceAccessRec res;
>> ++ =A0 =A0XaceDeviceAccessRec dev;
>> ++ =A0 =A0XaceSendAccessRec send;
>> ++ =A0 =A0XaceReceiveAccessRec recv;
>> ++ =A0 =A0XaceClientAccessRec client;
>> ++ =A0 =A0XaceExtAccessRec ext;
>> ++ =A0 =A0XaceServerAccessRec server;
>> ++ =A0 =A0XaceScreenAccessRec screen;
>> ++ =A0 =A0XaceAuthAvailRec auth;
>> ++ =A0 =A0XaceKeyAvailRec key;
>> ++ =A0 =A0} u;
>> + =A0 =A0 int *prv =3D NULL; =A0 =A0 =A0 =A0/* points to return value fr=
om callback */
>> + =A0 =A0 va_list ap; =A0 =A0 =A0 =A0 =A0 =A0 /* argument list */
>> + =A0 =A0 va_start(ap, hook);
>> +@@ -99,117 +110,86 @@ int XaceHook(int hook, ...)
>> + =A0 =A0 =A0*/
>> + =A0 =A0 switch (hook)
>> + =A0 =A0 {
>> +- =A0 =A0case XACE_RESOURCE_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceResourceAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.id =3D va_arg(ap, XID);
>> +- =A0 =A0 =A0 =A0rec.rtype =3D va_arg(ap, RESTYPE);
>> +- =A0 =A0 =A0 =A0rec.res =3D va_arg(ap, pointer);
>> +- =A0 =A0 =A0 =A0rec.ptype =3D va_arg(ap, RESTYPE);
>> +- =A0 =A0 =A0 =A0rec.parent =3D va_arg(ap, pointer);
>> +- =A0 =A0 =A0 =A0rec.access_mode =3D va_arg(ap, Mask);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_RESOURCE_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.res.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.res.id =3D va_arg(ap, XID);
>> ++ =A0 =A0 =A0 =A0u.res.rtype =3D va_arg(ap, RESTYPE);
>> ++ =A0 =A0 =A0 =A0u.res.res =3D va_arg(ap, pointer);
>> ++ =A0 =A0 =A0 =A0u.res.ptype =3D va_arg(ap, RESTYPE);
>> ++ =A0 =A0 =A0 =A0u.res.parent =3D va_arg(ap, pointer);
>> ++ =A0 =A0 =A0 =A0u.res.access_mode =3D va_arg(ap, Mask);
>> ++ =A0 =A0 =A0 =A0u.res.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.res.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_DEVICE_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceDeviceAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.dev =3D va_arg(ap, DeviceIntPtr);
>> +- =A0 =A0 =A0 =A0rec.access_mode =3D va_arg(ap, Mask);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_DEVICE_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.dev.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.dev.dev =3D va_arg(ap, DeviceIntPtr);
>> ++ =A0 =A0 =A0 =A0u.dev.access_mode =3D va_arg(ap, Mask);
>> ++ =A0 =A0 =A0 =A0u.dev.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.dev.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_SEND_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceSendAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.dev =3D va_arg(ap, DeviceIntPtr);
>> +- =A0 =A0 =A0 =A0rec.pWin =3D va_arg(ap, WindowPtr);
>> +- =A0 =A0 =A0 =A0rec.events =3D va_arg(ap, xEventPtr);
>> +- =A0 =A0 =A0 =A0rec.count =3D va_arg(ap, int);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_SEND_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.send.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.send.dev =3D va_arg(ap, DeviceIntPtr);
>> ++ =A0 =A0 =A0 =A0u.send.pWin =3D va_arg(ap, WindowPtr);
>> ++ =A0 =A0 =A0 =A0u.send.events =3D va_arg(ap, xEventPtr);
>> ++ =A0 =A0 =A0 =A0u.send.count =3D va_arg(ap, int);
>> ++ =A0 =A0 =A0 =A0u.send.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.send.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_RECEIVE_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceReceiveAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.pWin =3D va_arg(ap, WindowPtr);
>> +- =A0 =A0 =A0 =A0rec.events =3D va_arg(ap, xEventPtr);
>> +- =A0 =A0 =A0 =A0rec.count =3D va_arg(ap, int);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_RECEIVE_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.recv.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.recv.pWin =3D va_arg(ap, WindowPtr);
>> ++ =A0 =A0 =A0 =A0u.recv.events =3D va_arg(ap, xEventPtr);
>> ++ =A0 =A0 =A0 =A0u.recv.count =3D va_arg(ap, int);
>> ++ =A0 =A0 =A0 =A0u.recv.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.recv.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_CLIENT_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceClientAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.target =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.access_mode =3D va_arg(ap, Mask);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_CLIENT_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.client.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.client.target =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.client.access_mode =3D va_arg(ap, Mask);
>> ++ =A0 =A0 =A0 =A0u.client.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.client.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_EXT_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceExtAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.ext =3D va_arg(ap, ExtensionEntry*);
>> +- =A0 =A0 =A0 =A0rec.access_mode =3D DixGetAttrAccess;
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_EXT_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.ext.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.ext.ext =3D va_arg(ap, ExtensionEntry*);
>> ++ =A0 =A0 =A0 =A0u.ext.access_mode =3D DixGetAttrAccess;
>> ++ =A0 =A0 =A0 =A0u.ext.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.ext.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_SERVER_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceServerAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.access_mode =3D va_arg(ap, Mask);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_SERVER_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.server.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.server.access_mode =3D va_arg(ap, Mask);
>> ++ =A0 =A0 =A0 =A0u.server.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.server.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> + =A0 =A0 case XACE_SCREEN_ACCESS:
>> +- =A0 =A0case XACE_SCREENSAVER_ACCESS: {
>> +- =A0 =A0 =A0 =A0XaceScreenAccessRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.screen =3D va_arg(ap, ScreenPtr);
>> +- =A0 =A0 =A0 =A0rec.access_mode =3D va_arg(ap, Mask);
>> +- =A0 =A0 =A0 =A0rec.status =3D Success; /* default allow */
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> +- =A0 =A0 =A0 =A0prv =3D &rec.status;
>> ++ =A0 =A0case XACE_SCREENSAVER_ACCESS:
>> ++ =A0 =A0 =A0 =A0u.screen.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.screen.screen =3D va_arg(ap, ScreenPtr);
>> ++ =A0 =A0 =A0 =A0u.screen.access_mode =3D va_arg(ap, Mask);
>> ++ =A0 =A0 =A0 =A0u.screen.status =3D Success; /* default allow */
>> ++ =A0 =A0 =A0 =A0prv =3D &u.screen.status;
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_AUTH_AVAIL: {
>> +- =A0 =A0 =A0 =A0XaceAuthAvailRec rec;
>> +- =A0 =A0 =A0 =A0rec.client =3D va_arg(ap, ClientPtr);
>> +- =A0 =A0 =A0 =A0rec.authId =3D va_arg(ap, XID);
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> ++ =A0 =A0case XACE_AUTH_AVAIL:
>> ++ =A0 =A0 =A0 =A0u.auth.client =3D va_arg(ap, ClientPtr);
>> ++ =A0 =A0 =A0 =A0u.auth.authId =3D va_arg(ap, XID);
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0case XACE_KEY_AVAIL: {
>> +- =A0 =A0 =A0 =A0XaceKeyAvailRec rec;
>> +- =A0 =A0 =A0 =A0rec.event =3D va_arg(ap, xEventPtr);
>> +- =A0 =A0 =A0 =A0rec.keybd =3D va_arg(ap, DeviceIntPtr);
>> +- =A0 =A0 =A0 =A0rec.count =3D va_arg(ap, int);
>> +- =A0 =A0 =A0 =A0calldata =3D &rec;
>> ++ =A0 =A0case XACE_KEY_AVAIL:
>> ++ =A0 =A0 =A0 =A0u.key.event =3D va_arg(ap, xEventPtr);
>> ++ =A0 =A0 =A0 =A0u.key.keybd =3D va_arg(ap, DeviceIntPtr);
>> ++ =A0 =A0 =A0 =A0u.key.count =3D va_arg(ap, int);
>> + =A0 =A0 =A0 =A0 break;
>> +- =A0 =A0}
>> +- =A0 =A0default: {
>> ++ =A0 =A0default:
>> + =A0 =A0 =A0 =A0 va_end(ap);
>> + =A0 =A0 =A0 =A0 return 0; =A0 /* unimplemented hook number */
>> +- =A0 =A0}
>> + =A0 =A0 }
>> + =A0 =A0 va_end(ap);
>> +
>> + =A0 =A0 /* call callbacks and return result, if any. */
>> +- =A0 =A0CallCallbacks(&XaceHooks[hook], calldata);
>> ++ =A0 =A0CallCallbacks(&XaceHooks[hook], &u);
>> + =A0 =A0 return prv ? *prv : Success;
>> + }
>> diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.=
99.2.inc b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.=
inc
>> index 9ee9c97..1fe962b 100644
>> --- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.in=
c
>> +++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.in=
c
>> @@ -1,4 +1,4 @@
>> -PR =3D "r5"
>> +PR =3D "r6"
>>
>> =A0PROTO_DEPS +=3D "xf86driproto dri2proto"
>>
>> @@ -8,7 +8,8 @@ SRC_URI +=3D "file://nodolt.patch \
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0file://crosscompile.patch \
>> =A0 =A0 =A0 =A0 =A0 file://libdrm-poulsbo.patch \
>> =A0 =A0 =A0 =A0 =A0 file://werror-address-fix.patch \
>> - =A0 =A0 =A0 =A0 file://ptr-to-int-cast-fix.patch"
>> + =A0 =A0 =A0 =A0 file://ptr-to-int-cast-fix.patch \
>> + =A0 =A0 =A0 =A0 file://fix-bogus-stack-variables.patch"
>>
>> =A0# Misc build failure for master HEAD
>> =A0SRC_URI +=3D "file://fix_open_max_preprocessor_error.patch"
>
>
>
>
> ------------------------------
>
> Message: 2
> Date: Tue, 22 May 2012 10:04:18 -0700
> From: Scott Garman <scott.a.garman@intel.com>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] runqemu qemux86
> Message-ID: <4FBBC712.404@intel.com>
> Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed
>
> On 05/22/2012 08:15 AM, James Abernathy wrote:
>>
>>
>> On Tue, May 22, 2012 at 10:45 AM, Autif Khan <autif.mlist@gmail.com
>> <mailto:autif.mlist@gmail.com>> wrote:
>>
>> =A0 =A0 On Tue, May 22, 2012 at 7:43 AM, jfabernathy <jfabernathy@gmail.=
com
>> =A0 =A0 <mailto:jfabernathy@gmail.com>> wrote:
>> =A0 =A0 =A0> when testing an image using runqemu qemux86, can you get
>> =A0 =A0 networking to
>> =A0 =A0 =A0> work?? mine comes up disabled. =A0I want to test an applica=
tion
>> =A0 =A0 that requires
>> =A0 =A0 =A0> Internet access.
>>
>> =A0 =A0 Yes, I am able to get networking to work out of the box (bitbake
>> =A0 =A0 core-image-sato, etc.) Internetworking does not work out of the =
box.
>>
>> =A0 =A0 This is accomplished over tun/tap devices - I do not know much a=
bout
>> =A0 =A0 these virtual networking devices - they have never failed for me=
 :-)
>>
>> =A0 =A0 The IP address of the emulated machine is 192.168.7.2 - The IP a=
ddress
>> =A0 =A0 of host machine is 192.168.7.1
>>
>> =A0 =A0 You can not (out of the box) communicate with machines other tha=
n the
>> =A0 =A0 host machine - so that would included internet etc.
>>
>> =A0 =A0 So, if you have an ssh server or a web-server running on the hos=
t
>> =A0 =A0 machine - you can ssh to the host machine or browse a webpage us=
ing
>> =A0 =A0 the browser. Alternatively, you can run a proxy server on the bu=
ild
>> =A0 =A0 machine and use it to get to the internet.
>>
>> =A0 =A0 You can run ifconfig to see if the network is configured properl=
y on
>> =A0 =A0 the emulated machine in the terminal. It should show 192.168.7.2=
 - if
>> =A0 =A0 you do not see this - you do not have networking working.
>>
>>
>> I can see the tap0 interface on my host at 192.168.7.1 by using ifconfig=
.
>> I can also see the eth0 on the qemu machine at 192.168.7.2
>> However, my host has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.
>> Somehow I need to connect the networks and I'm not sure exactly how to
>> do that so that DNS servers get used and the traffic all flows.
>> Jim A
>
> There is some sort of routing or IP forwarding bug in the sato images
> that is due to be fixed soon. One thing I've found is you can actually
> get out to the internet for about 30 seconds or so immediately after the
> image boots. My suspicion is that some conman script is killing the
> route after boot. core-image-minimal works consistently, and since
> minimal doesn't use conman, I'm guessing that is the culprit.
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2329
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
>
>
> ------------------------------
>
> Message: 3
> Date: Tue, 22 May 2012 13:26:15 -0400
> From: James Abernathy <jfabernathy@gmail.com>
> To: Scott Garman <scott.a.garman@intel.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] runqemu qemux86
> Message-ID:
> =A0 =A0 =A0 =A0<CANFv2EnvW6E_MfQ7FM8gOEo19qz1ACA57brMTMedUqkxo-DcLQ@mail.=
gmail.com>
> Content-Type: text/plain; charset=3D"iso-8859-1"
>
> On Tue, May 22, 2012 at 1:04 PM, Scott Garman <scott.a.garman@intel.com>w=
rote:
>
>> On 05/22/2012 08:15 AM, James Abernathy wrote:
>>
>>>
>>>
>>> On Tue, May 22, 2012 at 10:45 AM, Autif Khan <autif.mlist@gmail.com
>>> <mailto:autif.mlist@gmail.com>**> wrote:
>>>
>>> =A0 =A0On Tue, May 22, 2012 at 7:43 AM, jfabernathy <jfabernathy@gmail.=
com
>>> =A0 =A0 <mailto:jfabernathy@gmail.com>**> wrote:
>>> =A0 =A0 > when testing an image using runqemu qemux86, can you get
>>> =A0 =A0networking to
>>> =A0 =A0 > work?? mine comes up disabled. =A0I want to test an applicati=
on
>>> =A0 =A0that requires
>>> =A0 =A0 > Internet access.
>>>
>>> =A0 =A0Yes, I am able to get networking to work out of the box (bitbake
>>> =A0 =A0core-image-sato, etc.) Internetworking does not work out of the =
box.
>>>
>>> =A0 =A0This is accomplished over tun/tap devices - I do not know much a=
bout
>>> =A0 =A0these virtual networking devices - they have never failed for me=
 :-)
>>>
>>> =A0 =A0The IP address of the emulated machine is 192.168.7.2 - The IP a=
ddress
>>> =A0 =A0of host machine is 192.168.7.1
>>>
>>> =A0 =A0You can not (out of the box) communicate with machines other tha=
n the
>>> =A0 =A0host machine - so that would included internet etc.
>>>
>>> =A0 =A0So, if you have an ssh server or a web-server running on the hos=
t
>>> =A0 =A0machine - you can ssh to the host machine or browse a webpage us=
ing
>>> =A0 =A0the browser. Alternatively, you can run a proxy server on the bu=
ild
>>> =A0 =A0machine and use it to get to the internet.
>>>
>>> =A0 =A0You can run ifconfig to see if the network is configured properl=
y on
>>> =A0 =A0the emulated machine in the terminal. It should show 192.168.7.2=
 - if
>>> =A0 =A0you do not see this - you do not have networking working.
>>>
>>>
>>> I can see the tap0 interface on my host at 192.168.7.1 by using ifconfi=
g.
>>> I can also see the eth0 on the qemu machine at 192.168.7.2
>>> However, my host has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.
>>> Somehow I need to connect the networks and I'm not sure exactly how to
>>> do that so that DNS servers get used and the traffic all flows.
>>> Jim A
>>>
>>
>> There is some sort of routing or IP forwarding bug in the sato images th=
at
>> is due to be fixed soon. One thing I've found is you can actually get ou=
t
>> to the internet for about 30 seconds or so immediately after the image
>> boots. My suspicion is that some conman script is killing the route afte=
r
>> boot. core-image-minimal works consistently, and since minimal doesn't u=
se
>> conman, I'm guessing that is the culprit.
>>
>> https://bugzilla.yoctoproject.**org/show_bug.cgi?id=3D2329<https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D2329>
>>
>> Scott
>>
> So if I read this right, =A0I don't need any route or bridge commands to =
make
> this work. If the bug gets fixed runqemu qemux86 should setup the
> environment correctly so the web-webkit should get out to the internet vi=
a
> the host machine connection?
>
> JIm A
>
>
>> --
>> Scott Garman
>> Embedded Linux Engineer - Yocto Project
>> Intel Open Source Technology Center
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproje=
ct.org/listinfo/yocto>
>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20120522/=
4728bb55/attachment-0001.html>
>
> ------------------------------
>
> Message: 4
> Date: Tue, 22 May 2012 13:28:51 -0400
> From: jfabernathy <jfabernathy@gmail.com>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] sending ioctl 5310 to a partition!
> Message-ID: <4FBBCCD3.4010601@gmail.com>
> Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed
>
> On 05/21/2012 05:18 PM, Emir Elkholy wrote:
>> Hello,
>>
>> I am trying to install an image of Yocto to my CRB (cedartrail). After
>> creating the bootable usb with the new image on it as a usb-zip
>> (because it is too large for the hdd method of install), I insert it
>> into one of the usb slots of my CRB. After turning the CRB on the
>> prompt says "boot". At this point if you don't type anything it just
>> runs the image off of the USB. This worked with no problem. What
>> didn't work was trying to install the new image on my CRB. When the
>> CRB starts with the USB attached, it prompts the user with "boot"
>> which at this stage i typed "install". It seemed as if it was
>> installing because it was outputting various text, but then it just
>> stopped after outputting to the screen "sending ioctl 5310 to a
>> partition!". Hopefully someone on the mailing list has seen this
>> before. Any advise would help.
>
> If you want to put the image on a hard drive use the .ext3 image and
> follow the "how do I" on the wiki at:
>
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_ha=
rd_drive.3F
>
> Jim A
>
>> Thanks
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 20, Issue 82
> *************************************

