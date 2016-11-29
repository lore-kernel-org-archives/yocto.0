Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AAFFE00C75; Tue, 29 Nov 2016 02:36:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A52E00C4F
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 02:36:48 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp3-g21.free.fr (Postfix) with ESMTP id E9C2713F8B6;
	Tue, 29 Nov 2016 11:36:46 +0100 (CET)
Date: Tue, 29 Nov 2016 11:36:46 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Ross Burton <ross.burton@intel.com>
Message-ID: <1788028907.389884596.1480415806740.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <CAJTo0LY20cf2yHv6z6gfaqzyGC9w=Bt30j7zpcP2BEUkyENZMA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Cc: yocto@yoctoproject.org
Subject: populate_sdk_ext: Huge(?) differences between RPM & DEB
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
X-List-Received-Date: Tue, 29 Nov 2016 10:36:52 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_389884595_1705548361.1480415806739"

------=_Part_389884595_1705548361.1480415806739
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ross,=20

> From: "Ross Burton" <ross.burton@intel.com>
> Sent: Friday, 25 November, 2016 6:34:01 PM

> I fixed this in oe-core master a few weeks ago. oe-core
> a66660aa5bb709547ce0b65a4563e4217c3c3d9f.
Thank you for your answer. I applied your commit. And after struggling a li=
ttle with some side-effects that led to erasing my build/tmp, everything is=
 now fine, both with rpm & deb.=20

Well=E2=80=A6 When I say "fine", I mean no errors during the baking. But th=
e results are a bit different:=20

RPM-based=20
Installer is 1.7 GiB.=20
SDK is 10.3 GiB, 168361 files & 35049 folders.=20

Debian-based:=20
Installer is 1.3GiB.=20
8.9GiB, 172366 files & 34795 folders.=20

What is the same in both runs is the emptiness of the manifest files!=20
Both target.manifests are empty. And the host manifests only have a single =
line (meta-environment-extsdk)=20

Does that make sense?=20

Thanks=20
Michel

------=_Part_389884595_1705548361.1480415806739
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style type=3D'text/css'>p { margin: 0; }</style></head><body><=
div style=3D'font-family: times new roman,new york,times,serif; font-size: =
12pt; color: #000000'>Ross,<br><br><blockquote style=3D"border-left:2px sol=
id rgb(16, 16, 255);margin-left:5px;padding-left:5px;color:#000;font-weight=
:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,=
sans-serif;font-size:12pt;" id=3D"DWT1718"><b>From: </b>"Ross Burton" &lt;r=
oss.burton@intel.com&gt;<br><b>Sent: </b>Friday, 25 November, 2016 6:34:01 =
PM<br></blockquote><blockquote style=3D"border-left:2px solid rgb(16, 16, 2=
55);margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-sty=
le:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-=
size:12pt;"><div dir=3D"ltr"><div class=3D"gmail_extra"><span style=3D"font=
-size: 12pt;">I fixed this in oe-core master a few weeks ago. &nbsp;oe-core=
 a66660aa5bb709547ce0b65a4563e4217c3c3d9f.</span></div></div>
</blockquote><br>Thank you for your answer.&nbsp;<span style=3D"font-size: =
12pt;">I applied your commit. And after struggling a little with some side-=
effects that led to erasing my build/tmp, everything is now fine, both with=
 rpm &amp; deb.</span><div><br></div><div>Well=E2=80=A6 When I say "fine", =
I mean no errors during the baking. But the results are a bit different:</d=
iv><div><br></div><div>RPM-based</div><div>Installer is 1.7 GiB.</div><div>=
SDK is&nbsp;<span style=3D"font-size: 12pt;">10.3 GiB, 168361 files &amp; 3=
5049 folders.</span></div><div><br></div><div>Debian-based:</div><div>Insta=
ller is 1.3GiB.</div><div>8.9GiB, 172366 files &amp; 34795 folders.</div><d=
iv><br></div><div><br></div><div>What is the same in both runs is the empti=
ness of the manifest files!</div><div>Both target.manifests are empty. And =
the host manifests only have a single line (meta-environment-extsdk)</div><=
div><br></div><div><br></div><div>Does that make sense?</div><div><br></div=
><div>Thanks</div><div>Michel</div></div></body></html>

------=_Part_389884595_1705548361.1480415806739--
