Return-Path: <nickdademo@gmail.com>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2866E007C6
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 02:56:09 -0800 (PST)
Received: by mail-ob0-f172.google.com with SMTP id gq1so1515588obb.17
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 02:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ed+/Bds9NpEUZykBBKc65Vlo+zrCXgYpCNU65Bb1znk=;
	b=A5CytEAl0TVfSR3sZsLKvEbWf/52lBCjfRDKrhxnvzyOzy8aGr42yQHhbmx/7Phknv
	XjqAYp4FtHXdj9i9/muMTbD1Ky3QJswGEWquYQfPPsUZBcwWLdyQOZRpznVuIiUmgpi+
	F8VxX3hU7uYbVGm0KqlzJFLRSeaimI6/IMZERE0qIK0LMJNHnvHYDrKDtpOitx+t3n9I
	AHD4fTJZr5XOQbIY1APfMQrKkwjpu9SVQKkV+gzoDoqJszTsMch7eBt217UNi0K3Lo0f
	zlYGJkRzfk2eJJb7aghhd3mGcG1G4FAcJYyMsqGvqAzuk71idGD2mYSIuAXHqAtWIz+r
	aEGg==
X-Received: by 10.60.93.105 with SMTP id ct9mr54533868oeb.12.1389178568595;
	Wed, 08 Jan 2014 02:56:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.72.70 with HTTP; Wed, 8 Jan 2014 02:55:48 -0800 (PST)
In-Reply-To: <CAP71WjwpyEtN_2t30jx2vCwe+VTwRSpLFfd9FJqhpVn12dqNKw@mail.gmail.com>
References: <CANR6C56AqYgV-Fq1e14E0O-OjjUkkY9jcvgEuABocAYMzm338A@mail.gmail.com>
	<CAP71WjwpyEtN_2t30jx2vCwe+VTwRSpLFfd9FJqhpVn12dqNKw@mail.gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Wed, 8 Jan 2014 21:55:48 +1100
Message-ID: <CANR6C55=yVTFG92rfS3Lujz1_2nhG=ogD_F2h79bt43hKX2C1A@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Creating a EXT4 rootfs instead of EXT3: How?
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
X-List-Received-Date: Wed, 08 Jan 2014 10:56:11 -0000
Content-Type: multipart/alternative; boundary=047d7b33d5a01c684b04ef73571f

--047d7b33d5a01c684b04ef73571f
Content-Type: text/plain; charset=ISO-8859-1

Thanks for the reply Nicolas.

It seems the problem is that .hddimg uses EXT3 by default (after looking at
image_types.bbclass).

The ROOTFS type for my build is set in
/meta/conf/machine/include/ia32-base.inc: IMAGE_FSTYPES += "live"

Is there a way to make the HDDIMG use EXT4 instead?

Thanks,
Nick

On Wed, Jan 8, 2014 at 12:24 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

>
> On Tue, Jan 7, 2014 at 2:19 PM, Nick D'Ademo <nickdademo@gmail.com> wrote:
>
>> Can't seem to get the build process to create a EXT4 filesystem - I've
>> tried the following:
>>
>
> in general, more details about the actual error you get would be more
> helpful.
>
>
>>
>> 1. Tried adding ROOTFSTYPE ?= "*ext4*" to the machine .conf file
>>
>
> the variable name is IMAGE_FSTYPES, not ROOTFSTYPES.
>
>
>> 2. Ensured EXT4 is enabled in the Linux kernel (using menuconfig)
>>
>
> this would not impact the image generation, only at runtime when mounting
> the rootfs
>
>
>>
>> This is a build for the Intel NUC hardware.
>>
>> Anyone have any ideas on how to do this?
>>
>>
>

--047d7b33d5a01c684b04ef73571f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the reply Nicolas.<br><br></div>It seems t=
he problem is that .hddimg uses EXT3 by default (after looking at image_typ=
es.bbclass).<br><p>The ROOTFS type for my build is set in /meta/conf/machin=
e/include/ia32-base.inc: IMAGE_FSTYPES +=3D &quot;live&quot;</p>

<p>Is there a way to make the HDDIMG use EXT4 instead?<br></p><div><div><di=
v class=3D"gmail_extra">
<br></div><div class=3D"gmail_extra">Thanks,<br>Nick<br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Jan 8, 2014 at 12:24 A=
M, Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesn=
e@linaro.org" target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> =
wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote"><div class=3D"im">On Tue,=
 Jan 7, 2014 at 2:19 PM, Nick D&#39;Ademo <span dir=3D"ltr">&lt;<a href=3D"=
mailto:nickdademo@gmail.com" target=3D"_blank">nickdademo@gmail.com</a>&gt;=
</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div><div><div>Can&#39;t =
seem to get the build process to create a EXT4 filesystem - I&#39;ve tried =
the following:<br>



</div></div></div></blockquote><div><br></div></div><div>in general, more d=
etails about the actual error you get would be more helpful. =A0</div><div =
class=3D"im"><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">



<div><div><div></div><div><br></div>1. Tried adding <span>ROOTFSTYPE ?=3D &=
quot;<i>ext4</i>&quot; to the machine .conf file<br></span></div></div></bl=
ockquote><div><br></div></div><div>the variable name is IMAGE_FSTYPES, not =
ROOTFSTYPES.</div>

<div class=3D"im">

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div><=
span>

</span></div><span>2. Ensured EXT4 is enabled in the Linux kernel (using me=
nuconfig)<br></span></div></blockquote><div><br></div></div><div>this would=
 not impact the image generation, only at runtime when mounting the rootfs<=
/div>

<div class=3D"im">

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><span>=
<br></span></div><div><span>This is a build for the Intel NUC hardware.<br>

</span></div><div><span><br></span></div>

<span>Anyone have any ideas on how to do this?<br><br></span></blockquote><=
div><br></div></div></div></div></div>
</blockquote></div><br></div></div></div></div>

--047d7b33d5a01c684b04ef73571f--
