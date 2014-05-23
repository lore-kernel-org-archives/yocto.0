Return-Path: <pushpa@jtechindia.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1B73E00B71; Thu, 22 May 2014 21:40:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.116.102 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 21:40:40 PDT
Received: from blu0-omc3-s27.blu0.hotmail.com (unknown [65.55.116.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79FFAE00A2F
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 21:40:40 -0700 (PDT)
Received: from BLU185-W78 ([65.55.116.73]) by blu0-omc3-s27.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 22 May 2014 21:39:32 -0700
X-TMN: [k1k0UfLHwHWkryk57p1obpZJobxWpdvE]
X-Originating-Email: [pushpa@jtechindia.in]
Message-ID: <BLU185-W78D629C9B1F63B536ADE02C73E0@phx.gbl>
From: Pushpa Teja <pushpa@jtechindia.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 23 May 2014 04:39:32 +0000
Importance: Normal
In-Reply-To: <mailman.19025.1400766628.26702.yocto@yoctoproject.org>
References: <mailman.19025.1400766628.26702.yocto@yoctoproject.org>
MIME-Version: 1.0
X-OriginalArrivalTime: 23 May 2014 04:39:32.0630 (UTC)
	FILETIME=[FDDF7B60:01CF7640]
Subject: Re: yocto help needed
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
X-List-Received-Date: Fri, 23 May 2014 04:40:44 -0000
Content-Type: multipart/alternative;
	boundary="_fd6b0516-80b2-47e4-9e95-e54d000b8361_"

--_fd6b0516-80b2-47e4-9e95-e54d000b8361_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Good morning=2C
                        I want to start to work on yacto please z provide m=
e the guidance how to start it .

Regards =2C
pushpa




> From: yocto-request@yoctoproject.org
> Subject: yocto Digest=2C Vol 44=2C Issue 103
> To: yocto@yoctoproject.org
> Date: Thu=2C 22 May 2014 06:50:28 -0700
>=20
> Send yocto mailing list submissions to
> 	yocto@yoctoproject.org
>=20
> To subscribe or unsubscribe via the World Wide Web=2C visit
> 	https://lists.yoctoproject.org/listinfo/yocto
> or=2C via email=2C send a message with subject or body 'help' to
> 	yocto-request@yoctoproject.org
>=20
> You can reach the person managing the list at
> 	yocto-owner@yoctoproject.org
>=20
> When replying=2C please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>=20
>=20
> Today's Topics:
>=20
>    1. Re: help needed (Alexandru Vaduva)
>    2. Re: help needed (Burton=2C Ross)
>    3. Re: [meta-mingw] build error (Stefan Seefeld)
>    4. Re: help needed (Paul Eggleton)
>    5. Re: help needed (Alexandru Vaduva)
>    6. Re: Help with building app recipe (Diego Sueiro)
>=20
>=20
> ----------------------------------------------------------------------
>=20
> Message: 1
> Date: Thu=2C 22 May 2014 06:00:02 -0700 (PDT)
> From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> To: Paul Eggleton <paul.eggleton@linux.intel.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] help needed
> Message-ID:
> 	<1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
> Content-Type: text/plain=3B charset=3D"us-ascii"
>=20
> The hack will put the line: require perl-ptest.incinside a if structure.
> The if will test if ptest is in the image-features or not.
>=20
>=20
> On Thursday=2C May 22=2C 2014 3:43 PM=2C Paul Eggleton <paul.eggleton@lin=
ux.intel.com> wrote:
> =20
>=20
>=20
> On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > it appear=2C it shouldn`t I believe.
> > I have a hack to include the perl-ptest module only when
> > ptest enabled on image_featuresbut it does not look nice.
> > I do not believe this solves the problem.
>=20
> Sorry=2C I'm not quite following. What is this hack?
>=20
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/=
44f84bb2/attachment-0001.html>
>=20
> ------------------------------
>=20
> Message: 2
> Date: Thu=2C 22 May 2014 14:09:24 +0100
> From: "Burton=2C Ross" <ross.burton@intel.com>
> To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>=2C
> 	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] help needed
> Message-ID:
> 	<CAJTo0LaA9S1gJyO0g3nCn3vzyuVLON4-SyP9KUv0Gj+9KG16Aw@mail.gmail.com>
> Content-Type: text/plain=3B charset=3DUTF-8
>=20
> On 22 May 2014 13:38=2C Alexandru Vaduva <vaduvajanalexandru@yahoo.com> w=
rote:
> > it appear=2C it shouldn`t I believe.
>=20
> Can you share this depends.dot file please?  For what it's worth=2C I
> can't replicate this with oe-core master
>=20
> Ross
>=20
>=20
> ------------------------------
>=20
> Message: 3
> Date: Thu=2C 22 May 2014 09:10:30 -0400
> From: Stefan Seefeld <stefan_seefeld@mentor.com>
> To: Richard Purdie <richard.purdie@linuxfoundation.org>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-mingw] build error
> Message-ID: <537DF746.6060700@mentor.com>
> Content-Type: text/plain=3B charset=3D"utf-8"
>=20
> On 2014-05-22 02:10=2C Richard Purdie wrote:
> > On Wed=2C 2014-05-21 at 16:45 -0400=2C Stefan Seefeld wrote:
> >> Hello=2C
> >>
> >> I started experimenting with the meta-mingw layer today=2C using the
> >> 'daisy' branch for both=2C poky as well as meta-mingw.
> >>
> >> Running `bitbake meta-toolchain`=2C the build process failed in one of=
 the
