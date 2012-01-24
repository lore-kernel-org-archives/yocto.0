Return-Path: <kergoth@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D40E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 08:19:48 -0800 (PST)
Received: by iagz35 with SMTP id z35so2844345iag.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 08:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type;
	bh=q0WE9GnNdvu+ho0t0TKRo+B8vv5mYCvl/Dbk/H3KSD4=;
	b=O0I6tMwHEYDZCmRQQrwhd3N+yGH+BLC/vFirDqT1gc/lMiJiHspniP3nS9T9r2x3om
	/QE6LyZY3ZJh64iRYWIxRbIGRiQY6djjNlXgiirLkqdNHkmJbPbTTVAmUfR7a4rAFQdo
	mG8ew3gP/py1bacnDyHaEN3nsI8qlJnsZwbYg=
Received: by 10.50.36.230 with SMTP id t6mr15139842igj.5.1327421987448;
	Tue, 24 Jan 2012 08:19:47 -0800 (PST)
Received: from frey (ip24-251-167-38.ph.ph.cox.net. [24.251.167.38])
	by mx.google.com with ESMTPS id f8sm60184556ibl.6.2012.01.24.08.19.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Jan 2012 08:19:45 -0800 (PST)
Date: Tue, 24 Jan 2012 09:19:43 -0700
From: Christopher Larson <kergoth@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <0D23B576EBED4122A290B0A85498CFE1@gmail.com>
In-Reply-To: <1782182.Md7PmFZxKk@helios>
References: <1327402068.2521.8.camel@babel.joshhome>
	<1327415044.17885.7.camel@babel.joshhome>
	<2F85497E73304B2B8FBE56AEEDEEA234@gmail.com>
	<1782182.Md7PmFZxKk@helios>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: overriding a class in custom layer
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
X-List-Received-Date: Tue, 24 Jan 2012 16:19:48 -0000
Content-Type: multipart/alternative; boundary="4f1eda1f_431bd7b7_5f44"

--4f1eda1f_431bd7b7_5f44
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, January 24, 2012 at 9:17 AM, Paul Eggleton wrote:
> On Tuesday 24 January 2012 07:32:47 Christopher Larson wrote:
> 
> 
> 
> 
> I'd also say, what is in the classes is intended to work for everyone, so if
> there's something in the core classes that is not working well for your
> situation we'd really like to hear about it - hopefully we can incorporate
> whatever changes you need and you can avoid having to overlay the entire
> class.

This is true, but still sounds like an excuse to me. Either we support class and config file overriding or we don't. If we do, we should support it properly and well. 

-- 
Christopher Larson


--4f1eda1f_431bd7b7_5f44
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div><span style=3D=22color: rgb(160, 160, 168); =22>On T=
uesday, January 24, 2012 at 9:17 AM, Paul Eggleton wrote:</span></div>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><span style=3D=22border-collapse: separate; col=
or: rgb(0, 0, 0); font-family: 'Lucida Grande'; font-style: normal; font-=
variant: normal; font-weight: normal; letter-spacing: normal; line-height=
: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-tr=
ansform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit=
-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -w=
ebkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -=
webkit-text-stroke-width: 0px; font-size: 13px; =22><span style=3D=22font=
-family: Helvetica; font-size: 13px; =22><div>On Tuesday 24 January 2012 =
07:32:47 Christopher Larson wrote:</div><div><div onclick=3D=22toggleBloc=
kQuoteVisibility(event, '1782182.Md7Pm=46ZxKk%40helios-1327421852.2', '17=
82182.Md7Pm=46ZxKk%40helios-1327421852')=22 onmousedown=3D=22noevent(even=
t)=22 class=3D=22-sparrow-quotedTextLabelHide=22 style=3D=22font-family: =
Helvetica; font-size: 11px; color: rgb(0, 106, 227); white-space: nowrap;=
 overflow-x: hidden; overflow-y: hidden; text-overflow: ellipsis; display=
: inline-block; cursor: default; -webkit-user-select: none; =22><div clas=
s=3D=22-sparrow-quotedTextButton=22 style=3D=22margin-left: -3px; width: =
28px; height: 16px; background-image: url(file:///Applications/Sparrow.ap=
p/Contents/Resources/MessageShowquotedtext.png); background-repeat: no-re=
peat no-repeat; =22></div></div></div><div><br></div><div>I'd also say, w=
hat is in the classes is intended to work for everyone, so if</div><div>t=
here's something in the core classes that is not working well for your</d=
iv><div>situation we'd really like to hear about it - hopefully we can in=
corporate</div><div>whatever changes you need and you can avoid having to=
 overlay the entire</div><div>class.</div></span></span></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    This is true, but still sounds like an excuse to me. =
Either we support class and config file overriding or we don't. If we do,=
 we should support it properly and well.
                </div><div><br></div><div><div>--&nbsp;</div><div>Christo=
pher Larson</div></div>
            

--4f1eda1f_431bd7b7_5f44--
