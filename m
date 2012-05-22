Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA647E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:26:15 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so14372218obb.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZNfCOgosjuS7EySHcfYoi/t99bTw0SOXYeMWOMK/oG4=;
	b=vDOVWUGUlke0m1I6bvlY/RH/juEMqnK2hlgMlCA9dMibywQQiAS6LqKva6Iqj7wbTS
	mXuQzTA7h8WBDvjZaQxvmgqHb2PQFepNHH+QAMJMEnDxm9bu6ZAKgDUO4qP1Ns2A/Chk
	uOnPTv7sdLHCazYmn14IE+gh1IDLQwppEVftaMB0YLSjOiB9c3OYBs9qtg/o12XRUNJg
	AwaruQf8emm6lFa8427IZvfKLjM8gm2zG6tB5NKJPys5C1FbDvbTevgQK3xRwTuVfGrq
	fDI7fofdorC7ERCQmPaSDAq1gzlLgMKRIEDhN6AmROqNX7Fuu/Vh8zWusmj/wNf456U1
	0DHg==
MIME-Version: 1.0
Received: by 10.182.174.36 with SMTP id bp4mr23616310obc.53.1337707575099;
	Tue, 22 May 2012 10:26:15 -0700 (PDT)
Received: by 10.76.151.198 with HTTP; Tue, 22 May 2012 10:26:15 -0700 (PDT)
In-Reply-To: <4FBBC712.404@intel.com>
References: <4FBB7BDE.4090008@gmail.com>
	<CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
	<CANFv2Ek7Fim1tDVQcxu99GL0jriOFo=_zHCz-b7BUACXfjwyng@mail.gmail.com>
	<4FBBC712.404@intel.com>
Date: Tue, 22 May 2012 13:26:15 -0400
Message-ID: <CANFv2EnvW6E_MfQ7FM8gOEo19qz1ACA57brMTMedUqkxo-DcLQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: runqemu qemux86
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
X-List-Received-Date: Tue, 22 May 2012 17:26:16 -0000
Content-Type: multipart/alternative; boundary=e89a8f647bd7d3c00e04c0a35059

--e89a8f647bd7d3c00e04c0a35059
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 22, 2012 at 1:04 PM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 05/22/2012 08:15 AM, James Abernathy wrote:
>
>>
>>
>> On Tue, May 22, 2012 at 10:45 AM, Autif Khan <autif.mlist@gmail.com
>> <mailto:autif.mlist@gmail.com>**> wrote:
>>
>>    On Tue, May 22, 2012 at 7:43 AM, jfabernathy <jfabernathy@gmail.com
>>     <mailto:jfabernathy@gmail.com>**> wrote:
>>     > when testing an image using runqemu qemux86, can you get
>>    networking to
>>     > work?? mine comes up disabled.  I want to test an application
>>    that requires
>>     > Internet access.
>>
>>    Yes, I am able to get networking to work out of the box (bitbake
>>    core-image-sato, etc.) Internetworking does not work out of the box.
>>
>>    This is accomplished over tun/tap devices - I do not know much about
>>    these virtual networking devices - they have never failed for me :-)
>>
>>    The IP address of the emulated machine is 192.168.7.2 - The IP address
>>    of host machine is 192.168.7.1
>>
>>    You can not (out of the box) communicate with machines other than the
>>    host machine - so that would included internet etc.
>>
>>    So, if you have an ssh server or a web-server running on the host
>>    machine - you can ssh to the host machine or browse a webpage using
>>    the browser. Alternatively, you can run a proxy server on the build
>>    machine and use it to get to the internet.
>>
>>    You can run ifconfig to see if the network is configured properly on
>>    the emulated machine in the terminal. It should show 192.168.7.2 - if
>>    you do not see this - you do not have networking working.
>>
>>
>> I can see the tap0 interface on my host at 192.168.7.1 by using ifconfig.
>> I can also see the eth0 on the qemu machine at 192.168.7.2
>> However, my host has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.
>> Somehow I need to connect the networks and I'm not sure exactly how to
>> do that so that DNS servers get used and the traffic all flows.
>> Jim A
>>
>
> There is some sort of routing or IP forwarding bug in the sato images that
> is due to be fixed soon. One thing I've found is you can actually get out
> to the internet for about 30 seconds or so immediately after the image
> boots. My suspicion is that some conman script is killing the route after
> boot. core-image-minimal works consistently, and since minimal doesn't use
> conman, I'm guessing that is the culprit.
>
> https://bugzilla.yoctoproject.**org/show_bug.cgi?id=2329<https://bugzilla.yoctoproject.org/show_bug.cgi?id=2329>
>
> Scott
>
So if I read this right,  I don't need any route or bridge commands to make
this work. If the bug gets fixed runqemu qemux86 should setup the
environment correctly so the web-webkit should get out to the internet via
the host machine connection?

