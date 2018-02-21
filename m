Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6A67E00E81; Wed, 21 Feb 2018 00:14:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66FA1E00CF1
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 00:14:16 -0800 (PST)
Received: by mail-it0-f49.google.com with SMTP id o9so1302180itc.1
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 00:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oGDPxgaa/yt09mWmXrNy4bIllp6DwD5ZzmP4aOG8OUM=;
	b=OlZVlIh/7SrcIpdr+V6AregXoAPupXCZrJYBJ31A4u0/BNigNkiSHsLF3dw/8G5rQD
	gzEeV68b2H0dru2blZQ9XGXIM1DmSpd5BEo0QopmCuPwtm3pMrBHN1Er9BjI6aPz30xB
	6hP9R9flbAzpvm7zfylbJcaiHOdOJip6ggHIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oGDPxgaa/yt09mWmXrNy4bIllp6DwD5ZzmP4aOG8OUM=;
	b=SR8Ne2fAWsSItKvtVBjmlOVZ9DxzztJ5qn/8O444I0+VhyAesV1jFn5LnYj30ivykb
	3VxCygKcn0f1TmDQbG4jiEL6iTJh0NECOG4mpJ51FkB9HQX3WkFjBoal+kAfFw9ij6X7
	a7XAEqmONu0XDK9TBYHO4REAIasLv6bAwCs4uXFDJFntTRlZ+m9/oMZiUH410CJvPriy
	85CLmWws12i5k7/lQOMeeikgXhGvzEBW7Y8EYkwoipkzs7bdrOciM0gQcNaaWMKJ9Emu
	fHlJR+kr/zndpyrVs0rfAzubDl02zLC3nQjHCww5TrlJzipo01h/oPK1j87s33a/wLqS
	M32g==
X-Gm-Message-State: APf1xPAkHrQ2XB5J6TLGtaOMaD+6IhqluN1P/or0qoApiFCI2yfsenAE
	yxx1yFSLPW+M/Z4ORvEDhvJflu8patmkaE0NT6TPyw==
X-Google-Smtp-Source: AH8x225VPmgpZIBBF1KWFdW92S2JJ5+5mo8EMZQxrHtgLr0IebOpeau8/hpJTzQb6aGxSa8hXfFQ1n9aIYSy3DllWJM=
X-Received: by 10.36.31.67 with SMTP id d64mr2170643itd.127.1519200855661;
	Wed, 21 Feb 2018 00:14:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Wed, 21 Feb 2018 00:14:15 -0800 (PST)
In-Reply-To: <9932000.ggXYnGUaR3@peggleto-mobl.ger.corp.intel.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<de7a5512-c5bf-8a67-f454-a85c788ef2b6@prevas.dk>
	<CAALXFYxaYh=cEaNGOzZsjN50zVd-6MsUNKySwiDc+isCKgsBVQ@mail.gmail.com>
	<9932000.ggXYnGUaR3@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 21 Feb 2018 09:14:15 +0100
Message-ID: <CAALXFYw-9FyihybcBa5WatNKbK0cr0vT=yzdxBBD3WJS2nK=GQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Wed, 21 Feb 2018 08:14:17 -0000
Content-Type: multipart/alternative; boundary="001a1144990e584ef10565b48354"

