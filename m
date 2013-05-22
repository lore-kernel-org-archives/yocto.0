Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 547AEE0148D
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:12:20 -0700 (PDT)
Received: by mail-pb0-f53.google.com with SMTP id un4so1925399pbc.12
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=bdEpIOT+RwKQkK6+VvSmC44asMp0o/j2Mk/KmcTuKiM=;
	b=XckqSsC/hb9BzcX+7x/mZrHSXMXYFr3BEluNV2IKenOb64YwU5BTOwvgi9zq7xgs76
	Em945g7oQkOMXjEbS/OUlYh4zJwMX1otM2Snc8rnwv8t/WHvMNvFc51N6oif/IuSuM8b
	ny+2PKTnUu+WA4oqPRMNcuNp5OeR7N0FjaVCzTdKZcLty0cNzwtgztgUsLlnEsu3k9i2
	G3aVFSj0lH1rAYcBQLYN+KgdRHtMNST+a4Imhot15Gsh/jCAvud5P+XiadSNOJe5dg5A
	L7DKM6y7BPXZrbEkq3TxsH7VXMMFccybehzHqOAQTidoPHspwm1ih4nNvXOzqNa+e2ho
	Lx3w==
MIME-Version: 1.0
X-Received: by 10.68.20.193 with SMTP id p1mr8834208pbe.218.1369242740172;
	Wed, 22 May 2013 10:12:20 -0700 (PDT)
Received: by 10.68.5.230 with HTTP; Wed, 22 May 2013 10:12:20 -0700 (PDT)
In-Reply-To: <CAJTo0LbaJ4ezpvobr6xGK6-=oPAh_H=Woh1uuY7pcrRZbmXHhg@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAJTo0LbaJ4ezpvobr6xGK6-=oPAh_H=Woh1uuY7pcrRZbmXHhg@mail.gmail.com>
Date: Wed, 22 May 2013 22:42:20 +0530
Message-ID: <CAGxOggEv1AJfZDo7_QPt8ZSXwVb4WGGrjf_JaOKH1VWKKocabQ@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 17:12:20 -0000
Content-Type: multipart/alternative; boundary=bcaec5215ac323ae1004dd51ab07

--bcaec5215ac323ae1004dd51ab07
Content-Type: text/plain; charset=ISO-8859-1

Thanks Burton, Ross....
Will try this at my workplace.....
And is this a bug?


On Wed, May 22, 2013 at 10:26 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 22 May 2013 17:45, varun bhatnagar <varun292006@gmail.com> wrote:
>
>> Hi,
>>
>> I have successfully created a PowerPC image using* bitbake -k
>> core-image-minimal*.
>> When I am trying to boot it using *runqemu qemuppc* I am getting a
>> message saying* vnc server running on ::1:5900.*
>>
>> I searched on internet and it was written that to resolve this error *SDL
>> *and *SDL-devel* package should be installed.
>>
>> I have installed these packages but it did not work. Still I am getting
>> the same message.
>> Can anyone help me out with this. Below is the screenshot of message.
>>
>
> The bit that you/the internet missed is that the "problem" is that qemu
> didn't have SDL available when you built it.  You'll need to rebuild
> qemu-native - "bitbake -ccleansstate qemu-native ; bitbake qemu-native".
>
> Ross
>

--bcaec5215ac323ae1004dd51ab07
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Burton, Ross....<div style>Will try this at my work=
place.....</div><div style>And is this a bug?</div></div><div class=3D"gmai=
l_extra"><br><br><div class=3D"gmail_quote">On Wed, May 22, 2013 at 10:26 P=
M, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.c=
om" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 2=
2 May 2013 17:45, varun bhatnagar <span dir=3D"ltr">&lt;<a href=3D"mailto:v=
arun292006@gmail.com" target=3D"_blank">varun292006@gmail.com</a>&gt;</span=
> wrote:<br>
</div></div><div class=3D"gmail_quote"><div><div class=3D"h5"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">

<div dir=3D"ltr">Hi,<div><br></div><div>I have successfully created a Power=
PC image using<b> bitbake -k core-image-minimal</b>.</div><div>When I am tr=
ying to boot it using <b>runqemu qemuppc</b> I am getting a message saying<=
b> vnc server running on ::1:5900.</b></div>



<div><br></div><div>I searched on internet and it was written that to resol=
ve this error <b>SDL </b>and <b>SDL-devel</b> package should be installed.<=
/div><div><br></div><div>I have installed these packages but it did not wor=
k. Still I am getting the same message.</div>



<div>Can anyone help me out with this. Below is the screenshot of message.<=
/div></div></blockquote><div><br></div></div></div><div>The bit that you/th=
e internet missed is that the &quot;problem&quot; is that qemu didn&#39;t h=
ave SDL available when you built it. =A0You&#39;ll need to rebuild qemu-nat=
ive - &quot;bitbake -ccleansstate qemu-native ; bitbake qemu-native&quot;.<=
/div>
<span class=3D"HOEnZb"><font color=3D"#888888">

<div><br></div><div>Ross</div></font></span></div>
</blockquote></div><br></div>

--bcaec5215ac323ae1004dd51ab07--