JIm A


> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--e89a8f647bd7d3c00e04c0a35059
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Tue, May 22, 2012 at 1:04 PM, Scott Garman <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:scott.a.garman@intel.com" target=3D"_=
blank">scott.a.garman@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im">On 05/22/2012 08:15 AM, James Abernathy wrote:<br></div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im"><br><br>On Tue, May 22, 2012 at 10:45 AM, Autif Khan &lt;=
<a href=3D"mailto:autif.mlist@gmail.com" target=3D"_blank">autif.mlist@gmai=
l.com</a><br></div>
<div class=3D"im">&lt;mailto:<a href=3D"mailto:autif.mlist@gmail.com" targe=
t=3D"_blank">autif.mlist@gmail.com</a>&gt;<u></u>&gt; wrote:<br><br>=A0 =A0=
On Tue, May 22, 2012 at 7:43 AM, jfabernathy &lt;<a href=3D"mailto:jfaberna=
thy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a><br>
</div>
<div>
<div class=3D"h5">=A0 =A0&lt;mailto:<a href=3D"mailto:jfabernathy@gmail.com=
" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<u></u>&gt; wrote:<br>=A0 =
=A0 &gt; when testing an image using runqemu qemux86, can you get<br>=A0 =
=A0networking to<br>
=A0 =A0 &gt; work?? mine comes up disabled. =A0I want to test an applicatio=
n<br>=A0 =A0that requires<br>=A0 =A0 &gt; Internet access.<br><br>=A0 =A0Ye=
s, I am able to get networking to work out of the box (bitbake<br>=A0 =A0co=
re-image-sato, etc.) Internetworking does not work out of the box.<br>
<br>=A0 =A0This is accomplished over tun/tap devices - I do not know much a=
bout<br>=A0 =A0these virtual networking devices - they have never failed fo=
r me :-)<br><br>=A0 =A0The IP address of the emulated machine is 192.168.7.=
2 - The IP address<br>
=A0 =A0of host machine is 192.168.7.1<br><br>=A0 =A0You can not (out of the=
 box) communicate with machines other than the<br>=A0 =A0host machine - so =
that would included internet etc.<br><br>=A0 =A0So, if you have an ssh serv=
er or a web-server running on the host<br>
=A0 =A0machine - you can ssh to the host machine or browse a webpage using<=
br>=A0 =A0the browser. Alternatively, you can run a proxy server on the bui=
ld<br>=A0 =A0machine and use it to get to the internet.<br><br>=A0 =A0You c=
an run ifconfig to see if the network is configured properly on<br>
=A0 =A0the emulated machine in the terminal. It should show 192.168.7.2 - i=
f<br>=A0 =A0you do not see this - you do not have networking working.<br><b=
r><br>I can see the tap0 interface on my host at 192.168.7.1 by using ifcon=
fig.<br>
I can also see the eth0 on the qemu machine at 192.168.7.2<br>However, my h=
ost has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.<br>Somehow I need=
 to connect the networks and I&#39;m not sure exactly how to<br>do that so =
that DNS servers get used and the traffic all flows.<br>
Jim A<br></div></div></blockquote><br>There is some sort of routing or IP f=
orwarding bug in the sato images that is due to be fixed soon. One thing I&=
#39;ve found is you can actually get out to the internet for about 30 secon=
ds or so immediately after the image boots. My suspicion is that some conma=
n script is killing the route after boot. core-image-minimal works consiste=
ntly, and since minimal doesn&#39;t use conman, I&#39;m guessing that is th=
e culprit.<br>
<br><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2329" ta=
rget=3D"_blank">https://bugzilla.yoctoproject.<u></u>org/show_bug.cgi?id=3D=
2329</a><span class=3D"HOEnZb"><font color=3D"#888888"><br><br>Scott<br></f=
ont></span></blockquote>

<div>So if I read this right,=A0 I don&#39;t need any route or bridge comma=
nds to make this work. If the bug gets fixed runqemu qemux86 should setup t=
he environment correctly so the web-webkit should get out to the internet v=
ia the host machine connection?</div>

<div>=A0</div>
<div>JIm A</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D=
"#888888">-- <br>Scott Garman<br>Embedded Linux Engineer - Yocto Project<br=
>Intel Open Source Technology Center<br>
______________________________<u></u>_________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</=
a><br>
</font></span></blockquote></div><br>

--e89a8f647bd7d3c00e04c0a35059--
