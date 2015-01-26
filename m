Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75245E005A9; Mon, 26 Jan 2015 05:30:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.83 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Jan 2015 05:30:36 PST
Received: from BLU004-OMC2S8.hotmail.com (blu004-omc2s8.hotmail.com
	[65.55.111.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4D7BE003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 05:30:36 -0800 (PST)
Received: from BLU436-SMTP223 ([65.55.111.73]) by BLU004-OMC2S8.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 26 Jan 2015 05:29:32 -0800
X-TMN: [sStetTgEg7tYDFkYtblvF1p1noQ/Ldk0]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <54C286DC.2030708@mlbassoc.com>
Date: Mon, 26 Jan 2015 08:29:29 -0500
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 26 Jan 2015 13:29:31.0454 (UTC)
	FILETIME=[1DE4F5E0:01D0396C]
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
X-List-Received-Date: Mon, 26 Jan 2015 13:30:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable


> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 2015-01-23 10:24, Jim Abernathy wrote:
>> I'm starting a project mostly for self-education.  I have already =
done the project using Ubuntu Server 14.04 using a Intel NUC and a =
Pandaboard as targets.  Now I want to see how
>> easy it is to move it to Yocto.
>>=20
>> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and =
core-image-sato, both built with bitbake and not the prebuilt images. =
However, core-image-minimal doesn't have
>> WiFi and core-image-sato does, but I don't need all the GUI stuff.  =
It's a headless application.
>>=20
>> So what is recommended; eliminating the GUI from sato or adding wifi =
and wpa-supplicant, etc to minimal??  Also any pointers to how to do the =
adding/subtracting would be most helpful.
>>=20
>> Once this is working all I have to do is put apache-tomcat, and =
openjdk-7-jre, then my application.
>=20
> We use just iw & wpa-supplicant and set up the configuration
> files manually (e.g. the wpa-supplicant configurations).

Could you help with a little more details.  What I envision is adding an =
append statement of some kind to local.conf to load in the wireless =
related files to core-image-minimal, same with openjdk-7-jre and =
tomcat7, but my first efforts have generated some unintelligible error =
for me.  So that=E2=80=99s why I=E2=80=99m looking for direction on =
where to start with this.

Jim A

>=20
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


