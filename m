Received: from us-smtp-delivery-188.mimecast.com (us-smtp-delivery-188.mimecast.com [63.128.21.188])
 by mx.groups.io with SMTP id smtpd.web10.21091.1584551587701174970
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 10:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: abiomed.com, ip: 63.128.21.188, mailfrom: rsrinivasan@abiomed.com)
Received: from mail.abiomed.com (webmail.abiomed.com [4.53.60.36]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-hpzS73YnOB-K89vf18EOig-1; Wed, 18 Mar 2020 13:13:04 -0400
X-MC-Unique: hpzS73YnOB-K89vf18EOig-1
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX01.abiomed.com
 (172.16.1.91) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Wed, 18 Mar
 2020 13:13:04 -0400
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX02.abiomed.com
 (172.16.1.94) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Wed, 18 Mar
 2020 13:13:03 -0400
Received: from USDVREX02.abiomed.com ([::1]) by USDVREX02.abiomed.com ([::1])
 with mapi id 15.00.1395.000; Wed, 18 Mar 2020 13:13:03 -0400
From: "Srini" <rsrinivasan@abiomed.com>
To: "mikko.rapeli@bmw.de" <mikko.rapeli@bmw.de>, "mike.looijmans@topic.nl"
	<mike.looijmans@topic.nl>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: <EXT> Re: [yocto] What are the key factors for yocto build speed?
Thread-Topic: <EXT> Re: [yocto] What are the key factors for yocto build
 speed?
Thread-Index: AQHV/SQvHMEDglrWJECufLQaId00LqhOP5+AgAAH1gCAAAv/AIAACj8AgAAFvYCAAAu0AIAAJk9Q
Date: Wed, 18 Mar 2020 17:13:03 +0000
Message-ID: <06037dcfe9e74e4e80cd1e8b41593542@USDVREX02.abiomed.com>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu>
 <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
 <20200318144906.GC23112@localhost>
 <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
 <20200318155132.GO104502@korppu>
In-Reply-To: <20200318155132.GO104502@korppu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.112.142]
MIME-Version: 1.0
Return-Path: rsrinivasan@abiomed.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: abiomed.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12003181313052671"

--MCBoundary=_12003181313052671
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

My own experience (pardon me if already discussed)

Fought the build times for several months - ending up eventually at 8 cores=
 (but specifying 16 threads in poky builds). Best times for my build about =
4 hours. Clearly impractical during engineering.

Generated an sdk and used it for app development. Each build is now a minut=
e or 2.

Using a homegrown utility, updated the image file with applications in a ji=
ffy - to produce burnable sdcard image.

Complete build required only for the final release -- or made major changes=
 like python2 to python3!

YMMV.

srini

-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Mikko Rapeli via Lists.Yoctoproject.Org
Sent: Wednesday, March 18, 2020 11:52 AM
To: mike.looijmans@topic.nl
Cc: yocto@lists.yoctoproject.org
Subject: <EXT> Re: [yocto] What are the key factors for yocto build speed?

On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:
> On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:
> > On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote:
> > > ...
> > > For example one of our build servers is using:
> > > - AMD Ryzen 9 3900X
> > > ...
> > > - 32Go DDR4 3200 MHZ CL14
> > > ...
> > > It is a really good price / build time ratio configuration.
> >
> > Depends on what you are building.
> >
> > Building non-trivial C++ code (e.g. webkitgtk) with 24 cores but
> > only 32 GB RAM will not work, for such code you need more than 2
> > GB/core.
>
> Seems a bit excessive to buy hardware just to handle a particular
> corner case. Most of OE/Yocto code is plain C, not even C++.
>
> My rig only has 8GB but doesn't run into memory issues during big GUI
> builds. The only thing that made it swap was the populate_sdk task
> that created a 1.1GB fiel and needed 20GB of RAM to compress that.
> Took a few minutes more due to swapping.
> I submitted a patch today to fix that in OE.
>
> Your mileage may vary. But RAM is easy to add.

Well, I can't build with under 2 gigs per core or I run out of physical mem=
ory and kernel oom-killer kicks in to kill the build. Also can't run with y=
octo default parallel settings which only take into account the number of c=
ores and thus have a custom script which does caps the threads so that 2 gi=
gs of RAM for each are available.

Though I'm sure plain C and plain poky projects have less requirements for =
RAM.

