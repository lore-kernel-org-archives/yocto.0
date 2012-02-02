Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D15FE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 11:15:47 -0800 (PST)
Received: by vcbfl13 with SMTP id fl13so2892022vcb.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 11:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AtrOHLBVbg7oRQszIrgrfS03ArThGNyBMZ3zIdhmMkM=;
	b=K1JB9zw3VldUSvJSvPbXSgAreoVlIUA7jwpJ1e4lJYJhjjkHg+Ix2QipORlgkd7TmT
	t1lgu9fSuiVbqK25sN470yHNVnyFPJ/tHoDv4sz8UP7bWcLTg5vVsvkFNWd+/oa2vmto
	oKv2S/UOVESy7M2evTna2prTr+5XZtCYUDyy4=
MIME-Version: 1.0
Received: by 10.220.151.67 with SMTP id b3mr2033151vcw.51.1328210145114; Thu,
	02 Feb 2012 11:15:45 -0800 (PST)
Received: by 10.52.37.111 with HTTP; Thu, 2 Feb 2012 11:15:45 -0800 (PST)
In-Reply-To: <4F2ADFE4.3050702@linux.intel.com>
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com> <4F2AC9A5.5040706@gmail.com>
	<4F2ACB7F.4010509@gmail.com> <4F2ADFE4.3050702@linux.intel.com>
Date: Thu, 2 Feb 2012 14:15:45 -0500
Message-ID: <CANFv2EkyMa0BSSKRm7VarTFM0xH2boJjWT8RZs8-iVegO3NPpw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
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
X-List-Received-Date: Thu, 02 Feb 2012 19:15:47 -0000
Content-Type: multipart/alternative; boundary=f46d042f9c84e2f92304b8000511

--f46d042f9c84e2f92304b8000511
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Feb 2, 2012 at 2:11 PM, Joshua Lock <josh@linux.intel.com> wrote:

>
>
> On 02/02/12 09:44, jfabernathy wrote:
>
>> On 02/02/2012 12:36 PM, jfabernathy wrote:
>>
>>> On 02/02/2012 12:06 PM, Mark Hatle wrote:
>>>
>>>> On 2/2/12 10:08 AM, jfabernathy wrote:
>>>>
>>>>> On 02/01/2012 10:59 PM, jfabernathy wrote:
>>>>>
>>>>>> Am I the only one seeing this dead link? I'm building from master and
>>>>>> can't get to this link that draws the error:
>>>>>>
>>>>>> http://cgit.freedesktop.org/**libva/snapshot/libva-1.0.12.**tar.bz2<http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2>
>>>>>>
>>>>>
> This is supposed to be a transient error but so far as I can see the fd.o
> cgit is still down.
>
>
> Just noticed that what's on the Yocto mirror is
>> libva_0.31.0-1+sds9.1ubuntu1.**tar.gz ), but the recipe is calling for a
>> newer version, libva-1.0.12.tar.bz2
>>
>
> I don't see libva-1.0.12 anywhere in poky or meta-yocto, the mirror is
> only updated once the autobuilder has seen the recipe and downloaded the
> object to mirror.
>
> After a quick google I can't find a libva newer than 0.32.0+1sds2 - where
> did you get your libva recipe from?
>
>
If I checkout master on poky and meta-intel and run the normal crownbay
(not the no-EMGD version) I get this error. Also on 1.2_M2 tag.

JIm A


> Cheers,
> Joshua
> --
> Joshua Lock
>        Yocto Project "Johannes factotum"
>        Intel Open Source Technology Centre
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--f46d042f9c84e2f92304b8000511
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Thu, Feb 2, 2012 at 2:11 PM, Joshua Lock <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:josh@linux.intel.com">josh@linux.intel.=
com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im"><br><br>On 02/02/12 09:44, jfabernathy wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">On 02/02/2012 12:36 PM, jfabernathy w=
rote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">On 02/02/2012 12:06 PM, Mark Hatle wr=
ote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">On 2/2/12 10:08 AM, jfabernathy wrote=
:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">On 02/01/2012 10:59 PM, jfabernathy w=
rote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Am I the only one seeing this dead li=
nk? I&#39;m building from master and<br>can&#39;t get to this link that dra=
ws the error:<br>
<br><a href=3D"http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.=
bz2" target=3D"_blank">http://cgit.freedesktop.org/<u></u>libva/snapshot/li=
bva-1.0.12.<u></u>tar.bz2</a><br></blockquote></blockquote></blockquote></b=
lockquote>
</blockquote><br></div>This is supposed to be a transient error but so far =
as I can see the fd.o cgit is still down.=20
<div class=3D"im"><br><br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Just noticed that what&#39;s on the Y=
octo mirror is<br>libva_0.31.0-1+sds9.1ubuntu1.<u></u>tar.gz ), but the rec=
ipe is calling for a<br>
newer version, libva-1.0.12.tar.bz2<br></blockquote><br></div>I don&#39;t s=
ee libva-1.0.12 anywhere in poky or meta-yocto, the mirror is only updated =
once the autobuilder has seen the recipe and downloaded the object to mirro=
r.<br>
<br>After a quick google I can&#39;t find a libva newer than 0.32.0+1sds2 -=
 where did you get your libva recipe from?<br><br></blockquote>
<div>=A0</div>
<div>If I checkout master on poky and meta-intel and run the normal crownba=
y (not the no-EMGD version) I get this error. Also on 1.2_M2 tag.</div>
<div>=A0</div>
<div>JIm A<br></div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Cheers,<br>Joshua<span class=3D"HOEnZ=
b"><font color=3D"#888888"><br>-- <br>Joshua Lock<br>=A0 =A0 =A0 =A0Yocto P=
roject &quot;Johannes factotum&quot;<br>
=A0 =A0 =A0 =A0Intel Open Source Technology Centre</font></span>=20
<div class=3D"HOEnZb">
<div class=3D"h5"><br>______________________________<u></u>________________=
_<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctopro=
ject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></=
u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--f46d042f9c84e2f92304b8000511--