> >> last steps (1003 of 1005) with:
> >>
> >> ERROR: nativesdk-packagegroup-sdk-host not found in the base feeds
> >> (x86_64-nativesdk-mingw32 noarch any all).
> >>
> >> Any idea what I may be missing ? I'm using
> >>
> >> MACHINE ??=3D "qemux86"
> >> SDKMACHINE ?=3D "x86_64-mingw32"
> >=20
> > Which pacxkage backend were you using? If you didn't use ipk=2C I'd
> > suggest trying it. In theory others should work but its ipk I've been
> > using when working with those layers.
>=20
> OK=2C I was using rpm (the default)=2C but now switched to ipk. That resu=
lts
> in a different error in meta/lib/oe/sdk.py:55=2C where do_populate() trie=
s
> to link ld.so.cache into a non-existent directory.
> I have attempted a fix with the attached patch.
>=20
> With that=2C things now appear to be working. (I think things should also
> work with 'rpm' as package backend=2C though=2C right ? Should I file a b=
ug
> report somewhere to put that on record ?)
>=20
> Thanks=2C
> 		Stefan
>=20
>=20
> --=20
> Stefan Seefeld
> CodeSourcery / Mentor Embedded
> http://www.mentor.com/embedded-software/
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: sdk.py.diff
> Type: text/x-patch
> Size: 756 bytes
> Desc: not available
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/=
29c38402/attachment-0001.bin>
>=20
> ------------------------------
>=20
> Message: 4
> Date: Thu=2C 22 May 2014 14:14:43 +0100
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] help needed
> Message-ID: <1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
> Content-Type: text/plain=3B charset=3D"us-ascii"
>=20
> On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:
> > On Thursday=2C May 22=2C 2014 3:43 PM=2C Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > > it appear=2C it shouldn`t I believe.
> > > > I have a hack to include the perl-ptest module only when
> > > > ptest enabled on image_featuresbut it does not look nice.
> > > > I do not believe this solves the problem.
> > >=20
> > > Sorry=2C I'm not quite following. What is this hack?
> >
> > The hack will put the line: require perl-ptest.incinside a if structure=
.
> > The if will test if ptest is in the image-features or not.
>=20
> There's nothing in that file that explicitly adds a dependency from perl =
(or=20
> any other package) on the perl-ptest package. So far as far as I know=2C =
nobody=20
> has yet reproduced the issue you're reporting. Are you building the exact=
 same=20
> version of the perl recipe? Have you modified the recipe at all?
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
>=20
>=20
> ------------------------------
>=20
> Message: 5
> Date: Thu=2C 22 May 2014 06:24:58 -0700 (PDT)
> From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> To: Paul Eggleton <paul.eggleton@linux.intel.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] help needed
> Message-ID:
> 	<1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
> Content-Type: text/plain=3B charset=3D"us-ascii"
>=20
> I attached the depends .dot file and also a small perl-ptest.info file wi=
th only the perl-ptest occurences.
>=20
> On Thursday=2C May 22=2C 2014 4:15 PM=2C Paul Eggleton <paul.eggleton@lin=
ux.intel.com> wrote:
> =20
>=20
>=20
> On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:
> > On Thursday=2C May 22=2C 2014 3:43 PM=2C Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > > it appear=2C it shouldn`t I believe.
> > > > I have a hack to include the perl-ptest module only when
> > > > ptest enabled on image_featuresbut it does not look nice.
> > > > I do not believe this solves the problem.
> > >=20
> > > Sorry=2C I'm not quite following. What is this hack?
> >
> > The hack will put the line: require perl-ptest.incinside a if structure=
.
> > The if will test if ptest is in the image-features or not.
>=20
> There's nothing in that file that explicitly adds a dependency from perl =
(or=20
> any other package) on the perl-ptest package. So far as far as I know=2C =
nobody=20
> has yet reproduced the issue you're reporting. Are you building the exact=
 same=20
