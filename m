Return-Path: <btv1==8351350773b==Zielinski_Dave@shure.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D964BE00A7D; Thu, 28 Jan 2016 10:54:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [204.124.150.79 listed in list.dnswl.org]
X-Greylist: delayed 1083 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Jan 2016 10:53:57 PST
Received: from smtp1.shure.com (smtp1.shure.com [204.124.150.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F531E008F5
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:53:57 -0800 (PST)
X-ASG-Debug-ID: 1454006152-0905652fce21f290001-yzSStA
Received: from ms-vm40.shure.com ([172.17.52.140]) by smtp1.shure.com with
	ESMTP id ZwQl0EIAVaw5GXS6 for <yocto@yoctoproject.org>;
	Thu, 28 Jan 2016 12:35:52 -0600 (CST)
X-Barracuda-Envelope-From: Zielinski_Dave@shure.com
Received: from MS-NI30.shure.com ([fe80::8db5:344a:77eb:f81e]) by
	ms-vm40.shure.com ([::1]) with mapi id 14.03.0181.006; Thu, 28 Jan 2016
	12:35:52 -0600
From: "Zielinski, Dave" <Zielinski_Dave@shure.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Image size
X-ASG-Orig-Subj: RE: [yocto] Image size
Thread-Index: AQHRWSq1sl2RgK8yHE+Z2RDD4ZdUMZ8QH7sAgAEg6KA=
Date: Thu, 28 Jan 2016 18:35:51 +0000
Message-ID: <20A1F22A2EC04B408E9C40A51ACD07A1F93C63@MS-NI30.shure.com>
References: <CAHpaHKnL3wa6nX+2HdjVNVkSUinQzd2wg0EE+Xk3Y1mCXF9+9w@mail.gmail.com>
	<CAMKF1srY+WT4nCqQaPXWsWUoOhx49XzAg=-VtD9mOENLfb31pw@mail.gmail.com>
In-Reply-To: <CAMKF1srY+WT4nCqQaPXWsWUoOhx49XzAg=-VtD9mOENLfb31pw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.17.3.66]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[172.17.52.140]
X-Barracuda-Start-Time: 1454006152
X-Barracuda-URL: https://smtp1.shure.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at shure.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0
	tests=MAILTO_TO_SPAM_ADDR
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.26540
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 MAILTO_TO_SPAM_ADDR URI: Includes a link to a likely spammer email
Subject: Re: Image size
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
X-List-Received-Date: Thu, 28 Jan 2016 18:54:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On Sat, Jan 23, 2016 at 6:12 AM, Max Sht <maxx1109@gmail.com> wrote:
> > Hi.
> >
> > Thank you in advance for your support.
> > I'm using Yocto project Linux for the iMX6 CPU and imx6ulevk board.
> >
> > I think that I have a problem with image size. I've seen the basic
> > image for that board and it's size was about 6Mb, but it didn't
> > contain any graphical library.
> > I need a basic graphical library, so I added FB library. My image size
> > is now larger than 350Mb.
> > Is it normal? Is there a possibility to make the image much smaller
> > with some other graphic library?
> >
> > I'm very to new to Linux, and hope that you can help me.
>=20
> you can look into buildhistory to help you find the dependency chain in
> local.conf you need to enable buildhistory generation
>=20
> then do a build before adding FB lib and after adding libs then go into
> buildhistory repo and do git show
>=20
> it will show you top commit showing all the changes in packages and image
> after you added FB lib
>=20
> https://lists.yoctoproject.org/listinfo/yocto


I haven't used the Freescale/NXP imx6ulevk board specifically, but I have u=
sed just about all the other dev boards so I think what you're talking abou=
t is the general SD card images built in Yocto.=20=20

The architecture of the Freescale/NXP SD card images are not optimized for =
size.  If you build core-image-minimal it's going to be about 30 MB I think=
.  To go down to 6MB with the current SD card architecture I don't believe =
is possible.  That image was probably something else, like a baremetal SDK =
binary or something other than the standard SD card image.  Or maybe just a=
 kernel binary or something.

There are other image architectures that are a lot more space efficient suc=
h as having the root fs as an initramfs...=20



------------------------------------------------------------=0D
=0D
This e-mail message (including any attachments) contains confidential, non-=
public information. It also may be protected by the attorney/client or othe=
r applicable privileges. It is intended to be communicated only to the desi=
gnated recipient(s). Unauthorized use, reproduction, dissemination, or comm=
unication of this message or any information contained in this message is s=
trictly prohibited and may be unlawful. If you are not an intended recipien=
t of this message, please notify the sender promptly by e-mail or telephone=
 at the sender's location indicated above or contact Shure Incorporated at =
info@shure.com or 800-25-SHURE (800-257-4873).=0D
=0D
------------------------------------------------------------

