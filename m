Return-Path: <Brian.Wenholz@med.ge.com>
Received: from exprod5og102.obsmtp.com (exprod5og102.obsmtp.com [64.18.0.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D247E013DA
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 04:52:56 -0700 (PDT)
Received: from cinmlip14.e2k.ad.ge.com ([12.71.149.1]) (using TLSv1) by
	exprod5ob102.postini.com ([64.18.4.12]) with SMTP
	ID DSNKUhIHF7IAU+kOHG6F35G2YrrLXv4Dy4nQ@postini.com;
	Mon, 19 Aug 2013 04:52:57 PDT
Received: from unknown (HELO alpmlef08.e2k.ad.ge.com) ([3.159.18.17])
	by cinmlip14.e2k.ad.ge.com with ESMTP; 19 Aug 2013 07:52:54 -0400
Received: from cinmlef16.e2k.ad.ge.com ([3.159.213.85]) by
	alpmlef08.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 19 Aug 2013 07:52:53 -0400
Received: from CINMLCH02.e2k.ad.ge.com ([3.159.212.51]) by
	cinmlef16.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 19 Aug 2013 07:52:51 -0400
Received: from ALPURAPA08.e2k.ad.ge.com (3.159.19.117) by
	CINMLCH02.e2k.ad.ge.com (3.159.212.51) with Microsoft SMTP Server (TLS)
	id 14.3.146.0; Mon, 19 Aug 2013 07:52:51 -0400
Received: from ALPURAPA22.e2k.ad.ge.com ([169.254.4.38]) by
	ALPURAPA08.e2k.ad.ge.com ([169.254.2.150]) with mapi id 14.03.0146.000;
	Mon, 19 Aug 2013 07:52:51 -0400
From: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
To: Paul Barker <paul@paulbarker.me.uk>
Thread-Topic: [yocto] Full Screen Image Display Program
Thread-Index: Ac6ajzBhU6M7wj6PQTiTV8IHz4KjbwAXkD4AAHk8/AA=
Date: Mon, 19 Aug 2013 11:52:50 +0000
Message-ID: <4F1B91CF7B31604FABE8442530201B7803E67D@ALPURAPA22.e2k.ad.ge.com>
References: <4F1B91CF7B31604FABE8442530201B7803E4FC@ALPURAPA22.e2k.ad.ge.com>
	<CANyK_8euPuyothdbHG-sgNNZXhko5=zP7W_cd1HAnPCSmXjKcQ@mail.gmail.com>
In-Reply-To: <CANyK_8euPuyothdbHG-sgNNZXhko5=zP7W_cd1HAnPCSmXjKcQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.19.192]
MIME-Version: 1.0
X-OriginalArrivalTime: 19 Aug 2013 11:52:51.0769 (UTC)
	FILETIME=[A2248290:01CE9CD2]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Full Screen Image Display Program
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
X-List-Received-Date: Mon, 19 Aug 2013 11:52:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

Thanks for the suggestion of referencing ArchLinux. I have written my own r=
ecipes, though not enough to feel competent yet. That was my next step, I j=
ust like to see if I relly need to invent the wheel or not before starting.=
 Thanks for the response... I am off to write the recipe, the wonderful rec=
ipe of qiv.

Brian Wenholz

-----Original Message-----
From: paul.betafive@gmail.com [mailto:paul.betafive@gmail.com] On Behalf Of=
 Paul Barker
Sent: Friday, August 16, 2013 6:00 PM
To: Wenholz, Brian (GE Healthcare)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Full Screen Image Display Program

On 16 August 2013 15:48, Wenholz, Brian (GE Healthcare) <Brian.Wenholz@med.=
ge.com> wrote:
> Does anyone have, or can point me to, a good recipe for qiv that will=20
> work with Yocto 1.3?
>

It isn't found on layers.openembedded.org so it's probably not in any of th=
e major layers. It should be too complicated a program to write a recipe fo=
r though. I tend to look to Arch Linux for inspiration and to see if any ex=
tra patches are needed:
https://projects.archlinux.org/svntogit/community.git/tree/trunk/PKGBUILD?h=
=3Dpackages/qiv.
The syntax is different but you can see their dependencies, the lack of any=
 custom patches and the fact that you just need to ensure that 'make' is ca=
lled then copy the resulting binary and man page.

Have you written your own recipes before?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