> version of the perl recipe? Have you modified the recipe at all?
>=20
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/=
0a852a50/attachment-0001.html>
>=20
> ------------------------------
>=20
> Message: 6
> Date: Thu=2C 22 May 2014 10:50:03 -0300
> From: Diego Sueiro <diego.sueiro@gmail.com>
> To: Khem Raj <raj.khem@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=2C	Neuer User
> 	<auslands-kv@gmx.de>
> Subject: Re: [yocto] Help with building app recipe
> Message-ID:
> 	<CAMCfZKGM7JmHRvLYpeAeZukOUGDyEzzvvuQ9a_RpJS0t7r9wCw@mail.gmail.com>
> Content-Type: text/plain=3B charset=3D"iso-8859-1"
>=20
> Folks=2C
>=20
> I'm trying to accomplish this in a 64bits host machine. But I'm getting
> errors the following error on compile task:
>=20
> | In file included from
> /<snip>/tmp/sysroots/x86_64-linux/usr/include/python3.3m/Python.h:50:0=2C
> |                  from ../../git/src/qpython_priv.h:22=2C
> |                  from moc_qpython_priv.cpp:9:
> | /<snip>/sysroots/x86_64-linux/usr/include/python3.3m/pyport.h:820:2:
> error: #error "LONG_BIT definition appears wrong for platform (bad
> gcc/glibc config?)."
> |  #error "LONG_BIT definition appears wrong for platform (bad gcc/glibc
> config?)."
> |   ^
>=20
>=20
> Searching on Google it says that this is a known bug when trying to
> cross-compile Python stuff for 32bits machines on 64bits hosts.
>=20
> It seems that the guys from Buildroot could get this solved:
> http://lists.busybox.net/pipermail/buildroot/2011-August/045257.html
> I'm trying to find the "magical" patch to how to get this fixed.
>=20
> Also found this link too:
> http://blog.devork.be/2009/02/compiling-32-bit-python-on-amd64.html
>=20
> But I'm not quite sure how to get this fixed on Yocto. Should it need to =
be
> fixed on the pyotherside=2C or python3=2C or python3-native recipe?
>=20
>=20
> Any directions are appreciated.
>=20
>=20
>=20
> Regards=2C
>=20
> --
> *dS
> Diego Sueiro
>=20
> Administrador do Embarcados
> www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=3Dassinatu=
ra_diego&utm_medium=3De-mail&utm_campaign=3DAssinatura%20Email%20Diego>
>=20
> /*long live rock 'n roll*/
>=20
>=20
> On Sat=2C May 17=2C 2014 at 2:18 AM=2C Khem Raj <raj.khem@gmail.com> wrot=
e:
>=20
> > On Fri=2C May 16=2C 2014 at 5:33 AM=2C Neuer User <auslands-kv@gmx.de> =
wrote:
> > > If I change the sed line to "#!/usr/bin/env python3"=2C that would
> > > probably work then. But would it break something else?
> >
> > would be fine.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/=
fea3f300/attachment.html>
>=20
> ------------------------------
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> End of yocto Digest=2C Vol 44=2C Issue 103
> **************************************
 		 	   		  =

