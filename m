Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D4DE00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 10:08:06 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id gd11so1419984vcb.4
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 10:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=dbqn3fPzb2jwsEYreefR4IOcyovVQTQiMRMp9VxGf6E=;
	b=LwXdkSw6vzdrmXdcl2xaL38m4qHd/QCuRxDoE1BWsxaW3lbCRMROuQ5tY9iTg4DCQV
	MzlA8qwU6zYhW1KhqYmg6nQYETy5rnbZSqBfZ0FJJ2LJqM75p42+tXjPuxosYF9mHAIm
	DzvWyxYC5zejcjSOldAfAKYSy9xU5WmKxvl8fxyTmF+EkGGvV2TdnZ6bPAYJyA26N1HF
	pI7Bc4dnvW3oLFBXBMs5KyvB93dHP8o0TvBSw9YuXDQGLoVoIVbkx+KVwCwE1+GmJyY/
	RuLuI7/RpVeLEr6AbjoF30CJ5WSs3eHIroZ2FwZeJuvNxK8vZj5Xa77vOKPxN9yygbjQ
	wWTA==
MIME-Version: 1.0
X-Received: by 10.58.19.232 with SMTP id i8mr8019290vee.53.1363367285403; Fri,
	15 Mar 2013 10:08:05 -0700 (PDT)
Received: by 10.58.187.42 with HTTP; Fri, 15 Mar 2013 10:08:05 -0700 (PDT)
Received: by 10.58.187.42 with HTTP; Fri, 15 Mar 2013 10:08:05 -0700 (PDT)
In-Reply-To: <51435334.6010406@gmail.com>
References: <CABTzgQ6bgSFJ2nu2PcW37sfb=YiibDqOPZyc9m5u_w8RE=GJuA@mail.gmail.com>
	<51435334.6010406@gmail.com>
Date: Fri, 15 Mar 2013 18:08:05 +0100
Message-ID: <CABTzgQ68e7qNM_z-uSLjBd5BQd29A1mWB1rShZDp+-5FpV1DtQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: koansoftware@gmail.com, yocto@yoctoproject.org
Subject: Re: Problem with core-image-sato at init
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
X-List-Received-Date: Fri, 15 Mar 2013 17:08:06 -0000
Content-Type: multipart/alternative; boundary=047d7b86f2ecbee88b04d7f9aef1

--047d7b86f2ecbee88b04d7f9aef1
Content-Type: text/plain; charset=ISO-8859-1

Actually the problem is with splash. I solved it by removing it in the
init. Go to /etc/rc5 and either disable the splash or remove it. Then your
image may run. Try this and let me know :)
On 15 Mar 2013 17:58, "Marco" <koansoftware@gmail.com> wrote:

> Il 06/03/2013 16:32, Satya Swaroop Damarla ha scritto:
>
>> Hey Guys, Hi Rudy, Hi Hans
>>
>> As promised I am coming with the problem again.. I successfully made
>> core-image-minimal working and boot after chnaging the boot
>> parameters... but my core-image-sato is hanging at the boot.
>>
>> I looked in the init files of core-image minimal and core-image-sato and
>> they are the same. Here is the output where it logs.... I tried to find
>> the error with my little yocto experience but so far no success. I would
>> request your professional suggestions in this problem
>>
>> [    3.240408] VFS: Mounted root (ext2 filesystem) on device 179:1.
>> [    3.273397] devtmpfs: mounted
>> [    3.276615] Freeing init memory: 236K
>> INIT: version 2.88 booting
>>
>> Cheers,
>> Satya
>>
>>
>> ______________________________**_________________
>>
>
>
> Hi,
> I have the same problem here:
>
>
> VFS: Mounted root (nfs filesystem) on device 0:9.
> Freeing init memory: 144K
>
> ... more than 60" waiting with no messages nor splashscreen ...
>
> Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3+snapshot-20130315 ttyS0
>
> login:
>
>
> Any hint would be appreciated.
> TIA
> --
> Marco
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--047d7b86f2ecbee88b04d7f9aef1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Actually the problem is with splash. I solved it by removing=
 it in the init. Go to /etc/rc5 and either disable the splash or remove it.=
 Then your image may run. Try this and let me know :)</p>
<div class=3D"gmail_quote">On 15 Mar 2013 17:58, &quot;Marco&quot; &lt;<a h=
ref=3D"mailto:koansoftware@gmail.com">koansoftware@gmail.com</a>&gt; wrote:=
<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Il 06/03/2013 16:32, Satya Swaroop Damarla ha scritto:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hey Guys, Hi Rudy, Hi Hans<br>
<br>
As promised I am coming with the problem again.. I successfully made<br>
core-image-minimal working and boot after chnaging the boot<br>
parameters... but my core-image-sato is hanging at the boot.<br>
<br>
I looked in the init files of core-image minimal and core-image-sato and<br=
>
they are the same. Here is the output where it logs.... I tried to find<br>
the error with my little yocto experience but so far no success. I would<br=
>
request your professional suggestions in this problem<br>
<br>
[ =A0 =A03.240408] VFS: Mounted root (ext2 filesystem) on device 179:1.<br>
[ =A0 =A03.273397] devtmpfs: mounted<br>
[ =A0 =A03.276615] Freeing init memory: 236K<br>
INIT: version 2.88 booting<br>
<br>
Cheers,<br>
Satya<br>
<br>
<br>
______________________________<u></u>_________________<br>
</blockquote>
<br>
<br>
Hi,<br>
I have the same problem here:<br>
<br>
<br>
VFS: Mounted root (nfs filesystem) on device 0:9.<br>
Freeing init memory: 144K<br>
<br>
... more than 60&quot; waiting with no messages nor splashscreen ...<br>
<br>
Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3+snapshot-20130315 ttyS0<b=
r>
<br>
login:<br>
<br>
<br>
Any hint would be appreciated.<br>
TIA<br>
-- <br>
Marco<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>

--047d7b86f2ecbee88b04d7f9aef1--
