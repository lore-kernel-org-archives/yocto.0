Return-Path: <vishwavtu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85E7CE00C4D; Wed, 19 Dec 2018 20:29:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vishwavtu[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84FDAE0097C
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2018 20:29:20 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id u18so329117oie.10
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2018 20:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Q9Q7BaM4yFDzm2AfGl1kd0mXpLH5jJiY+D5H/64gKHg=;
	b=lei3P2s7aj0SjwX7xHGSOc5mGWhPiSA1d1jTnsMMTov2dsm+FbXGNkHpSX/cycJB1b
	Z//sV5vxvBbNP+mKzeE9Dsq1ayUCAG0K1Twl49LV8hReOOP5qcL3NGqCFH/SSZvxXW29
	VtIFtGe8Ps5BBBci6Ag/EZZUhaSKFfF3UIwLkmKOqmdJvkUUzuOwN4Wn5+8XfggVypp9
	+iZCck+2Gkb+j9Zfx0I4QSkV+nmjukR5TIiHQfAJk75/UhJZfSMkVxC7UW1FshGIp4WF
	KGhoAXJ9om1L2OE8jNTtdZFBznIFBTm1+T8cYIGZnuyEEfM84QyyEEHytQzKSUKsueTc
	8Low==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Q9Q7BaM4yFDzm2AfGl1kd0mXpLH5jJiY+D5H/64gKHg=;
	b=K78ODwuP2jEDAke8LMSTs6AyNhTowZc38q87tJMgK86fbFh/sq9xWO8VxJ6+5bOhZC
	Hpw65ri7GszgPjolxjAeHnkhyoZWmv3e0p5UL0bLdLcWKOR7AWG3dH9w4Piy1dZJPjXM
	mBcrzm2g8NwYWxDgoka6lM28fuLFYPSk4hcowrc9yUqy3ugdVqeiophuEciFlQ9Rf43n
	0I+2xP4d8Pr3LKbUvFwdxUoSpgDztFJUR1HPuTH2wsuhg9bJtCaomwy4TfAoBIoLidEO
	vEOx+yiMtgv2pZAAqy020jPmiuRCVbBvlH/SQRYnwDaG9p194PO/QzPShUJmp8oefDtH
	/4WQ==
X-Gm-Message-State: AA+aEWZXlyEhiqLfGH2M0duoqrABAZRJcHf1WZvKaVHj6mDSW7b6n9Dm
	mKkGRQ8uGenHkt9sss//gSgspjvYafC3eEDcmM2RrlqZ7dzMFw==
X-Google-Smtp-Source: AFSGD/VDTZogRLL6rgFSIy7+YpFjVSwRNTQ+/k5W6N7M4vgc+s9p6lwk48YJxdAl9uGuZtNdeyCOqtbag0pkf608t8s=
X-Received: by 2002:aca:3904:: with SMTP id g4mr1031059oia.24.1545280159535;
	Wed, 19 Dec 2018 20:29:19 -0800 (PST)
MIME-Version: 1.0
References: <3EAB3564-9C9E-46CC-9CD4-4971AD2CA1D9@gmail.com>
	<CAJTo0LYky_=zn6rcJhi4udOE3so2zxGYaEGRhtqaY7N_7rta3Q@mail.gmail.com>
	<CALQBcOfhSwreZF4JsuEwEM_ovTdEv5mZ87qfSZ6yZ_e-kLENkA@mail.gmail.com>
	<CAJTo0LZrNu1jRuFWS6AL+v4jg+g2Pnofrs3oe07Qju8nGZriTQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZrNu1jRuFWS6AL+v4jg+g2Pnofrs3oe07Qju8nGZriTQ@mail.gmail.com>
From: Vishwanath Chandapur <vishwavtu@gmail.com>
Date: Thu, 20 Dec 2018 09:59:08 +0530
Message-ID: <CALQBcOfXdDGMXv+CFUgS_mNekbq+O5szyBp0rNwTBMyQr0qnEg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [yocto-security] Open ssl version
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
X-List-Received-Date: Thu, 20 Dec 2018 04:29:21 -0000
Content-Type: multipart/alternative; boundary="000000000000fcd779057d6c92d1"

--000000000000fcd779057d6c92d1
Content-Type: text/plain; charset="UTF-8"

Hi Team,

I have set opnessl version in sumo but getting below errors.


*PREFERRED_VERSION_openssl = "1.1.0i"*


*Logs:*

NOTE: Resolving any missing task queue dependencies

NOTE: preferred version 1.1.0i of openssl not available (for item libssl)
NOTE: versions of openssl available: 1.0.2p
NOTE: preferred version 1.1.0i of openssl not available (for item openssl10)
NOTE: versions of openssl available: 1.0.2p
NOTE: preferred version 1.1.0i of openssl not available (for item openssl-conf)
NOTE: versions of openssl available: 1.0.2p


ERROR: Multiple versions of openssl are due to be built
(/home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivity/openssl/openssl_1.0.2p.bb
/home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivity/openssl/openssl_1.1.0i.bb).
Only one version of a given PN should be built in any given build. You
likely need to set PREFERRED_VERSION_openssl to select the correct
version or don't depend on multiple versions.


With Regards
Vishwa

On Fri, Dec 14, 2018 at 5:31 PM Burton, Ross <ross.burton@intel.com> wrote:

> How did you set it?
>
> Also this isn't relevant to yocto-security, please move to yocto@.
>
> Ross
> On Fri, 14 Dec 2018 at 11:53, Vishwanath Chandapur <vishwavtu@gmail.com>
> wrote:
> >
> > Hi Ross,
> >
> > I tried to enable by using PREFERRED_VERSION.
> >
> > But getting these errors .
> > >>>>>>>>>>>>>>>>>>>>>>>>>>>>
> > NOTE: Resolving any missing task queue dependencies
> > NOTE: preferred version 1.0.% of openssl not available (for item openssl)
> > NOTE: versions of openssl available: 1.1.0i
> > NOTE: preferred version 1.0.% of openssl-native not available (for item
> openssl-native)
> > NOTE: versions of openssl-native available: 1.1.0i
> > NOTE: preferred version 1.0.% of nativesdk-openssl not available (for
> item nativesdk-openssl)
> > NOTE: versions of nativesdk-openssl available: 1.1.0i
> > NOTE: preferred version 1.0.% of openssl not available (for item
> openssl-dev)
> > NOTE: versions of openssl available: 1.1.0i
> > NOTE: preferred version 1.0.% of nativesdk-openssl not available (for
> item nativesdk-openssl-dev)
> > NOTE: versions of nativesdk-openssl available: 1.1.0i
> > ERROR: Nothing RPROVIDES 'libssl
> > >>>>>>>>>>>>>>>>>>>>>>>>>>>
> >
> > With Regards
> > Vishwa
> >
> >
> > On Thu, 13 Dec 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >> Yes, Sumo has OpenSSL 1.1 but it isn't enabled by default because at
> >> the time of release some important pieces of software had not yet
> >> migrated.
> >>
> >> You can switch by using PREFERRED_VERSION.
> >>
> >> Ross
> >> On Thu, 13 Dec 2018 at 12:13, Vishwanath Chandapur <vishwavtu@gmail.com>
> wrote:
> >> >
> >> > Hi Team,
> >> >
> >> > Currently we are migrating to poly sumo version .
> >> > But we have requirement to use 1.1.0 but poky is still supporting
> 1.0.2
> >> >
> >> > I would like know if latest OpenSSL available for future release .
> >> >
> >> > With Regard
> >> > Vishwa
> >> > _______________________________________________
> >> > yocto-security mailing list
> >> > yocto-security@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto-security
>

--000000000000fcd779057d6c92d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><pre style=3D"white-space:pre-wrap;box-sizing:border-=
box;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-size:13px">Hi=
 Team,</pre><pre style=3D"white-space:pre-wrap;box-sizing:border-box;margin=
-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-size:13px">I have set o=
pnessl version in sumo but getting below errors.</pre><pre style=3D"white-s=
pace:pre-wrap;box-sizing:border-box;margin-top:0px;margin-bottom:0px;color:=
rgb(51,51,51);font-size:13px"><br></pre><pre style=3D"white-space:pre-wrap;=
box-sizing:border-box;margin-top:0px;margin-bottom:0px"><font color=3D"#333=
333"><span style=3D"font-size:13px"><b>PREFERRED_VERSION_openssl =3D &quot;=
1.1.0i&quot;</b><br></span></font></pre><pre style=3D"white-space:pre-wrap;=
box-sizing:border-box;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);=
font-size:13px"><br></pre><pre style=3D"white-space:pre-wrap;box-sizing:bor=
der-box;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-size:13px=
"><b>Logs:</b></pre><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><=
pre style=3D"white-space:pre-wrap;box-sizing:border-box;margin-top:0px;marg=
in-bottom:0px;color:rgb(51,51,51);font-size:13px">NOTE: Resolving any missi=
ng task queue dependencies<br></pre></span><pre style=3D"white-space:pre-wr=
ap;box-sizing:border-box;margin-top:0px;margin-bottom:0px;color:rgb(51,51,5=
1);font-size:13px">NOTE: preferred version 1.1.0i of openssl not available =
(for item libssl)
NOTE: versions of openssl available: 1.0.2p
NOTE: preferred version 1.1.0i of openssl not available (for item openssl10=
)
NOTE: versions of openssl available: 1.0.2p
NOTE: preferred version 1.1.0i of openssl not available (for item openssl-c=
onf)
NOTE: versions of openssl available: 1.0.2p</pre><pre style=3D"white-space:=
pre-wrap;box-sizing:border-box;margin-top:0px;margin-bottom:0px;color:rgb(5=
1,51,51);font-size:13px"><br></pre><pre style=3D"white-space:pre-wrap;box-s=
izing:border-box;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51);font-=
size:13px"><pre style=3D"white-space:pre-wrap;box-sizing:border-box;margin-=
top:0px;margin-bottom:0px">ERROR: Multiple versions of openssl are due to b=
e built (/home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivit=
y/openssl/<a href=3D"http://openssl_1.0.2p.bb/" target=3D"_blank">openssl_1=
.0.2p.bb</a> /home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connect=
ivity/openssl/<a href=3D"http://openssl_1.1.0i.bb/" target=3D"_blank">opens=
sl_1.1.0i.bb</a>). Only one version of a given PN should be built in any gi=
ven build. You likely need to set PREFERRED_VERSION_openssl to select the c=
orrect version or don&#39;t depend on multiple versions.</pre></pre></div><=
div><br></div><div>With Regards</div><div>Vishwa</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Fri, Dec 14, 2018 at 5:31 PM Burton, R=
oss &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">How d=
id you set it?<br>
<br>
Also this isn&#39;t relevant to yocto-security, please move to yocto@.<br>
<br>
Ross<br>
On Fri, 14 Dec 2018 at 11:53, Vishwanath Chandapur &lt;<a href=3D"mailto:vi=
shwavtu@gmail.com" target=3D"_blank">vishwavtu@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Ross,<br>
&gt;<br>
&gt; I tried to enable by using PREFERRED_VERSION.<br>
&gt;<br>
&gt; But getting these errors .<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; NOTE: preferred version 1.0.% of openssl not available (for item opens=
sl)<br>
&gt; NOTE: versions of openssl available: 1.1.0i<br>
&gt; NOTE: preferred version 1.0.% of openssl-native not available (for ite=
m openssl-native)<br>
&gt; NOTE: versions of openssl-native available: 1.1.0i<br>
&gt; NOTE: preferred version 1.0.% of nativesdk-openssl not available (for =
item nativesdk-openssl)<br>
&gt; NOTE: versions of nativesdk-openssl available: 1.1.0i<br>
&gt; NOTE: preferred version 1.0.% of openssl not available (for item opens=
sl-dev)<br>
&gt; NOTE: versions of openssl available: 1.1.0i<br>
&gt; NOTE: preferred version 1.0.% of nativesdk-openssl not available (for =
item nativesdk-openssl-dev)<br>
&gt; NOTE: versions of nativesdk-openssl available: 1.1.0i<br>
&gt; ERROR: Nothing RPROVIDES &#39;libssl<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;<br>
&gt; With Regards<br>
&gt; Vishwa<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 13 Dec 2018 at 5:57 PM, Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; Yes, Sumo has OpenSSL 1.1 but it isn&#39;t enabled by default beca=
use at<br>
&gt;&gt; the time of release some important pieces of software had not yet<=
br>
&gt;&gt; migrated.<br>
&gt;&gt;<br>
&gt;&gt; You can switch by using PREFERRED_VERSION.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt; On Thu, 13 Dec 2018 at 12:13, Vishwanath Chandapur &lt;<a href=3D"=
mailto:vishwavtu@gmail.com" target=3D"_blank">vishwavtu@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Team,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Currently we are migrating to poly sumo version .<br>
&gt;&gt; &gt; But we have requirement to use 1.1.0 but poky is still suppor=
ting 1.0.2<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I would like know if latest OpenSSL available for future rele=
ase .<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; With Regard<br>
&gt;&gt; &gt; Vishwa<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto-security mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto-security@yoctoproject.org" target=3D"=
_blank">yocto-security@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto-secu=
rity" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/l=
istinfo/yocto-security</a><br>
</blockquote></div>

--000000000000fcd779057d6c92d1--