--_fd6b0516-80b2-47e4-9e95-e54d000b8361_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Good morning=2C<br>&nbsp=3B&nbsp=
=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B=
&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nb=
sp=3B&nbsp=3B&nbsp=3B I want to start to work on yacto please z provide me =
the guidance how to start it .<br><br>Regards =2C<br>pushpa<br><br><br><br>=
<br><div>&gt=3B From: yocto-request@yoctoproject.org<br>&gt=3B Subject: yoc=
to Digest=2C Vol 44=2C Issue 103<br>&gt=3B To: yocto@yoctoproject.org<br>&g=
t=3B Date: Thu=2C 22 May 2014 06:50:28 -0700<br>&gt=3B <br>&gt=3B Send yoct=
o mailing list submissions to<br>&gt=3B 	yocto@yoctoproject.org<br>&gt=3B <=
br>&gt=3B To subscribe or unsubscribe via the World Wide Web=2C visit<br>&g=
t=3B 	https://lists.yoctoproject.org/listinfo/yocto<br>&gt=3B or=2C via ema=
il=2C send a message with subject or body 'help' to<br>&gt=3B 	yocto-reques=
t@yoctoproject.org<br>&gt=3B <br>&gt=3B You can reach the person managing t=
he list at<br>&gt=3B 	yocto-owner@yoctoproject.org<br>&gt=3B <br>&gt=3B Whe=
n replying=2C please edit your Subject line so it is more specific<br>&gt=
=3B than "Re: Contents of yocto digest..."<br>&gt=3B <br>&gt=3B <br>&gt=3B =
Today's Topics:<br>&gt=3B <br>&gt=3B    1. Re: help needed (Alexandru Vaduv=
a)<br>&gt=3B    2. Re: help needed (Burton=2C Ross)<br>&gt=3B    3. Re: [me=
ta-mingw] build error (Stefan Seefeld)<br>&gt=3B    4. Re: help needed (Pau=
l Eggleton)<br>&gt=3B    5. Re: help needed (Alexandru Vaduva)<br>&gt=3B   =
 6. Re: Help with building app recipe (Diego Sueiro)<br>&gt=3B <br>&gt=3B <=
