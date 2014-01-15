Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B77E0084E
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 04:20:12 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jan 2014 04:20:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,662,1384329600"; d="scan'208";a="465502114"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.122.147])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2014 04:19:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khaja Hussain Shaik <khajahussain-s@hcl.com>,
	Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
Date: Wed, 15 Jan 2014 12:19:09 +0000
Message-ID: <1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.7-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Carlos Rafael Giani <dv@pseudoterminal.org>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Wed, 15 Jan 2014 12:20:15 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wednesday 15 January 2014 12:05:03 Nicolas Dechesne wrote:
> On Wed, Jan 15, 2014 at 11:49 AM, Khaja Hussain Shaik <
> khajahussain-s@hcl.com> wrote:
> > Greetings from Khaja.
> >=20
> > We are trying to make a Dylan build with GStreamer 1.0 support, how=
ever we
> > are facing lots of dependencies. We like to know whether it=E2=80=99=
s possible to
> > incorporate GStreamer 1.0 in Dylan? If yes then could it be possibl=
e to
> > direct us to some documents/procedure.
>=20
> such large 'features' are not generally backported to old/stable rele=
ases.
> only bug fixes.
>=20
> gst1.0 was introduced in 'dora' where you can find gst 1.0.x branch, =
and
> you have gst 1.2.x support in current master. so you either need to
> backport these changes into dylan, or switch to a newer release.

BTW, it's worth pointing out that these recipes can be added in an addi=
tional
layer, so you don't need to patch the core - in fact there is a=20
meta-gstreamer10 layer that says it's compatible with dylan already:

http://layers.openembedded.org/layerindex/branch/master/layer/meta-gstr=
eamer10/

I'm not sure how well maintained it is, you'd need to talk to the maint=
ainer
(who I've added to CC).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