--001a1144990e584ef10565b48354
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-02-21 4:01 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Tuesday, 20 February 2018 9:26:49 PM NZDT Iv=C3=A1n Castell wrote:
> > 2018-02-20 7:45 GMT+01:00 Martin Hundeb=C3=B8ll <mnhu@prevas.dk>:
> > >> Thank you for the information, I will take into account that tool fo=
r
> > >> future embedded projects. However, the focus of this issue was to
> remove
> > >> completely busybox from the image, not replacing it by another
> > >> application box.
> > >>
> > >> I have created a bbappend with a fragment of the busybox configurati=
on
> > >> disabling syslog and udhcpc applets. It works. However the busybox
> binary
> > >> and a lot of applets are still there (adduser, unzip, fbset,
> traceroute,
> > >> and more).
> > >>
> > >> Disabling all different applets and installing native tools instead
> could
> > >> be the right way to procede. Not a nice solution, but at least it
> should
> > >> work...
> > >>
> > >
> > > Here's what we have in our distro config to disable busybox:
> > >
> > > > # Disable busybox
> > > > VIRTUAL-RUNTIME_base-utils =3D ""
> > > > ALTERNATIVE_PRIORITY_pn-busybox =3D "1"
> > >
> > > The priority setting make bitbake pull in alternatives from util-linu=
x
> /
> > > coreutils when appropriate.
> >
> > Yes!! That was the trick. It works like a charm!! Thank you so much Mr.
> > Martin!! :-)
>
> I will note that the priority currently set in busybox.inc is 50, which i=
s
> lower than coreutils 100 (or 90 for hostname), so that part shouldn't be
> needed for coreutils. There are one or two other recipes that set a
> priority
> lower than 50 for reasons that are not immediately clear to me.
>
> Additionally, ALTERNATIVE_PRIORITY won't do anything to control what goes
> into
> the image - it only controls which binary is selected at runtime when mor=
e
> than one providing the same binary is installed. Thus I can only assume
> that
> it was the VIRTUAL-RUNTIME_base-utils =3D "" that finally removed the
> packages
> you wished removed.
>
> Cheers,
> Paul
>


I have tested your suggestion, disabling the ALTERNATIVE_PRIORITY
declaration:

    VIRTUAL-RUNTIME_base-utils =3D ""
    # ALTERNATIVE_PRIORITY =3D

And effectively the generated image contains any reference to busybox
toolbox at all. Thank you very much for the clarification, Mr Paul!! :-)

I want to add that, if your custom image installs packagegroup-core-boot,
then you also need to set VIRTUAL-RUNTIME_login_manager variable with a
valid value different from "busybox". My custom image includes that
packagegroup, so to achieve my goal, I define in my distro.conf this
variable:

    VIRTUAL-RUNTIME_login_manager =3D "shadow"

Hope this helps to somebody else.

Thank you for all your support! :-)

--001a1144990e584ef10565b48354
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><br></span></div><div><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8p=
x;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><br=
></span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">201=
8-02-21 4:01 GMT+01:00 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.inte=
l.com</a><wbr>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><span class=3D"gmail-m_7623664020883888147gmail-">On Tuesday, 20 Febru=
ary 2018 9:26:49 PM NZDT Iv=C3=A1n Castell wrote:<br>
&gt; 2018-02-20 7:45 GMT+01:00 Martin Hundeb=C3=B8ll &lt;<a href=3D"mailto:=
mnhu@prevas.dk" target=3D"_blank">mnhu@prevas.dk</a>&gt;:<br>
</span><span class=3D"gmail-m_7623664020883888147gmail-">&gt; &gt;&gt; Than=
k you for the information, I will take into account that tool for<br>
&gt; &gt;&gt; future embedded projects. However, the focus of this issue wa=
s to remove<br>
&gt; &gt;&gt; completely busybox from the image, not replacing it by anothe=
r<br>
&gt; &gt;&gt; application box.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I have created a bbappend with a fragment of the busybox conf=
iguration<br>
&gt; &gt;&gt; disabling syslog and udhcpc applets. It works. However the bu=
sybox binary<br>
&gt; &gt;&gt; and a lot of applets are still there (adduser, unzip, fbset, =
traceroute,<br>
&gt; &gt;&gt; and more).<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Disabling all different applets and installing native tools i=
nstead could<br>
&gt; &gt;&gt; be the right way to procede. Not a nice solution, but at leas=
t it should<br>
&gt; &gt;&gt; work...<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; Here&#39;s what we have in our distro config to disable busybox:<=
br>
&gt; &gt;<br>
&gt; &gt; &gt; # Disable busybox<br>
&gt; &gt; &gt; VIRTUAL-RUNTIME_base-utils =3D &quot;&quot;<br>
&gt; &gt; &gt; ALTERNATIVE_PRIORITY_pn-busybo<wbr>x =3D &quot;1&quot;<br>
&gt; &gt;<br>
&gt; &gt; The priority setting make bitbake pull in alternatives from util-=
linux /<br>
&gt; &gt; coreutils when appropriate.<br>
&gt;<br>
</span><span class=3D"gmail-m_7623664020883888147gmail-">&gt; Yes!! That wa=
s the trick. It works like a charm!! Thank you so much Mr.<br>
&gt; Martin!! :-)<br>
<br>
</span>I will note that the priority currently set in busybox.inc is 50, wh=
ich is<br>
lower than coreutils 100 (or 90 for hostname), so that part shouldn&#39;t b=
e<br>
needed for coreutils. There are one or two other recipes that set a priorit=
y<br>
lower than 50 for reasons that are not immediately clear to me.<br>
<br>
Additionally, ALTERNATIVE_PRIORITY won&#39;t do anything to control what go=
es into<br>
the image - it only controls which binary is selected at runtime when more<=
br>
than one providing the same binary is installed. Thus I can only assume tha=
t<br>
it was the VIRTUAL-RUNTIME_base-utils =3D &quot;&quot; that finally removed=
 the packages<br>
