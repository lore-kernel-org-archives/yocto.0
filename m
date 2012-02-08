Return-Path: <sean_liming@sjjmicro.com>
Received: from mail30c40.carrierzone.com (mail30c40.carrierzone.com
	[209.235.156.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F36BE01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 22:12:31 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail30c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q186CSBN024806
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Feb 2012 06:12:29 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: "'autif khan'" <autif.mlist@gmail.com>,
	"'James Abernathy'" <jfabernathy@gmail.com>
References: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
	<CADzUK1+Mi4E3RD7JcFOgNevUmcW6MT98JWoVdde8X5m2xjuEHg@mail.gmail.com>
In-Reply-To: <CADzUK1+Mi4E3RD7JcFOgNevUmcW6MT98JWoVdde8X5m2xjuEHg@mail.gmail.com>
Date: Tue, 7 Feb 2012 22:12:25 -0800
Message-ID: <000a01cce628$a16df500$e449df00$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQExyGw5XD3JtqDlNpdwZeYfLpwMfwHyvKA+l1km32A=
X-Antivirus: avast! (VPS 120207-1, 02/07/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=4Pq4DKZTL3ljfxpuMk4z6QiCGMBGedZp4jx2BIXYRVg= c=1 sm=1
	a=T1hEzmPChW8A:10 a=aJh391NtreIA:10 a=8nJEP1OIZ-IA:10
	a=z5g8Jwv4kxix1x/21EjHVg==:17 a=iGHA9ds3AAAA:8 a=YuYt6RhtCMz1SIBFxQMA:9
	a=wPNLvfGTeEIA:10 a=XDKM753qmDAA:10 a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A02020B.4F32124D.00A5,ss=1,re=0.000,fgs=0
Cc: yocto@yoctoproject.org
Subject: Re: Building your own UI
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Feb 2012 06:12:32 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us


>> This may be a dumb question, but I'll ask anyway.
>
>> Suppose you have a project where you need a very custom user=20
>> interface. Not just a series of applications that appear on a desktop =

>> like you see in sato, or Gnome, or KDE.=A0 Basically your application
becomes the UI.
>
>> I can see 2 approaches=A0to this:
>
>> Start with core-image-minimal and add the packages you need to =
support=20
>> GFX, X11, and your application plus dependencies.
>> Take core-image-sato and change the applications to be your subtasks =
,=20
>> and the look-and-feel of the desktop.
>
>> What are the considerations of both approaches?
> >Is one better, or easier=A0than the other?
> >How would you do this in Yocto?
>> Where do you look for information you need to accomplish this?

>We are still in the very early stages of architecture design and
development

>For now we are leaning towards keeping everything that comes with
core-image-sato and writing a full screen app on top of it. Likely to be
written in .NET (mono). A prototype (proof of concept) has been =
successfully
developed :-)

>As I said - still in very early stages of arch/design and dev. So =
things
may still change.


If it is okay to jump in an comment, I was going to ask the same =
question at
some point.=20

The need to have the application as the main UI or shell to the system =
is
important for branding. Launching sato or other desktop would not be
desirable. As an example, Windows uses Explorer.exe as the shell, but =
can be
replaced with any application. Windows was architected this way. It =
would be
nice to have similar architecture here, but I know it is easier said =
than
done. As you said this is early in design.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


