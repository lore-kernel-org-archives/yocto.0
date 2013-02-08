Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 44352E00724
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 06:53:48 -0800 (PST)
Received: by mail-vb0-f43.google.com with SMTP id fs19so2358616vbb.16
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 06:53:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=TPjKnnSQAJkKAldG1Ji8XUCRO95uk1HcIw7ZaUnmNVc=;
	b=Xr/qFLGt/DoqlVFMZ8HlXgxhLXjR0N11bfYx/ACe2aQSQ3tvzKJ0NQJnOCofXOOojv
	W02s+8neL0uw4e3XAwN1/0/0J4wG5J+CwggglsOkDhs/7xN8KKIiMEQujTuBsnL6psTF
	rILVPlBS/apraWFPXGMsEDUulEfwu5ijItuNA/jUMABWVCjsTMPk9iooLYmjEf1zzWy0
	NFLOGQZiPU+e/emtbM4KV35HmstHC/ocSPnaXAA2l1iSKg/P6cPZ64giegFv2cbxgDK5
	F9c2S25ovFjTM5tyAZhuFzbjEXF2Bp+3+KVIZQHE8Kacw9zKcUnXRUd+ZKgYaqc+29vz
	Ff1Q==
X-Received: by 10.58.220.229 with SMTP id pz5mr7075666vec.30.1360335217475;
	Fri, 08 Feb 2013 06:53:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.229.195 with HTTP; Fri, 8 Feb 2013 06:53:17 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <51150925.8080408@r-finger.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxF3TaptkgRnJfH6HRJaCPFOtD+TiiN7opTVevQt6zW7ew@mail.gmail.com>
	<5114D0CB.7090604@r-finger.com>
	<CAK18fxGpb1R5VM9Pk8iz-1hnieNOsspsb5hXqtUB9Vuua-dKxw@mail.gmail.com>
	<51150925.8080408@r-finger.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 8 Feb 2013 16:53:17 +0200
Message-ID: <CAK18fxE105fWPHhYOczRFXuHcO=ju01Q4qgDSk0WZGger-kr7g@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQkNMgYkXjlRuArw0FMMJuwH0K7pCdsTDDLXKXPJZiJTvF4k8dzlCVXdrNPXTtiXawPmV1VC
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Binary graphics library fixes
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
X-List-Received-Date: Fri, 08 Feb 2013 14:53:48 -0000
Content-Type: multipart/alternative; boundary=047d7bdc07d069c0e004d537b979

--047d7bdc07d069c0e004d537b979
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Feb 8, 2013 at 4:18 PM, Tomas Frydrych
<tf+lists.yocto@r-finger.com>wrote:

> On 08/02/13 13:03, Andrei Gherzan wrote:
> >
> >
> >
> > On Fri, Feb 8, 2013 at 12:17 PM, Tomas Frydrych
> > <tf+lists.yocto@r-finger.com <mailto:tf+lists.yocto@r-finger.com>>
> wrote:
> >
> >     Hi Andrei,
> >
> >     On 07/02/13 14:26, Andrei Gherzan wrote:
> >     > We are moving to userland repo. So we will build our libraries
> >
> >     I tried to use the userland repo about a week ago and had to revert
> back
> >     to using the binary firmware; the userland tree seem to miss some bcm
> >     headers, so it was impossible to build apps against the libs whose
> >     includes require those.
> >
> >
> > I will push some patches this weekend. Would you give it a try?
>
> Time allowing, of course. But the problem was not with the meta-rpi
> packaging, the files were missing in the upstream userland git repository.


Maybe newer updates include those. Just need to know.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7bdc07d069c0e004d537b979
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Feb 8, 2013 at 4:18 PM, Tomas Frydrych <span dir=
=3D"ltr">&lt;<a href=3D"mailto:tf+lists.yocto@r-finger.com" target=3D"_blan=
k">tf+lists.yocto@r-finger.com</a>&gt;</span> wrote:<br><div class=3D"gmail=
_extra"><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 08/02/13 13:03, Andrei Gherzan wrote:=
<br>


&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Feb 8, 2013 at 12:17 PM, Tomas Frydrych<br>
</div><div class=3D"im">&gt; &lt;<a href=3D"mailto:tf%2Blists.yocto@r-finge=
r.com">tf+lists.yocto@r-finger.com</a> &lt;mailto:<a href=3D"mailto:tf%2Bli=
sts.yocto@r-finger.com">tf+lists.yocto@r-finger.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 Hi Andrei,<br>
&gt;<br>
&gt; =A0 =A0 On 07/02/13 14:26, Andrei Gherzan wrote:<br>
&gt; =A0 =A0 &gt; We are moving to userland repo. So we will build our libr=
aries<br>
&gt;<br>
&gt; =A0 =A0 I tried to use the userland repo about a week ago and had to r=
evert back<br>
&gt; =A0 =A0 to using the binary firmware; the userland tree seem to miss s=
ome bcm<br>
&gt; =A0 =A0 headers, so it was impossible to build apps against the libs w=
hose<br>
&gt; =A0 =A0 includes require those.<br>
&gt;<br>
&gt;<br>
&gt; I will push some patches this weekend. Would you give it a try?<br>
<br>
</div>Time allowing, of course. But the problem was not with the meta-rpi<b=
r>
packaging, the files were missing in the upstream userland git repository.<=
/blockquote><div><br></div><div>Maybe newer updates include those. Just nee=
d to know.</div><div><br></div></div>-- <br><div dir=3D"ltr"><div style=3D"=
text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7bdc07d069c0e004d537b979--
