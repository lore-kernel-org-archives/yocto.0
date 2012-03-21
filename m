Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84DE5E0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 16:07:32 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so1414040pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 16:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=dVgcd1nudC/0bXNIRY5FckD1LOilXUMFrvUC0Qb5h8Q=;
	b=fYaB3jz1+pt1B58pWg3Cb7IogUH/ky++m+mHFw0vgZ0QO/P+AfHOJfrM88fHQKfFl0
	tO0b0+r+iNw6C1q7H6P/aJPCPBMMrOJwfmRyRiqcXP9bM/DgSsTjUzRyNt4ctcGnV0l4
	XJ6J9uanVz9Fd4M5YH/PSv22xHtqDqr9ePN/3SMt2bvkBCwHC78rxRa2bsOoCf9OEr7Q
	0eMdO9/va0CMbGHISxp/seRoQwCH2/4HXuzdPvl47I8e60BtY/89hcnpqxLrzC/hkycy
	892wSCG12VV2bgn+litpGo5UcqdIv96M4rePGuD6lyz94aLbZuBNbwY3wpIvn33QWH6M
	QjUg==
MIME-Version: 1.0
Received: by 10.68.125.135 with SMTP id mq7mr15029697pbb.155.1332371252396;
	Wed, 21 Mar 2012 16:07:32 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Wed, 21 Mar 2012 16:07:32 -0700 (PDT)
In-Reply-To: <1332367194.2322.231.camel@elmorro>
References: <CADzUK1L1JEveHaVgdXRUGh5a=GtfDnu6hFtcUt1vSmGkAyOVjg@mail.gmail.com>
	<1332361435.2322.209.camel@elmorro>
	<CADzUK1LbmYVNKsBGMBCaJs4GqPMh+8D-51D8tEvHV29rsEiWJg@mail.gmail.com>
	<1332362567.2322.222.camel@elmorro>
	<CADzUK1JtSDOp=3U3R14o_roY4scPc+EqV9P54aTiD695u8Faww@mail.gmail.com>
	<1332367194.2322.231.camel@elmorro>
Date: Wed, 21 Mar 2012 19:07:32 -0400
Message-ID: <CADzUK1KZgTiMVOz4zOm2-w6n+rNtMaoib9VKi3SSB1ZekasPCA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Graphics Acceleration on crownbay - 1.2M3 + meta-intel tip
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
X-List-Received-Date: Wed, 21 Mar 2012 23:07:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>> >> >> Minor correction to the subject - I am using 1.2M3, not 1.2M2
>> >> >>
>> >> >> On Wed, Mar 21, 2012 at 4:14 PM, Autif Khan <autif.mlist@gmail.com=
> wrote:
>> >> >> > I am trying to get hardware accelerated graphics (video in parti=
cular)
>> >> >> > to work on my crownbay based hardware. I have EMGD 1.10 driver
>> >> >> > integrated and working. The evidence for this is that when I use
>> >> >> > glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.
>> >> >> >
>> >> >> > This is good, however, when I go over to the web2 browser (enabl=
ed by
>> >> >> > defining WEB =3D "web-webkit" for recipe task-core-apps-x11-piml=
ico) - I
>> >> >> > do not get graphics acceleration for javascript graphics. I also=
 do
>> >> >> > not get graphics acceleration when I watch an MP4 movie. I get 2=
-3 fps
>> >> >> > instead of the standard 25 or 29 fps.
>> >> >> >
>> >> >> > This was not the case when Yocto used EMGD 1.8 driver - video wo=
rked
>> >> >> > fine - I am not sure about accelerated javascript based graphics=
 in
>> >> >> > browser as I was not as far ahead in the project.
>> >> >> >
>> >> >> > Is this a known issue?
>> >> >> >
>> >> >
>> >> > When I tested video using gst-launch, I saw the same thing, which w=
as
>> >> > due to a missing libva-tpi. =A0The latest commit in meta-intel adde=
d that
>> >> > and fixed the problem for me.
>> >> >
>> >> > commit 162f3d1d3c538d7582a5e81205a9cdab74125b2b
>> >> > Author: Tom Zanussi <tom.zanussi@intel.com>
>> >> > Date: =A0 Mon Mar 12 19:57:29 2012 -0500
>> >> >
>> >> > =A0 =A0ia32-base: add libva display dependencies to emgd xserver
>> >> >
>> >>
>> >> I did a build today with tip - I have confirmed that I have this in t=
he source.
>> >>
>> >> What files should have been added to the root filesystem image as a
>> >> reult of adding libva-tpi, libva-glx and libva-egl?
>> >>
>> >
>> > You should see those shared libraries in /usr/lib
>>
>> I think that I do:
>>
>> root@crownbay:/usr/lib# ls -l *libva*
>> lrwxrwxrwx =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A0 =A019 Mar 21 1=
7:38
>> libva-egl.so.1 -> libva-egl.so.1.0.12
>> -rwxr-xr-x =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A03040 Mar 21 17:=
07 libva-egl.so.1.0.12
>> lrwxrwxrwx =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A0 =A019 Mar 21 1=
7:38
>> libva-glx.so.1 -> libva-glx.so.1.0.12
>> -rwxr-xr-x =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 14868 Mar 21 17:07=
 libva-glx.so.1.0.12
>> lrwxrwxrwx =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A0 =A019 Mar 21 1=
7:38
>> libva-tpi.so.1 -> libva-tpi.so.1.0.12
>> -rwxr-xr-x =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A03856 Mar 21 17:=
07 libva-tpi.so.1.0.12
>> lrwxrwxrwx =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A0 =A019 Mar 21 1=
7:38
>> libva-x11.so.1 -> libva-x11.so.1.0.12
>> -rwxr-xr-x =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 28476 Mar 21 17:07=
 libva-x11.so.1.0.12
>> lrwxrwxrwx =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 =A0 =A015 Mar 21 1=
7:38 libva.so.1 ->
>> libva.so.1.0.12
>> -rwxr-xr-x =A0 =A01 root =A0 =A0 root =A0 =A0 =A0 =A0 68816 Mar 21 17:07=
 libva.so.1.0.12
>>
>> The older image did not have egl, glx and tpi
>>
>> However, when I execute gst-launch -v playbin2 uri=3Dfile:///media/hdd/B=
BB.ogv
>>
>> I get a lot of "There may be a timestamping problem, or this computer
>> is too slow." warnings.
>>
>> Attached are the logs created by the above command.
>>
>> Is there something else that needs to be done?
>
> Hmm, looks like the acceleration isn't kicking in. =A0Is that a supported
> format for emgd accelaration? - I've been testing with 1080p .h264
> videos, http://www.bigbuckbunny.org/index.php/download/, maybe if you
> could try that so we know we're on the same page.
>

I was hoping that Ogg Video is supported.

I tried the H.264 (BBB stands for bigbuck bunny, I got these movies
from an earlier email from you). But I am getting another error -
ERROR: pipeline doesn't want to preroll.

Do I need some other codec or some library? Are there licensing
implications of using H.264?

