Return-Path: <krystian.gorny@wipotec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 353E3E00D2E; Tue, 13 Oct 2015 06:58:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx03.wipotec.com (mx02.wipotec.com [195.243.255.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E87F8E006F6
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 06:58:23 -0700 (PDT)
Received: from mx03.wipotec.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 8B085381D07;
	Tue, 13 Oct 2015 15:58:21 +0200 (CEST)
Received: from svr-exc-04.intern.wipotec.de (unknown [10.1.60.47])
	by mx03.wipotec.com (Postfix) with ESMTP id 83BE7381D04;
	Tue, 13 Oct 2015 15:58:21 +0200 (CEST)
Received: from SVR-EXC-03.intern.wipotec.de ([10.1.60.46]) by
	svr-exc-04.intern.wipotec.de ([10.1.60.47]) with mapi id 14.03.0158.001;
	Tue, 13 Oct 2015 15:58:21 +0200
From: Gorny Krystian <krystian.gorny@wipotec.com>
To: "chris@2net.co.uk" <chris@2net.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] VFAT patent EP 0 618 540
Thread-Index: AdECbW49cDS4a3yeTSyBMRx0DnPn1wAQld6AAAMV6QAAAMLCgAArPx0AACqO/IAAahMa8A==
Date: Tue, 13 Oct 2015 13:58:20 +0000
Message-ID: <10D57FBA9FD7C14FB49EE17590E1AF94011F907949@svr-exc-03.intern.wipotec.de>
References: <10D57FBA9FD7C14FB49EE17590E1AF94011F907751@svr-exc-03.intern.wipotec.de>
	<561807B5.2010206@reliableembeddedsystems.com>
	<CAALGJZbpi4KuFo6+pooJ7Nt9Q4n99LqQX_R52D0CxT9qz5Myiw@mail.gmail.com>
	<CA+-BmJZvJq1MeMWJa-KhkW=+p7ge2GZwh=9znuYNQtjrWSxQ=A@mail.gmail.com>
	<561943BE.40608@reliableembeddedsystems.com>
	<561A6159.4070402@2net.co.uk>
In-Reply-To: <561A6159.4070402@2net.co.uk>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.18.125.175]
x-olx-disclaimer: Done
MIME-Version: 1.0
Subject: Re: VFAT patent EP 0 618 540
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
X-List-Received-Date: Tue, 13 Oct 2015 13:58:28 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

exactly Chris it's for sharing Data on external media like USB. I found a w=
orkaround in the kernel menuconfig it's working fine. The entry for the wor=
karound is in the menu:

> File systems
>> DOS/FAT/NT Filesystems
>>> disable VFAT Dual names support (patent workaround)

Thanks.

Krystian

_____________________________________________________________________

Krystian Gorny
Research & Development

Wipotec GmbH
Adam-Hoffmann-Str. 26
67657 Kaiserslautern

T +49.631.34146-0
F +49.631.34146-8640
http://www.wipotec.com


_____________________________________________________________________

Weigh Cells | Weighing systems

See our solutions. Visit us at our events
http://www.wipotec.com/de/aktuelles/veranstaltungen/

_____________________________________________________________________

Legal information:
Wipotec Wiege- und Positioniersysteme GmbH
HRB 2317 Kaiserslautern, Management: T. D?ppre, U. Wagner

This e-mail may contain confidential and/or privileged information.
If you are not the intended recipient (or have received this e-mail in erro=
r)
please notify the sender immediately and delete this e-mail. Any unauthoriz=
ed
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Simmonds
Sent: Sunday, October 11, 2015 3:17 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] VFAT patent EP 0 618 540

Hi

On 10/10/15 17:58, Robert Berger wrote:
> Hi
>
> On 10/09/2015 11:20 PM, Ayoub Zaki wrote:
>> TI Socs Boot Rom code can use Vfat but does not necessarly need it as
>> Bootloaders (spl, u-boot) can be loaded directly  from Raw MMC/eMMC.
> I just discovered this recently. Something like:
>
> sudo dd if=3D./u-boot/MLO of=3D${DISK} count=3D1 seek=3D1 bs=3D128k sudo =
dd
> if=3D./u-boot/u-boot.img of=3D${DISK} count=3D2 seek=3D1 bs=3D384k
>
> So even my made up scenario where you would need vfat on the first
> partition does not hold anymore.
Usually the need to include vfat support driven by the desire to read/write=
 removable media such as SD cards and USB mass storage devices. If you want=
 interoperability with certain legacy operating systems vfat is the only op=
tion.

>
> ... but ...
>
> what about the patent and the on-chip ROMs of SoCs from Ti and
> Freescale (hmm NXP? or whoever bought them lately). Maybe the SoCs are
> affected since they are able to load stuff from vfat, even if we don't
> need to use this feature anymore.
Not a problem for two reasons. First the patent only applies to fat32; you =
can do anything you like with fat16. The TI romcode only uses fat16, I am p=
retty sure. Second, even with fat32, the patent is only concerned with upda=
tes to the namespace, hence so long as the romcode does not have the abilit=
y to create files it is also OK. Note that you can't get round the patent j=
ust by mounting vfat partitions read-only because the driver still has the =
ability to make new files. There was a patch for the vfat driver which remo=
ved the code to create or modify directory entries, but it seems to have go=
t lost in the mists of time.
>
> Regards,
>
> Robert
>
> ..."Never express yourself more clearly than you think." - Niels Bohr
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x90320BF1
>
>
--
Chris Simmonds, Consultant, 2net Ltd
http://www.2net.co.uk
+44 (0)1962 869003

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