br>&gt=3B -----------------------------------------------------------------=
-----<br>&gt=3B <br>&gt=3B Message: 1<br>&gt=3B Date: Thu=2C 22 May 2014 06=
:00:02 -0700 (PDT)<br>&gt=3B From: Alexandru Vaduva &lt=3Bvaduvajanalexandr=
u@yahoo.com&gt=3B<br>&gt=3B To: Paul Eggleton &lt=3Bpaul.eggleton@linux.int=
el.com&gt=3B<br>&gt=3B Cc: "yocto@yoctoproject.org" &lt=3Byocto@yoctoprojec=
t.org&gt=3B<br>&gt=3B Subject: Re: [yocto] help needed<br>&gt=3B Message-ID=
:<br>&gt=3B 	&lt=3B1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.c=
om&gt=3B<br>&gt=3B Content-Type: text/plain=3B charset=3D"us-ascii"<br>&gt=
=3B <br>&gt=3B The hack will put the line: require perl-ptest.incinside a i=
f structure.<br>&gt=3B The if will test if ptest is in the image-features o=
r not.<br>&gt=3B <br>&gt=3B <br>&gt=3B On Thursday=2C May 22=2C 2014 3:43 P=
M=2C Paul Eggleton &lt=3Bpaul.eggleton@linux.intel.com&gt=3B wrote:<br>&gt=
=3B  <br>&gt=3B <br>&gt=3B <br>&gt=3B On Thursday 22 May 2014 05:38:41 Alex=
andru Vaduva wrote:<br>&gt=3B &gt=3B it appear=2C it shouldn`t I believe.<b=
r>&gt=3B &gt=3B I have a hack to include the perl-ptest module only when<br=
>&gt=3B &gt=3B ptest enabled on image_featuresbut it does not look nice.<br=
>&gt=3B &gt=3B I do not believe this solves the problem.<br>&gt=3B <br>&gt=
=3B Sorry=2C I'm not quite following. What is this hack?<br>&gt=3B <br>&gt=
=3B <br>&gt=3B Cheers=2C<br>&gt=3B Paul<br>&gt=3B <br>&gt=3B -- <br>&gt=3B =
<br>&gt=3B Paul Eggleton<br>&gt=3B Intel Open Source Technology Centre<br>&=
gt=3B -------------- next part --------------<br>&gt=3B An HTML attachment =
was scrubbed...<br>&gt=3B URL: &lt=3Bhttp://lists.yoctoproject.org/pipermai=
l/yocto/attachments/20140522/44f84bb2/attachment-0001.html&gt=3B<br>&gt=3B =
<br>&gt=3B ------------------------------<br>&gt=3B <br>&gt=3B Message: 2<b=
r>&gt=3B Date: Thu=2C 22 May 2014 14:09:24 +0100<br>&gt=3B From: "Burton=2C=
 Ross" &lt=3Bross.burton@intel.com&gt=3B<br>&gt=3B To: Alexandru Vaduva &lt=
=3Bvaduvajanalexandru@yahoo.com&gt=3B<br>&gt=3B Cc: Paul Eggleton &lt=3Bpau=
l.eggleton@linux.intel.com&gt=3B=2C<br>&gt=3B 	"yocto@yoctoproject.org" &lt=
=3Byocto@yoctoproject.org&gt=3B<br>&gt=3B Subject: Re: [yocto] help needed<=
br>&gt=3B Message-ID:<br>&gt=3B 	&lt=3BCAJTo0LaA9S1gJyO0g3nCn3vzyuVLON4-SyP=
9KUv0Gj+9KG16Aw@mail.gmail.com&gt=3B<br>&gt=3B Content-Type: text/plain=3B =
charset=3DUTF-8<br>&gt=3B <br>&gt=3B On 22 May 2014 13:38=2C Alexandru Vadu=
va &lt=3Bvaduvajanalexandru@yahoo.com&gt=3B wrote:<br>&gt=3B &gt=3B it appe=
ar=2C it shouldn`t I believe.<br>&gt=3B <br>&gt=3B Can you share this depen=
ds.dot file please?  For what it's worth=2C I<br>&gt=3B can't replicate thi=
s with oe-core master<br>&gt=3B <br>&gt=3B Ross<br>&gt=3B <br>&gt=3B <br>&g=
t=3B ------------------------------<br>&gt=3B <br>&gt=3B Message: 3<br>&gt=
=3B Date: Thu=2C 22 May 2014 09:10:30 -0400<br>&gt=3B From: Stefan Seefeld =
&lt=3Bstefan_seefeld@mentor.com&gt=3B<br>&gt=3B To: Richard Purdie &lt=3Bri=
chard.purdie@linuxfoundation.org&gt=3B<br>&gt=3B Cc: yocto@yoctoproject.org=
<br>&gt=3B Subject: Re: [yocto] [meta-mingw] build error<br>&gt=3B Message-=
ID: &lt=3B537DF746.6060700@mentor.com&gt=3B<br>&gt=3B Content-Type: text/pl=
ain=3B charset=3D"utf-8"<br>&gt=3B <br>&gt=3B On 2014-05-22 02:10=2C Richar=
d Purdie wrote:<br>&gt=3B &gt=3B On Wed=2C 2014-05-21 at 16:45 -0400=2C Ste=
fan Seefeld wrote:<br>&gt=3B &gt=3B&gt=3B Hello=2C<br>&gt=3B &gt=3B&gt=3B<b=
r>&gt=3B &gt=3B&gt=3B I started experimenting with the meta-mingw layer tod=
ay=2C using the<br>&gt=3B &gt=3B&gt=3B 'daisy' branch for both=2C poky as w=
ell as meta-mingw.<br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B Running `b=
itbake meta-toolchain`=2C the build process failed in one of the<br>&gt=3B =
&gt=3B&gt=3B last steps (1003 of 1005) with:<br>&gt=3B &gt=3B&gt=3B<br>&gt=
=3B &gt=3B&gt=3B ERROR: nativesdk-packagegroup-sdk-host not found in the ba=
se feeds<br>&gt=3B &gt=3B&gt=3B (x86_64-nativesdk-mingw32 noarch any all).<=
br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B Any idea what I may be missin=
g ? I'm using<br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B MACHINE ??=3D "=
qemux86"<br>&gt=3B &gt=3B&gt=3B SDKMACHINE ?=3D "x86_64-mingw32"<br>&gt=3B =
&gt=3B <br>&gt=3B &gt=3B Which pacxkage backend were you using? If you didn=
't use ipk=2C I'd<br>&gt=3B &gt=3B suggest trying it. In theory others shou=
ld work but its ipk I've been<br>&gt=3B &gt=3B using when working with thos=
e layers.<br>&gt=3B <br>&gt=3B OK=2C I was using rpm (the default)=2C but n=
ow switched to ipk. That results<br>&gt=3B in a different error in meta/lib=
/oe/sdk.py:55=2C where do_populate() tries<br>&gt=3B to link ld.so.cache in=
to a non-existent directory.<br>&gt=3B I have attempted a fix with the atta=
ched patch.<br>&gt=3B <br>&gt=3B With that=2C things now appear to be worki=
ng. (I think things should also<br>&gt=3B work with 'rpm' as package backen=
d=2C though=2C right ? Should I file a bug<br>&gt=3B report somewhere to pu=
t that on record ?)<br>&gt=3B <br>&gt=3B Thanks=2C<br>&gt=3B 		Stefan<br>&g=
t=3B <br>&gt=3B <br>&gt=3B -- <br>&gt=3B Stefan Seefeld<br>&gt=3B CodeSourc=
ery / Mentor Embedded<br>&gt=3B http://www.mentor.com/embedded-software/<br=
>&gt=3B -------------- next part --------------<br>&gt=3B A non-text attach=
ment was scrubbed...<br>&gt=3B Name: sdk.py.diff<br>&gt=3B Type: text/x-pat=
ch<br>&gt=3B Size: 756 bytes<br>&gt=3B Desc: not available<br>&gt=3B URL: &=
lt=3Bhttp://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/29c=
38402/attachment-0001.bin&gt=3B<br>&gt=3B <br>&gt=3B ----------------------=
--------<br>&gt=3B <br>&gt=3B Message: 4<br>&gt=3B Date: Thu=2C 22 May 2014=
 14:14:43 +0100<br>&gt=3B From: Paul Eggleton &lt=3Bpaul.eggleton@linux.int=
