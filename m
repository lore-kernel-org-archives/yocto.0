Return-Path: <Sean_Hudson@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABA9CE007AE; Thu, 12 Jan 2017 06:18:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7330CE004D2
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 06:18:08 -0800 (PST)
Received: from svr-orw-mbx-02.mgc.mentorg.com ([147.34.90.202])
	by relay1.mentorg.com with esmtp 
	id 1cRgCc-0001eP-OT from Sean_Hudson@mentor.com ;
	Thu, 12 Jan 2017 06:18:06 -0800
Received: from svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201) by
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) with Microsoft SMTP
	Server (TLS) id 15.0.1210.3; Thu, 12 Jan 2017 06:18:04 -0800
Received: from svr-orw-mbx-01.mgc.mentorg.com ([fe80::7525:7282:f67a:970f]) by
	svr-orw-mbx-01.mgc.mentorg.com ([fe80::7525:7282:f67a:970f%22]) with
	mapi id 15.00.1210.000; Thu, 12 Jan 2017 06:18:04 -0800
From: "Hudson, Sean" <Sean_Hudson@mentor.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Philip Balister
	<philip@balister.org>
Thread-Topic: [Openembedded-architecture] [yocto] OpenEmbedded Developers
	Meeting in Portland before ELC
Thread-Index: AQHSbHXfTVaBgF1IRkaDJPHz1lPUGKE04v7Q
Date: Thu, 12 Jan 2017 14:18:04 +0000
Message-ID: <bb9a299e3834488f8c033f7e07515afe@svr-orw-mbx-01.mgc.mentorg.com>
References: <c93f2baf-e05d-fc8a-0789-9651dc5a1fd4@balister.org>
	<2377449.YFeu6CDXkj@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2377449.YFeu6CDXkj@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] OpenEmbedded Developers	Meeting in Portland before ELC
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
X-List-Received-Date: Thu, 12 Jan 2017 14:18:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Paul,

  It's a great point.  I have volunteered Mentor's teleconference, but the =
onsite pickup is always a challenge.  Once we've finalized the location, I'=
ll focus on making sure that we have a high quality pickup(s) in the room. =
 If possible, I'll get a true video-conference setup.

--
Sean


> -----Original Message-----
> From: openembedded-architecture-bounces@lists.openembedded.org
> [mailto:openembedded-architecture-bounces@lists.openembedded.org] On
> Behalf Of Paul Eggleton
> Sent: Wednesday, January 11, 2017 07:47 PM
> To: Philip Balister <philip@balister.org>
> Cc: yocto@yoctoproject.org; openembedded-
> members@lists.openembedded.org; openembedded-architecture
> <openembedded-architecture@lists.openembedded.org>; openembedded-
> devel@lists.openembedded.org; openembedded-core <openembedded-
> core@lists.openembedded.org>
> Subject: Re: [Openembedded-architecture] [yocto] OpenEmbedded Developers
> Meeting in Portland before ELC
>=20
> On Mon, 09 Jan 2017 16:04:57 Philip Balister wrote:
> > As we do around each Embedded Linux Conference, OpenEmbedded will
> host a
> > developer meeting to discuss the state of OpenEmbedded and what efforts
> > we should focus on over the next six months or so.
> >
> > All developers and users are welcome to attend. We like to hear feedbac=
k
> > from a variety of people over what works, doesn't work, and is useful t=
o
> > people using OpenEmbedded for all sort of applications.
> >
> > The meeting will be held Monday, Feb 20 at a location we can almost
> > announce. Based on prior years, the meeting will run from 9AM to 5PM.
> >
> > If you are going to attend add your name to:
> >
> > http://openembedded.org/wiki/OEDAM_2017
> >
> > Also, go ahead and add ideas for the agenda. We'll organize them better
> > just before the actual meeting.
>=20
> So it's great that this is happening, but unfortunately I'm not going to =
be
> able to make it to this one, and I suspect there will be many others who =
would
> like to participate but can't be present in person. In previous meetings =
we
> have really struggled with practical means for remote participation. I do=
n't
> expect effective real-time two-way communication, but last time the audio
> was
> so poor I wasn't even able to hear what was being said.
>=20
> Is there a chance that given advance notice we will be able to set someth=
ing
> up that could improve this?
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture

