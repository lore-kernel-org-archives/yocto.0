Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E78C9E00836; Mon, 26 Jan 2015 08:09:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.106 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from BLU004-OMC2S31.hotmail.com (blu004-omc2s31.hotmail.com
	[65.55.111.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58FF3E006AF
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 08:09:26 -0800 (PST)
Received: from BLU436-SMTP215 ([65.55.111.71]) by BLU004-OMC2S31.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 26 Jan 2015 08:09:24 -0800
X-TMN: [nv6gotIfDRYO+9NG00vP88xpuTuF8ja/]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <54C662AD.5070209@mlbassoc.com>
Date: Mon, 26 Jan 2015 11:09:21 -0500
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
	<54C662AD.5070209@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 26 Jan 2015 16:09:22.0752 (UTC)
	FILETIME=[72C0E400:01D03982]
Cc: yocto@yoctoproject.org
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Mon, 26 Jan 2015 16:09:41 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable


> On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 2015-01-26 08:26, James Abernathy wrote:
>>=20
>>> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>>>=20
>>> On 2015-01-26 06:29, James Abernathy wrote:
>>>>=20
>>>>> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>>>>>=20
>>>>> On 2015-01-23 10:24, Jim Abernathy wrote:
>>>>>> I'm starting a project mostly for self-education.  I have already =
done the project using Ubuntu Server 14.04 using a Intel NUC and a =
Pandaboard as targets.  Now I want to see how
>>>>>> easy it is to move it to Yocto.
>>>>>>=20
>>>>>> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal =
and core-image-sato, both built with bitbake and not the prebuilt =
images. However, core-image-minimal doesn't have
>>>>>> WiFi and core-image-sato does, but I don't need all the GUI =
stuff.  It's a headless application.
>>>>>>=20
>>>>>> So what is recommended; eliminating the GUI from sato or adding =
wifi and wpa-supplicant, etc to minimal??  Also any pointers to how to =
do the adding/subtracting would be most
>>>>>> helpful.
>>>>>>=20
>>>>>> Once this is working all I have to do is put apache-tomcat, and =
openjdk-7-jre, then my application.
>>>>>=20
>>>>> We use just iw & wpa-supplicant and set up the configuration
>>>>> files manually (e.g. the wpa-supplicant configurations).
>>>>=20
>>>> Could you help with a little more details.  What I envision is =
adding an append statement of some kind to local.conf to load in the =
wireless related files to core-image-minimal,
>>>> same with openjdk-7-jre and tomcat7, but my first efforts have =
generated some unintelligible error for me.  So that=92s why I=92m =
looking for direction on where to start with this.
>>>=20
>>> What was the error you got?  I'll bet it was for 'iw' which
>>> is a package from meta-oe, so you'll need to add that layer
>>>=20
>>> Once you've added the meta-oe layer, you should be able to
>>> put this line in your local.conf:
>>> CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant=94
>>>=20
>> Okay, what I don=92t get is the fact that without any additional =
layers, bitbake core-image-sato builds all the WiFi features I need.  =
bitbake core-image-minimal does not.  So I=92m
>> thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement that =
can just add what is needed without extra layers.
>>=20
>> I guess it just doesn=92t make sense to me right now.
>=20
> Try using
>  CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
> which will bring in 'wireless-tools' and 'wpa-supplicant'.
>=20
> I prefer 'iw' to 'wireless-tools' as it is newer and [IMO]
> simpler to use.
>=20
Thanks, I found that I can clean build with just the wpa-supplicant =
added and I=92m hoping that will bring in the wifi drivers.  If it does, =
all I want to do is edit the /etc/interfaces file with the Static IP of =
the wlan0, the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK =
information. =20

Do I really need the tools?  I don=92t need CLI commands to change any =
network parameters later.

Jim A

> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