el.com&gt=3B<br>&gt=3B To: Alexandru Vaduva &lt=3Bvaduvajanalexandru@yahoo.=
com&gt=3B<br>&gt=3B Cc: yocto@yoctoproject.org<br>&gt=3B Subject: Re: [yoct=
o] help needed<br>&gt=3B Message-ID: &lt=3B1965694.z39UhZdkqB@peggleto-mobl=
5.ger.corp.intel.com&gt=3B<br>&gt=3B Content-Type: text/plain=3B charset=3D=
"us-ascii"<br>&gt=3B <br>&gt=3B On Thursday 22 May 2014 06:00:02 Alexandru =
Vaduva wrote:<br>&gt=3B &gt=3B On Thursday=2C May 22=2C 2014 3:43 PM=2C Pau=
l Eggleton<br>&gt=3B &gt=3B &lt=3Bpaul.eggleton@linux.intel.com&gt=3B wrote=
:<br>&gt=3B &gt=3B &gt=3B On Thursday 22 May 2014 05:38:41 Alexandru Vaduva=
 wrote:<br>&gt=3B &gt=3B &gt=3B &gt=3B it appear=2C it shouldn`t I believe.=
<br>&gt=3B &gt=3B &gt=3B &gt=3B I have a hack to include the perl-ptest mod=
ule only when<br>&gt=3B &gt=3B &gt=3B &gt=3B ptest enabled on image_feature=
sbut it does not look nice.<br>&gt=3B &gt=3B &gt=3B &gt=3B I do not believe=
 this solves the problem.<br>&gt=3B &gt=3B &gt=3B <br>&gt=3B &gt=3B &gt=3B =
Sorry=2C I'm not quite following. What is this hack?<br>&gt=3B &gt=3B<br>&g=
t=3B &gt=3B The hack will put the line: require perl-ptest.incinside a if s=
tructure.<br>&gt=3B &gt=3B The if will test if ptest is in the image-featur=
es or not.<br>&gt=3B <br>&gt=3B There's nothing in that file that explicitl=
y adds a dependency from perl (or <br>&gt=3B any other package) on the perl=
-ptest package. So far as far as I know=2C nobody <br>&gt=3B has yet reprod=
uced the issue you're reporting. Are you building the exact same <br>&gt=3B=
 version of the perl recipe? Have you modified the recipe at all?<br>&gt=3B=
 <br>&gt=3B Cheers=2C<br>&gt=3B Paul<br>&gt=3B <br>&gt=3B -- <br>&gt=3B <br=
>&gt=3B Paul Eggleton<br>&gt=3B Intel Open Source Technology Centre<br>&gt=
=3B <br>&gt=3B <br>&gt=3B ------------------------------<br>&gt=3B <br>&gt=
=3B Message: 5<br>&gt=3B Date: Thu=2C 22 May 2014 06:24:58 -0700 (PDT)<br>&=
gt=3B From: Alexandru Vaduva &lt=3Bvaduvajanalexandru@yahoo.com&gt=3B<br>&g=
t=3B To: Paul Eggleton &lt=3Bpaul.eggleton@linux.intel.com&gt=3B<br>&gt=3B =
Cc: "yocto@yoctoproject.org" &lt=3Byocto@yoctoproject.org&gt=3B<br>&gt=3B S=
ubject: Re: [yocto] help needed<br>&gt=3B Message-ID:<br>&gt=3B 	&lt=3B1400=
765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com&gt=3B<br>&gt=3B Cont=
ent-Type: text/plain=3B charset=3D"us-ascii"<br>&gt=3B <br>&gt=3B I attache=
d the depends .dot file and also a small perl-ptest.info file with only the=
 perl-ptest occurences.<br>&gt=3B <br>&gt=3B On Thursday=2C May 22=2C 2014 =
4:15 PM=2C Paul Eggleton &lt=3Bpaul.eggleton@linux.intel.com&gt=3B wrote:<b=
r>&gt=3B  <br>&gt=3B <br>&gt=3B <br>&gt=3B On Thursday 22 May 2014 06:00:02=
 Alexandru Vaduva wrote:<br>&gt=3B &gt=3B On Thursday=2C May 22=2C 2014 3:4=
3 PM=2C Paul Eggleton<br>&gt=3B &gt=3B &lt=3Bpaul.eggleton@linux.intel.com&=
gt=3B wrote:<br>&gt=3B &gt=3B &gt=3B On Thursday 22 May 2014 05:38:41 Alexa=
ndru Vaduva wrote:<br>&gt=3B &gt=3B &gt=3B &gt=3B it appear=2C it shouldn`t=
 I believe.<br>&gt=3B &gt=3B &gt=3B &gt=3B I have a hack to include the per=
