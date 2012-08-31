Return-Path: <andrei@gherzan.ro>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D6D3E0074B
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:30:51 -0700 (PDT)
Received: by iecs9 with SMTP id s9so1836954iec.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=4Us81jyY2Pm5crULGunN6J8bOSM3B0ug4wuZ+UGqFTo=;
	b=IkvBgjQO1pzXZWxkPZsB4JIT6hAgrLPoxTSr232aTb7kkgxORk98urFSbxO4wiIX5i
	NaZcU8P/wFfHFxDUGZ1VPmNOKlsuXMAV3QAkbO8HCymHbrUbPlxhalZZr+U5N2UhA7oA
	UYDEBQxrahtuVepXKlT8Mra5g5meMpEconvlz3KhFc0O4MnV9sEgZ5wrdaqYLSc5fIet
	B6XfMDnC2eG3FNGO8fa3I8WBGAvAIKSWZgsnOLymJMrCSxZhmRGuLV8y+62Z9kliMRJM
	6CwZxyRlX9+j/MjxvguBK5gaqxUxroG6fRK0HGsVBJAjeWCf3HuYSQPpKkrN/KA96EkO
	lLRA==
Received: by 10.50.41.129 with SMTP id f1mr1768004igl.57.1346405448559; Fri,
	31 Aug 2012 02:30:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.129.232 with HTTP; Fri, 31 Aug 2012 02:30:28 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <504083B8.7050102@communistcode.co.uk>
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
	<50407DDE.8070208@r-finger.com>
	<50407F73.5060308@communistcode.co.uk> <5040814D.8030106@r-finger.com>
	<CAK18fxG=VeHuVgoOz9zpe-am+NCPodAVVecDNFgzDTAtNAFFHw@mail.gmail.com>
	<504083B8.7050102@communistcode.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 31 Aug 2012 12:30:28 +0300
Message-ID: <CAK18fxErkyeXNzqzV4gSC6u2kVekCY2UvkJByg7mfBFGwdSOVQ@mail.gmail.com>
To: ml@communistcode.co.uk
X-Gm-Message-State: ALoCoQmYWEMbjvtOWSewERqeMR4WaQV9d6Os3SGgG1i7lBmgNVVQ1IgI59/N8knRtu1EndWSe65X
Cc: yocto@yoctoproject.org
Subject: Re: meta-raspberry pi libav bbappend
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
X-List-Received-Date: Fri, 31 Aug 2012 09:30:51 -0000
Content-Type: multipart/alternative; boundary=14dae93406837c2df604c88c72e5

--14dae93406837c2df604c88c72e5
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 31, 2012 at 12:28 PM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> On 31/08/12 10:20, Andrei Gherzan wrote:
>
>> On Fri, Aug 31, 2012 at 12:18 PM, Tomas Frydrych <
>> tf+lists.yocto@r-finger.com <mailto:tf+lists.yocto@r-**finger.com<tf%2Blists.yocto@r-finger.com>
>> >>wrote:
>>
>>
>>     On 31/08/12 10:10, Jack Mitchell wrote:
>>     > Thanks for the suggestion but unfortunately no dice. It was working
>>     > about a week ago with this BBMASK...The only big change I can see is
>>     > that omxplayer now depends in libav, but I have tried just
>>     masking the
>>     > whole recipes-multimedia path with the same result, so I don't
>>     it's that.
>>
>>
>>     I think the poky-raspberrypi.conf is overriding your BBMASK and it no
>>     longer masks out libav, see
>>     https://github.com/djwillis/**meta-raspberrypi/commit/**
>> 3e0cf999e8fe547a52cb8af28eefdf**0f8482daba<https://github.com/djwillis/meta-raspberrypi/commit/3e0cf999e8fe547a52cb8af28eefdf0f8482daba>
>>
>>
>> yes. BBMASK is set in distro conf. I will fix it. Wait a sec.
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
> Cheers Andrei, that fixed the parsing issue!
>
>
Checking the next one...

Andrei

--14dae93406837c2df604c88c72e5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Fri, Aug 31, 2012 at 12:28 PM, Jack Mitchell =
<span dir=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk" target=3D"_=
blank">ml@communistcode.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

On 31/08/12 10:20, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Fri, Aug 31, 2012 at 12:18 PM, Tomas Frydrych &lt;<a href=3D"mailto:tf%2=
Blists.yocto@r-finger.com" target=3D"_blank">tf+lists.yocto@r-finger.com</a=
> &lt;mailto:<a href=3D"mailto:tf%2Blists.yocto@r-finger.com" target=3D"_bl=
ank">tf+lists.yocto@r-<u></u>finger.com</a>&gt;&gt;wrote:<div>

<div class=3D"h5"><br>
<br>
=A0 =A0 On 31/08/12 10:10, Jack Mitchell wrote:<br>
=A0 =A0 &gt; Thanks for the suggestion but unfortunately no dice. It was wo=
rking<br>
=A0 =A0 &gt; about a week ago with this BBMASK...The only big change I can =
see is<br>
=A0 =A0 &gt; that omxplayer now depends in libav, but I have tried just<br>
=A0 =A0 masking the<br>
=A0 =A0 &gt; whole recipes-multimedia path with the same result, so I don&#=
39;t<br>
=A0 =A0 it&#39;s that.<br>
<br>
<br>
=A0 =A0 I think the poky-raspberrypi.conf is overriding your BBMASK and it =
no<br>
=A0 =A0 longer masks out libav, see<br>
=A0 =A0 <a href=3D"https://github.com/djwillis/meta-raspberrypi/commit/3e0c=
f999e8fe547a52cb8af28eefdf0f8482daba" target=3D"_blank">https://github.com/=
djwillis/<u></u>meta-raspberrypi/commit/<u></u>3e0cf999e8fe547a52cb8af28eef=
df<u></u>0f8482daba</a><br>


<br>
<br>
yes. BBMASK is set in distro conf. I will fix it. Wait a sec.<br>
<br>
<br></div></div><div class=3D"im">
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></blockquote>
<br>
Cheers Andrei, that fixed the parsing issue!<div class=3D"im HOEnZb"><br></=
div></blockquote><div>=A0</div><div>Checking the next one...</div><div><br>=
</div><div>Andrei=A0</div></div>

--14dae93406837c2df604c88c72e5--