you wished removed.<br>
<div class=3D"gmail-m_7623664020883888147gmail-HOEnZb"><div class=3D"gmail-=
m_7623664020883888147gmail-h5"><br>
Cheers,<br>
Paul<br></div></div></blockquote><div><br></div><div><br></div><div>I have =
tested your suggestion,=C2=A0disabling the ALTERNATIVE_PRIORITY declaration=
:<br></div><div><div style=3D"text-align:start;text-indent:0px;text-decorat=
ion-style:initial;text-decoration-color:initial"><div style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-transform:none;white-space:normal;word-spacing:0px"><br>=
</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-transform:none;white-spa=
ce:normal;word-spacing:0px">=C2=A0 =C2=A0 VIRTUAL-RUNTIME_base-utils =3D &q=
uot;&quot;</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-transform:none=
;white-space:normal;word-spacing:0px"><span style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=
=A0 # ALTERNATIVE_PRIORITY =3D</span></div><div style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-transform:none;white-space:normal;word-spacing:0px"><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline"><br></span></div><div><span style=3D"text-align:start;text=
-indent:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline"><div style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-transform:none;white-space:normal;word-spacing:=
0px;text-align:start;text-indent:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial"><span style=3D"fon=
t-size:12.8px">And effectively t</span><span style=3D"font-size:12.8px">he =
generated image contains any reference to busybox toolbox at all.=C2=A0</sp=
an><span style=3D"font-size:12.8px">Thank you very much for the clarificati=
on, Mr Paul!! :-)</span></div><div style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
transform:none;white-space:normal;word-spacing:0px;text-align:start;text-in=
dent:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial"><span style=3D"font-size:12.8px"><br></span></=
div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-sty=
le:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-transform:none;white-space:normal;word-spa=
cing:0px;text-align:start;text-indent:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial"><div style=3D=
"font-size:small;color:rgb(34,34,34);font-family:arial,sans-serif;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial"><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-sty=
le:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline">I want to add that, if<span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">=C2=A0your cu=
stom image installs packagegroup-core-boot, then you also need to set </spa=
n></span><span style=3D"font-size:12.8px">VIRTUAL-RUNTIME_login_<wbr>manage=
r variable with a valid value different from &quot;busybox&quot;.=C2=A0</sp=
an><span style=3D"font-size:12.8px">My custom image includes that packagegr=
oup, so to achieve my goal, I define in my distro.conf=C2=A0</span><span st=
yle=3D"font-size:12.8px">this variable:</span></div><div style=3D"font-size=
:small;color:rgb(34,34,34);font-family:arial,sans-serif;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"font-size=
:12.8px"><br></span></div><div style=3D"font-size:small;color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial"><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 VIR=
TUAL-RUNTIME_login_manager =3D &quot;shadow&quot;</span><br></div><div styl=
e=3D"font-size:small;color:rgb(34,34,34);font-family:arial,sans-serif;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><span styl=
e=3D"font-size:12.8px"><br></span></div><div style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial"><span style=3D"font-size:12.8px">Hope this helps to =
somebody else.</span></div><div style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial"><span style=3D"font-size:12.8px"><br></span></div><div style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial"><span style=3D"font-size:12.8px"=
>Thank you for all your support! :-)</span></div><div style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial"><span style=3D"font-size:12.8px"><br></span=
></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><br></div>=
</div></span></div></div></div></div>
</div></div>

--001a1144990e584ef10565b48354--