l-ptest module only when<br>&gt=3B &gt=3B &gt=3B &gt=3B ptest enabled on im=
age_featuresbut it does not look nice.<br>&gt=3B &gt=3B &gt=3B &gt=3B I do =
not believe this solves the problem.<br>&gt=3B &gt=3B &gt=3B <br>&gt=3B &gt=
=3B &gt=3B Sorry=2C I'm not quite following. What is this hack?<br>&gt=3B &=
gt=3B<br>&gt=3B &gt=3B The hack will put the line: require perl-ptest.incin=
side a if structure.<br>&gt=3B &gt=3B The if will test if ptest is in the i=
mage-features or not.<br>&gt=3B <br>&gt=3B There's nothing in that file tha=
t explicitly adds a dependency from perl (or <br>&gt=3B any other package) =
on the perl-ptest package. So far as far as I know=2C nobody <br>&gt=3B has=
 yet reproduced the issue you're reporting. Are you building the exact same=
 <br>&gt=3B version of the perl recipe? Have you modified the recipe at all=
?<br>&gt=3B <br>&gt=3B <br>&gt=3B Cheers=2C<br>&gt=3B Paul<br>&gt=3B <br>&g=
t=3B -- <br>&gt=3B <br>&gt=3B Paul Eggleton<br>&gt=3B Intel Open Source Tec=
hnology Centre<br>&gt=3B -------------- next part --------------<br>&gt=3B =
An HTML attachment was scrubbed...<br>&gt=3B URL: &lt=3Bhttp://lists.yoctop=
roject.org/pipermail/yocto/attachments/20140522/0a852a50/attachment-0001.ht=
ml&gt=3B<br>&gt=3B <br>&gt=3B ------------------------------<br>&gt=3B <br>=
&gt=3B Message: 6<br>&gt=3B Date: Thu=2C 22 May 2014 10:50:03 -0300<br>&gt=
=3B From: Diego Sueiro &lt=3Bdiego.sueiro@gmail.com&gt=3B<br>&gt=3B To: Khe=
m Raj &lt=3Braj.khem@gmail.com&gt=3B<br>&gt=3B Cc: "yocto@yoctoproject.org"=
 &lt=3Byocto@yoctoproject.org&gt=3B=2C	Neuer User<br>&gt=3B 	&lt=3Bauslands=
-kv@gmx.de&gt=3B<br>&gt=3B Subject: Re: [yocto] Help with building app reci=
pe<br>&gt=3B Message-ID:<br>&gt=3B 	&lt=3BCAMCfZKGM7JmHRvLYpeAeZukOUGDyEzzv=
vuQ9a_RpJS0t7r9wCw@mail.gmail.com&gt=3B<br>&gt=3B Content-Type: text/plain=
=3B charset=3D"iso-8859-1"<br>&gt=3B <br>&gt=3B Folks=2C<br>&gt=3B <br>&gt=
=3B I'm trying to accomplish this in a 64bits host machine. But I'm getting=
<br>&gt=3B errors the following error on compile task:<br>&gt=3B <br>&gt=3B=
 | In file included from<br>&gt=3B /&lt=3Bsnip&gt=3B/tmp/sysroots/x86_64-li=
