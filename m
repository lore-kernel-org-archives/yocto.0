Return-Path: <babu.anoop@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28B3DE00799; Fri, 25 Jul 2014 05:43:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (babu.anoop[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A12BE006C4
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 05:42:57 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id s7so4425303qap.23
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 05:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=s1CPFtypzS+6Zhzo3KyzLFMm1kv1Yrzmr/sJMgOphK0=;
	b=MJn9Z4S6s6w3Cl57s+ZGCm3dviq4GRYiyz255iw6TWp+1HR297kl3yetHXKFo5K51w
	54hBJb1e0ib/qU6E+LunkY/r3seVNyspRhl7ukfMIwUG0LnKgTiDFJ+2aaCrJyW6HzRI
	7keMYrC2GL/k4fWBWhKms83h0ywUTuQDU8mhqwOu6fNSgdXO2jex4pzQyw/ktvM70R7M
	Cr5sqrhCyVvOqSVXNHZN9soZv3PT1WOg2ngmSpbgzDjqQDM3QVT5so7bzQtNdF0sfDeX
	Il0fG6FpeWH1vdYI3dTUElgDmpG1M2ZanadWYnrqqtBqpjek3Q2c1wd+BZ3ejt3fKyz6
	N8gg==
MIME-Version: 1.0
X-Received: by 10.224.103.134 with SMTP id k6mr27372948qao.24.1406292176272;
	Fri, 25 Jul 2014 05:42:56 -0700 (PDT)
Received: by 10.140.25.238 with HTTP; Fri, 25 Jul 2014 05:42:56 -0700 (PDT)
In-Reply-To: <CAJTo0LYSeA7veq+3ROTU6zUh02Cn3M_7io=d6PxzTSvXj7KowA@mail.gmail.com>
References: <loom.20140724T152609-283@post.gmane.org>
	<CAJTo0LYSeA7veq+3ROTU6zUh02Cn3M_7io=d6PxzTSvXj7KowA@mail.gmail.com>
Date: Fri, 25 Jul 2014 18:12:56 +0530
Message-ID: <CAB0rWFmPk8Xgz1W-3iALbrJTa0-PUP1=yOMaqWQ70XXxANkTUQ@mail.gmail.com>
From: Anoop Babu <babu.anoop@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailman-Approved-At: Fri, 25 Jul 2014 08:17:41 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake error for rpm-native -- do compile failed
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
X-List-Received-Date: Fri, 25 Jul 2014 12:43:00 -0000
Content-Type: multipart/alternative; boundary=001a11c23b909e01ad04ff03e9af

--001a11c23b909e01ad04ff03e9af
Content-Type: text/plain; charset=UTF-8

Dear Ross,

My apologies for pushing all issues to yocto forum. Can you please let me
know the meta-tizen  forum.

I had started bitbake procedure after cloning below mentioned repo

git clone ssh://${YOUR_TIZEN_ID}@review.tizen.org:29418/scm/bb/meta-tizen

Today did a fetch from tizen branch. I saw lot of changes being pulled in.
But unfortunately the rpm-native compile issue did not goaway.

Can you confirm this is the same repo to fetch latest revisions as
mentioned by you. Is it to any specific branch?

Thanks once again for the wonderful support.

best regards
Anoop


Best regards
     A.B
P Please think about the environment before printing this e-mail

*7 Switch off as you go | qAlways recycle | P Save a tree...please don't
print this e-mail unless you really need to.*


On Thu, Jul 24, 2014 at 7:06 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 24 July 2014 14:29, Anoop <babu.anoop@gmail.com> wrote:
> > + export CCFLAGS+= -fPIC
> > /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> > r0/temp/run.do_compile.26826: 120: export: CCFLAGS+: bad variable name
>
> += is a bash extension and those scripts are not running under bash.
>
> This has been fixed in meta-tizen.  *Please* fetch the latest revisions.
>
> Also, this isn't the best list for problems with meta-tizen as
> meta-tizen isn't part of the Yocto project - you'll be better off
> contacting the maintainers directly or filing bugs in their issue
> tracker.
>
> Ross
>

--001a11c23b909e01ad04ff03e9af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Ross,<div><br></div><div>My apologies for pushing all=
 issues to yocto forum. Can you please let me know the meta-tizen =C2=A0for=
um.</div><div><br></div><div>I had started bitbake procedure after cloning =
below mentioned repo</div>
<div><pre style=3D"font-family:monospace,Courier;padding:1em;border:1px das=
hed rgb(47,111,171);color:rgb(0,0,0);line-height:1.3em;font-size:13px;backg=
round-color:rgb(249,249,249)">git clone ssh://${<a href=3D"http://YOUR_TIZE=
N_ID}@review.tizen.org:29418/scm/bb/meta-tizen">YOUR_TIZEN_ID}@review.tizen=
.org:29418/scm/bb/meta-tizen</a></pre>
</div><div>Today did a fetch from tizen branch. I saw lot of changes being =
pulled in. But unfortunately the rpm-native compile issue did not goaway.</=
div><div><br></div><div>Can you confirm this is the same repo to fetch late=
st revisions as mentioned by you. Is it to any specific branch?=C2=A0</div>
<div><br></div><div>Thanks once again for the wonderful support.</div><div>=
<br></div><div>best regards</div><div>Anoop</div><div><br></div></div><div =
class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr">Best regards<=
br>
=C2=A0=C2=A0=C2=A0=C2=A0 A.B<br><div><span lang=3D"EN-SG" style=3D"font-siz=
e:18pt;font-family:Webdings;color:rgb(0,127,0)">P</span><span lang=3D"EN-SG=
" style=3D"font-family:arial;font-size:small;color:rgb(36,64,97)">=C2=A0</s=
pan><span lang=3D"EN-SG" style=3D"font-size:7pt;font-family:Verdana,sans-se=
rif;color:rgb(0,127,0)">Please think about the environment before printing =
this e-mail</span><br>
</div><div><span lang=3D"EN-SG" style=3D"font-size:7pt;font-family:Verdana,=
sans-serif;color:rgb(0,127,0)"><br></span></div><div><span lang=3D"EN-SG" s=
tyle=3D"font-size:7pt;font-family:Verdana,sans-serif;color:rgb(0,127,0)"><i=
 style=3D"color:rgb(34,34,34);font-family:&#39;comic sans ms&#39;,sans-seri=
f;font-size:small"><p style=3D"margin:0px 0px 12pt;font-family:arial,sans-s=
erif;font-style:normal;display:inline!important">
<b style=3D"font-size:12.727272033691406px"><span lang=3D"EN-GB" style=3D"f=
ont-size:24pt;font-family:&#39;Wingdings 3&#39;;color:green">7</span></b><s=
pan lang=3D"EN-GB" style=3D"color:navy;font-size:11pt;font-family:Calibri,s=
ans-serif">=C2=A0</span><span lang=3D"EN-GB" style=3D"color:rgb(0,32,96);fo=
nt-family:Calibri,sans-serif"><font size=3D"1">Switch off as you go=C2=A0|<=
/font></span><span lang=3D"EN-GB" style=3D"color:gray;font-size:11pt;font-f=
amily:Calibri,sans-serif">=C2=A0</span><b style=3D"font-size:12.72727203369=
1406px"><span lang=3D"EN-GB" style=3D"font-size:24pt;font-family:Webdings;c=
olor:green">q</span></b><font size=3D"1"><span lang=3D"EN-GB" style=3D"colo=
r:rgb(0,32,96);font-family:Calibri,sans-serif">Always recycle=C2=A0|</span>=
<span lang=3D"EN-GB" style=3D"color:gray;font-family:Calibri,sans-serif">=
=C2=A0</span></font><b style=3D"font-size:12.727272033691406px"><span lang=
=3D"EN-GB" style=3D"font-size:24pt;font-family:Webdings;color:green">P</spa=
n></b><span lang=3D"EN-GB" style=3D"color:navy;font-size:11pt;font-family:C=
alibri,sans-serif">=C2=A0</span><span lang=3D"EN-GB" style=3D"color:rgb(0,3=
2,96);font-size:11pt;font-family:Calibri,sans-serif">Save a tree...please d=
on&#39;t print this e-mail unless you really need to.</span></p>
</i><br></span></div></div></div>
<br><br><div class=3D"gmail_quote">On Thu, Jul 24, 2014 at 7:06 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
On 24 July 2014 14:29, Anoop &lt;<a href=3D"mailto:babu.anoop@gmail.com">ba=
bu.anoop@gmail.com</a>&gt; wrote:<br>
&gt; + export CCFLAGS+=3D -fPIC<br>
&gt; /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-<br>
&gt; r0/temp/run.do_compile.26826: 120: export: CCFLAGS+: bad variable name=
<br>
<br>
+=3D is a bash extension and those scripts are not running under bash.<br>
<br>
This has been fixed in meta-tizen. =C2=A0*Please* fetch the latest revision=
s.<br>
<br>
Also, this isn&#39;t the best list for problems with meta-tizen as<br>
meta-tizen isn&#39;t part of the Yocto project - you&#39;ll be better off<b=
r>
contacting the maintainers directly or filing bugs in their issue<br>
tracker.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c23b909e01ad04ff03e9af--
