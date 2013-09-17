Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BCA4E015C6
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 10:48:23 -0700 (PDT)
X-ASG-Debug-ID: 1379440100-0499bf605a173640001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id eM8x30Edqk4fijPm; Tue, 17 Sep 2013 10:48:20 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 17 Sep 2013 10:48:20 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Tue, 17 Sep 2013 10:48:19 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Bitbake on live (uncommitted) code
X-ASG-Orig-Subj: RE: [yocto] Bitbake on live (uncommitted) code
Thread-Index: AQHOsBM42+OV1hSNyk6eEv5km5a1J5nDRD+AgACfxgCABlchiw==
Date: Tue, 17 Sep 2013 17:48:18 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DEFE67D@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
	<CABcZAN=QM=Tj=vtsdXERZy=9gcs6vBr1cpw+4Fr9USHuthCxkQ@mail.gmail.com>,
	<22610256.9HCK7tef9Y@helios>
In-Reply-To: <22610256.9HCK7tef9Y@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1379440100
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140699
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Tue, 17 Sep 2013 17:48:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you!=0A=
=0A=
I've been using externalsrc for a few days now and have a follow on questio=
n.=0A=
=0A=
It appears that bitbake's state information for the various recipes doesn't=
 react to changes in source files in an external source.  IOW, when I chang=
e a file in my external folder I need to perform 3 steps to create a new fi=
le system that reflects the change:=0A=
=0A=
bitbake <component> -c clean=0A=
bitbake <component>=0A=
bitbake <image>=0A=
=0A=
Is it possible to ask bitbake to be more thorough about detecting file chan=
ges in external sources and rebuild the affected component automatically?=
=0A=
=0A=
Thanks,=0A=
Brad=0A=
________________________________________=0A=
From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
Sent: Friday, September 13, 2013 2:55 AM=0A=
To: Brad Litterell=0A=
Cc: Chris Larson; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Bitbake on live (uncommitted) code=0A=
=0A=
On Thursday 12 September 2013 17:23:53 Chris Larson wrote:=0A=
> On Thu, Sep 12, 2013 at 4:53 PM, Brad Litterell <brad@evidence.com> wrote=
:=0A=
> > I've grown to really appreciate bitbake for compiling code from a myria=
d=0A=
> > of sources, however, what is the recommended course for source I am=0A=
> > currently doing live development on?  My code base lives in a couple of=
=0A=
> > git=0A=
> > repos that do NOT map one-to-one with recipes and I don't really want t=
o=0A=
> > store the source mixed in with the recipe meta data anyway, nor do I wa=
nt=0A=
> > to be forced to commit it to git just to do a build.=0A=
> >=0A=
> >  Currently I run a pre-bitbake script that creates a tarball out of the=
=0A=
> >=0A=
> > source, but that is easy to forget and makes building a new image a two=
=0A=
> > step proces.  Since it is a build step I'd like it to be done by bitbak=
e.=0A=
> >=0A=
> >  Is there a recommended way to go about this?=0A=
>=0A=
> See externalsrc.bbclass.=0A=
=0A=
Also the manual section that talks about using it:=0A=
=0A=
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#buildin=
g-software-from-an-external-source=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

