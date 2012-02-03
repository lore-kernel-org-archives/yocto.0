Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C84BEE002CA
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 14:52:05 -0800 (PST)
Received: by vbjk13 with SMTP id k13so4266306vbj.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 14:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=3q4h7qatjiyDalywH6y7Vr/Nx+ilkH9yVyaswElDbq4=;
	b=LzjNyu3u/9kF3TlmXgJVoIIf4rI4qtzvsiFK8lLOGrxAE9J1S4oFlMHa88d97jDKBa
	6PhVJ61Iy1KRvhua+s11drHJPQ94emjmh3FOcq65ynxH9EEtoeuSTpE5dEq0nNahEtXi
	tPjnGmL0QTQB3gFC1amUSifC04ecl3/nd09yU=
MIME-Version: 1.0
Received: by 10.52.17.75 with SMTP id m11mr4280642vdd.101.1328309521993; Fri,
	03 Feb 2012 14:52:01 -0800 (PST)
Received: by 10.52.180.102 with HTTP; Fri, 3 Feb 2012 14:52:01 -0800 (PST)
In-Reply-To: <CANFv2E=jRpNm7YxyrOobjhvscisE3y1a5xQbukZeSYbuWpyw=w@mail.gmail.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com>
	<1328132827.2304.149.camel@elmorro> <4F29BF30.80808@gmail.com>
	<1328140929.2304.157.camel@elmorro> <4F29DF85.9040605@gmail.com>
	<1328145634.2304.159.camel@elmorro>
	<CANFv2Emx6kbdEwnWkkORp7h-vZovGSExUnn45JORZ56MuNeEfQ@mail.gmail.com>
	<1328226148.2304.188.camel@elmorro>
	<63ECFF2A2302B44093D7CE9E9962C49002A8A2@ORSMSX103.amr.corp.intel.com>
	<CANFv2EnGGu70vzv+KFagLTRscoGv2k_ob27qxdhw9H3tWsnG8w@mail.gmail.com>
	<CANFv2E=jRpNm7YxyrOobjhvscisE3y1a5xQbukZeSYbuWpyw=w@mail.gmail.com>
Date: Fri, 3 Feb 2012 17:52:01 -0500
Message-ID: <CADzUK1J_n4YYvMzBf8G5AhjQ7_=tUscTSkHPVHD5Am6vWq2OLQ@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
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
X-List-Received-Date: Fri, 03 Feb 2012 22:52:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jim,

I would appreciate if you could add some information to the How do I
section in the wiki. I am not there yet, but I also need audio and
video on crownbay in about 4-8 weeks.

Thanks for getting to the bottom of this

Autif

On Fri, Feb 3, 2012 at 3:21 PM, James Abernathy <jfabernathy@gmail.com> wro=
te:
>
>
> On Fri, Feb 3, 2012 at 11:02 AM, James Abernathy <jfabernathy@gmail.com>
> wrote:
>>
>> I tried all the different mixer options on the Crownbay.=A0 It's just no=
t
>> very loud.=A0 I'll try an amplifier, but with earphones, it almost not l=
oud
>> enough to hear.=A0 I don't remember other Linux's having this issue.=A0 =
Could
>> there be something else software wise?=A0 The good news is the built-in =
GUI
>> Music and Video players work with the H.264 files I've tested as well as=
 the
>> command line stuff.
>>
>> Also got the glxgears works as well.
>>
>> Jim A
>
> To close this one out.=A0 The Crownbay seems to have a line level out onl=
y and
> not a port that supports headphones and line level.=A0 Once I put minimal=
 Line
> in level amplfication, the audio works as expected.
>
> Thanks for the help. It's good to see nice integration in Yocto of video =
and
> music players that actually plays the the H.264 and MP3 files.
>
> Jim A
>
>>
>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

