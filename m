Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14EBBE0148C
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 22:02:24 -0700 (PDT)
Received: from [85.158.138.51:55043] by server-16.bemta-3.messagelabs.com id
	35/6F-20692-54E7F615; Thu, 18 Apr 2013 05:01:57 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-10.tower-174.messagelabs.com!1366261315!24815105!3
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 17008 invoked from network); 18 Apr 2013 05:01:56 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-10.tower-174.messagelabs.com with DHE-RSA-AES256-SHA
	encrypted SMTP; 18 Apr 2013 05:01:56 -0000
X-AuditID: 93eaf2e7-b7fd66d0000027cf-39-516f7e44cb8e
Received: from ilptexch01.ecitele.com ( [172.31.244.40])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	74.A3.10191.44E7F615; Thu, 18 Apr 2013 08:01:56 +0300 (IDT)
Received: from ILPTWPVEXCA01.ecitele.com (172.31.244.224) by
	ilptexch01.ecitele.com (172.31.244.40) with Microsoft SMTP Server (TLS)
	id 8.3.264.0; Thu, 18 Apr 2013 08:01:55 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA01.ecitele.com ([fe80::ac15:43ab:d541:dfa7%12]) with mapi id
	14.02.0328.009; Thu, 18 Apr 2013 08:01:55 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Thread-Topic: [yocto] Adding prebuilt binaries to /usr/bin on rootfs
Thread-Index: AQHOO30AB0/Y4GLxkEa4fkWh4BTYLJjaUocAgAAMjACAACVCgIAADHcAgADbifA=
Date: Thu, 18 Apr 2013 05:01:54 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE3C0EA@ILPTWPVEXMB02.ecitele.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
	<CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
	<CAJTo0LZr0s1tp6V0_3W5odWmCOzyRtU4_E92OL8omtf9GBGTPA@mail.gmail.com>
	<CAFMfyz+F292KQyQBBV7Oyu_q+BAj0F=gBPQqzE6EEDKk347FMQ@mail.gmail.com>
	<CAJTo0Laj1w=q5NSq+zpZufLib8gs2qOKkzQi2syVpjep13ML_Q@mail.gmail.com>
In-Reply-To: <CAJTo0Laj1w=q5NSq+zpZufLib8gs2qOKkzQi2syVpjep13ML_Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTa0gUURj17mzr+BgZ1zavm8Y2Zj+MlV0rUlMxyh4QufYgEkHH3dvu4OzM
	srM+tjKWkh4W9vCPD0KXwsIHpkUPUyitqOxtkJlFL6l1y6CEKEOacdSE6P46955zz/nu5ftw
	TO0J1OIM50JOjmYpVbCyauTbmH7NXj7b0OVTJ530tagywPqDdypVJpDjAak0x/Eu2oV0FiSY
	0yiTkymmzW5Kx1jSKCOlc7C0GdkR50qjaIcDcRYqPVj3z0oVZQynQ5yZtzCcNY3asCVLn5S0
	PFlvpNIXxxqXrgzeamMEHdLbaYbV2ZEg0FakE0/yL2K20fOFjkpV6fdDjcADKuZUgCAckstg
	+6lPQMbz4OPXbaoKEIyryW4AvZ5ehby5BGBTy0FM3twCcHi4XyVdUZEr4CPv10AJzyWXwxdd
	Q5iEMRFXVZdP4ghyNey+WY3JmjVwfKIPyHgTHHh7TUzAcSUZB4euhkvHBGmCT54/nariAgb9
	dV6lRASR2bCvyj+JgVjqj3stCjkrEg5+qFfITyDhma5HmIw10Pd+YuqZC+Cx+4eBrDfAh5fb
	A2W8BDZ6/ZgcHA7v1nyY9FeT8XB0rHHqbhS8cW5AeRxE1c6Kq51lVTvLqnaWVQNQNgENwzpc
	BXarwZiAzIwLsSjBzNs7gNwyH6+AX/WLegCJAyqUeNPEZavn0MWC294DonAFpSF8JXy2OqyA
	t7httGDLcxaxSOgBEMeoucS7GJEjLLR7F3Ly01Sm+JsnMG2ImRebk3PlLTUY/r+hIomznu1Z
	atIqtmYhQg7knPaJxnEKEjvKxIhwJ7Ki0p0M6/pLK/AgqYxQsYwkSUMIDtouMFaZvwf0+LkL
	Pj9QKzmeQ9pIIlMSkZLIVsTN+EwPzgiIFD8ggiiXVKHiWM04jYghCjHkelOhFCKO0Ayl9YCi
	zm25A30338QZyIVx418a2tYeSFHsS9zc3tkfCJoX+IajF9Y83Xit+LSlJDpmRwJ7bN22+ZvG
	8p8dVTSUxYX3Nzg0dRnPCjTbL90lelWpUUcSs3JuP/gZ9DLk8x5P68fOsBWeiVeVq0zJAc2/
	jWcTBztiY3L3j95JWVfdRuxmW/0BlFKw0cZ4zCnQfwBGunStEwQAAA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Thu, 18 Apr 2013 05:02:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1255"

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Burton, Ross
> Sent: =E9=E5=ED=A0=E3 17 =E0=F4=F8=E9=EC 2013 21:55
> To: Satya Swaroop Damarla
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Adding prebuilt binaries to /usr/bin on rootfs
> 
> On 17 April 2013 19:10, Satya Swaroop Damarla <swaroop.damarla@gmail.com>
> wrote:
> > If I dont avoid this error.. I cant build the rootfilesystem....
> 
> Hopefully someone else will respond who knows how to handle that problem.
> 
> Ross

This error is generated by meta/classes/insane.bbclass.
Check the usage of INSANE_SKIP_ flag in various recipes. Try adding line 
INSANE_SKIP_${PN} =3D "ldflags"
to your recipe.

Michael


This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


