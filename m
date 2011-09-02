Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE003.bigfish.com (va3ehsobe003.messaging.microsoft.com
	[216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 394C2E00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 12:41:31 -0700 (PDT)
Received: from mail192-va3-R.bigfish.com (10.7.14.253) by
	VA3EHSOBE003.bigfish.com (10.7.40.23) with Microsoft SMTP Server id
	14.1.225.22; Fri, 2 Sep 2011 19:41:30 +0000
Received: from mail192-va3 (localhost.localdomain [127.0.0.1])	by
	mail192-va3-R.bigfish.com (Postfix) with ESMTP id 72AFB178150;
	Fri,  2 Sep 2011 19:41:30 +0000 (UTC)
X-SpamScore: -17
X-BigFish: VS-17(zz9371K1b0bM1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h35h62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail192-va3 (localhost.localdomain [127.0.0.1]) by mail192-va3
	(MessageSwitch) id 1314992440380433_2309;
	Fri,  2 Sep 2011 19:40:40 +0000 (UTC)
Received: from VA3EHSMHS007.bigfish.com (unknown [10.7.14.254])	by
	mail192-va3.bigfish.com (Postfix) with ESMTP id F0FCEE481B5;
	Fri,  2 Sep 2011 19:40:22 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS007.bigfish.com
	(10.7.99.17) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 2 Sep 2011 19:40:11 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0323.002; Fri, 2 Sep 2011 14:40:11 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [yocto] RPM multilib package installation issue
Thread-Index: AQHMaYaVWl4p2YpWqEiD6/aZWrPpipU6kD2AgAAKGgCAAAyoAIAAGAAAgAAFswCAAAk5gIAAAvwA
Date: Fri, 2 Sep 2011 19:40:10 +0000
Message-ID: <CAEsOVNdqPzSvcsNbFQUM+BRSijPGGEEmAJQTDx2g3TqccJesYw@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
	<4E60FAC3.5030100@windriver.com>
	<CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
	<4E610DDA.9040701@windriver.com>
	<CAEsOVNczt5gLjp_FoF_voMbwSJ1ft8TNz5hdQvheQ20Lo3Sq0Q@mail.gmail.com>
	<4E6126C4.5020303@windriver.com>
	<CAEsOVNepquHxYUJGFE9DVZ+9-SvmQQNEjamSuh50JasQf1ETVg@mail.gmail.com>
In-Reply-To: <CAEsOVNepquHxYUJGFE9DVZ+9-SvmQQNEjamSuh50JasQf1ETVg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Sep 2011 19:41:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0BBE8ECEBC625C4288C6662EF4E50EE1@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2011 at 2:29 PM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
> FYI: ipkg appears to work fine if you have
> MULTILIB_IMAGE_INSTALL and MULTILIB_PACKAGE_ARCH set.
>
> Will file a bug shortly.

Bug submitted.

http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1448

-M=