-Mikko

________________________________

CONFIDENTIALITY NOTICE: This email message and any attachments are confiden=
tial and may be privileged and are meant to be read by the intended recipie=
nt only. If you are not the intended recipient, please notify sender immedi=
ately and destroy all copies of this message and any attachments without re=
ading or disclosing their contents. Thank you

--MCBoundary=_12003181313052671
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>My own experience (pardon me if already discussed)<=
BR>
<BR>
Fought the build times for several months - ending up eventually at 8 cores=
 (but specifying 16 threads in poky builds). Best times for my build about =
4 hours. Clearly impractical during engineering.<BR>
<BR>
Generated an sdk and used it for app development. Each build is now a minut=
e or 2.<BR>
<BR>
Using a homegrown utility, updated the image file with applications in a ji=
ffy - to produce burnable sdcard image.<BR>
<BR>
Complete build required only for the final release -- or made major changes=
 like python2 to python3!<BR>
<BR>
YMMV.<BR>
<BR>
srini<BR>
<BR>
-----Original Message-----<BR>
From: <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproj=
ect.org</a> &lt;yocto@lists.yoctoproject.org&gt; On Behalf Of Mikko Rapeli =
via Lists.Yoctoproject.Org<BR>
Sent: Wednesday, March 18, 2020 11:52 AM<BR>
To: <a href=3D"mailto:mike.looijmans@topic.nl">mike.looijmans@topic.nl</a><=
BR>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoprojec=
t.org</a><BR>
Subject: &lt;EXT&gt; Re: [yocto] What are the key factors for yocto build s=
peed?<BR>
<BR>
On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:<BR>
&gt; On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:<BR>
&gt; &gt; On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wr=
ote:<BR>
&gt; &gt; &gt; ...<BR>
&gt; &gt; &gt; For example one of our build servers is using:<BR>
&gt; &gt; &gt; - AMD Ryzen 9 3900X<BR>
&gt; &gt; &gt; ...<BR>
&gt; &gt; &gt; - 32Go DDR4 3200 MHZ CL14<BR>
&gt; &gt; &gt; ...<BR>
&gt; &gt; &gt; It is a really good price / build time ratio configuration.<=
BR>
&gt; &gt;<BR>
&gt; &gt; Depends on what you are building.<BR>
&gt; &gt;<BR>
&gt; &gt; Building non-trivial C++ code (e.g. webkitgtk) with 24 cores but<=
BR>
&gt; &gt; only 32 GB RAM will not work, for such code you need more than 2<=
BR>
&gt; &gt; GB/core.<BR>
&gt;<BR>
&gt; Seems a bit excessive to buy hardware just to handle a particular<BR>
&gt; corner case. Most of OE/Yocto code is plain C, not even C++.<BR>
&gt;<BR>
&gt; My rig only has 8GB but doesn't run into memory issues during big GUI<=
BR>
&gt; builds. The only thing that made it swap was the populate_sdk task<BR>
&gt; that created a 1.1GB fiel and needed 20GB of RAM to compress that.<BR>
&gt; Took a few minutes more due to swapping.<BR>
&gt; I submitted a patch today to fix that in OE.<BR>
&gt;<BR>
&gt; Your mileage may vary. But RAM is easy to add.<BR>
<BR>
Well, I can't build with under 2 gigs per core or I run out of physical mem=
ory and kernel oom-killer kicks in to kill the build. Also can't run with y=
octo default parallel settings which only take into account the number of c=
ores and thus have a custom script which does caps the threads so that 2 gi=
gs of RAM for each are available.<BR>
<BR>
Though I'm sure plain C and plain poky projects have less requirements for =
RAM.<BR>
<BR>
-Mikko<BR>
<BR>
________________________________<BR>
<BR>
CONFIDENTIALITY NOTICE: This email message and any attachments are confiden=
tial and may be privileged and are meant to be read by the intended recipie=
nt only. If you are not the intended recipient, please notify sender immedi=
ately and destroy all copies of this message and any attachments without re=
ading or disclosing their contents. Thank you<BR>

<br><br><p style=3D"font-family: Verdana; font-size:10pt; color:#666666;"><=
/p><p style=3D"font-family: Verdana; font-size:8pt; color:#666666;"></p></b=
ody></html>

--MCBoundary=_12003181313052671--