nux/usr/include/python3.3m/Python.h:50:0=2C<br>&gt=3B |                  fr=
om ../../git/src/qpython_priv.h:22=2C<br>&gt=3B |                  from moc=
_qpython_priv.cpp:9:<br>&gt=3B | /&lt=3Bsnip&gt=3B/sysroots/x86_64-linux/us=
r/include/python3.3m/pyport.h:820:2:<br>&gt=3B error: #error "LONG_BIT defi=
nition appears wrong for platform (bad<br>&gt=3B gcc/glibc config?)."<br>&g=
t=3B |  #error "LONG_BIT definition appears wrong for platform (bad gcc/gli=
bc<br>&gt=3B config?)."<br>&gt=3B |   ^<br>&gt=3B <br>&gt=3B <br>&gt=3B Sea=
rching on Google it says that this is a known bug when trying to<br>&gt=3B =
cross-compile Python stuff for 32bits machines on 64bits hosts.<br>&gt=3B <=
br>&gt=3B It seems that the guys from Buildroot could get this solved:<br>&=
gt=3B http://lists.busybox.net/pipermail/buildroot/2011-August/045257.html<=
br>&gt=3B I'm trying to find the "magical" patch to how to get this fixed.<=
br>&gt=3B <br>&gt=3B Also found this link too:<br>&gt=3B http://blog.devork=
.be/2009/02/compiling-32-bit-python-on-amd64.html<br>&gt=3B <br>&gt=3B But =
I'm not quite sure how to get this fixed on Yocto. Should it need to be<br>=
&gt=3B fixed on the pyotherside=2C or python3=2C or python3-native recipe?<=
br>&gt=3B <br>&gt=3B <br>&gt=3B Any directions are appreciated.<br>&gt=3B <=
br>&gt=3B <br>&gt=3B <br>&gt=3B Regards=2C<br>&gt=3B <br>&gt=3B --<br>&gt=
=3B *dS<br>&gt=3B Diego Sueiro<br>&gt=3B <br>&gt=3B Administrador do Embarc=
ados<br>&gt=3B www.embarcados.com.br&lt=3Bhttp://www.embarcados.com.br/?utm=
_source=3Dassinatura_diego&amp=3Butm_medium=3De-mail&amp=3Butm_campaign=3DA=
ssinatura%20Email%20Diego&gt=3B<br>&gt=3B <br>&gt=3B /*long live rock 'n ro=
ll*/<br>&gt=3B <br>&gt=3B <br>&gt=3B On Sat=2C May 17=2C 2014 at 2:18 AM=2C=
 Khem Raj &lt=3Braj.khem@gmail.com&gt=3B wrote:<br>&gt=3B <br>&gt=3B &gt=3B=
 On Fri=2C May 16=2C 2014 at 5:33 AM=2C Neuer User &lt=3Bauslands-kv@gmx.de=
&gt=3B wrote:<br>&gt=3B &gt=3B &gt=3B If I change the sed line to "#!/usr/b=
in/env python3"=2C that would<br>&gt=3B &gt=3B &gt=3B probably work then. B=
ut would it break something else?<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B would b=
e fine.<br>&gt=3B &gt=3B --<br>&gt=3B &gt=3B ______________________________=
_________________<br>&gt=3B &gt=3B yocto mailing list<br>&gt=3B &gt=3B yoct=
o@yoctoproject.org<br>&gt=3B &gt=3B https://lists.yoctoproject.org/listinfo=
/yocto<br>&gt=3B &gt=3B<br>&gt=3B -------------- next part --------------<b=
r>&gt=3B An HTML attachment was scrubbed...<br>&gt=3B URL: &lt=3Bhttp://lis=
ts.yoctoproject.org/pipermail/yocto/attachments/20140522/fea3f300/attachmen=
t.html&gt=3B<br>&gt=3B <br>&gt=3B ------------------------------<br>&gt=3B =
<br>&gt=3B -- <br>&gt=3B _______________________________________________<br=
>&gt=3B yocto mailing list<br>&gt=3B yocto@yoctoproject.org<br>&gt=3B https=
://lists.yoctoproject.org/listinfo/yocto<br>&gt=3B <br>&gt=3B <br>&gt=3B En=
d of yocto Digest=2C Vol 44=2C Issue 103<br>&gt=3B ************************=
**************<br></div> 		 	   		  </div></body>
</html>=

--_fd6b0516-80b2-47e4-9e95-e54d000b8361_--
