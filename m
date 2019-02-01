Return-Path: <01010168a8350429-3f90d65b-6d4c-46c9-8fa5-bf1918995914-000000@us-west-2.amazonses.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CEE6E00D2F; Fri,  1 Feb 2019 00:41:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [54.240.27.213 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 220 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Feb 2019 00:41:33 PST
Received: from a27-213.smtp-out.us-west-2.amazonses.com
	(a27-213.smtp-out.us-west-2.amazonses.com [54.240.27.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8376E009AA
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 00:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=l46dkz3upq4btqvp2aj32u5teztxuzm6; d=genivi.org; t=1549010273;
	h=Subject:From:To:Cc:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References:Message-Id;
	bh=hBIFEDE76T+Hgt1GYFSOHGPhZ6MBe/hA2hSLud4z8f4=;
	b=AsbywZGJZxfGZH9SK5yobc4P6Xk5uOp5ghOyB8HN0KBhAfmxkKDX+Cn7WBIxFeFO
	/4EnPTtBnMaegI0QJ7gogysQ2J3cD3pBCfGaLvrpvFCFrVX+Wcde/0jm8AWAYXobFqO
	em/7KJrSCkS7bE7zVEg91I1EPi87zZmpOGurPgTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1549010273;
	h=Subject:From:To:Cc:Date:Mime-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References:Message-Id:Feedback-ID;
	bh=hBIFEDE76T+Hgt1GYFSOHGPhZ6MBe/hA2hSLud4z8f4=;
	b=EMQpSvZygAYojKKbI5w6xpy9MwbYadkFgxeI0Vu/3gnU5bIHvBF3gtFAqep6SBGc
	TJR0NwQoJRMxDqw1Oo5wh4ZO1dIMftcthnsakqXKoHHOoOCYhHy+x3eZ+qGlB9BceFE
	vgxuVkQosswZPaj/ha+It2Tu5fegPDJfAKixZcEc=
From: =?UTF-8?Q?gandersson?= <gandersson@genivi.org>
To: =?UTF-8?Q?Zoran_Stojsavljevic?= <zoran.stojsavljevic@gmail.com>
Date: Fri, 1 Feb 2019 08:37:53 +0000
Mime-Version: 1.0
In-Reply-To: <CAGAf8LypQqAL=uRDOGEcno+wFgG1zdsK+71dX_5C+HZC49AJVQ@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com> 
	<1531996869.3103.16.camel@genivi.org> 
	<CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com> 
	<CAGAf8Lw0sQ10zoGLLW=o7ziYOaARKix=++=Tt_wnB4cYmHXHfw@mail.gmail.com> 
	<1532004653.3103.60.camel@genivi.org> 
	<CAGAf8LypQqAL=uRDOGEcno+wFgG1zdsK+71dX_5C+HZC49AJVQ@mail.gmail.com> 
	<41858286-414F-4224-9F40-E356163C347D@genivi.org>
X-Mailer: Amazon WorkMail
Thread-Index: AQHUugijxAzVn88zQx+d5AEqHoInDgAAMhBJ
Message-ID: <01010168a8350429-3f90d65b-6d4c-46c9-8fa5-bf1918995914-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2019.02.01-54.240.27.213
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
Cc: =?UTF-8?Q?Yocto_Project?= <yocto@yoctoproject.org>,
	=?UTF-8?Q?Mirza_Krak?= <mirza.krak@gmail.com>
Subject: Re: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Fri, 01 Feb 2019 08:41:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0D=0A=0D=0AThanks very much for the information, Zoran!=0D=0AAnd sorry I=
 forgot to return to this issue before.=0D=0A=0D=0ABest Regards,=0D=0AGun=
nar=0D=0A=0D=0AOn February 1, 2019 9:32:02 AM GMT+01:00, Zoran Stojsavlje=
vic <zoran.stojsavljevic@gmail.com> wrote:=0D=0A>Since no reply for socke=
t-can strategy... I long time ago created one=0D=0A>for by me and my need=
s.=0D=0A>=0D=0A>But still... Here is something worth nothing, if anybody =
considers=0D=0A>socket-can domain!=0D=0A>=0D=0A>https://github.com/ZoranS=
tojsavljevic/meta-socketcan=0D=0A>=0D=0A>Best Regards,=0D=0A>Zoran Stojsa=
vljevic=0D=0A>_______=0D=0A>=0D=0A>=0D=0A>On Thu, Jul 19, 2018 at 2:51 PM=
 Gunnar Andersson=0D=0A><gandersson@genivi.org> wrote:=0D=0A>>=0D=0A>> On=
 Thu, 2018-07-19 at 14:44 +0200, Zoran Stojsavljevic wrote:=0D=0A>> > Act=
ually, I ran into this:=0D=0A>> >=0D=0A>http://cgit.openembedded.org/meta=
-openembedded/tree/meta-oe/recipes-=0D=0A>> > extended/socketcan=0D=0A>>=0D=
=0A>> :-)  I mentioned that in my original response.=0D=0A>>=0D=0A>> >=0D=
=0A>> > So here, I think, can-utils recipes should be revisited, cannello=
ni=0D=0A>> > recipe added, and also another application recipe added as w=
ell:=0D=0A>> > https://github.com/dschanoeh/socketcand/=0D=0A>>=0D=0A>> G=
reat, you're answering some of the follow-up questions I had.  I=0D=0A>ne=
ed to=0D=0A>> task switch now, but I will finish up that response later a=
nyway so=0D=0A>we can=0D=0A>> figure out a good strategy together.=0D=0A>=
>=0D=0A>> - Gunnar=0D=0A>>=0D=0A>> --=0D=0A>> Gunnar Andersson <gandersso=
n@genivi.org>=0D=0A>> Development Lead=0D=0A>> GENIVI Alliance=0D=0A>>=0D=
=0A

